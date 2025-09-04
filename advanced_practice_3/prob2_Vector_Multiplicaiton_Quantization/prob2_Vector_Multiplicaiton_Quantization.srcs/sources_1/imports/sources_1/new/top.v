module top(
    input wire                clk_i,
    input wire                rstn_i,
    input wire                start_i,
    input wire                valid_i,
    input wire signed [31:0]  vec_x_i,
    input wire signed [7:0]   quant_w_i,
    output wire               done_o,
    output wire signed [31:0] dout_o
    );
wire val2en;
wire done2val;
wire signed [7:0] qout;
wire dsp_valid_o;
wire signed [31:0] dsp_output_o;
Quantize uut0(
    .clk_i(clk_i),//input wire               
    .rstn_i(rstn_i),//input wire               
    .valid_i(valid_i),//input wire               
    .din_i(vec_x_i),//input wire signed [31:0] 
    .q_valid_o(val2en),//output wire              
    .q_done_o(done2val),//output wire              
    .qout_o(qout)//output wire signed [7:0] 
    );
MAC uut1(
    .clk_i(clk_i),//input wire               
    .rstn_i(rstn_i),//input wire               
    .sclr_i(0),//input wire               
    .dsp_enable_i(val2en),//input wire               
    .dsp_input_i(qout),//input wire signed [7:0]  
    .dsp_weight_i(quant_w_i),//input wire signed [7:0]  
    .dsp_valid_i(done2val),//input wire               
    .dsp_valid_o(dsp_valid_o),//output reg               
    .dsp_output_o(dsp_output_o)//output reg signed [31:0] 
    );
Dequantize uut2(
    .clk_i(clk_i),//input wire                
    .rstn_i(rstn_i),//input wire                
    .valid_i(dsp_valid_o),//input wire                
    .dqdin_i(dsp_output_o[15:0]),//input wire signed [15:0]              
    .dq_done_o(done_o),//output wire               
    .dqdout_o(dout_o)//output wire signed [31:0] 
    );
endmodule
