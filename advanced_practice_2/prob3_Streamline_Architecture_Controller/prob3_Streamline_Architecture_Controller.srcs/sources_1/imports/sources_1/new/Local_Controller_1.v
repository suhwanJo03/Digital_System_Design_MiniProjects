module Local_Controller_1(
    input wire clk_i,
    input wire rstn_i,
    input wire start_i,
    input wire p_done_0_i,
    input wire local_en_1,

    output wire done_1_o,
    output wire en_psum_o,
    output wire pu_1_clear_o,
    output wire pu_1_valid_o,
    output wire din3_en_o,
    output reg [2:0] din3_addr
    );

reg [1:0] state_1;
reg [1:0] next_state_1;
reg [3:0] cnt_mac_1;

reg done_1;
reg en_psum;
reg pu_1_clear;
reg pu_1_valid;
reg din3_en;

localparam IDLE = 3'd0,
           MUL  = 3'd1,
           DONE_1 = 3'd2;
always @(posedge clk_i) begin
    if (!rstn_i) begin
        state_1 <= IDLE;
        next_state_1 <= IDLE;
    end
    case (state_1)
        IDLE: begin
            if (start_i) begin
                next_state_1 <= MUL;
            end
            else state_1 <= next_state_1;
        end
        MUL: begin
            if ((cnt_mac_1 == 7) && (p_done_0_i)) begin
                next_state_1 <= DONE_1;
            end
            else state_1 <= next_state_1;
        end
        DONE_1: begin
            if(done_1) next_state_1 <= IDLE;
            state_1 <= next_state_1;
        end
    endcase
end

always @(posedge clk_i) begin
    if (!rstn_i) begin
        done_1 <= 0;
        en_psum <= 0;
        pu_1_clear <= 0;
        din3_en <= 0;
        cnt_mac_1 <= 0;
        din3_addr <= 0;
        pu_1_valid <= 0;
    end
    else begin
        if (local_en_1) begin
            case (state_1)
                MUL: begin
                    if (next_state_1 == DONE_1) din3_en <= 0;
                    else din3_en <= 1;
                    if (p_done_0_i) begin
                        en_psum <= 1;
                        pu_1_clear <= 1;
                        cnt_mac_1 <= cnt_mac_1 + 1;
                        din3_addr <= din3_addr + 1;
                        if (cnt_mac_1 == 7) pu_1_valid <= 1;
                        else pu_1_valid <= 0;
                    end
                    else begin
                        en_psum <= 0;
                        pu_1_clear <= 0;
                        if (cnt_mac_1 == 8) begin
                            cnt_mac_1 <= 0;
                            done_1 <= 1;
                        end 
                    end
                end
            endcase
        end
    end
end

assign done_1_o = done_1;
assign en_psum_o = en_psum;
assign pu_1_clear_o = pu_1_clear;
assign pu_1_valid_o = pu_1_valid;
assign din3_en_o = din3_en;
endmodule
