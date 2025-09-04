module gemm1(
    input               rstn_i,
    input               clk_i,
    input               en_i,
    input               valid_i,
    input               sclr_i,
    input [63:0]        din1_i,
    input [7:0]         din2_i,
    output wire         valid_o,
    output wire [63:0]  gemm_o
    );
wire [63:0] mac_outputs [0:7];
genvar i;
generate
    for (i = 0; i<8; i=i+1) begin : MAC
        MAC_clr MAC_clr_inst(
            .rstn_i(rstn_i),//input                       
            .clk_i(clk_i),//input                       
            .dsp_enable_i(en_i),//input                       
            .dsp_valid_i(valid_i),//input signed                
            .sclr_i(sclr_i),//input signed                
            .dsp_input_i(din1_i[8*i +: 8]),//input [7:0]                 
            .dsp_weight_i(din2_i),//input [7:0]                 
            .dsp_valid_o(valid_o),//output reg                  
            .dsp_output_o(mac_outputs[i])//output wire signed [31:0]   
        );
        assign gemm_o[8*i +: 8] = mac_outputs[i][7:0];
    end
endgenerate
endmodule
