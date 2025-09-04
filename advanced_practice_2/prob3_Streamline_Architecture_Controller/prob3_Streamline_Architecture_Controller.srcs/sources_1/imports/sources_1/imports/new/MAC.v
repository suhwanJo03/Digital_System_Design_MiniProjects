`timescale 1ns / 1ps

module MAC(
    input wire clk_i,
    input wire rstn_i,
    input wire sclr_i,
    input wire dsp_enable_i,
    input wire signed [7:0] dsp_input_i,
    input wire signed [7:0] dsp_weight_i,
    input wire dsp_valid_i,
    output reg dsp_valid_o,
    output reg signed [31:0] dsp_output_o
    );

reg signed [30:0] partial_sum;
wire signed [31:0] WIRE_OUTPUT;
reg dsp_latency;

always@(posedge clk_i or negedge rstn_i) begin
    if(!rstn_i | sclr_i) begin
        partial_sum <= 0;
        dsp_output_o <= 0;
    end
    else begin
        partial_sum <= $signed({WIRE_OUTPUT[31], WIRE_OUTPUT[29:0]});
        if (dsp_latency) begin
            dsp_output_o[31:0] <= WIRE_OUTPUT[31:0];
        end
        else begin
            dsp_output_o[31:0] <= 0;
        end
    end
end

always @(posedge clk_i) begin
    dsp_latency <= dsp_valid_i;
    dsp_valid_o <= dsp_latency;
end

xbip_dsp48_macro_0 DSP_for_MAC (
    .CLK(clk_i), // input wire CLK
    .CE(dsp_enable_i), // input wire CE
    .A(dsp_input_i), // input wire [7 : 0] A
    .B(dsp_weight_i), // input wire [7 : 0] B
    .C(partial_sum), // input wire [30 : 0] C
    .SCLR(sclr_i),  // input wire SCLR
    .P(WIRE_OUTPUT) // output wire [31 : 0] P
    );

endmodule