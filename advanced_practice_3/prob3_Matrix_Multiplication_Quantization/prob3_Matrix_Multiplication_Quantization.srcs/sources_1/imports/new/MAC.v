module MAC(
    input wire                clk_i,
    input wire                rstn_i,
    input wire                sclr_i,
    input wire                dsp_enable_i,
    input wire        [31:0]  dsp_input_i,
    input wire signed [7:0]   dsp_weight_i,
    output wire               dsp_valid_i,    
    output reg                dsp_valid_o,
    output wire       [127:0] dsp_output_o
    );
wire signed  [31:0]  dsp_output  [0:3];
genvar i;
generate
    for (i = 0; i<4; i=i+1) begin: MAC
        xbip_dsp48_macro_0 DSP_for_MAC (
            .CLK(clk_i), // input wire CLK
            .CE(dsp_enable_i), // input wire CE
            .A($signed(dsp_input_i[8*i+:8])), // input wire [7 : 0] A
            .B(dsp_weight_i), // input wire [7 : 0] B
            .C($signed({dsp_output[i][31], dsp_output[i][29:0]})), // input wire [30 : 0] C
            .SCLR(sclr_i),  // input wire SCLR
            .P(dsp_output[i]) // output wire [31 : 0] P
            );
        assign dsp_output_o[32*i+:32] = dsp_output[i];
    end
endgenerate
always @(posedge clk_i) begin
    dsp_valid_o <= dsp_valid_i;
end
endmodule