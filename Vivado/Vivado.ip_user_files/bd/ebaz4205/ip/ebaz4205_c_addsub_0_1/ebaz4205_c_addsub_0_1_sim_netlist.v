// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Dec 26 20:19:23 2022
// Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top ebaz4205_c_addsub_0_1 -prefix
//               ebaz4205_c_addsub_0_1_ ebaz4205_c_addsub_0_1_sim_netlist.v
// Design      : ebaz4205_c_addsub_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ebaz4205_c_addsub_0_1,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module ebaz4205_c_addsub_0_1
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 64000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 16}" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ebaz4205_c_addsub_0_1_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iNiDb0ekPhRUbs/MzEotkv91aS3Hn7NpPOvNwhBA71ib54e/iuFgxDWsHQhG//uPFNOQcsw48NJ/
Jex9v3jJpOAvrsbpE1xtyr06RPHTtBrhLn5oy/JPLRnDikCjDL7pl2nz8/4NFppZ4IOdMQSsgZ6s
7cLy3ssFtw8YHgZpBBI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xMdWfJ9yC+dW7Z4tqvPOuJC1+I94TxwMeGVXcRxTpVQudL778iGxfViPG7+xFYupI1L28MxOHog5
8UcMSrFy49thnK0phUnIHj0aC6gyX5BTyX9O2yqRn+Tb0ViZwaw8RNb32PlwlnlwQ/6N6ZU9Y9aG
YFAdhmgN+2Xk4zUSzRuS4Fkh8aeMb+9XdKOXvagJC/n45GdxH8sqkEUbk/QiV8gGerqj5/G5/GwS
QvuOB3Sq1YSyUp1D7w4IQ4bJiFJESFOi5U2UE7u1h+1gzpJDnRrR1s84sELZRdUDynvMahqLleXZ
IWFY2+0qfSJmtHyzvV5D7u27zKevnVVSjKft+g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BXcxoAPS0tOe7iNiaiBkfnEQ6RK9h9ZdYl0ZQZ9gD+ivSxvHRqUQaNUJXADK+j/yHS3kFc9O9bHv
9apdYXON7IMZ9RLTfkh4tIbx4BGrm/PD1bNIEZES7Ggj/xNmgG+KoydQMFTsML7SQ21p7edBUfV2
az9eYYO2SbJM4Vnex/4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PWOAiRdoP7UJP31mBYgem1wyfxKBGPCYYuy7qK1OPyroUHrsrRm0rZWFQbakJzsfCiqiBbes1Pdp
FoS53FX/0oO/nGzrbleR9IKNRGwjSKaUMfAwPhBe3I31YsUwdVUMEm0draA/0Bu0frhCP/0jFhKQ
HicTG99WiRHsLh+F6Xz6QXtxjRhNhWEmp7tK+Z+a7g+N8LWRI2JpIQ272d9VQ61BaLlYfCqHUkHw
ThTl6gfzihr1Ngg2QM5mtIXn8OB6+fq3s9W2CR6TBAvGrx17Z8ej+u3fxiXxC+hBvQjWJ6ri0Top
bA0fhxTpucHxWUd+X+DhmNLTh/f+O3HV2Qpcsw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
botoKE8YfJkzZ/fegvRBoauY+UFblsqeTMPajI8WL2DBCRzCZJ9Qk/AYzzg+PUnrWUsoMrTJBGyn
gi8WNpzpMX8vvcpKlw8goBzVjdTNmI1s9S0E+VsI1yVv6BIJNCpUF+5EMLdX8/DiJlnuRanoMrvC
KGgBmcKqG7oRhK8xe5pzt7tMew5ocXeCa73sQSLmXuEgUF3UVgaIEpZcsxwiXmE2Av9Y6V+8CSvq
+Kfe/xfivs0EagmHnRhzTM0RvsI3OWHwM7UoosrQd3SFdhg0MFJga+3RHNAK/K7GDL4b3RHD5bQj
9a1gFdowA72kPKeFSBiYlgX6Vk9Uwm2F+V/kSg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lihXgVbpHCLec3zc0ec/06bvVG8syHdsLieKcT9rurQvsbFuEgs53hupuKiQVpUO75Rlflsu9Uv7
M1kUEvj0hLqSwp51FfBdIFyDn69Y/AR9B3nk5K135817Ii5ef0MMxeTSV36GglTaxPcxRJbXKlei
Nh0/cGeo0C8fqlrdb7l2aLKeeo9GaYgnzabE/VAGK3Kvr/UJbmK2eRfLlPygyEE2Hz4VYkVXisIZ
MLfZuqs0KBE7OdqwtqhW0cv/zMjRCl+Ton6KCq1NDbf5iAJGaVns2C8FlvsDnvW98hupBmOnntWx
+cSxLW5CnVkSSDuLYwSmB/VDFDZoKbAAPHcKWg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bslnbMuzuE/h0dU1KUmyBtZ9YobdFoUvmIJOrSIMm1QHKHywokHfs/tstG3kbnleE5Ro3QbFvkee
MAslPB9/9GMe/K/9oy/NUwk7CdOKMDnWe6bjAzHdnN6rqGH8LyHfwibusv1+Ggl/dI+eT7fXvxNf
GalIV+qeXkw58Q8O8q/FoJMuwbuwcSGXWGWU+qSZ44Vj4aHHqMw6AvrJ3nWXG1Aa99MNUc7H9KAC
fL/xXWAYYUs0Aqqfj7hdBSkcTp8RLAb0NH2e/+ve6WJ5Y8lWNAyNlqNz/PW/FvxJwZvYCN5ALqAn
XPV0+dZ+1F6SjA2qB8uYqVSHe2sF4AgOSUb0Yg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
KUnwEk0xEpdk2Q3CoTxn9CRe6h/F7eWo/AjrPR0pRlPkFpPN084BeB9Y0fdrjgkq+3HXC4zvjgDR
HGtLYulQ/DDCcVou7MBx+WsobjDsPw4aytnHFJhdPl1/gu90mG3irpFwUndHqHd5KOIno4hRyyVj
ntNaLqfhtx97ZFT7dzeS4sr9hR5umMXx8eagFMAL0SKuooqN5ma5Kn5yRTlFXeVZaOVeeodaDaTe
u+OLoCcbLeOyuraazX0w05ROt1RWuQhiAHJr5D+PdtFH6PTheFQIQp72F4YJVS/Xw+0kGSBAkqw0
FleW7Pxa+YHT/FS6kuvwJ5uAhLIHGM1453HF6YOB/1TCDOa2ntNezXMJIFtsfvAAHyaSJ2XMNrD3
feFFBLqTImohKBoaNkp7O7foRfLi5R/oAlMMzRg83P/99YLyjfIm3xkD3eia2CAK/2qk4ZtC2JQ3
4aJcd5YcoSYGjVfXix9p+pfKHaa/jbY+Vh5Z3dVT8Romtkzvu5jg+UbJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
P0U2cnGBY9QMyeqr0dOgxj1qNLQ9oatsneQM/zp8ImZGMa9l89mK7lP6/iTxsbrSbC19vRKLXHpw
FTJYNfqvgRZhS7DxQb5OwgYRsbNrhsqUkrU6fD4YcLCVJvUsq4FGf2GMp0SBEmXMlu0H57IA3Ycx
grGxw4dQSY2pM7fKezkaKsACbitFQrg/Q6XzNrg49L/dKrBnQzoDIcgA4wyQrdpLLWdScsi34/UM
96uXBX5B4OAKjIMOlIKwRQov3zD06mx28NQD4VizPa1T5UyqFMRb5eW6zlTHzEI6+x7KVH1IEyUn
4tcbk3Sz3i/RmX3lguEbJEV6kLotF8iEhuyTHw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fEuPrddW8MTBfsRmUiquVi7t+S3qrYXmRHjf8iz72JQw0PaUyT+4SD49mY1mx9jnDHvz4zeQ38t1
ni+/4Nl3OAzNa9hG91ADpy38XxQjnQCbTcVC6hjzo4LWuHeq2olDdocLU4LKNEFURf/QV1lpejSw
vdRunN/3CbfVJz73iN7FSV89gMUkz3E8HfeNq7rzxZEelwntPmaFezzyRFl8klMc31HMUtfslFfJ
hqBBHU6w1sq0PxCZBvtVFo0KMKFlfNPrOxLJoAzH7KcKI9J0oyry7DGn41KaUhunRzOolj2lxwAe
Jw09apqWRXIvprrtfj0vG+BUGXKguxzmelGZwQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WByfQasE3u9djaroSII+uYZ2DU7GxZGke9c9OkaxGE/0ypEJs0NEy7sNBxgqCzrwviQ85xlW1kuJ
AyN4ZHz9T2eA3hz4F/zBJywQ6peCJ3wpxh3Z08hpcJlW05lOwzbDTNd3lxfJhVnQLhLgyAkKYKSp
p9+Fd607hp2zVdThSQ2QmLwKmZTrxvdCSrJUFg8lSVZFh6rfI9a1Jt58rkC0wQWrkhp7X6+2CWGz
t1MUcxMuoigSNWGpLYbRCpWWEEmHUaGPFqEMZXIRnMB5LClvuV3D3fFLKcjZTTJI7vXSMRzOhGUT
jsq/3e++bJWXY2wTgS2b9JBJpx/hJtxP0zMLow==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14880)
`pragma protect data_block
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
PJmY
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
