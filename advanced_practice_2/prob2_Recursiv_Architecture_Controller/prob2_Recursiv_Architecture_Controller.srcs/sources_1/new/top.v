module top(
    input wire clk,
    input wire rstn,
    input wire start,
    output wire done,
    output reg [63:0] out_o
    );

wire pu_en;
wire pu_valid;
wire pu_clear;
wire [9:0] addr_din1;
wire [9:0] addr_din2;
wire [9:0] addr_din3;
wire [9:0] addr_temp;
wire din1_en;
wire din2_en;
wire din3_en;
wire temp_en;
wire temp_wen;
wire [63:0] data_din1;
wire [7:0] data_din2;
wire [7:0] data_din3;
wire [63:0] data_temp;
wire [63:0] din_temp;
wire mux_control;

always @(*) begin
    if(done) out_o = din_temp;
end

Controller Controller_inst(
   .clk_i(clk),
   .rstn_i(rstn),
   .start_i(start),
   .pu_en_o(pu_en),//output reg
   .pu_valid_o(pu_valid),//output reg
   .pu_clear_o(pu_clear),//output reg
   .addr_din1_o(addr_din1),//output reg [din1_ADDR_WIDTH-1:0] 
   .addr_din2_o(addr_din2),//output reg [din2_ADDR_WIDTH-1:0] 
   .addr_din3_o(addr_din3),//output reg [din3_ADDR_WIDTH-1:0] 
   .addr_temp_o(addr_temp),//output reg [temp_ADDR_WIDTH-1:0] 
   .din1_en_o(din1_en),//output reg
   .din2_en_o(din2_en),//output reg
   .din3_en_o(din3_en),//output reg
   .temp_en_o(temp_en),//output reg
   .temp_wen_o(temp_wen),//output reg
   .mux_control_o(mux_control),//output reg
   .done_o(done)//output reg
);

PU PU_inst(
    .clk_i(clk),//input wire 
    .rstn_i(rstn),//input wire 
    .sclr_i(pu_clear),//input wire 
    .dsp_enable_i(pu_en),//input wire 
    .dsp_valid_i(pu_valid),//input wire 
    .dsp_input_i(mux_control?data_din3:data_din2),//input wire [7:0] 
    .dsp_weight_i(mux_control?data_temp:data_din1),//input wire [63:0]
    .dsp_valid_o(),//output wire 
    .pu_output_o(din_temp)
    );

parameter_bram parameter_bram_inst(
    .clk_i(clk),//input wire 
    .en_din1_i(din1_en),//input wire 
    .en_din2_i(din2_en),//input wire 
    .en_din3_i(din3_en),//input wire 
    .addr_din1_i(addr_din1),//input wire [9:0] 
    .addr_din2_i(addr_din2),//input wire [9:0] 
    .addr_din3_i(addr_din3),//input wire [9:0] 
    .dout_din1_o(data_din1),//output wire [63:0]
    .dout_din2_o(data_din2),//output wire [7:0] 
    .dout_din3_o(data_din3)//output wire [7:0] 
    );

temp_bram temp_bram_inst(
    .clk_i(clk),//input wire 
    .en_temp_i(temp_en),//input wire 
    .wen_temp_i(temp_wen),//input wire 
    .addr_temp_i(addr_temp),//input wire [9:0] 
    .din_temp_i(din_temp),//input wire [63:0]
    .dout_temp_o(data_temp)//output wire [63:0]
    );

endmodule
