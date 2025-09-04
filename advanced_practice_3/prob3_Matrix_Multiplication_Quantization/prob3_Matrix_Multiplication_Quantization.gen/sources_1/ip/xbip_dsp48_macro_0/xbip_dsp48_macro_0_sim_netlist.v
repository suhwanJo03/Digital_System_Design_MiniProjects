// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Sep  4 23:57:14 2025
// Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DSD2025/DSD_practice_for_git/advanced_practice4/Matrix_Multiplication_Quantization/Matrix_Multiplication_Quantization.gen/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_sim_netlist.v
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
  (* C_REG_CONFIG = "00000000000000000000000011000000" *) 
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
CQX1jM4l8FT4KbNVsvxXy63T1xUAi/YYd3y21Sj2vMCnS5zS1QhNdjDXLeI1YZ/zFgQ4fRojxG6a
cSzHQrbuwuimWjcCOpuXSehd57nhQ7CUzD3iKuBw8zdiKMTK0+kbjgvvXxbThSA4JcrAzbR3xPOa
4E9vhMu5LIf7Gispkz1BT31LBwnZkbKxfOIDVpqkzPUIdiPiW1oKkvDeJstBIQRCZqmIDtEnCMhM
a5Dr1aY0iakiUMJboOpAjo+vdRcqE9MtB/tkqMCLLAU0HIL2GyDoLGIu4m0ATOyzaPaMSzW6aOtE
u4HPHOR20VdRXnKR1fZ3bfpyMjmQYIptBG5dEg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KJBCH85ajIz2e8ce4pYmZ5e+A8TWY+q701/EP48zvzfhCHp0T9wIe9veL6hXhZOYDC+zQlkl+2i/
g+0N3rFujnY6lqtCGCdr5lWRS4YHgxKKofnb0dO8UL1B6nOkPZUCiPfDvCrhjIT/i3gYWCUnHamR
atpiAozIQWMJuW3JBc8Zn9ZpZkp+UzXGpmlj25Z3NSmKW/op1+nclJ+pEqv0Ma2d+OB8yGAaJ8uY
oCj53IhrXf8R+d66OzmUoEG6tHGLrDhpe5dxQWcgRpIBcNQ5VQdSylfU7EJNQnwbgN36Ymueq0NJ
aEOUsywnJ3Qm2gjksYWv0mBd0X5YOhYWqI7hwg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26624)
`pragma protect data_block
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
5Brb5BM=
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
