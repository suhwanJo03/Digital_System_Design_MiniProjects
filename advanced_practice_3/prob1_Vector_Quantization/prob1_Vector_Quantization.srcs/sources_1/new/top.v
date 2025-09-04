module top(
    input wire                clk_i,
    input wire                rstn_i,
    input wire                start_i,
    input wire                valid_i,
    input wire signed [31:0]  din_i,
    output wire               done_o,
    output wire signed [31:0] dout_o
    );
Quantize uut0 (
    .clk_i(clk_i),
    .rstn_i(rstn_i),
    .valid_i(valid_i),
    .din_i(din_i),
    .q_valid_o(valid),
    .q_done_o(),
    .qout_o(qout)
);
wire valid;
wire [7:0] qout;
Dequantize uut1 (
    .clk_i(clk_i),//input wire                
    .rstn_i(rstn_i),//input wire                
    .valid_i(valid),//input wire                
    .qout_i(qout),//input wire signed [7:0]   
    .dq_valid_o(),//output wire               
    .dq_done_o(done_o),//output wire               
    .dqdout_o(dout_o)//output wire signed [31:0] 
);
endmodule
