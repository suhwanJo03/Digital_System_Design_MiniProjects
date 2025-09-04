// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Apr 14 16:21:26 2025
// Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dsp_macro_0_sim_netlist.v
// Design      : dsp_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_0,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dsp_macro_v1_0_3 U0
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
PDUWhUHvsnsig+ho7Mcj4d8B1XxtzcQI+PGk15f6HxI3is9zy/nGLlUkJWfjRnVbZz5pSlTkxJ08
kGMyypPIR2XXXq/t/bXQ5Xp66dWE7A4a9DRz26YodG1UaCsvMWTDgtgEr+UztbYazX3nDeRJP9I+
CM/OOweI7VWJgY/vWbbm6Yye1WzLsase7PgSF/PQd8x3DXazlBQErjqkieaNqXTT7YcnIdvKrEcX
V+u8pSVA+95dSGTH/RPmIv1/sg0HsG40o8VmXNQ6kS2QG/DUbejfYtKMdYAUEa5pRD7IFqnqeGRw
q1/fEIgKuG40ZcnmiTdSqn9p0qgHau9O1EXBog==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YJ1IIewFG3lFhJx6dKhP2kQh/ZdTt3/Q+WdQea6g2Fjq7iFN8fGJZCSSqjOnzpaJOrLxQQ+8WH4X
DtQSYXNTRLtUg57jtUG/nZPwopPMf6loDh3yroRUhSyVioG77413yB2vq3Z/25yo4kNHpQGe/XqI
dwf3GkIpG7ZZrvqWt/+DlC01mfXDQnUjiaYwo89atiWytYIwncnqaaPHYAG+Wq6nZAURS3VjJ6dP
CpqWTGFbheMZ7eOr9v0q/ca0Dfh1CE4oR3NqwcmLH26/ZwIjo1XTEuqLkLFf/MNs6AOZ59ETDEfQ
nYNUc2yD6Rcofye5J38dV0m4lLOCOOjo6i+eyg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26528)
`pragma protect data_block
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
lEHkDHx2RDAcC5+xT3vMMoE+47K33Eg=
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
