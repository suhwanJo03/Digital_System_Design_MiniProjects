module top_MMQ(
    input   wire                    clk_i,
    input   wire                    rstn_i,
    input   wire                    start_i,
    input   wire    signed  [31:0]  Vec_x_i,
    output  wire                    dq_valid_o,
    output  wire                    dq_done_o,
    output  wire    signed  [31:0]  dqout_o
    );
reg                     q_val;
wire                    q_done;
wire                    dsp_en;
wire    signed  [7:0]   qout;
reg             [2:0]   bram_cnt;
wire    signed  [31:0]  bout;
wire                    dsp_done;
reg                     dsp_done_delay;
wire            [127:0] dsp_out;
reg             [127:0] dsp_temp;
reg                     dq_val;
reg             [1:0]   dqin_cnt;
always @(posedge clk_i) begin
    if (!rstn_i) begin
        q_val <= 0;
    end
    else begin
        if (start_i) begin
            q_val <= 1;
        end
        else if (q_done) begin
            q_val <= 0;
        end
        else begin
            q_val <= q_val;
        end
    end
end
always @(posedge clk_i) begin
    if (!rstn_i) begin
        bram_cnt <= 0;
    end
    else begin
        if (q_val) begin
            if (bram_cnt == 7) begin
                bram_cnt <= 0;
            end
            else begin
                bram_cnt <= bram_cnt + 1;
            end
        end
    end
end
always @(posedge clk_i) begin
    if (!rstn_i) begin
        dsp_temp <= 0;
    end
    else begin
        if (dsp_done) begin
            dsp_temp <= dsp_out;
        end
    end
end
always @(posedge clk_i) begin
    if (!rstn_i) begin
        dsp_done_delay <= 0;
    end
    else begin
        dsp_done_delay <= dsp_done;
    end
end
always @(posedge clk_i) begin
    if (!rstn_i) begin
        dq_val <= 0;
    end
    else begin
        if (dsp_done_delay) begin
            dq_val <= 1;
        end
        else if (dqin_cnt == 0) begin
            dq_val <= 0;
        end
        else begin
            dq_val <= dq_val;
        end
    end
end
always @(posedge clk_i) begin
    if (!rstn_i) begin
        dqin_cnt <= 3;
    end
    else begin
        if (dq_val) begin
            if (dqin_cnt == 0) begin
                dqin_cnt <= 3;
            end
            else begin
                dqin_cnt <= dqin_cnt - 1;
            end
        end
    end
end
Quantize Quantize_inst(
    .clk_i(clk_i),//input wire               
    .rstn_i(rstn_i),//input wire               
    .valid_i(q_val),//input wire               
    .din_i(Vec_x_i),//input wire signed [31:0] 
    .q_valid_o(dsp_en),//output wire              
    .q_done_o(q_done),//output wire              
    .qout_o(qout)//output wire signed [7:0] 
    );
MAC MAC_inst(
    .clk_i(clk_i),//input wire                  
    .rstn_i(rstn_i),//input wire                  
    .sclr_i(0),//input wire                  
    .dsp_enable_i(dsp_en),//input wire                  
    .dsp_input_i(bout),//input wire signed [31:0]    
    .dsp_weight_i(qout),//input wire signed [7:0]     
    .dsp_valid_i(q_done),    //output wire                 
    .dsp_valid_o(dsp_done),//output reg                  
    .dsp_output_o(dsp_out)//output wire signed [127:0]  
    );
single_port_bram #(
    .WIDTH(32),
    .DEPTH(8),
    .INIT_FILE("Quantized_Matrix.txt")
    ) bram_inst(
    .clk(clk_i),
    .en(q_val),
    .wen(0),
    .addr(bram_cnt),
    .din(),
    .dout(bout)
);
Dequantize Dequantize_inst(
    .clk_i(clk_i),//input wire                
    .rstn_i(rstn_i),//input wire                
    .valid_i(dq_val),//input wire                
    .qout_i(dq_val?dsp_temp[32*dqin_cnt+:32]:32'h0000_0000),//input wire signed [31:0]   
    .dq_valid_o(dq_valid_o),//output wire               
    .dq_done_o(dq_done_o),//output wire               
    .dqdout_o(dqout_o)//output wire signed [31:0] 
    );
endmodule
