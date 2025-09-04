// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Apr 14 16:21:29 2025
// Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DSD2025/advanced_practice_1/GEMV/GEMV.gen/sources_1/ip/dsp_macro_0/dsp_macro_0_sim_netlist.v
// Design      : dsp_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_0,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_0
   (CLK,
    CE,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
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
  (* C_HAS_SCLR = "0" *) 
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
  dsp_macro_0_dsp_macro_v1_0_3 U0
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
        .SCLR(1'b0),
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
fCwgELhREDj0ncw+k23wIgWZTm66hie750lUKCjMtiZmsQcGJV7dDOnIJGJo7YvZj0/dSHlWwswJ
ZPjbm1lqyXFZ6Ag59D+vlDoNxHsY5JVuSxyPnd7Y7kLyxeaup5In1Al8MtIZ8/iIQUaJO80L/U+H
11FR5QdLqMFSdu1x/NDRopvfYYq1saMWX/17309wrAkbowg88Yl2RigcK2HS15iJAAHaoVP2ZTNJ
JfKfEE/fm2Wk+VE6UMJSiUxfaWZOdGiN2dnIalKVwsRKDSCLyxQEefPfJDcHZrf+7/8xzkXhEBgh
fUGpJmz/RJX7ON8xhOpire3r5/TXn+hzkLfKVA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BYoAmkcwzpzpe+iMRY+KS6k9sdSnXscd67fpTl3w/mO6lAIG+k93J//VcfkGViCNxFKDtYmCkmfS
DHaKE0djCK0VAWpkFVwRhrwgPLPVo231Jwcpd96AS7k1IYsn6w0jF8i4l9jDiLl1vLfb0QUuBS6w
ZzZlCWHYBjznj2/xqDKc3S/abIaZwIdpgmvm9fKirvFrvkyfCt8KBsBv8XOzBVZGLE0UyngP7igi
NMHclBJXjJuITcDy4K/MC/MO0kEwWDTC+YkYR7bfRP8KDpW4nA0yv1U3NAawv7uxvE7MCTrfYIK0
8DgXopFJu4jbPLoXjifhYOU9Wio3Dm6oToChGQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26496)
`pragma protect data_block
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
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
