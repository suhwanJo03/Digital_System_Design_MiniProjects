// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Sep  4 23:57:14 2025
// Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/DSD2025/DSD_practice_for_git/advanced_practice4/Matrix_Multiplication_Quantization/Matrix_Multiplication_Quantization.gen/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_stub.v
// Design      : xbip_dsp48_macro_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *)
module xbip_dsp48_macro_0(CLK, CE, SCLR, A, B, C, P)
/* synthesis syn_black_box black_box_pad_pin="CE,SCLR,A[7:0],B[7:0],C[30:0],P[31:0]" */
/* synthesis syn_force_seq_prim="CLK" */;
  input CLK /* synthesis syn_isclock = 1 */;
  input CE;
  input SCLR;
  input [7:0]A;
  input [7:0]B;
  input [30:0]C;
  output [31:0]P;
endmodule
