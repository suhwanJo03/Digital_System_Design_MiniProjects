module temp_bram #(
    parameter WIDTH = 64,
    parameter DEPTH = 1024,
    parameter ADDR_WIDTH = $clog2(DEPTH),
    parameter INIT_FILE = ""
)(
    input wire clk_i,
    input wire en_temp_i,
    input wire wen_temp_i,
    input wire [ADDR_WIDTH-1:0] addr_temp_i,
    input wire [WIDTH-1:0] din_temp_i,

    output reg [WIDTH-1:0] dout_temp_o
);

wire [63:0] dout [0:7];
genvar I;
generate
    for (I = 0; I<8; I=I+1) begin
        single_port_bram_temp #(
        .WIDTH(8),
        .DEPTH(1024),
        .INIT_FILE("")
        ) bram_inst(
        .clk(clk_i),
        .en(en_temp_i),
        .wen(wen_temp_i),
        .addr(addr_temp_i),
        .din(din_temp_i[8*I +: 8]),
        .dout(dout[I])
        );
    end
endgenerate

always @(*) begin
    case (addr_temp_i)
        10'd0: dout_temp_o = dout[0];
        10'd1: dout_temp_o = dout[1];
        10'd2: dout_temp_o = dout[2];
        10'd3: dout_temp_o = dout[3];
        10'd4: dout_temp_o = dout[4];
        10'd5: dout_temp_o = dout[5];
        10'd6: dout_temp_o = dout[6];
        10'd7: dout_temp_o = dout[7];
    endcase
end

endmodule
