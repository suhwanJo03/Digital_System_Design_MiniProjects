module parameter_bram(
    input wire clk_i,
    input wire en_din1_i,
    input wire en_din2_i,
    input wire en_din3_i,
    input wire [9:0] addr_din1_i,
    input wire [9:0] addr_din2_i,
    input wire [9:0] addr_din3_i,
    
    output wire [63:0] dout_din1_o,
    output wire [7:0] dout_din2_o,
    output wire [7:0] dout_din3_o
    );

single_port_bram #(
    .WIDTH(64),
    .DEPTH(1024),
    .INIT_FILE("din2.txt")
) bram_din1_inst(
    .clk(clk_i),
    .en(en_din1_i),
    .wen(),
    .addr(addr_din1_i),
    .din(),
    .dout(dout_din1_o)
);

single_port_bram #(
    .WIDTH(8),
    .DEPTH(1024),
    .INIT_FILE("din1.txt")
) bram_din2_inst(
    .clk(clk_i),
    .en(en_din2_i),
    .wen(),
    .addr(addr_din2_i),
    .din(),
    .dout(dout_din2_o)
);

single_port_bram #(
    .WIDTH(8),
    .DEPTH(1024),
    .INIT_FILE("din3.txt")
) bram_din3_inst(
    .clk(clk_i),
    .en(en_din3_i),
    .wen(),
    .addr(addr_din3_i),
    .din(),
    .dout(dout_din3_o)
);
endmodule
