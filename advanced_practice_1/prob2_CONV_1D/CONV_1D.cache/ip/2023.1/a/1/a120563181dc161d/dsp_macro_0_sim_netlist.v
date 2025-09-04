// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Apr 14 16:43:52 2025
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
VydXSeYQfJ4DaMTW4r9Ak0HKx3bHOjSl3TqxyedohwXjzFfTPBFMJxoQhAwjj3KQGPFso74I6Eww
YtMdP0NTC/uSSD33R+o/VIk8JmCETx8q76xb7h0zgg9MLfFA5Z4p1MDe7o7PPaVt9pzzIGizdEMH
aAUvMNImnV86HE4/BlmXQknaZhuM0HqgVAUmfhGSQFVzP1JmwujUwn6XbIbSOjRf3762o6hqFeEM
bufRM364Wr3WBFhCRuVzKCyYCSxCg5wsz4I5VxA8fSAD1Vv5pj4TqP7t4SAZE3/knRaUgMLbuoat
DAVE6Tc3MPyGG99R70WtXukodhB8wEwFyJscwg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r/O6hyq7I/SO/EQwnrEPTFn4Rl9XMVU7xrNWdGuLjugekkIjyInkSaFDJ+csjfFzASSUSS0aaqCc
xWi2ekw+hPO9v7FyKbEKRZbVLaC0GPRa28AJTGItto/s/L6ISCqNLUmmTwwqAjxYfA5GP9PNBWCJ
gh0VNlTnm6ovADcsdRKo5Jgjwy8IyCFtGC18DukM8jO7ECUuT72gYkKbFxs8k167AIS34W4y5UZu
0yq8m/1Mxzv5Ird+/umIlF3vigwf6r+gEF1N6p3PMyZrZhNHvblEiPi2xBWJNbhZqaDZVFl5aiF5
/pXzavuwI2DAeVmpmJgkco+NKmH4fXGCpHDj+A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26528)
`pragma protect data_block
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
4GW04x6bMDFSnO4isyA+wog1NS8Voh4=
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
