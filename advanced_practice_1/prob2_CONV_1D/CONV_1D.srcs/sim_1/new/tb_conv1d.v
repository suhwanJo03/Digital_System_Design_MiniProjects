`timescale 1ns / 1ps

module tb_conv1d();
reg clk;
reg rstn;
reg valid_i;
reg en;
reg [31:0] din;
reg [7:0] win;
wire valid_o;
wire [127:0] conv;

// make clock (frequency : 100MHz)
initial begin
    clk=0;
    forever
        #5 clk= ~clk;
end
//reset all system
initial begin
        rstn<= 1;
    #20 rstn= 0; en= 0; valid_i= 0; din = 0; win = 0;
    #10 rstn= 1;
end

initial begin
    #40
    wait(rstn);
    #15 en <= 1; din <= {8'h01, 8'h03, 8'hFF, 8'h01}; win <= 8'hFF;
    #10 en <= 1; din <= {8'h01, 8'hFE, 8'h02, 8'h01}; win <= 8'h02;
    #10 en <= 1; din <= {8'h03, 8'hFF, 8'h01, 8'hFF}; win <= 8'hFD;
    #10 en <= 1; din <= {8'hFE, 8'h02, 8'h01, 8'h02}; win <= 8'h01;
    #10 en <= 1; din <= {8'hFF, 8'h01, 8'hFF, 8'h03}; win <= 8'h01;
        valid_i <= 1;
    #10 en <= 0; din <= 0; win <= 0; valid_i <= 0;
end
initial begin
    #100
    wait(win == 0);
    #20
    $stop();
end

conv1d dut(
    .rstn_i(rstn),//input               
    .clk_i(clk),//input               
    .en_i(en),//input               
    .valid_i(valid_i),//input               
    .din_i(din),//input [31:0]        
    .win_i(win),//input [7:0]         
    .valid_o(valid_o),//output wire         
    .conv_o(conv)//output wire [127:0] 
    );
endmodule
