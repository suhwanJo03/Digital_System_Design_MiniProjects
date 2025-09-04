`timescale 1ns / 1ps

module tb_top();
 reg                 clk;
 reg                 rstn;
 reg                 start;
 wire                done;
 wire [63:0]         out;

 initial begin
    clk <= 0;
    forever #5 clk <= ~clk;
 end

 initial begin
    rstn <= 1;
    @(posedge clk) rstn <= 0;
    @(posedge clk) rstn <= 1;
 end

 initial begin
    start = 0;
    @(posedge rstn);
    @(posedge clk) start <= 1;
 end

 always @(posedge clk) begin
    if (done) begin
    $stop;
    end
 end

 top dut(
    .clk(clk),
    .rstn(rstn),
    .start(start),
    .done(done),
    .out_o(out)
);
 endmodule
