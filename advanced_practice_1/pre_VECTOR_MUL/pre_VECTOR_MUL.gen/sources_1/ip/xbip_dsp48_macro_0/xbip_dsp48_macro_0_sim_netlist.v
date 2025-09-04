// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Sep  4 21:07:54 2025
// Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DSD2025/DSD_practice_for_git/advanced_practice2/project_1/project_1.gen/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_sim_netlist.v
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
EDIwzjkmHYnSCzZYC/iljHCKjIDp7SltnkPNnAsSih3pmOdtkx8sbJoWjGlrd4S2O5Uhkt22H8hk
+f4VsmrtqaTeIv59y0XZoJBkvqq2Uq48z8NtSImEsOMKQuQy67xbjRDRrHR0aphYE65pgZMOqd3A
1+rAoLFKAe8gdtBz0rLrJ5TQASnJEpGQAFIFb4gMXe72VwGc8JTbWJlFoTlJ5NQg2dzf3B83kPnC
OJI7cUMTbdgxyDrA7OTxlvXKve8OGChEZvonSsTiiUVseT+di3GoIsVGOXYJHgurIBZ8uH2+0+cx
1M7pRWgUsLGyzT6zeHXyI7NQeK9dL2qyJfGUbA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XLF3e1CCLJUrMqzo8vuAPc82J6+AU1x+jDblNuWfc/kGYwb5hAflQRfyfN329475E6Mi2n9sli0w
9ssjXYUhxL/dJfJS/d+JlJv8Ll94lvInMPqw4s+Vj5V6c+KiNeYCMtqvFcjHo+EkBBWymr/vXB2W
07Vpv8jbQkeHl5wCM+wBogpI4c2TjtvPxigpcF1IEKxr2AI8IhvmkvNbSL+Gm2K/GlPzK6iCJGTm
KGKxKx9ERo8cU+j4V1S5v3XaTjH15QWSgzI7XA4QpRakdvAj8f0iAFKMgef/KZkRp/H+B1GX3jgg
Gs35Q2XETDzdDlMQyNnHB4c0DUqGbS2s1QxlNA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26688)
`pragma protect data_block
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
/90jsYH8ajuE7513
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
