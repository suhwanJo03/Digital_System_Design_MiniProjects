module Quantize(
    input wire               clk_i,
    input wire               rstn_i,
    input wire               valid_i,
    input wire signed [31:0] din_i,
    output wire              q_valid_o,
    output wire              q_done_o,
    output wire signed [7:0] qout_o
    );
localparam signed q_factor = 32'h001B_35FD;//1/s=27.21088
reg signed [31:0] qout0;
reg signed [7:0]  qout1;
reg q_valid;
reg q_done;
reg [3:0] q_cnt;
always @(posedge clk_i) begin
    if (!rstn_i) begin
        qout0 <= 0;
        qout1 <= 0;
        q_valid <= 0;
        q_done <= 0;
        q_cnt <= 0;
    end
    else begin
        qout0[31:0] <= $signed({din_i[31], din_i[22:8]}) * $signed({q_factor[31], q_factor[22:8]});
        if (q_cnt == 8) begin
            q_cnt <= 0;
            q_valid <= 0;
            q_done <= 0;
        end
        else begin
            if (valid_i) begin
                q_cnt <= q_cnt + 1;
                q_valid <= 1;
            end
            if (q_cnt == 7) q_done <= 1;
        end
    end
end
always @(*) begin
    if ($signed(qout0[31:16]) > 127) begin
        qout1 = 127;
    end
    else if ($signed(qout0[31:16]) < -128) begin
        qout1 = -128;
    end
    else begin
        if (qout0[15]) begin
            qout1 = qout0[31] ? {qout0[31], (qout0[22:16])} - 1
                              : {qout0[31], (qout0[22:16])} + 1;
        end
        else begin
            qout1 = {qout0[31], qout0[22:16]};
        end
    end
end
assign qout_o = qout1;
assign q_valid_o = q_valid;
assign q_done_o = q_done;
endmodule
