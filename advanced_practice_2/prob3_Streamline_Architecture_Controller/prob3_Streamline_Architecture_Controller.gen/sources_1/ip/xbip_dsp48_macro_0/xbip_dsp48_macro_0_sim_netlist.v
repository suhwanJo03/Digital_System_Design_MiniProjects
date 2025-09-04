// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Sep  4 23:07:15 2025
// Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DSD2025/DSD_practice_for_git/advanced_practice3/project_3/project_3.gen/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_sim_netlist.v
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
eOMFC57UvIUzgnIFfuMadB8bpAHBHQOEZKjW9/Wf4wIn2qPlKcwUuN0GeVRFpJApdn9fLymRTABI
sQLQffySMlPl99ToLtOgrQNAi/ERRaXkF3zzz/CxDi3QrOKpo11XapNgI8BhIGdRj6zpEt/YXTI1
OvhizmEcSl5gOgd1H5LepplO9x9hvBZWBy6PVb25Ed1JP5UAGH7srYvW/k6dprb12eaIh983pp25
6Rbz8Rk33KBZKwY62WuTrp1Kfej8c+HFogSBq0MdsUlr3PiLDz0aIFj2RlJxcH2CRFwmY4zjrMjG
ixlInvThVzwyAyY3Flumt8HO96wwO53ZfL85VA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wgRY1mX7agR33dyBFlvBwzL/IdMRW9H6MfWvkP1py6TUlT2Gvz+GWGLeXK3au7oRL61tcljR+ATr
GEpcZvX7SvzxOQQeJxQLA5xAurXsyfV1EGHVZIxIuD68FXNotC+pLKR/ZpEumRFPe/9W15ZYFSI7
f4oNElPidXIClrGwcmIyehcGvqNiAZkry6p47FMSMw0ImXpvIW87oXsPY63gd08/erLn8ZIC3HWG
hvNtvzdGbWc20/4ldZASsSJQI0wDYYuxS1yd+L4m27NYZ5EOKw613EvMaeclRBvTLgIs2ApDAi3Y
zV9nI2qwfX/riKIb4isAoh9vXB8Njvh6X1zw/w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26688)
`pragma protect data_block
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
VioYMXEACT8JVFyJ
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
