module MAC(
input       wire                                clk_i,
input       wire                                rstn_i,
input       wire                                clear_i,
input       wire                                dsp_enable_i,
input       wire        signed      [7:0]       dsp_input_i,
input       wire        signed      [7:0]       dsp_weight_i,
output      wire        signed      [31:0]      dsp_output_o
);
reg         signed      [30:0]      partial_sum;
always@(posedge clk_i) begin
    if(!rstn_i) begin
        partial_sum<= 0;
    end
    else begin
        if (clear_i) begin
            partial_sum<= 0;
        end
        else begin
            partial_sum<= $signed({dsp_output_o[31], dsp_output_o[29:0]});
        end
    end
end
xbip_dsp48_macro_0 DSP_for_MAC(
    .CLK(clk_i),  // input wire CLK
    .CE(dsp_enable_i),    // input wire CE
    .SCLR(clear_i),
    .A(dsp_input_i),      // input wire [7 : 0] A
    .B(dsp_weight_i),      // input wire [7 : 0] B
    .C(partial_sum),      // input wire [30 : 0] C
    .P(dsp_output_o)      // output wire [31 : 0] P
);
endmodule