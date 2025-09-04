module top(
    input               rstn_i,
    input               clk_i,
    input               en_i,
    input               valid_i,
    input               sclr_i,
    input [63:0]        din1_i,
    input [7:0]         din2_i,
    input [7:0]         din3_i,
    output wire         valid_o,
    output wire [255:0] mul_o
    );
localparam  MUL1 = 2'b00,
            MUL2 = 2'b01,
            DONE = 2'b10;
reg [1:0]  state;
reg [7:0]  din3 [0:7];
reg [2:0]  din3_index;
reg [3:0]  MUL1_CNT;
reg [63:0] MUL2_DIN [0:7];
reg [2:0]  MUL2_DIN_INDEX;
wire gemm_valid_o;
wire [63:0] gemm;
reg gemv_en;
reg gemv_valid_i;
integer i;
always @(posedge clk_i) begin
    if(!rstn_i) begin
        state <= MUL1;
        MUL1_CNT <= 0;
        MUL2_DIN_INDEX <= 0;
        gemv_en <= 0;
        gemv_valid_i <= 0;
    end
    else begin
        case (state)
            MUL1: begin
                if (MUL1_CNT == 8) begin
                    MUL2_DIN_INDEX <= 0;
                    state <= MUL2;
                    gemv_en <= 1;
                end
                else begin
                    if (gemm_valid_o) begin
                        MUL2_DIN[MUL2_DIN_INDEX] <= gemm;
                        MUL1_CNT <= MUL1_CNT + 1;
                        MUL2_DIN_INDEX <= MUL2_DIN_INDEX + 1;
                    end
                end
            end
            MUL2: begin
                if (MUL2_DIN_INDEX == 7) begin
                    state <= DONE;
                    MUL2_DIN_INDEX <= 0;
                    gemv_valid_i <= 0;
                end
                else begin
                    MUL2_DIN_INDEX <= MUL2_DIN_INDEX + 1;
                    if (MUL2_DIN_INDEX == 6) begin
                        gemv_valid_i <= 1;
                    end
                end
            end
        endcase
    end
end
always @(posedge clk_i) begin
    if (!rstn_i) begin
        din3_index <= 0;
    end
    else begin
        if(din3_i != 0) begin
            din3[din3_index] <= din3_i;
            din3_index <= din3_index + 1;
        end
    end
end
gemm1 gemm_inst(
    .rstn_i(rstn_i),//input               
    .clk_i(clk_i),//input               
    .en_i(en_i),//input               
    .valid_i(valid_i),//input               
    .sclr_i(sclr_i),//input               
    .din1_i(din1_i),//input [63:0]        
    .din2_i(din2_i),//input [7:0]         
    .valid_o(gemm_valid_o),//output wire         
    .gemm_o(gemm)//output wire [63:0]  
);
gemv2 gemv_inst(
    .rstn_i(rstn_i),//input               
    .clk_i(clk_i),//input               
    .en_i(gemv_en),//input               
    .valid_i(gemv_valid_i),//input               
    .sclr_i(0),//input               
    .din1_i(MUL2_DIN[MUL2_DIN_INDEX]),//input [63:0]        
    .din2_i(din3[MUL2_DIN_INDEX]),//input [7:0]         
    .valid_o(valid_o),//output wire         
    .gemm_o(mul_o)//output wire [255:0] 
);
endmodule
