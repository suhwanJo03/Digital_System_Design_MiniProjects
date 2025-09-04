`timescale 1ns / 1ps
module tb_top();
     reg                 clk;
     reg                 rstn;
     reg                 start;
     wire                done;
     wire    [31:0]      acc;
 initial begin
    clk= 0;
    forever #5 clk= ~clk;
 end
 initial begin
    rstn<= 0;
    @(posedge clk) rstn<= 0;
    @(posedge clk) rstn<= 1;
 end
 initial begin
    start <= 0;
    wait(rstn);
    @(posedge clk) start <= 1;
    @(posedge clk) start <= 0;
 end
 always @(posedge clk) begin
    if (done) begin
        $stop;
    end
 end
 top dut(
    .clk_i(clk),
    .rstn_i(rstn),
    .start_i(start),
    .done_o(done),
    .acc_o(acc) 
);
 endmodule