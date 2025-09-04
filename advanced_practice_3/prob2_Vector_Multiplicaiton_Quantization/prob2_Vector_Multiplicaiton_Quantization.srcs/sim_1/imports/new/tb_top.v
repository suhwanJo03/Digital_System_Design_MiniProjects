`timescale 1ns / 1ps

module tb_top();
    reg clk_i;
    reg rstn_i;
    reg valid_i;
    reg [31:0] din_i;
    reg [7:0] quant_w_i;
    wire done_o;
    wire [31:0] dout_o;
top dut(
    .clk_i(clk_i),//input wire                
    .rstn_i(rstn_i),//input wire                
    .start_i(),//input wire                
    .valid_i(valid_i),//input wire                
    .vec_x_i(din_i),//input wire signed [31:0]  
    .quant_w_i(quant_w_i),//input wire signed [7:0]   
    .done_o(done_o),//output wire               
    .dout_o(dout_o)//output wire signed [31:0] 
    );
 // Clock generation
    always #5 clk_i = ~clk_i;
    
    initial begin
        // Initialize signals
        clk_i <= 0;
        rstn_i <= 1;
        valid_i <= 0;
        din_i <= 0;
        
        
        // Reset sequence
        #5 rstn_i <= 0;
        #10 rstn_i <= 1;
        
        // Test cases
        #10 din_i <= 32'hFFFE_B000;
            valid_i <= 1;
        #10 din_i <= 32'h0004_C000; quant_w_i <= 8'h23;
        #10 din_i <= 32'h0001_0000; quant_w_i <= 8'h07;
        #10 din_i <= 32'h0000_9000; quant_w_i <= 8'hF8;
        #10 din_i <= 32'hFFFB_6000; quant_w_i <= 8'h0A;
        #10 din_i <= 32'h0003_8000; quant_w_i <= 8'hEE;
        #10 din_i <= 32'hFFFF_4000; quant_w_i <= 8'hFE;
        #10 din_i <= 32'hFFFD_5000; quant_w_i <= 8'h0A;
        #10 din_i <= 32'h0000_0000; quant_w_i <= 8'h04;
            valid_i <= 0;
        #10 quant_w_i <= 8'h00;
        // Finish simulation
        #50 $stop;
    end
endmodule
