// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sat Feb 18 17:57:45 2023
// Host        : guido-UM690 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /media/guido/Acer/EBAZ4205_SDR_HDMI_PS2/Vivado/Vivado.gen/sources_1/bd/ebaz4205/ip/ebaz4205_ps2_mouse_0_0/ebaz4205_ps2_mouse_0_0_stub.v
// Design      : ebaz4205_ps2_mouse_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ps2_mouse_w,Vivado 2022.2" *)
module ebaz4205_ps2_mouse_0_0(clk, reset_n, ps2_clk, ps2_data, mouse_data, 
  mouse_data_new, ps2_clock_T, ps2_clock_O, ps2_clock_I, ps2_dat_T, ps2_dat_O, ps2_dat_I)
/* synthesis syn_black_box black_box_pad_pin="clk,reset_n,ps2_clk,ps2_data,mouse_data[31:0],mouse_data_new,ps2_clock_T,ps2_clock_O,ps2_clock_I,ps2_dat_T,ps2_dat_O,ps2_dat_I" */;
  input clk;
  input reset_n;
  inout ps2_clk;
  inout ps2_data;
  output [31:0]mouse_data;
  output mouse_data_new;
  output ps2_clock_T;
  output ps2_clock_O;
  input ps2_clock_I;
  output ps2_dat_T;
  output ps2_dat_O;
  input ps2_dat_I;
endmodule
