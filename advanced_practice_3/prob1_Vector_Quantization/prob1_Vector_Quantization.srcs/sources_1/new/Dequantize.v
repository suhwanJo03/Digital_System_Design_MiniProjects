module Dequantize(
    input wire                clk_i,
    input wire                rstn_i,
    input wire                valid_i,
    input wire signed [7:0]   qout_i,
    output wire               dq_valid_o,
    output wire               dq_done_o,
    output wire signed [31:0] dqdout_o
    );
localparam signed dq_factor = 32'h0000_0968;
reg signed [31:0] dqout0;
reg               dq_valid;
reg               dq_done;
reg [3:0]         dq_cnt;
always @(posedge clk_i) begin
    if (!rstn_i) begin
        dqout0 <= 0;
        dq_valid <= 0;
        dq_done <= 0;
        dq_cnt <= 0;
    end
    else begin
        dqout0 <= $signed({qout_i[7:0], 8'h00}) * $signed(dq_factor[23:8]);
        if (dq_cnt == 8) begin
            dq_cnt <= 0;
            dq_valid <= 0;
            dq_done <= 0;
        end
        else begin
            if (valid_i) begin
            dq_cnt <= dq_cnt + 1;
            dq_valid <= 1;
            end
            if (dq_cnt == 7) dq_done <= 1;
        end
    end
end
assign dqdout_o = dqout0;
assign dq_valid_o = dq_valid;
assign dq_done_o = dq_done;
endmodule
