module PU_0(
    input wire clk_i,
    input wire rstn_i,
    input wire start_i,
    input wire local_en_0,
    input wire [63:0] data_din1,
    input wire [7:0] data_din2,
    output wire p_done_0_o,
    output wire din1_en_o,
    output wire din2_en_o,
    output wire done_0_o,
    output wire [1:0] din1_addr,
    output wire [4:0] din2_addr,
    output wire [63:0] pu_0_dout
    );

wire pu_0_en_wr;
wire pu_0_clear_wr;
wire pu_0_valid_wr;
wire [31:0] dsp_output_wr [0:7];

genvar i;
generate
    for (i = 0; i<8; i=i+1) begin
        MAC MAC0_inst(
        .clk_i(clk_i),//input wire
        .rstn_i(rstn_i),//input wire
        .sclr_i(pu_0_clear_wr),//input wire
        .dsp_enable_i(pu_0_en_wr),//input wire
        .dsp_input_i(data_din1[8*i +: 8]),//input wire signed [7:0] 
        .dsp_weight_i(data_din2),//input wire signed [7:0] 
        .dsp_valid_i(pu_0_valid_wr),//input wire
        .dsp_valid_o(),//output reg
        .dsp_output_o(dsp_output_wr[i])//output reg  signed [31:0] 
        );
        assign pu_0_dout[8*i +: 8] = {dsp_output_wr[i][31], dsp_output_wr[i][7:0]};
    end
endgenerate


Local_Controller_0 Local_Controller_0_inst(
    .clk_i(clk_i),//input wire 
    .rstn_i(rstn_i),//input wire 
    .start_i(start_i),//input wire 
    .local_en_0(local_en_0),//input wire 
    .p_done_0_o(p_done_0_o),//output wire
    .pu_0_en_o(pu_0_en_wr),//output wire
    .pu_0_clear_o(pu_0_clear_wr),//output wire
    .pu_0_valid_o(pu_0_valid_wr),//output wire
    .din1_en_o(din1_en_o),//output wire
    .din2_en_o(din2_en_o),//output wire
    .done_0_o(done_0_o),//output wire
    .din1_addr(din1_addr),//output reg [1:0] 
    .din2_addr(din2_addr)//output reg [4:0] 
);
endmodule
