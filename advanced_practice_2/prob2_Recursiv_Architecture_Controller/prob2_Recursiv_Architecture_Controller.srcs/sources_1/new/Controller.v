module Controller #(
    parameter din1_DEPTH = 4,
    parameter din2_DEPTH = 32,
    parameter din3_DEPTH = 8,
    parameter temp_DEPTH = 8,
    parameter din1_ADDR_WIDTH = $clog2(din1_DEPTH),
    parameter din2_ADDR_WIDTH = $clog2(din2_DEPTH),
    parameter din3_ADDR_WIDTH = $clog2(din3_DEPTH),
    parameter temp_ADDR_WIDTH = $clog2(temp_DEPTH)
)
(
    input wire clk_i,
    input wire rstn_i,
    input wire start_i,

    output reg pu_en_o,
    output reg pu_valid_o,
    output reg pu_clear_o,
    output wire [9:0] addr_din1_o,
    output wire [9:0] addr_din2_o,
    output wire [9:0] addr_din3_o,
    output wire [9:0] addr_temp_o,
    output reg din1_en_o,
    output reg din2_en_o,
    output reg din3_en_o,
    output reg temp_en_o,
    output reg temp_wen_o,
    output reg mux_control_o,
    output reg done_o
    );


reg [1:0] state;
reg [1:0] nextState;
reg [din1_ADDR_WIDTH-1:0] din1_ADDR_CNT;
reg [din2_ADDR_WIDTH-1:0] din2_ADDR_CNT;
reg [din2_ADDR_WIDTH-1:0] din2_ADDR_FLAG;
reg [din3_ADDR_WIDTH-1:0] din3_ADDR_CNT;
reg [temp_ADDR_WIDTH-1:0] temp_ADDR_CNT;
reg [2:0] MUL1_CNT;

localparam  IDLE = 'd0,
            MATMUL1 = 'd1,
            MATMUL2 = 'd2,
            DONE = 'd3;

always @(posedge clk_i) begin
    if (!rstn_i) begin
        state <= IDLE;
        nextState <= IDLE;
        mux_control_o <= 0;
        done_o <= 0;
    end
    else begin
        case (state)
            IDLE: begin
                if (start_i) begin
                    state <= MATMUL1;
                    nextState <= MATMUL1;
                end
            end
            MATMUL1: begin
                if (nextState == MATMUL2) begin
                    state <= nextState;
                    mux_control_o <= 1;
                end
                if ((temp_ADDR_CNT == temp_DEPTH-1) && (temp_en_o && temp_wen_o)) 
                    nextState <= MATMUL2;
            end
            MATMUL2: begin
                if (nextState == DONE) begin
                    state <= nextState;
                    mux_control_o <= 0;
                    done_o <= 1;
                end
                if (pu_valid_o) 
                    nextState <= DONE;
            end
        endcase
    end
end

always @(posedge clk_i) begin//Processing Controller
    if (!rstn_i) begin
        pu_en_o <= 0;
        pu_valid_o <= 0;
        pu_clear_o <= 0;
        din1_ADDR_CNT <= 0;
        din2_ADDR_CNT <= 0;
        din3_ADDR_CNT <= 0;
        temp_ADDR_CNT <= 0;
        din2_ADDR_FLAG <= 0;
    end
    else begin
        case (state)
            MATMUL1: begin
                if (din1_en_o) begin
                    if(temp_en_o && temp_wen_o) begin
                        din1_ADDR_CNT <= 0;
                    end
                    else begin
                        din1_ADDR_CNT <= din1_ADDR_CNT + 1;
                    end
                    if (din1_ADDR_CNT == din1_DEPTH-1) pu_valid_o <= 1;
                    else pu_valid_o <= 0;
                end
                
                if (din2_en_o) begin
                    if(temp_en_o && temp_wen_o) din2_ADDR_CNT <= din2_ADDR_FLAG;
                    else begin
                        din2_ADDR_CNT <= din2_ADDR_CNT + 1;
                    end
                    if (MUL1_CNT == 3) begin
                        din2_ADDR_FLAG <= din2_ADDR_CNT;
                    end
                end
                
                if (din1_en_o && din2_en_o) begin
                    if(temp_en_o && temp_wen_o) begin
                        temp_ADDR_CNT <= temp_ADDR_CNT + 1;
                        pu_en_o <= 0;
                        pu_clear_o <= 1;
                    end
                    else begin
                        if (nextState == MATMUL2) begin
                            pu_en_o <= 0;
                            pu_clear_o <= 1;
                        end
                        else begin
                            temp_ADDR_CNT <= temp_ADDR_CNT;
                            pu_en_o <= 1;
                            pu_clear_o <= 0;
                        end
                    end
                end
            end
            MATMUL2: begin
                if (din3_en_o) begin
                    if (din3_ADDR_CNT == din3_DEPTH-1) begin
                        din3_ADDR_CNT <= 0;
                        pu_valid_o <= 1;
                    end
                    else begin
                        din3_ADDR_CNT <= din3_ADDR_CNT + 1;
                        pu_valid_o <= 0;
                    end
                end
                
                if (temp_en_o) begin
                    if (temp_ADDR_CNT == temp_DEPTH-1) temp_ADDR_CNT <= 0;
                    else temp_ADDR_CNT <= temp_ADDR_CNT + 1;
                end

                if (nextState == DONE) begin
                    pu_en_o <= 0;
                    pu_clear_o <= 1;
                end
                else begin
                    if (din3_en_o && temp_en_o) begin
                        pu_en_o <= 1;
                        pu_clear_o <= 0;
                    end
                    else begin
                        pu_en_o <= 0;
                        pu_clear_o <= 1;
                    end
                end
            end
        endcase
    end
end

always @(posedge clk_i) begin//Buffer Controller
    if (!rstn_i) begin
        din1_en_o <= 0;
        din2_en_o <= 0;
        din3_en_o <= 0;
        temp_en_o <= 0;
        temp_wen_o <= 0;
    end
    else begin
        case (state)
            MATMUL1: begin
                if (nextState == MATMUL2) begin
                    din1_en_o <= 0;
                    din2_en_o <= 0;
                end
                else begin
                    din1_en_o <= 1;
                    din2_en_o <= 1;
                end

                if (!pu_en_o) MUL1_CNT <= 0;
                else MUL1_CNT <= MUL1_CNT + 1;

                if (MUL1_CNT == 3) begin
                    temp_en_o <= 1;
                    temp_wen_o <= 1;
                end
                else begin
                    temp_en_o <= 0;
                    temp_wen_o <= 0;
                end
            end
            MATMUL2: begin
                if (nextState == DONE) begin
                    din3_en_o <= 0;
                    temp_en_o <= 0;
                end
                else begin
                    din3_en_o <= 1;
                    temp_en_o <= 1;
                end
            end
        endcase
    end
end

assign addr_din1_o = din1_ADDR_CNT;
assign addr_din2_o = din2_ADDR_CNT;
assign addr_din3_o = din3_ADDR_CNT;
assign addr_temp_o = temp_ADDR_CNT;
                
endmodule
