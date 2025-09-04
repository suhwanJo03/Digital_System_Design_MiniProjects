module conv1d(
    input               rstn_i,
    input               clk_i,
    input               en_i,
    input               valid_i,
    input [31:0]        din_i,
    input [7:0]         win_i,

    output wire         valid_o,
    output wire [127:0] conv_o
    );

wire [31:0] conv [0:3];
//reg [127:0] conv_buff;

genvar i;
generate
    for (i = 0; i<4; i=i+1) begin : MAC
        MAC MAC_inst(
            .clk_i(clk_i),//input wire 
            .rstn_i(rstn_i),//input wire 
            .dsp_enable_i(en_i),//input wire 
            .dsp_input_i(din_i[8*i +: 8]),//input wire signed [7:0] 
            .dsp_weight_i(win_i),//input wire signed [7:0] 
            .dsp_valid_i(valid_i),//input wire 
            .dsp_output_o(conv[i]),//output reg signed [31:0] 
            .dsp_valid_o(valid_o)//output reg 
        );
        assign conv_o[32*i +: 32] = conv[i];
    end
endgenerate

//integer j;
//always @(*) begin
//    if(~rstn_i) conv_buff = 0;
//    else begin
//        for (j = 0; j<4; j=j+1) begin
//            conv_buff[j*8 +: 8] = conv[j];
//        end
//    end
//end

//assign conv_o = conv_buff;
endmodule
