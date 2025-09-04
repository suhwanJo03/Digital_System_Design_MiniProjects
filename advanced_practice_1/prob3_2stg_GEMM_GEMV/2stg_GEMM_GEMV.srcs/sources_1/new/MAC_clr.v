module MAC_clr(
    input                       rstn_i,
    input                       clk_i,
    input                       dsp_enable_i,
    input signed                dsp_valid_i,
    input signed                sclr_i,
    input [7:0]                 dsp_input_i,
    input [7:0]                 dsp_weight_i,
    output reg                  dsp_valid_o,
    output reg signed [31:0]    dsp_output_o
    );
reg signed [30:0] partial_sum;
reg delay1;
wire [31:0] dsp_output;
always @(posedge clk_i) begin
    if (!rstn_i | sclr_i) begin
        partial_sum <= 0;
        dsp_output_o <= 0;
    end
    else begin
        partial_sum <= $signed({dsp_output[31], dsp_output[29:0]});
    end
end
always @(posedge clk_i) begin
    if (!rstn_i) begin
        dsp_valid_o <= 0;
        delay1 <= 0;
    end
    else begin
        delay1 <= dsp_valid_i;
        dsp_valid_o <= delay1;
    end
end
always @(posedge clk_i) begin
    if (!rstn_i) begin
        dsp_output_o <= 0;
    end
    else begin
        if (delay1) begin
            dsp_output_o <= dsp_output;
        end
        else begin
            dsp_output_o <= 0;
        end
    end
end
dsp_macro_0 your_instance_name (
  .CLK(clk_i),    // input wire CLK
  .CE(dsp_enable_i),      // input wire CE
  .SCLR(sclr_i),  // input wire SCLR
  .A(dsp_input_i),        // input wire [7 : 0] A
  .B(dsp_weight_i),        // input wire [7 : 0] B
  .C(partial_sum),        // input wire [30 : 0] C
  .P(dsp_output)        // output wire [31 : 0] P
);
endmodule
