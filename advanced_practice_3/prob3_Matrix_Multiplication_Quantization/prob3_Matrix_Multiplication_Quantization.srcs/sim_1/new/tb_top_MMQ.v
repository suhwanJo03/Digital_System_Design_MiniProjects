`timescale 1ns / 1ps
module tb_top_MMQ();
reg             clk;
reg             rstn;
reg             start;
reg     [31:0]  Vec_x;
wire            dq_val;
wire            dq_done;
wire    [31:0]  dqout;

 // Clock generation
always #5 clk = ~clk;
initial begin
    // Initialize signals
    clk <= 0;
    rstn <= 1;
    start <= 0;
    Vec_x <= 0;
    
    // Reset sequence
    #5 rstn <= 0;
    #10 rstn <= 1;

    // Start sequence
    #10 start <= 1;
    
    // Test cases
    #10 start <= 0;
        Vec_x <= 32'hFFFE_A855;
    #10 Vec_x <= 32'h0004_C000;
    #10 Vec_x <= 32'h0001_0000;
    #10 Vec_x <= 32'h0000_9000;
    #10 Vec_x <= 32'hFFFB_6000;
    #10 Vec_x <= 32'h0003_8000;
    #10 Vec_x <= 32'hFFFF_4000;
    #10 Vec_x <= 32'hFFFD_5000;

    // Finish simulation
    wait(dq_done);
    #50 $stop;
end
top_MMQ dut(
    .clk_i(clk),//input   wire                    
    .rstn_i(rstn),//input   wire                    
    .start_i(start),//input   wire                    
    .Vec_x_i(Vec_x),//input   wire    signed  [31:0]  
    .dq_valid_o(dq_val),//output  wire                    
    .dq_done_o(dq_done),//output  wire                    
    .dqout_o(dqout)//output  wire    signed  [31:0]  
    );
endmodule
