`timescale 1ns / 1ps

module MAC(
    input wire                clk_i,
    input wire                rstn_i,
    input wire                sclr_i,
    input wire                dsp_enable_i,
    input wire signed [7:0]   dsp_input_i,
    input wire signed [7:0]   dsp_weight_i,
    output wire               dsp_valid_i,    
    output reg                dsp_valid_o,
    output wire signed [31:0] dsp_output_o
    );
always @(posedge clk_i) begin
    dsp_valid_o <= dsp_valid_i;
end
xbip_dsp48_macro_0 DSP_for_MAC (
    .CLK(clk_i), // input wire CLK
    .CE(dsp_enable_i), // input wire CE
    .A(dsp_input_i), // input wire [7 : 0] A
    .B(dsp_weight_i), // input wire [7 : 0] B
    .C($signed({dsp_output_o[31], dsp_output_o[29:0]})), // input wire [30 : 0] C
    .SCLR(sclr_i),  // input wire SCLR
    .P(dsp_output_o) // output wire [31 : 0] P
    );

endmodule