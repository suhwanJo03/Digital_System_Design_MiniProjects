`timescale 1ns / 1ps

module tb_Quantize();
    reg clk_i;
    reg rstn_i;
    reg valid_i;
    reg [31:0] din_i;
    wire done_o;
    wire [31:0] dout_o;
    wire valid;
    wire [7:0] qout;
    // Instantiate the Quantize module
    Quantize uut0 (
        .clk_i(clk_i),
        .rstn_i(rstn_i),
        .valid_i(valid_i),
        .din_i(din_i),
        .q_valid_o(valid),
        .q_done_o(),
        .qout_o(qout)
    );

    Dequantize uut1 (
        .clk_i(clk_i),//input wire                
        .rstn_i(rstn_i),//input wire                
        .valid_i(valid),//input wire                
        .qout_i(qout),//input wire signed [7:0]   
        .dq_valid_o(),//output wire               
        .dq_done_o(done_o),//output wire               
        .dqdout_o(dout_o)//output wire signed [31:0] 
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
        #10 din_i <= 32'h0004_C000;
        #10 din_i <= 32'h0001_0000;
        #10 din_i <= 32'h0000_9000;
        #10 din_i <= 32'hFFFB_6000;
        #10 din_i <= 32'h0003_8000;
        #10 din_i <= 32'hFFFF_4000;
        #10 din_i <= 32'hFFFD_5000;
        #10 din_i <= 32'h0000_0000;
            valid_i <= 0;
        
        // Finish simulation
        #50 $stop;
    end
endmodule