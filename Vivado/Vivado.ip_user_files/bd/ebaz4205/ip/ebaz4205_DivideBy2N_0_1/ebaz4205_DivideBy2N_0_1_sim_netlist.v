// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Jan  9 09:59:34 2023
// Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/EBAZ4205_SDR_HDMI/Zynq/capture-test/capture-test.gen/sources_1/bd/ebaz4205/ip/ebaz4205_DivideBy2N_0_1/ebaz4205_DivideBy2N_0_1_sim_netlist.v
// Design      : ebaz4205_DivideBy2N_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ebaz4205_DivideBy2N_0_1,DivideBy2N,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "DivideBy2N,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module ebaz4205_DivideBy2N_0_1
   (clk,
    resetn,
    clk_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ebaz4205_axi_dynclk_0_0_PXL_CLK_5X_O, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  output clk_out;

  wire clk;
  wire clk_out;
  wire resetn;

  ebaz4205_DivideBy2N_0_1_DivideBy2N inst
       (.clk(clk),
        .clk_out(clk_out),
        .resetn(resetn));
endmodule

(* ORIG_REF_NAME = "DivideBy2N" *) 
module ebaz4205_DivideBy2N_0_1_DivideBy2N
   (clk_out,
    resetn,
    clk);
  output clk_out;
  input resetn;
  input clk;

  wire clk;
  wire clk_out;
  wire clk_track_i_1_n_0;
  wire clk_track_i_2_n_0;
  wire load;
  wire \r_reg[0]_i_1_n_0 ;
  wire \r_reg[1]_i_1_n_0 ;
  wire \r_reg[2]_i_1_n_0 ;
  wire \r_reg[3]_i_1_n_0 ;
  wire \r_reg[4]_i_1_n_0 ;
  wire \r_reg[5]_i_1_n_0 ;
  wire [5:0]r_reg_reg;
  wire resetn;

  LUT2 #(
    .INIT(4'h6)) 
    clk_track_i_1
       (.I0(load),
        .I1(clk_out),
        .O(clk_track_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clk_track_i_2
       (.I0(resetn),
        .O(clk_track_i_2_n_0));
  FDCE clk_track_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_track_i_2_n_0),
        .D(clk_track_i_1_n_0),
        .Q(clk_out));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    r_reg1
       (.I0(r_reg_reg[2]),
        .I1(r_reg_reg[0]),
        .I2(r_reg_reg[1]),
        .I3(r_reg_reg[3]),
        .I4(r_reg_reg[4]),
        .I5(r_reg_reg[5]),
        .O(load));
  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[0]_i_1 
       (.I0(r_reg_reg[0]),
        .O(\r_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF0000F7FF00)) 
    \r_reg[1]_i_1 
       (.I0(r_reg_reg[5]),
        .I1(r_reg_reg[4]),
        .I2(r_reg_reg[3]),
        .I3(r_reg_reg[1]),
        .I4(r_reg_reg[0]),
        .I5(r_reg_reg[2]),
        .O(\r_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_reg[2]_i_1 
       (.I0(r_reg_reg[1]),
        .I1(r_reg_reg[0]),
        .I2(r_reg_reg[2]),
        .O(\r_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_reg[3]_i_1 
       (.I0(r_reg_reg[3]),
        .I1(r_reg_reg[1]),
        .I2(r_reg_reg[0]),
        .I3(r_reg_reg[2]),
        .O(\r_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3CCCCCCCCCC4CCCC)) 
    \r_reg[4]_i_1 
       (.I0(r_reg_reg[5]),
        .I1(r_reg_reg[4]),
        .I2(r_reg_reg[3]),
        .I3(r_reg_reg[1]),
        .I4(r_reg_reg[0]),
        .I5(r_reg_reg[2]),
        .O(\r_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA2AAAA)) 
    \r_reg[5]_i_1 
       (.I0(r_reg_reg[5]),
        .I1(r_reg_reg[4]),
        .I2(r_reg_reg[3]),
        .I3(r_reg_reg[1]),
        .I4(r_reg_reg[0]),
        .I5(r_reg_reg[2]),
        .O(\r_reg[5]_i_1_n_0 ));
  FDCE \r_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_track_i_2_n_0),
        .D(\r_reg[0]_i_1_n_0 ),
        .Q(r_reg_reg[0]));
  FDCE \r_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_track_i_2_n_0),
        .D(\r_reg[1]_i_1_n_0 ),
        .Q(r_reg_reg[1]));
  FDCE \r_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_track_i_2_n_0),
        .D(\r_reg[2]_i_1_n_0 ),
        .Q(r_reg_reg[2]));
  FDCE \r_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_track_i_2_n_0),
        .D(\r_reg[3]_i_1_n_0 ),
        .Q(r_reg_reg[3]));
  FDCE \r_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_track_i_2_n_0),
        .D(\r_reg[4]_i_1_n_0 ),
        .Q(r_reg_reg[4]));
  FDCE \r_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_track_i_2_n_0),
        .D(\r_reg[5]_i_1_n_0 ),
        .Q(r_reg_reg[5]));
endmodule
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
