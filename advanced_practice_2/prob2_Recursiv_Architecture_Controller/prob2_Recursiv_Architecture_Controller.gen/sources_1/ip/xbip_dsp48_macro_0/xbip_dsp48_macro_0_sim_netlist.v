// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Sep  4 22:42:03 2025
// Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DSD2025/DSD_practice_for_git/advanced_practice3/project_1/project_1.gen/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_sim_netlist.v
// Design      : xbip_dsp48_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_dsp48_macro_0,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module xbip_dsp48_macro_0
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [30:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [7:0]A;
  wire [7:0]B;
  wire [30:0]C;
  wire CE;
  wire CLK;
  wire [31:0]P;
  wire SCLR;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "8" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "31" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "31" *) 
  (* C_REG_CONFIG = "00000000000000000000000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  xbip_dsp48_macro_0_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(CE),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eXu8CP/59WSryM+0TrJm4ivvR8jHZUvAhTM/3bTefAJXrKDHPLzKye7Mt1lRDbXJAjZ6BIKO4kwC
E0lcvSrV/Q3dyfvAxtUp+z/aW8VJRK9qFHdYmlvgE+RPpMa3xR2aZy6U8Oi3M/l6Zx+25t9AX8je
jkkih0AxnCIBN1VIUqs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vgEvPTqFnqLdQAsx6AXakuctSKMkEG2yHSn4TsDpQk1BrjbzuBtnELewLyu5ZXRBjC8xFsQPW3cH
Ijezov8BDFEzYCheSybl50hwqRI4T0U4N2aoukd55sy9/NN/+A/8Xjl2+g59+0dy6ah8l8JC/qit
l31TRSDYlJTLd1mQWx3tzFmN+bObNeP3maLIbD4XAjkgQ7yM5fP17d00xtU7feiIsq+x7OCl8dNg
Lb6/MRQ7tcASiCzijiw1uXAToCUdMxgwgJod3u1zhviPycgXmq35FZKuwpZjHbl0RDdbj+VG8Bpj
4BU8mxfWb+gvLPK6UlY/G7koaN6b8jABhJx6dA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AaFM62USO7nm3XNUl+p18THQcjom9piiWV6niKyzDrgB89YGfBopTWrrBST1q+vznrsm1xYeBw0/
aUlMx3aaTJAO5tmM1PHkJSpudvwlb+QPsKCQ1U+sK88kH8wB1yOXWndOr9j1qQOaW7Dl8gr3SftQ
YtUGanmwYxL2tWG2WK8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C0y/vEvU9lV6QG7X1OT8SLSXZuemaWEBdXhrUF9kdwmgdFOawTMiM1GmMDMBgOcJHmcZZR/vHgjX
aW6LgUFWwSJBwd8FgrX2GbEx7xC61Ri0fwxzDG1Tns+5KdLl1XOtx/PL/I9GeE1CXetRMzM+s3HS
VC1otl8i826A3YXs41mtZyFqeu6JcfSKsoWmWhVOohan5pR/xouMVA20kBiN3Kl342JzkDM9tofJ
2U1WQM7I0GeX38EB7rx7N9fUUTsAxbMNkY9cSn5jJdADowfYwHWzjyG57462H4HjgFh3vbI4LtAe
iviGzIl6rjHhqn+uDqLNuNsC+sXc5SpfXzaatg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uBCuIthdOfPzzjz/96GbH63rV6HYJnDrLoe2d7Fu1o3WmbYzd75N6ms8Slm+1ppOkleA/O0EIH9E
QWOljNznnEOpJKNmhXFdvz2kcOCdLA/poOcJXyHw9X9dQS+ds2WUpieCP+bbnrQb3dLDH0qoSWMT
eqT/l+07htuRx2NqmQCnQME7OixqYKIuoYm9qnSnyhn6Cx7fTEYRu+oJvkU+/GVZNd73WLsoCf2y
wX3gEXrilulAXUTqCh319fuOfO1JbckH8V1VQwoiTFvFbtgEDQ29w8Vsrlzbo6S4AtwKCMAZHhfD
jQa/oimM1Xz5RgmjOOAj+3upyFgp1v2sx/6dnw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tt7uUpU++Y1HyXw3H9uOZfR0faSHPJDBUNXzHd0A0mMBQSxHBUQO87ix4I9WYmXI78wSRjF0IGHr
xFa3M9/7SVLvNUBeb0SU1jS231rDwgD2G2uwW8g5/9kqE6FLAHLzrl9r3XHmWFv4+FyylrGJ62as
DP0dCDKjxnw5u1IB5Jms6xkS8WgqGubTQ4tnTj8HIqDjyxiBiVHHjftyFeDq/sV4G+yf3GTex00U
eB5JtuT/qI142GJyVmMhLVH0H7FZQDexSTBHYOyRfNRU/4rja0DQ1G1J1hifhyeiB0KxnWMlTibd
LdoZIikRhz8x8iEr4vjsMkdkpAnpQ3PAMy64QA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AB07luaM6UqGzgUh8UuGEePdazMDdWluSYXVevTEENMZocIMfT6+7peiLi2lFLpT1PZHY0SV1bEB
3MGbnC8HTccfBEybpEbQcthgHlVowXAYniz/2Txe8qyOgo32iW3oqkNBI8+3F9ZSPlDg+JFVzIVA
qX6p9OE5OdkLviZr3HhrGHnr09iaLa0pojKY4jFq+7VRqBz023vKkoYVs0PjJfI6INZ1/WQImSWb
jFYp9N/v0u9E/ihSNdJ7cHFaC7K6PApgCrr3WdKb4sDwuHAEo2YBL+RafV+/bjhXcb36+8fi+Ihp
bOs+vnNa/kMivBt4zh4pkIiWe+NoICqV2/ie5g==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
VBFfqhMRFT4vkmBP645Vb+B3Zb1lr1J3v1UU437hv44KR/OBhVQry6ZFwQmnE4IL8RDeLg0D2tkZ
+Gq6ejrRmUJtMhB7DcRs1bi5keF43hsgq5wg0KTBhh3yUyQJp2rwUcd3hZ940AXSavn+1xjGlJLz
UeHKKlF6m3CSmvReobaVea9RaUO0WwDXmnf/lbeCObhOgaYEBceQjk/5E4hT/c0y8RPW7tDdF2yo
u8/2q5ioXWJ1FseteaZwdHICpZUYihFMiyZHYshN2G9zQtp4k87huvEBbFWggT9c6s3Lee8qIdsH
BXt0uVwINMMM1li7PiKl8l1URiX178BSIcGzdM0ZwSyAyO6i/qWiFsr7cCD1jcwDxUH+rVizdYBx
wfhtDxWf01qjpq13uUUqxxB+xMf58l+wpjFCLmKMgpNYs0S33SG6R8fvJ3IPvJHhVRc/hPupWbcK
hezSkYXnupL+GdSPxPoQZJW7/k8leEwuDKBO/VCfQpPXQR+FxLDNFBDe

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ao2uzJ9cDoOFb4Q+cT2/6EJRN9VWvURi+To0IoDU4YLe3Dr0WyVOAUCUIhb3Y8swY+CKwa+eJzzm
AriAJZAp9p8NujF4gOv+y4wy+eanf3pnOWbMWxsr6TT2S39coNdQ+NAO4aBUP3ZbESI4AbXpCTKA
+KV2gtFESo654X+tD0UNAabhx5OJpkBawo8534pIFBCYn70xDogKM4jXqTVCDr0CleLmgeIOYdIO
5T48N/bB3mluyuxS/Ea1/kS2r1g49hjIWlYnMkQ27NaUI1xAJTAjkrvMTHEKoSIskGvfO6jSWVlF
19HXSOkKJMQeQ0I6TBJ0H1KwHX8XwIuipvGDhg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPXgUTRSCovRbaH6Matpsdwm/nXuGPUhD7rBp73EZ2tG5hujBpidHKw+ltfYMQNDomCgevDdONW+
oR1R6HGnQzCUFNuHPKcpBkY/jOtgz/2dslJAdGdpTJOP4qUKA2bCR2dLOF8oqsfOM0fK0U9NqJMD
56Ek9WxPSYWyGjAEEHWw9FKSAfb4d2GSiFh6bXxpuQjbz+110/tjIYSuDNC6bbKe1wCXQfvp85kr
D4Z47f5H2cdSsSXOs4tzXCwoGQV0TL+xkk11N5L1UGwTbcCXneIk+HWGcsiIX4haQnT+bWtHdApg
fKyQ424nfMlzg2LZ1vSC+BpR5OJMh47ks4j/hw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AzZnMSwGVLUjX7Y3fuGpD/ua1P/NS38XmkFbKBh2yRuMM15fA/vJpFRslae/gxM/GBxgVk7RUrFc
PEXzN4RPb4bGJyP0ODXkomohkS1h9hkMOFuwbJnl0KfgWgMD06Gnh86KhhoaBbcPS/GZM9FTr0ub
4ytd+o/DBUOU8iMYomretEGBgVN1k/Ma0/VmEHNnkypUj52C0NdCTWkVxJVc8jOvC54Y8qZ4TvY6
lPrKoLm70y3rIishSSRLh+yusIuiS9MlXNkJBJz9ERiwNdsDpmyAxKZfmcro4K9LN2xktLy4WhGB
PiSNZpOS+Sw0QvKFKqpkaJ9Utjr8eZYkimMy0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26688)
`pragma protect data_block
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
Q5Dhv/s02E5PvKA2
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
