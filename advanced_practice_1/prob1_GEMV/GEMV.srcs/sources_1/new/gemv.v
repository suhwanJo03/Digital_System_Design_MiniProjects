module gemv(
    input clk_i,
    input rstn_i,
    input valid_i,
    input en_i,
    input signed [127:0]   din_i,
    input signed [7:0]     win_i,
    output wire valid_o,
    output wire signed [511:0] gemv_o
    );

wire [31:0] gemv [0:15];
genvar i;

generate
    for (i = 0; i<16 ; i=i+1) begin : MAC
        MAC MAC_inst(
            .clk_i(clk_i),//input wire 
            .rstn_i(rstn_i),//input wire 
            .dsp_enable_i(en_i),//input wire 
            .dsp_input_i(din_i[i*8 +: 8]),//input wire signed [7:0] 
            .dsp_weight_i(win_i),//input wire signed [7:0] 
            .dsp_valid_i(valid_i),//input wire 
            .dsp_output_o(gemv[i]),//output reg signed [31:0] 
            .dsp_valid_o(valid_o)//output reg 
        );
    end
endgenerate

assign gemv_o = {gemv[15], gemv[14], gemv[13], gemv[12]
                , gemv[11], gemv[10], gemv[9], gemv[8]
                , gemv[7], gemv[6], gemv[5], gemv[4]
                , gemv[3], gemv[2], gemv[1], gemv[0]};

endmodule
