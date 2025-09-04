module PU_1(
    input wire clk_i,
    input wire rstn_i,
    input wire start_i,
    input wire p_done_0_i,
    input wire local_en_1,
    input wire [63:0] data_temp,
    input wire [7:0] data_din3,
    output wire din3_en_o,
    output wire done_1_o,
    output wire [2:0] din3_addr,
    output wire [63:0] pu_1_dout
    );

wire en_psum_wr;
wire pu_1_clear_wr;
wire pu_1_valid_wr;
wire [31:0] dsp_output_wr [0:7];
reg sclr_i;

always @(posedge clk_i) begin
    if (!rstn_i) begin
        sclr_i <= 0;
    end
end
genvar i;
generate
    for (i = 0; i<8; i=i+1) begin
        MAC1 MAC1_inst (
        .clk_i(clk_i),//input wire 
        .rstn_i(rstn_i),//input wire 
        .sclr_i(0),//input wire 
        .dsp_enable_i(1),//input wire 
        .en_psum_i(en_psum_wr),//input wire
        .dsp_input_i(data_temp[8*i +: 8]),//input wire signed [7:0] 
        .dsp_weight_i(data_din3),//input wire signed [7:0] 
        .dsp_valid_i(pu_1_valid_wr),//input wire 
        .dsp_valid_o(),//output reg 
        .dsp_output_o(dsp_output_wr[i])//output reg signed [31:0] 
        );
        assign pu_1_dout[8*i +: 8] = {dsp_output_wr[i][31], dsp_output_wr[i][7:0]};
    end
endgenerate

Local_Controller_1 Local_Controller_1_inst(
    .clk_i(clk_i),//input wire 
    .rstn_i(rstn_i),//input wire 
    .start_i(start_i),//input wire 
    .p_done_0_i(p_done_0_i),//input wire 
    .local_en_1(local_en_1),//input wire 
    .done_1_o(done_1_o),//output wire
    .en_psum_o(en_psum_wr),//output wire
    .pu_1_clear_o(pu_1_clear_wr),//output wire
    .pu_1_valid_o(pu_1_valid_wr),//output wire
    .din3_en_o(din3_en_o),//output wire
    .din3_addr(din3_addr)//output reg [2:0] 
    );
endmodule
