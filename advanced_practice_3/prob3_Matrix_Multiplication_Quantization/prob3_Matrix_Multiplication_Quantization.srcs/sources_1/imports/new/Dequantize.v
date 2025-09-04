module Dequantize(
    input wire                clk_i,
    input wire                rstn_i,
    input wire                valid_i,
    input wire signed [31:0]  qout_i,
    output wire               dq_valid_o,
    output wire               dq_done_o,
    output wire signed [31:0] dqdout_o
    );
localparam signed dq_factor = 32'h0000_0005;
reg signed [63:0] dqout;
reg               dq_valid;
reg               dq_done;
reg [2:0]         dq_cnt;
always @(posedge clk_i) begin
    if (!rstn_i) begin
        dqout <= 0;
        dq_valid <= 0;
        dq_done <= 0;
        dq_cnt <= 0;
    end
    else begin
        dqout <= $signed({qout_i[15:0], 16'h0000}) * $signed(dq_factor);
        if (dq_cnt == 4) begin
            dq_cnt <= 0;
            dq_valid <= 0;
            dq_done <= 0;
        end
        else begin
            if (valid_i) begin
            dq_cnt <= dq_cnt + 1;
            dq_valid <= 1;
            end
            if (dq_cnt == 3) dq_done <= 1;
        end
    end
end
assign dqdout_o = dqout[47:16];
assign dq_valid_o = dq_valid;
assign dq_done_o = dq_done;
endmodule
