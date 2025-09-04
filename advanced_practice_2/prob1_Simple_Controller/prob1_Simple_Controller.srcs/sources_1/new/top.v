module top(
    input   wire                        clk_i,
    input   wire                        rstn_i,
    input   wire                        start_i,
    output  wire                        done_o,
    output  wire    signed    [31:0]    acc_o
    );
wire    [2:0]           w_addr;
wire                    w_en;
wire    [2:0]           x_addr;
wire                    x_en;
wire                    mac_en;
wire                    mac_clear;
wire    signed  [7:0]   w_in;
wire    signed  [7:0]   x_in;
ctrl_fsm ctrl_fsm_inst(
    .clk_i(clk_i),//input   wire            
    .rstn_i(rstn_i),//input   wire            
    .start_i(start_i),//input   wire            
    .w_addr_o(w_addr),//output  wire    [2:0]   
    .w_en_o(w_en),//output  wire            
    .x_addr_o(x_addr),//output  wire    [2:0]   
    .x_en_o(x_en),//output  wire            
    .mac_en_o(mac_en),//output  wire            
    .mac_clear_o(mac_clear),//output  wire            
    .done_o(done_o)//output  wire            
    );
MAC MAC_inst(
    .clk_i(clk_i),//input       wire                                
    .rstn_i(rstn_i),//input       wire                                
    .clear_i(mac_clear),//input       wire                                
    .dsp_enable_i(mac_en),//input       wire                                
    .dsp_input_i(x_in),//input       wire        signed      [7:0]       
    .dsp_weight_i(w_in),//input       wire        signed      [7:0]       
    .dsp_output_o(acc_o)//output      wire        signed      [31:0]      
);
single_port_bram #(
    .WIDTH(8),
    .DEPTH(8),
    .INIT_FILE("w_data.txt")
    ) w_bram(
    .clk(clk_i),
    .en(w_en),
    .wen(0),
    .addr(w_addr),
    .din(),
    .dout(w_in)
);
single_port_bram #(
    .WIDTH(8),
    .DEPTH(8),
    .INIT_FILE("x_data.txt")
    ) x_bram(
    .clk(clk_i),
    .en(x_en),
    .wen(0),
    .addr(x_addr),
    .din(),
    .dout(x_in)
);
endmodule
