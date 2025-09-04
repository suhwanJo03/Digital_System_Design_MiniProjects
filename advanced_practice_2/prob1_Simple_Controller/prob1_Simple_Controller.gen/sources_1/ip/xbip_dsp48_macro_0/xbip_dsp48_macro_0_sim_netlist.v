// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Sep  4 23:26:11 2025
// Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DSD2025/DSD_practice_for_git/advanced_practice3/Simple_Controller/Simple_Controller.gen/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_sim_netlist.v
// Design      : xbip_dsp48_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
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
  (* C_XDEVICEFAMILY = "kintex7" *) 
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
V1ifHxZ+5bDkXvHdLbZUOqr24NSeRLo/I3pvqSa2DmdiNCCvxCGjbGngcv+/RYPD+8B1mpwB3/fr
H86rQybBfe6ZiR6r5N0is11DP6pqSeQ3Kg5D4nLKuCd9Xj2V2Ivg8XqLJu3+gPaH0RM17F1MEX8c
i9g/b/2RPd/NVs51IqfNboVjgTGpYTitPgPFVTQsS1oYtoyfkHbfO/4Ls00AeY01VEfJtCdXE8O3
eI//8l6bvc/fi5P+uFK28afSD4Sa7pXPPVGC3quiB9R5CYSnMf1vPRi1U/RYcFxTnkv7hl41SdH2
mo1Qj7iC+c11N79s23e8aqHSEjiR/HV62oab7w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
n/4acNC0yQlHGQpF/dCPj+65Kr1j6TbzqrWPftdwOzFwMlhGUgUJfxLDcJWnRxJ6k6BdFfoKad5K
FsZYgBYJMfPOz1APh4WlKJ6wri1q7aL4oxctjahxaTOiE1acAKRYDtXDoGiSazTAQo3VNvP1Ibax
J+cZsouj3vpe4XM/d/wO55CUZiAvB76t2aLW6cgQKNs2La7WLl1VaV/e55ByfTzMDpApn9pteYb3
buSO8BIYG6juLhst5q042hziW5W38naJtO/dayu+6VZ0VdyghmDFesBMkr7dGRz1o3p5JKBbQByY
Ic5pDDyAbkbbfO1wU9+riaDJ46MaM23wPdj9RQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26704)
`pragma protect data_block
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
kLcKFTXtMAuKn5dEL3WsvPemkW4bLghf0IQJew==
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
