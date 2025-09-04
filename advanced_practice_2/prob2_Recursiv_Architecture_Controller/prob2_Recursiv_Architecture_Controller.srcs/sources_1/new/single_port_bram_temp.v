 module single_port_bram_temp #(
 parameter WIDTH = 8,
 parameter DEPTH = 1024,
 parameter ADDR_WIDTH = $clog2(DEPTH),
 parameter INIT_FILE = ""
 )(
 input wire clk,
 input wire en,
 input wire wen,
 input wire [ADDR_WIDTH-1:0] addr,
 input wire [WIDTH-1:0] din,
 output reg [63:0] dout
 );

 reg [WIDTH-1:0] mem [0:DEPTH];
 reg en_delay;
 reg wen_delay;
 reg [ADDR_WIDTH-1:0] addr_delay;
 generate
    if (INIT_FILE != "") begin: use_init_file
        initial
        $readmemh(INIT_FILE, mem, 0, DEPTH -1);
    end
    else begin: init_bram_to_zero
        integer ram_index;
        initial
        for (ram_index= 0; ram_index< DEPTH; ram_index= ram_index+ 1)
        mem[ram_index] = {WIDTH{1'b0}};
    end
 endgenerate

 always @(posedge clk) begin
    en_delay <= en;
    wen_delay <= wen;
    addr_delay <= addr;
    if (en_delay) begin
        if (wen_delay) begin
            mem[addr_delay] <= din;
        end
    end
    if (en) begin
        if (!wen) begin
            dout<= {mem[0], mem[1], mem[2], mem[3], 
                    mem[4], mem[5], mem[6], mem[7]};
        end
        
    end
 end   
 endmodule