`timescale 1ns / 1ps

module tb_top();
reg clk;
reg rstn;
reg valid_i;
reg en;
reg sclr;
reg [63:0] din1;
reg [7:0] din2;
reg [7:0] din3;
wire valid_o;
wire [255:0] mul;

initial begin
    clk <= 0;
    forever begin
        #5  clk = ~clk;
    end
end
initial begin
    rstn = 1;
    #20 rstn = 0;
        en = 0;
        sclr = 0;
        valid_i = 0;
        din1 = 0;
        din2 = 0;
        din3 = 0;
    #10 rstn = 1;
        sclr = 0;
end
initial begin
    #40
    wait(rstn);
    //1
    #15 en <= 1; din1 <= 64'h0102_0101_0102_0301; din2 <= 8'h01;
        din3 <= 8'h01;
    #10 en <= 1; din1 <= 64'h0203_0102_0201_0301; din2 <= 8'h01;
        din3 <= 8'h02;
    #10 en <= 1; din1 <= 64'h0302_0103_0101_0201; din2 <= 8'h02;
        din3 <= 8'h02;
    #10 en <= 1; din1 <= 64'h0101_0201_0201_0102; din2 <= 8'h02;
        din3 <= 8'h01;
        valid_i <= 1;
    #10 din1 <= 0;
        din2 <= 0;
        sclr <= 1;
        valid_i <= 0;
        din3 <= 8'h02;
    //2
    #10 en <= 1; din1 <= 64'h0102_0101_0102_0301; din2 <= 8'h03;
        din3 <= 8'h02;
        sclr <= 0;
    #10 en <= 1; din1 <= 64'h0203_0102_0201_0301; din2 <= 8'h01;
        din3 <= 8'h01;
    #10 en <= 1; din1 <= 64'h0302_0103_0101_0201; din2 <= 8'h01;
        din3 <= 8'h02;
    #10 en <= 1; din1 <= 64'h0101_0201_0201_0102; din2 <= 8'h02;
        valid_i <= 1;
        din3 <= 0;
    #10 din1 <= 0;
        din2 <= 0;
        sclr <= 1;
        valid_i <= 0;
    //3
    #10 en <= 1; din1 <= 64'h0102_0101_0102_0301; din2 <= 8'h02;
        sclr <= 0;
    #10 en <= 1; din1 <= 64'h0203_0102_0201_0301; din2 <= 8'h02;
    #10 en <= 1; din1 <= 64'h0302_0103_0101_0201; din2 <= 8'h01;
    #10 en <= 1; din1 <= 64'h0101_0201_0201_0102; din2 <= 8'h01;
        valid_i <= 1;
    #10 din1 <= 0;
        din2 <= 0;
        sclr <= 1;
        valid_i <= 0;
    //4
    #10 en <= 1; din1 <= 64'h0102_0101_0102_0301; din2 <= 8'h01;
        sclr <= 0;
    #10 en <= 1; din1 <= 64'h0203_0102_0201_0301; din2 <= 8'h01;
    #10 en <= 1; din1 <= 64'h0302_0103_0101_0201; din2 <= 8'h03;
    #10 en <= 1; din1 <= 64'h0101_0201_0201_0102; din2 <= 8'h03;
        valid_i <= 1;
    #10 din1 <= 0;
        din2 <= 0;
        sclr <= 1;
        valid_i <= 0;
    //5
    #10 en <= 1; din1 <= 64'h0102_0101_0102_0301; din2 <= 8'h01;
        sclr <= 0;
    #10 en <= 1; din1 <= 64'h0203_0102_0201_0301; din2 <= 8'h01;
    #10 en <= 1; din1 <= 64'h0302_0103_0101_0201; din2 <= 8'h02;
    #10 en <= 1; din1 <= 64'h0101_0201_0201_0102; din2 <= 8'h02;
        valid_i <= 1;
    #10 din1 <= 0;
        din2 <= 0;
        sclr <= 1;
        valid_i <= 0;
    //6
    #10 en <= 1; din1 <= 64'h0102_0101_0102_0301; din2 <= 8'h01;
        sclr <= 0;
    #10 en <= 1; din1 <= 64'h0203_0102_0201_0301; din2 <= 8'h03;
    #10 en <= 1; din1 <= 64'h0302_0103_0101_0201; din2 <= 8'h01;
    #10 en <= 1; din1 <= 64'h0101_0201_0201_0102; din2 <= 8'h01;
        valid_i <= 1;
    #10 din1 <= 0;
        din2 <= 0;
        sclr <= 1;
        valid_i <= 0;
    //7
    #10 en <= 1; din1 <= 64'h0102_0101_0102_0301; din2 <= 8'h01;
        sclr <= 0;
    #10 en <= 1; din1 <= 64'h0203_0102_0201_0301; din2 <= 8'h02;
    #10 en <= 1; din1 <= 64'h0302_0103_0101_0201; din2 <= 8'h01;
    #10 en <= 1; din1 <= 64'h0101_0201_0201_0102; din2 <= 8'h02;
        valid_i <= 1;
    #10 din1 <= 0;
        din2 <= 0;
        sclr <= 1;
        valid_i <= 0;
    //8
    #10 en <= 1; din1 <= 64'h0102_0101_0102_0301; din2 <= 8'h02;
        sclr <= 0;
    #10 en <= 1; din1 <= 64'h0203_0102_0201_0301; din2 <= 8'h02;
    #10 en <= 1; din1 <= 64'h0302_0103_0101_0201; din2 <= 8'h01;
    #10 en <= 1; din1 <= 64'h0101_0201_0201_0102; din2 <= 8'h01;
        valid_i <= 1;
    #10 din1 <= 0;
        din2 <= 0;
        sclr <= 1;
        valid_i <= 0;
    #10 en <= 0;
        sclr <= 0;
    #300 $finish;
end
top dut(
    .rstn_i(rstn),//input               
    .clk_i(clk),//input               
    .en_i(en),//input               
    .valid_i(valid_i),//input               
    .sclr_i(sclr),//input               
    .din1_i(din1),//input [63:0]        
    .din2_i(din2),//input [7:0]         
    .din3_i(din3),//input [7:0]         
    .valid_o(valid_o),//output wire         
    .mul_o(mul)//output wire [255:0] 
    );
endmodule
