// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Apr 14 16:43:54 2025
// Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DSD2025/advanced_practice_1/CONV_1D/CONV_1D.gen/sources_1/ip/dsp_macro_0/dsp_macro_0_sim_netlist.v
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
ap47XdIyN8USd6b2tEwYmGzbnc685GceMc6c/m0AbX2n0BMoLTdOlbcm/IkIVNma1HJ5gzbfxFmR
w9VLxparBp7deqVMC7hCZXgZX9AD3fpr7ycYtgUeQTfarE6OHemtyyqRbbW1pkHp937NprBMK6S7
4AybvNWlzoGZB2Jg3bDHlfIFDGQiyk68cKcoP8pirAuuG0KhxwsdRuAKJC0th3fV1vJlDzR5OL5j
571zPJ1HeGgBFiYCkBEJ71Q97MH2Cw/KGLUNO7blN2rrtJVSxWY+fruUxz6v3hgyyWvIo5RPzkXS
Nd+A8UN1ek11RBn687SbVk2M36xVfmAvvxQFFg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cwsWhPT2Ghl0bR7lM+mkNYRBN9by+dxk+AfOPAvZpTAWiRGJ2lortvMA3oebxsRQAkkrqB6O4x9r
jVYYKF0Fd2Djg8lV0mITaKHoK8PczzzYZJ5qU98p6gP/EOoQ/uE0jce9ZWQc/RRsW/9fgE55ahfw
3LkI4+E8iPfVC6TyoKE7Icz9F+Hg0re2TMMO6ryVRkDSdrMfejp5PXb6HUCRecrjAjLLj++eC3mS
8sTWAVo8Reh7NccvPMmamPEEHyZfQCOMC6+eWooClmGI0rUI0w7iPosdZ61jW6Bmjfucnjki27p0
84grw0nmEIuQLrtdaOWQ5n7Aq82xVNwVzI0Z7g==

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
