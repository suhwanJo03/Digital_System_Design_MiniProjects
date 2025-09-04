module PU(
    input wire clk_i,
    input wire rstn_i,
    input wire sclr_i,
    input wire dsp_enable_i,
    input wire dsp_valid_i,
    input wire [7:0] dsp_input_i,
    input wire [63:0] dsp_weight_i,

    output wire dsp_valid_o,
    output wire [63:0] pu_output_o
    );

wire signed [31:0] dsp_output_o [7:0];
genvar I;
generate
    for (I = 0; I<8; I=I+1) begin
        MAC MAC_inst(
        .clk_i(clk_i),//input wire
        .rstn_i(rstn_i),//input wire
        .sclr_i(sclr_i),//input wire
        .dsp_enable_i(dsp_enable_i),//input wire
        .dsp_input_i(dsp_input_i),//input wire signed [7:0] 
        .dsp_weight_i(dsp_weight_i[8*I +: 8]),//input wire signed [7:0] 
        .dsp_valid_i(dsp_valid_i),//input wire
        .dsp_valid_o(dsp_valid_o),//output reg
        .dsp_output_o(dsp_output_o[I])//output reg signed [31:0] 
        );
        assign pu_output_o[8*I +: 8] = dsp_output_o[I][7:0];
    end
endgenerate

endmodule
