//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Sun Jan 22 15:30:11 2023
//Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
//Command     : generate_target ps2_mouse_bd.bd
//Design      : ps2_mouse_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ps2_mouse_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ps2_mouse_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ps2_mouse_bd.hwdef" *) 
module ps2_mouse_bd
   (clk_0,
    mouse_data_0,
    mouse_data_new_0,
    ps2_clock_I,
    ps2_clock_O,
    ps2_clock_T,
    ps2_dat_I,
    ps2_dat_O,
    ps2_dat_T,
    reset_n_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN ps2_mouse_bd_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  output [23:0]mouse_data_0;
  output mouse_data_new_0;
  input ps2_clock_I;
  output ps2_clock_O;
  output ps2_clock_T;
  input ps2_dat_I;
  output ps2_dat_O;
  output ps2_dat_T;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_n_0;

  wire clk_0_1;
  wire ps2_clock_I_0_1;
  wire ps2_dat_I_0_1;
  wire [23:0]ps2_mouse_0_mouse_data;
  wire ps2_mouse_0_mouse_data_new;
  wire ps2_mouse_0_ps2_clock_O;
  wire ps2_mouse_0_ps2_clock_T;
  wire ps2_mouse_0_ps2_dat_O;
  wire ps2_mouse_0_ps2_dat_T;
  wire reset_n_0_1;

  assign clk_0_1 = clk_0;
  assign mouse_data_0[23:0] = ps2_mouse_0_mouse_data;
  assign mouse_data_new_0 = ps2_mouse_0_mouse_data_new;
  assign ps2_clock_I_0_1 = ps2_clock_I;
  assign ps2_clock_O = ps2_mouse_0_ps2_clock_O;
  assign ps2_clock_T = ps2_mouse_0_ps2_clock_T;
  assign ps2_dat_I_0_1 = ps2_dat_I;
  assign ps2_dat_O = ps2_mouse_0_ps2_dat_O;
  assign ps2_dat_T = ps2_mouse_0_ps2_dat_T;
  assign reset_n_0_1 = reset_n_0;
  ps2_mouse_bd_ps2_mouse_0_0 ps2_mouse_0
       (.clk(clk_0_1),
        .mouse_data(ps2_mouse_0_mouse_data),
        .mouse_data_new(ps2_mouse_0_mouse_data_new),
        .ps2_clock_I(ps2_clock_I_0_1),
        .ps2_clock_O(ps2_mouse_0_ps2_clock_O),
        .ps2_clock_T(ps2_mouse_0_ps2_clock_T),
        .ps2_dat_I(ps2_dat_I_0_1),
        .ps2_dat_O(ps2_mouse_0_ps2_dat_O),
        .ps2_dat_T(ps2_mouse_0_ps2_dat_T),
        .reset_n(reset_n_0_1));
endmodule
