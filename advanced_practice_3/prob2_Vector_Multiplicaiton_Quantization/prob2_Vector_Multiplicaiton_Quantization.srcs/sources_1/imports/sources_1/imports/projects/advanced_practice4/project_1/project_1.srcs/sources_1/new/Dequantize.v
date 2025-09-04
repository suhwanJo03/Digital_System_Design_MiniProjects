module Dequantize(
    input wire                clk_i,
    input wire                rstn_i,
    input wire                valid_i,
    input wire signed [15:0]  dqdin_i,
    output wire               dq_done_o,
    output wire signed [31:0] dqdout_o
    );
localparam signed dq_factor = 32'h0000_0968;
localparam signed w_factor = 32'h0000_0086;
reg signed [63:0] dqout0;
reg signed [63:0] dqout1;
reg signed [31:0] dqdout;
reg               valid;
reg               dq_done_delay1;
reg               dq_done_delay2;
reg               dq_done;
always @(posedge clk_i) begin
    if (!rstn_i) begin
        dqout0 <= 0;
        dqout1 <= 0;
    end
    else begin
        dqout0 <= $signed({dqdin_i, 16'h0000}) * dq_factor;
        dqout1 <= $signed({dqout0[47:16]}) * w_factor;
        dqdout[31:0] = $signed(dqout1[47:16]);
    end
end
always @(posedge clk_i) begin
    if (!rstn_i) begin
        dq_done_delay1 <= 0;
        dq_done_delay2 <= 0;
        dq_done <= 0;
    end
    else begin
        dq_done_delay1 <= valid_i;
        dq_done_delay2 <= dq_done_delay1;
        dq_done <= dq_done_delay2;
    end
end
assign dqdout_o = dq_done ? dqdout : 0;
assign dq_done_o = dq_done;
endmodule
