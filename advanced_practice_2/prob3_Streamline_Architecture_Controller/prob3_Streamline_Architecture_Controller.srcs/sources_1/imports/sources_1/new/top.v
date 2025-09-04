module top(
    input wire clk_i,
    input wire rstn_i,
    input wire start_i,
    output wire done_o,
    output wire [63:0] out_o
    );

wire done_0;
wire done_1;
wire local_en_0;
wire local_en_1;
wire clear_local_0;
wire clear_local_1;
wire p_done_0;

wire din1_en;
wire din2_en;
wire din3_en;

wire [63:0] data_din1;
wire [7:0]  data_din2;
wire [7:0]  data_din3;
wire [63:0] data_temp;

wire [1:0] din1_addr;
wire [4:0] din2_addr;
wire [2:0] din3_addr;
Global_Controller Global_Controller_inst(
    .clk_i(clk_i),//input wire 
    .rstn_i(rstn_i),//input wire 
    .start_i(start_i),//input wire 
    .done_0_i(done_0),//input wire 
    .done_1_i(done_1),//input wire 
    .local_en_0(local_en_0),//output wire
    .local_en_1(local_en_1),//output wire
    .clear_local_0(clear_local_0),//output wire
    .clear_local_1(clear_local_1),//output wire
    .done_o(done_o)//output wire
    );
PU_0 PU_0_inst(
    .clk_i(clk_i),//input wire 
    .rstn_i(rstn_i),//input wire 
    .start_i(start_i),//input wire 
    .local_en_0(local_en_0),//input wire 
    .data_din1(data_din1),//input wire [63:0]
    .data_din2(data_din2),//input wire [7:0] 
    .p_done_0_o(p_done_0),//output wire
    .din1_en_o(din1_en),//output wire
    .din2_en_o(din2_en),//output wire
    .done_0_o(done_0),//output wire
    .din1_addr(din1_addr),//output wire [1:0] 
    .din2_addr(din2_addr),//output wire [4:0] 
    .pu_0_dout(data_temp)//output wire [63:0]
    );
PU_1 PU_1_inst(
    .clk_i(clk_i),//input wire 
    .rstn_i(rstn_i),//input wire 
    .start_i(start_i),//input wire 
    .p_done_0_i(p_done_0),//input wire 
    .local_en_1(local_en_1),//input wire 
    .data_temp(data_temp),//input wire [63:0] 
    .data_din3(data_din3),//input wire [7:0]  
    .din3_en_o(din3_en),//output wire
    .done_1_o(done_1),//output wire
    .din3_addr(din3_addr),//output wire [2:0]  
    .pu_1_dout(out_o)//output wire [63:0] 
    );
single_port_bram #(
    .WIDTH(8),
    .DEPTH(32),
    .INIT_FILE("C:/Users/josuh/Desktop/DSD25/txt_data/din1.txt")
    ) din1_bram(
    .clk(clk_i),
    .en(din2_en),
    .wen(),
    .addr(din2_addr),
    .din(),
    .dout(data_din2)
);
single_port_bram #(
    .WIDTH(64),
    .DEPTH(4),
    .INIT_FILE("C:/Users/josuh/Desktop/DSD25/txt_data/din2.txt")
    ) din2_bram(
    .clk(clk_i),
    .en(din1_en),
    .wen(),
    .addr(din1_addr),
    .din(),
    .dout(data_din1)
);
single_port_bram #(
    .WIDTH(8),
    .DEPTH(8),
    .INIT_FILE("C:/Users/josuh/Desktop/DSD25/txt_data/din3.txt")
    ) din3_bram(
    .clk(clk_i),
    .en(din3_en),
    .wen(),
    .addr(din3_addr),
    .din(),
    .dout(data_din3)
);
//blk_mem_gen_0 din1_bram (
//  .clka(clk_i),    // input wire clka
//  .ena(din1_en),      // input wire ena
//  .wea(),      // input wire [0 : 0] wea
//  .addra(din1_addr),  // input wire [1 : 0] addra
//  .dina(),    // input wire [63 : 0] dina
//  .douta(data_din1)  // output wire [63 : 0] douta
//);
//blk_mem_gen_1 din2_bram (
//  .clka(clk_i),    // input wire clka
//  .ena(din2_en),      // input wire ena
//  .wea(),      // input wire [0 : 0] wea
//  .addra(din2_addr),  // input wire [4 : 0] addra
//  .dina(),    // input wire [7 : 0] dina
//  .douta(data_din2)  // output wire [7 : 0] douta
//);
//blk_mem_gen_2 din3_bram (
//  .clka(clk_i),    // input wire clka
//  .ena(din3_en),      // input wire ena
//  .wea(),      // input wire [0 : 0] wea
//  .addra(din3_addr),  // input wire [2 : 0] addra
//  .dina(),    // input wire [7 : 0] dina
//  .douta(data_din3)  // output wire [7 : 0] douta
//);
endmodule
