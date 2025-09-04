module tb_top();
reg clk_i;
reg rstn_i;
reg start_i;
wire done_o;
wire [63:0] out_o;

initial begin
    clk_i= 0;
    forever #5 clk_i= ~clk_i;
end
initial begin
    rstn_i <= 1;
    @(posedge clk_i) rstn_i <= 0;
    @(posedge clk_i) rstn_i <= 1;
end
initial begin
    start_i <= 0;
    #15 start_i <= 1;
    #10 start_i <= 0;
end
always @(posedge clk_i) begin
    if (done_o) begin
        $stop;
    end
end

top dut(
    .clk_i(clk_i),//input wire 
    .rstn_i(rstn_i),//input wire 
    .start_i(start_i),//input wire 
    .done_o(done_o),//output wire
    .out_o(out_o)//output wire [63:0] 
    );
endmodule
