module MAC(
    input wire clk_i,
    input wire rstn_i,
    input wire dsp_enable_i,
    input wire signed [7:0] dsp_input_i,
    input wire signed [7:0] dsp_weight_i,
    input wire dsp_valid_i,
    output reg signed [31:0] dsp_output_o,
    output reg dsp_valid_o
);
reg signed [30:0] partial_sum;
reg delay;
wire [31:0] dsp_output;

always@ (posedge clk_i or negedge rstn_i) begin
    if(!rstn_i) begin
        partial_sum <= 0;
    end
    else begin
        partial_sum <= $signed({dsp_output[31], dsp_output[29:0]});
    end
end
always@ (posedge clk_i or negedge rstn_i) begin
    if(!rstn_i) begin
        dsp_valid_o <= 0;
        delay <= 0;
    end
    else begin
        delay <= dsp_valid_i;
        dsp_valid_o <= delay;
    end
end
always@ (posedge clk_i or negedge rstn_i) begin
    if(!rstn_i) begin
        dsp_output_o <= 0;
    end
    else if(delay) begin
        dsp_output_o <= dsp_output;
    end
    else begin
        dsp_output_o <= 0;
    end
end

dsp_macro_0 DSP_for_MAC(
    .CLK(clk_i), // input wire CLK
    .CE(dsp_enable_i), // input wire CE
    .A(dsp_input_i), // input wire [7 : 0] A
    .B(dsp_weight_i), // input wire [7 : 0] B
    .C(partial_sum), // input wire [30 : 0] C
    .P(dsp_output) // output wire [31 : 0] P
);

endmodule
