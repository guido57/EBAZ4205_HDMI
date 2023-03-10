// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Feb 23 10:50:56 2023
// Host        : guido-UM690 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top ebaz4205_mult_gen_0_0 -prefix
//               ebaz4205_mult_gen_0_0_ ebaz4205_mult_sin_0_stub.v
// Design      : ebaz4205_mult_sin_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_18,Vivado 2022.2" *)
module ebaz4205_mult_gen_0_0(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[11:0],B[15:0],P[15:0]" */;
  input CLK;
  input [11:0]A;
  input [15:0]B;
  output [15:0]P;
endmodule
