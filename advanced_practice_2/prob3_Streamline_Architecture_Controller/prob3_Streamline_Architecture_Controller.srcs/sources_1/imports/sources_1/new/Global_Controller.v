module Global_Controller(
    input wire clk_i,
    input wire rstn_i,
    input wire start_i,
    input wire done_0_i,
    input wire done_1_i,

    output wire local_en_0,
    output wire local_en_1,
    output wire clear_local_0,
    output wire clear_local_1,
    output wire done_o
    );

reg [1:0] state;
reg [1:0] next_state;
reg en_0;
reg en_1;
reg clear_0;
reg clear_1;
reg done;
localparam IDLE = 3'd0,
           MUL  = 3'd1,
           DONE = 3'd2;
always @(posedge clk_i) begin
    if (!rstn_i) begin
        state <= IDLE;
        next_state <= IDLE;
        en_0 <= 0;
        en_1 <= 0;
        clear_0 <= 0;
        clear_1 <= 0;
        done <= 0;
    end
    else begin
        case (state)
            IDLE: begin
                if (start_i) begin
                    state <= MUL;
                    next_state <= MUL;
                end
            end
            MUL: begin
                if(done_0_i && done_1_i) begin
                    next_state <= DONE;
                    done <= 1;
                    clear_0 <= 1;
                    clear_1 <= 1;
                end
                else begin
                    state <= next_state;
                    en_0 <= 1;
                    en_1 <= 1;
                end
            end
        endcase
    end
end

assign local_en_0 = en_0;
assign local_en_1 = en_1;
assign clear_local_0 = clear_0;
assign clear_local_1 = clear_1;
assign done_o = done;
endmodule
