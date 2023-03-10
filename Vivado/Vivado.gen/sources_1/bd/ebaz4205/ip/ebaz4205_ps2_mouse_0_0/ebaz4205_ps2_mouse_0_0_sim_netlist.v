// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sat Feb 18 17:57:45 2023
// Host        : guido-UM690 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/guido/Acer/EBAZ4205_SDR_HDMI_PS2/Vivado/Vivado.gen/sources_1/bd/ebaz4205/ip/ebaz4205_ps2_mouse_0_0/ebaz4205_ps2_mouse_0_0_sim_netlist.v
// Design      : ebaz4205_ps2_mouse_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ebaz4205_ps2_mouse_0_0,ps2_mouse_w,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "ps2_mouse_w,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ebaz4205_ps2_mouse_0_0
   (clk,
    reset_n,
    ps2_clk,
    ps2_data,
    mouse_data,
    mouse_data_new,
    ps2_clock_T,
    ps2_clock_O,
    ps2_clock_I,
    ps2_dat_T,
    ps2_dat_O,
    ps2_dat_I);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset_n, ASSOCIATED_BUSIF ps2_dat, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ebaz4205_util_ds_buf_0_0_BUFG_O, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ps2_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ps2_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) inout ps2_clk;
  inout ps2_data;
  output [31:0]mouse_data;
  output mouse_data_new;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 ps2_clock TRI_T" *) output ps2_clock_T;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 ps2_clock TRI_O" *) output ps2_clock_O;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 ps2_clock TRI_I" *) input ps2_clock_I;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 ps2_dat TRI_T" *) output ps2_dat_T;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 ps2_dat TRI_O" *) output ps2_dat_O;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 ps2_dat TRI_I" *) input ps2_dat_I;

  wire \<const0> ;
  wire clk;
  wire [31:0]mouse_data;
  wire mouse_data_new;
  wire ps2_clock_I;
  wire ps2_clock_T;
  wire ps2_dat_I;
  wire ps2_dat_O;
  wire ps2_dat_T;
  wire reset_n;

  assign ps2_clock_O = \<const0> ;
  GND GND
       (.G(\<const0> ));
  ebaz4205_ps2_mouse_0_0_ps2_mouse_w U0
       (.D({ps2_dat_I,ps2_clock_I}),
        .clk(clk),
        .mouse_data(mouse_data),
        .mouse_data_new(mouse_data_new),
        .ps2_clock_T(ps2_clock_T),
        .ps2_dat_O(ps2_dat_O),
        .ps2_dat_T(ps2_dat_T),
        .reset_n(reset_n));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module ebaz4205_ps2_mouse_0_0_debounce
   (ps2_clk_int,
    bit_cnt0,
    E,
    D,
    timer0,
    result_reg_0,
    result_reg_1,
    clk,
    ps2_clk_int_prev,
    reset_n,
    Q,
    tx_ena,
    \FSM_sequential_state_reg[1] ,
    ps2_data_int,
    \timer_reg[0] ,
    \flipflops_reg[0]_0 );
  output ps2_clk_int;
  output bit_cnt0;
  output [0:0]E;
  output [0:0]D;
  output timer0;
  output result_reg_0;
  output result_reg_1;
  input clk;
  input ps2_clk_int_prev;
  input reset_n;
  input [1:0]Q;
  input tx_ena;
  input \FSM_sequential_state_reg[1] ;
  input ps2_data_int;
  input \timer_reg[0] ;
  input [0:0]\flipflops_reg[0]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[1] ;
  wire [1:0]Q;
  wire bit_cnt0;
  wire clk;
  wire \counter_out[7]_i_3_n_0 ;
  wire \counter_out_reg_n_0_[0] ;
  wire \counter_out_reg_n_0_[1] ;
  wire \counter_out_reg_n_0_[2] ;
  wire \counter_out_reg_n_0_[3] ;
  wire \counter_out_reg_n_0_[4] ;
  wire \counter_out_reg_n_0_[5] ;
  wire \counter_out_reg_n_0_[6] ;
  wire \counter_out_reg_n_0_[7] ;
  wire counter_set;
  wire [0:0]\flipflops_reg[0]_0 ;
  wire \flipflops_reg_n_0_[0] ;
  wire p_0_in;
  wire [8:0]plusOp;
  wire ps2_clk_int;
  wire ps2_clk_int_prev;
  wire ps2_data_int;
  wire reset_n;
  wire result_i_1_n_0;
  wire result_reg_0;
  wire result_reg_1;
  wire sel;
  wire timer0;
  wire \timer_reg[0] ;
  wire tx_ena;

  LUT5 #(
    .INIT(32'h3FFF5500)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1] ),
        .I1(ps2_clk_int),
        .I2(ps2_data_int),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(D));
  LUT6 #(
    .INIT(64'h0040004000F00000)) 
    \bit_cnt[3]_i_2 
       (.I0(ps2_clk_int),
        .I1(ps2_clk_int_prev),
        .I2(reset_n),
        .I3(Q[0]),
        .I4(tx_ena),
        .I5(Q[1]),
        .O(bit_cnt0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_out[0]_i_1 
       (.I0(\counter_out_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_out[1]_i_1 
       (.I0(\counter_out_reg_n_0_[0] ),
        .I1(\counter_out_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_out[2]_i_1 
       (.I0(\counter_out_reg_n_0_[0] ),
        .I1(\counter_out_reg_n_0_[1] ),
        .I2(\counter_out_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_out[3]_i_1 
       (.I0(\counter_out_reg_n_0_[1] ),
        .I1(\counter_out_reg_n_0_[0] ),
        .I2(\counter_out_reg_n_0_[2] ),
        .I3(\counter_out_reg_n_0_[3] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_out[4]_i_1 
       (.I0(\counter_out_reg_n_0_[2] ),
        .I1(\counter_out_reg_n_0_[0] ),
        .I2(\counter_out_reg_n_0_[1] ),
        .I3(\counter_out_reg_n_0_[3] ),
        .I4(\counter_out_reg_n_0_[4] ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_out[5]_i_1 
       (.I0(\counter_out_reg_n_0_[3] ),
        .I1(\counter_out_reg_n_0_[1] ),
        .I2(\counter_out_reg_n_0_[0] ),
        .I3(\counter_out_reg_n_0_[2] ),
        .I4(\counter_out_reg_n_0_[4] ),
        .I5(\counter_out_reg_n_0_[5] ),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_out[6]_i_1 
       (.I0(\counter_out[7]_i_3_n_0 ),
        .I1(\counter_out_reg_n_0_[6] ),
        .O(plusOp[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_out[7]_i_1 
       (.I0(p_0_in),
        .I1(\flipflops_reg_n_0_[0] ),
        .O(counter_set));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_out[7]_i_2 
       (.I0(\counter_out[7]_i_3_n_0 ),
        .I1(\counter_out_reg_n_0_[6] ),
        .I2(\counter_out_reg_n_0_[7] ),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_out[7]_i_3 
       (.I0(\counter_out_reg_n_0_[5] ),
        .I1(\counter_out_reg_n_0_[3] ),
        .I2(\counter_out_reg_n_0_[1] ),
        .I3(\counter_out_reg_n_0_[0] ),
        .I4(\counter_out_reg_n_0_[2] ),
        .I5(\counter_out_reg_n_0_[4] ),
        .O(\counter_out[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \counter_out[8]_inv_i_1 
       (.I0(\counter_out_reg_n_0_[6] ),
        .I1(\counter_out[7]_i_3_n_0 ),
        .I2(\counter_out_reg_n_0_[7] ),
        .O(plusOp[8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[0]),
        .Q(\counter_out_reg_n_0_[0] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[1]),
        .Q(\counter_out_reg_n_0_[1] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[2]),
        .Q(\counter_out_reg_n_0_[2] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[3]),
        .Q(\counter_out_reg_n_0_[3] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[4]),
        .Q(\counter_out_reg_n_0_[4] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[5]),
        .Q(\counter_out_reg_n_0_[5] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[6]),
        .Q(\counter_out_reg_n_0_[6] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[7]),
        .Q(\counter_out_reg_n_0_[7] ),
        .R(counter_set));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \counter_out_reg[8]_inv 
       (.C(clk),
        .CE(sel),
        .D(plusOp[8]),
        .Q(sel),
        .S(counter_set));
  FDRE \flipflops_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\flipflops_reg[0]_0 ),
        .Q(\flipflops_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \flipflops_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\flipflops_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    ps2_clk_int_prev_i_1
       (.I0(ps2_clk_int),
        .I1(reset_n),
        .I2(ps2_clk_int_prev),
        .O(result_reg_1));
  LUT6 #(
    .INIT(64'h0040004044440040)) 
    \ps2_word[9]_i_1 
       (.I0(Q[0]),
        .I1(reset_n),
        .I2(ps2_clk_int_prev),
        .I3(ps2_clk_int),
        .I4(tx_ena),
        .I5(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE40)) 
    result_i_1
       (.I0(sel),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .I3(ps2_clk_int),
        .O(result_i_1_n_0));
  FDRE result_reg
       (.C(clk),
        .CE(1'b1),
        .D(result_i_1_n_0),
        .Q(ps2_clk_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000F0700070)) 
    \timer[12]_i_2 
       (.I0(\timer_reg[0] ),
        .I1(result_reg_0),
        .I2(reset_n),
        .I3(Q[0]),
        .I4(\FSM_sequential_state_reg[1] ),
        .I5(Q[1]),
        .O(timer0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer[12]_i_3 
       (.I0(ps2_clk_int),
        .I1(tx_ena),
        .O(result_reg_0));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module ebaz4205_ps2_mouse_0_0_debounce_0
   (ps2_data_int,
    D,
    clk,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[0]_0 ,
    Q,
    ps2_clk_int,
    \flipflops_reg[0]_0 );
  output ps2_data_int;
  output [0:0]D;
  input clk;
  input \FSM_sequential_state_reg[0] ;
  input \FSM_sequential_state_reg[0]_0 ;
  input [1:0]Q;
  input ps2_clk_int;
  input [0:0]\flipflops_reg[0]_0 ;

  wire [0:0]D;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [1:0]Q;
  wire clk;
  wire \counter_out[7]_i_3__0_n_0 ;
  wire [8:8]counter_out_reg;
  wire \counter_out_reg_n_0_[0] ;
  wire \counter_out_reg_n_0_[1] ;
  wire \counter_out_reg_n_0_[2] ;
  wire \counter_out_reg_n_0_[3] ;
  wire \counter_out_reg_n_0_[4] ;
  wire \counter_out_reg_n_0_[5] ;
  wire \counter_out_reg_n_0_[6] ;
  wire \counter_out_reg_n_0_[7] ;
  wire counter_set;
  wire [0:0]\flipflops_reg[0]_0 ;
  wire \flipflops_reg_n_0_[0] ;
  wire p_0_in;
  wire [8:0]plusOp__0;
  wire ps2_clk_int;
  wire ps2_data_int;
  wire result_i_1__0_n_0;

  LUT6 #(
    .INIT(64'h0233323332333233)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(ps2_data_int),
        .I5(ps2_clk_int),
        .O(D));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_out[0]_i_1__0 
       (.I0(\counter_out_reg_n_0_[0] ),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_out[1]_i_1__0 
       (.I0(\counter_out_reg_n_0_[0] ),
        .I1(\counter_out_reg_n_0_[1] ),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_out[2]_i_1__0 
       (.I0(\counter_out_reg_n_0_[0] ),
        .I1(\counter_out_reg_n_0_[1] ),
        .I2(\counter_out_reg_n_0_[2] ),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_out[3]_i_1__0 
       (.I0(\counter_out_reg_n_0_[1] ),
        .I1(\counter_out_reg_n_0_[0] ),
        .I2(\counter_out_reg_n_0_[2] ),
        .I3(\counter_out_reg_n_0_[3] ),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_out[4]_i_1__0 
       (.I0(\counter_out_reg_n_0_[2] ),
        .I1(\counter_out_reg_n_0_[0] ),
        .I2(\counter_out_reg_n_0_[1] ),
        .I3(\counter_out_reg_n_0_[3] ),
        .I4(\counter_out_reg_n_0_[4] ),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_out[5]_i_1__0 
       (.I0(\counter_out_reg_n_0_[3] ),
        .I1(\counter_out_reg_n_0_[1] ),
        .I2(\counter_out_reg_n_0_[0] ),
        .I3(\counter_out_reg_n_0_[2] ),
        .I4(\counter_out_reg_n_0_[4] ),
        .I5(\counter_out_reg_n_0_[5] ),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_out[6]_i_1__0 
       (.I0(\counter_out[7]_i_3__0_n_0 ),
        .I1(\counter_out_reg_n_0_[6] ),
        .O(plusOp__0[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_out[7]_i_1__0 
       (.I0(p_0_in),
        .I1(\flipflops_reg_n_0_[0] ),
        .O(counter_set));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_out[7]_i_2__0 
       (.I0(\counter_out[7]_i_3__0_n_0 ),
        .I1(\counter_out_reg_n_0_[6] ),
        .I2(\counter_out_reg_n_0_[7] ),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_out[7]_i_3__0 
       (.I0(\counter_out_reg_n_0_[5] ),
        .I1(\counter_out_reg_n_0_[3] ),
        .I2(\counter_out_reg_n_0_[1] ),
        .I3(\counter_out_reg_n_0_[0] ),
        .I4(\counter_out_reg_n_0_[2] ),
        .I5(\counter_out_reg_n_0_[4] ),
        .O(\counter_out[7]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \counter_out[8]_inv_i_1__0 
       (.I0(\counter_out_reg_n_0_[6] ),
        .I1(\counter_out[7]_i_3__0_n_0 ),
        .I2(\counter_out_reg_n_0_[7] ),
        .O(plusOp__0[8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[0] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[0]),
        .Q(\counter_out_reg_n_0_[0] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[1] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[1]),
        .Q(\counter_out_reg_n_0_[1] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[2] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[2]),
        .Q(\counter_out_reg_n_0_[2] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[3] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[3]),
        .Q(\counter_out_reg_n_0_[3] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[4] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[4]),
        .Q(\counter_out_reg_n_0_[4] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[5] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[5]),
        .Q(\counter_out_reg_n_0_[5] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[6] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[6]),
        .Q(\counter_out_reg_n_0_[6] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[7] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[7]),
        .Q(\counter_out_reg_n_0_[7] ),
        .R(counter_set));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \counter_out_reg[8]_inv 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[8]),
        .Q(counter_out_reg),
        .S(counter_set));
  FDRE \flipflops_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\flipflops_reg[0]_0 ),
        .Q(\flipflops_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \flipflops_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\flipflops_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFE40)) 
    result_i_1__0
       (.I0(counter_out_reg),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .I3(ps2_data_int),
        .O(result_i_1__0_n_0));
  FDRE result_reg
       (.C(clk),
        .CE(1'b1),
        .D(result_i_1__0_n_0),
        .Q(ps2_data_int),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ps2_mouse_w" *) 
module ebaz4205_ps2_mouse_0_0_ps2_mouse_w
   (mouse_data,
    ps2_clock_T,
    ps2_dat_T,
    ps2_dat_O,
    mouse_data_new,
    reset_n,
    clk,
    D);
  output [31:0]mouse_data;
  output ps2_clock_T;
  output ps2_dat_T;
  output ps2_dat_O;
  output mouse_data_new;
  input reset_n;
  input clk;
  input [1:0]D;

  wire [1:0]D;
  wire clk;
  wire g0_b0_n_0;
  wire [31:0]mouse_data;
  wire \mouse_data[31]_i_3_n_0 ;
  wire [31:0]mouse_data_int;
  wire mouse_data_new;
  wire [1:0]packet_byte;
  wire \packet_byte[0]_i_1_n_0 ;
  wire \packet_byte[1]_i_1_n_0 ;
  wire ps2_clock_T;
  wire [7:0]ps2_code;
  wire ps2_code_new_prev;
  wire ps2_dat_O;
  wire ps2_dat_T;
  wire ps2_transceiver_0_n_0;
  wire ps2_transceiver_0_n_19;
  wire ps2_transceiver_0_n_20;
  wire ps2_transceiver_0_n_21;
  wire ps2_transceiver_0_n_22;
  wire ps2_transceiver_0_n_24;
  wire ps2_transceiver_0_n_25;
  wire ps2_transceiver_0_n_26;
  wire ps2_transceiver_0_n_27;
  wire ps2_transceiver_0_n_4;
  wire ps2_transceiver_0_n_5;
  wire reset_n;
  wire [4:0]state;
  wire \state[1]_i_8_n_0 ;
  wire \state[2]_i_7_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire [8:0]tx_cmd;
  wire tx_cmd0;
  wire \tx_cmd[2]_i_1_n_0 ;
  wire \tx_cmd_reg_n_0_[0] ;
  wire \tx_cmd_reg_n_0_[1] ;
  wire \tx_cmd_reg_n_0_[2] ;
  wire \tx_cmd_reg_n_0_[3] ;
  wire \tx_cmd_reg_n_0_[4] ;
  wire \tx_cmd_reg_n_0_[5] ;
  wire \tx_cmd_reg_n_0_[7] ;
  wire \tx_cmd_reg_n_0_[8] ;
  wire tx_ena;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00095551)) 
    g0_b0
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mouse_data[31]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\mouse_data[31]_i_3_n_0 ));
  FDRE \mouse_data_int_reg[0] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_19),
        .D(ps2_code[0]),
        .Q(mouse_data_int[0]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[10] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_20),
        .D(ps2_code[2]),
        .Q(mouse_data_int[10]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[11] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_20),
        .D(ps2_code[3]),
        .Q(mouse_data_int[11]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[12] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_20),
        .D(ps2_code[4]),
        .Q(mouse_data_int[12]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[13] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_20),
        .D(ps2_code[5]),
        .Q(mouse_data_int[13]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[14] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_20),
        .D(ps2_code[6]),
        .Q(mouse_data_int[14]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[15] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_20),
        .D(ps2_code[7]),
        .Q(mouse_data_int[15]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[16] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_21),
        .D(ps2_code[0]),
        .Q(mouse_data_int[16]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[17] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_21),
        .D(ps2_code[1]),
        .Q(mouse_data_int[17]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[18] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_21),
        .D(ps2_code[2]),
        .Q(mouse_data_int[18]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[19] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_21),
        .D(ps2_code[3]),
        .Q(mouse_data_int[19]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[1] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_19),
        .D(ps2_code[1]),
        .Q(mouse_data_int[1]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[20] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_21),
        .D(ps2_code[4]),
        .Q(mouse_data_int[20]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[21] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_21),
        .D(ps2_code[5]),
        .Q(mouse_data_int[21]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[22] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_21),
        .D(ps2_code[6]),
        .Q(mouse_data_int[22]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[23] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_21),
        .D(ps2_code[7]),
        .Q(mouse_data_int[23]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[24] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_22),
        .D(ps2_code[0]),
        .Q(mouse_data_int[24]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[25] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_22),
        .D(ps2_code[1]),
        .Q(mouse_data_int[25]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[26] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_22),
        .D(ps2_code[2]),
        .Q(mouse_data_int[26]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[27] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_22),
        .D(ps2_code[3]),
        .Q(mouse_data_int[27]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[28] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_22),
        .D(ps2_code[4]),
        .Q(mouse_data_int[28]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[29] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_22),
        .D(ps2_code[5]),
        .Q(mouse_data_int[29]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[2] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_19),
        .D(ps2_code[2]),
        .Q(mouse_data_int[2]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[30] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_22),
        .D(ps2_code[6]),
        .Q(mouse_data_int[30]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[31] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_22),
        .D(ps2_code[7]),
        .Q(mouse_data_int[31]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[3] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_19),
        .D(ps2_code[3]),
        .Q(mouse_data_int[3]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[4] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_19),
        .D(ps2_code[4]),
        .Q(mouse_data_int[4]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[5] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_19),
        .D(ps2_code[5]),
        .Q(mouse_data_int[5]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[6] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_19),
        .D(ps2_code[6]),
        .Q(mouse_data_int[6]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[7] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_19),
        .D(ps2_code[7]),
        .Q(mouse_data_int[7]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[8] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_20),
        .D(ps2_code[0]),
        .Q(mouse_data_int[8]),
        .R(1'b0));
  FDRE \mouse_data_int_reg[9] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_20),
        .D(ps2_code[1]),
        .Q(mouse_data_int[9]),
        .R(1'b0));
  FDCE mouse_data_new_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(ps2_transceiver_0_n_0),
        .D(ps2_transceiver_0_n_26),
        .Q(mouse_data_new));
  FDCE \mouse_data_reg[0] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[0]),
        .Q(mouse_data[0]));
  FDCE \mouse_data_reg[10] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[10]),
        .Q(mouse_data[10]));
  FDCE \mouse_data_reg[11] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[11]),
        .Q(mouse_data[11]));
  FDCE \mouse_data_reg[12] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[12]),
        .Q(mouse_data[12]));
  FDCE \mouse_data_reg[13] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[13]),
        .Q(mouse_data[13]));
  FDCE \mouse_data_reg[14] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[14]),
        .Q(mouse_data[14]));
  FDCE \mouse_data_reg[15] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[15]),
        .Q(mouse_data[15]));
  FDCE \mouse_data_reg[16] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[16]),
        .Q(mouse_data[16]));
  FDCE \mouse_data_reg[17] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[17]),
        .Q(mouse_data[17]));
  FDCE \mouse_data_reg[18] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[18]),
        .Q(mouse_data[18]));
  FDCE \mouse_data_reg[19] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[19]),
        .Q(mouse_data[19]));
  FDCE \mouse_data_reg[1] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[1]),
        .Q(mouse_data[1]));
  FDCE \mouse_data_reg[20] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[20]),
        .Q(mouse_data[20]));
  FDCE \mouse_data_reg[21] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[21]),
        .Q(mouse_data[21]));
  FDCE \mouse_data_reg[22] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[22]),
        .Q(mouse_data[22]));
  FDCE \mouse_data_reg[23] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[23]),
        .Q(mouse_data[23]));
  FDCE \mouse_data_reg[24] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[24]),
        .Q(mouse_data[24]));
  FDCE \mouse_data_reg[25] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[25]),
        .Q(mouse_data[25]));
  FDCE \mouse_data_reg[26] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[26]),
        .Q(mouse_data[26]));
  FDCE \mouse_data_reg[27] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[27]),
        .Q(mouse_data[27]));
  FDCE \mouse_data_reg[28] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[28]),
        .Q(mouse_data[28]));
  FDCE \mouse_data_reg[29] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[29]),
        .Q(mouse_data[29]));
  FDCE \mouse_data_reg[2] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[2]),
        .Q(mouse_data[2]));
  FDCE \mouse_data_reg[30] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[30]),
        .Q(mouse_data[30]));
  FDCE \mouse_data_reg[31] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[31]),
        .Q(mouse_data[31]));
  FDCE \mouse_data_reg[3] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[3]),
        .Q(mouse_data[3]));
  FDCE \mouse_data_reg[4] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[4]),
        .Q(mouse_data[4]));
  FDCE \mouse_data_reg[5] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[5]),
        .Q(mouse_data[5]));
  FDCE \mouse_data_reg[6] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[6]),
        .Q(mouse_data[6]));
  FDCE \mouse_data_reg[7] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[7]),
        .Q(mouse_data[7]));
  FDCE \mouse_data_reg[8] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[8]),
        .Q(mouse_data[8]));
  FDCE \mouse_data_reg[9] 
       (.C(clk),
        .CE(ps2_transceiver_0_n_24),
        .CLR(ps2_transceiver_0_n_0),
        .D(mouse_data_int[9]),
        .Q(mouse_data[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \packet_byte[0]_i_1 
       (.I0(reset_n),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(ps2_transceiver_0_n_4),
        .I5(packet_byte[0]),
        .O(\packet_byte[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \packet_byte[1]_i_1 
       (.I0(packet_byte[0]),
        .I1(ps2_transceiver_0_n_5),
        .I2(packet_byte[1]),
        .O(\packet_byte[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \packet_byte_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\packet_byte[0]_i_1_n_0 ),
        .Q(packet_byte[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \packet_byte_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\packet_byte[1]_i_1_n_0 ),
        .Q(packet_byte[1]),
        .R(1'b0));
  FDRE ps2_code_new_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_transceiver_0_n_27),
        .Q(ps2_code_new_prev),
        .R(1'b0));
  ebaz4205_ps2_mouse_0_0_ps2_transceiver ps2_transceiver_0
       (.D(state),
        .E(tx_cmd0),
        .Q({\state_reg_n_0_[4] ,\state_reg_n_0_[3] ,\state_reg_n_0_[2] ,\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .clk(clk),
        .mouse_data_new(mouse_data_new),
        .mouse_data_new_reg(\mouse_data[31]_i_3_n_0 ),
        .packet_byte(packet_byte),
        .\packet_byte_reg[0] (ps2_transceiver_0_n_19),
        .\packet_byte_reg[0]_0 (ps2_transceiver_0_n_20),
        .\packet_byte_reg[0]_1 (ps2_transceiver_0_n_22),
        .\packet_byte_reg[0]_2 (ps2_transceiver_0_n_26),
        .\packet_byte_reg[1] (ps2_transceiver_0_n_21),
        .ps2_clock_T(ps2_clock_T),
        .ps2_code_new_prev(ps2_code_new_prev),
        .ps2_code_new_reg_0(ps2_transceiver_0_n_4),
        .ps2_code_new_reg_1(ps2_transceiver_0_n_5),
        .ps2_code_new_reg_2(ps2_transceiver_0_n_24),
        .ps2_code_new_reg_3(ps2_transceiver_0_n_27),
        .\ps2_code_reg[7]_0 (ps2_code),
        .ps2_dat_O(ps2_dat_O),
        .ps2_dat_T(ps2_dat_T),
        .\ps2_word_reg[9]_0 ({\tx_cmd_reg_n_0_[8] ,\tx_cmd_reg_n_0_[7] ,\tx_cmd_reg_n_0_[5] ,\tx_cmd_reg_n_0_[4] ,\tx_cmd_reg_n_0_[3] ,\tx_cmd_reg_n_0_[2] ,\tx_cmd_reg_n_0_[1] ,\tx_cmd_reg_n_0_[0] }),
        .reset_n(reset_n),
        .reset_n_0(ps2_transceiver_0_n_0),
        .\state_reg[1] (\state[1]_i_8_n_0 ),
        .\state_reg[2] (\state[2]_i_7_n_0 ),
        .\state_reg[3] (\state[3]_i_3_n_0 ),
        .\state_reg[4] (\state[4]_i_3_n_0 ),
        .\sync_ffs_reg[1]_0 (D),
        .tx_busy_reg_0(ps2_transceiver_0_n_25),
        .tx_ena(tx_ena),
        .tx_ena_reg(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \state[1]_i_8 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\state[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[2]_i_7 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[3]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \state[4]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[4]_i_3 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\state[4]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(ps2_transceiver_0_n_0),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(ps2_transceiver_0_n_0),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(ps2_transceiver_0_n_0),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(ps2_transceiver_0_n_0),
        .D(state[3]),
        .Q(\state_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(ps2_transceiver_0_n_0),
        .D(state[4]),
        .Q(\state_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \tx_cmd[0]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[1] ),
        .O(tx_cmd[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tx_cmd[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .O(tx_cmd[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h5501)) 
    \tx_cmd[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\tx_cmd[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    \tx_cmd[3]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(tx_cmd[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \tx_cmd[4]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .O(tx_cmd[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tx_cmd[5]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .O(tx_cmd[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tx_cmd[7]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .O(tx_cmd[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h888F)) 
    \tx_cmd[8]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[4] ),
        .O(tx_cmd[8]));
  FDRE \tx_cmd_reg[0] 
       (.C(clk),
        .CE(tx_cmd0),
        .D(tx_cmd[0]),
        .Q(\tx_cmd_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_cmd_reg[1] 
       (.C(clk),
        .CE(tx_cmd0),
        .D(tx_cmd[1]),
        .Q(\tx_cmd_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_cmd_reg[2] 
       (.C(clk),
        .CE(tx_cmd0),
        .D(\tx_cmd[2]_i_1_n_0 ),
        .Q(\tx_cmd_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tx_cmd_reg[3] 
       (.C(clk),
        .CE(tx_cmd0),
        .D(tx_cmd[3]),
        .Q(\tx_cmd_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tx_cmd_reg[4] 
       (.C(clk),
        .CE(tx_cmd0),
        .D(tx_cmd[4]),
        .Q(\tx_cmd_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tx_cmd_reg[5] 
       (.C(clk),
        .CE(tx_cmd0),
        .D(tx_cmd[5]),
        .Q(\tx_cmd_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tx_cmd_reg[7] 
       (.C(clk),
        .CE(tx_cmd0),
        .D(tx_cmd[7]),
        .Q(\tx_cmd_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \tx_cmd_reg[8] 
       (.C(clk),
        .CE(tx_cmd0),
        .D(tx_cmd[8]),
        .Q(\tx_cmd_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tx_ena_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_transceiver_0_n_25),
        .Q(tx_ena),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ps2_transceiver" *) 
module ebaz4205_ps2_mouse_0_0_ps2_transceiver
   (reset_n_0,
    ps2_clock_T,
    ps2_dat_T,
    ps2_dat_O,
    ps2_code_new_reg_0,
    ps2_code_new_reg_1,
    \ps2_code_reg[7]_0 ,
    D,
    \packet_byte_reg[0] ,
    \packet_byte_reg[0]_0 ,
    \packet_byte_reg[1] ,
    \packet_byte_reg[0]_1 ,
    E,
    ps2_code_new_reg_2,
    tx_busy_reg_0,
    \packet_byte_reg[0]_2 ,
    ps2_code_new_reg_3,
    clk,
    Q,
    ps2_code_new_prev,
    reset_n,
    tx_ena,
    \ps2_word_reg[9]_0 ,
    \state_reg[4] ,
    \state_reg[2] ,
    \state_reg[3] ,
    packet_byte,
    \state_reg[1] ,
    mouse_data_new_reg,
    tx_ena_reg,
    mouse_data_new,
    \sync_ffs_reg[1]_0 );
  output reset_n_0;
  output ps2_clock_T;
  output ps2_dat_T;
  output ps2_dat_O;
  output ps2_code_new_reg_0;
  output ps2_code_new_reg_1;
  output [7:0]\ps2_code_reg[7]_0 ;
  output [4:0]D;
  output \packet_byte_reg[0] ;
  output \packet_byte_reg[0]_0 ;
  output \packet_byte_reg[1] ;
  output \packet_byte_reg[0]_1 ;
  output [0:0]E;
  output [0:0]ps2_code_new_reg_2;
  output tx_busy_reg_0;
  output \packet_byte_reg[0]_2 ;
  output ps2_code_new_reg_3;
  input clk;
  input [4:0]Q;
  input ps2_code_new_prev;
  input reset_n;
  input tx_ena;
  input [7:0]\ps2_word_reg[9]_0 ;
  input \state_reg[4] ;
  input \state_reg[2] ;
  input \state_reg[3] ;
  input [1:0]packet_byte;
  input \state_reg[1] ;
  input mouse_data_new_reg;
  input tx_ena_reg;
  input mouse_data_new;
  input [1:0]\sync_ffs_reg[1]_0 ;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire [4:0]Q;
  wire bit_cnt0;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[3]_i_1_n_0 ;
  wire \bit_cnt[3]_i_3_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire \bit_cnt_reg_n_0_[3] ;
  wire clk;
  wire debounce_ps2_clk_n_2;
  wire debounce_ps2_clk_n_5;
  wire debounce_ps2_clk_n_6;
  wire [12:1]in22;
  wire mouse_data_new;
  wire mouse_data_new_reg;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire [1:0]packet_byte;
  wire \packet_byte_reg[0] ;
  wire \packet_byte_reg[0]_0 ;
  wire \packet_byte_reg[0]_1 ;
  wire \packet_byte_reg[0]_2 ;
  wire \packet_byte_reg[1] ;
  wire ps2_clk_int;
  wire ps2_clk_int_prev;
  wire ps2_clock_T;
  wire ps2_clock_T_i_1_n_0;
  wire ps2_clock_T_i_2_n_0;
  wire ps2_clock_T_i_3_n_0;
  wire ps2_clock_T_i_4_n_0;
  wire \ps2_code[7]_i_1_n_0 ;
  wire \ps2_code[7]_i_3_n_0 ;
  wire \ps2_code[7]_i_4_n_0 ;
  wire \ps2_code[7]_i_5_n_0 ;
  wire \ps2_code[7]_i_6_n_0 ;
  wire \ps2_code[7]_i_7_n_0 ;
  wire ps2_code_new;
  wire ps2_code_new_0;
  wire ps2_code_new_i_1_n_0;
  wire ps2_code_new_prev;
  wire ps2_code_new_reg_0;
  wire ps2_code_new_reg_1;
  wire [0:0]ps2_code_new_reg_2;
  wire ps2_code_new_reg_3;
  wire [7:0]\ps2_code_reg[7]_0 ;
  wire ps2_dat_O;
  wire ps2_dat_O_i_1_n_0;
  wire ps2_dat_O_i_2_n_0;
  wire ps2_dat_O_i_3_n_0;
  wire ps2_dat_T;
  wire ps2_dat_T_i_1_n_0;
  wire ps2_dat_T_i_2_n_0;
  wire ps2_data_int;
  wire [9:0]ps2_word;
  wire \ps2_word[10]_i_1_n_0 ;
  wire \ps2_word[10]_i_2_n_0 ;
  wire \ps2_word[10]_i_3_n_0 ;
  wire \ps2_word[7]_i_1_n_0 ;
  wire [7:0]\ps2_word_reg[9]_0 ;
  wire \ps2_word_reg_n_0_[0] ;
  wire \ps2_word_reg_n_0_[10] ;
  wire \ps2_word_reg_n_0_[1] ;
  wire \ps2_word_reg_n_0_[7] ;
  wire \ps2_word_reg_n_0_[8] ;
  wire \ps2_word_reg_n_0_[9] ;
  wire reset_n;
  wire reset_n_0;
  wire [1:0]state;
  wire \state[0]_i_10_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[0]_i_7_n_0 ;
  wire \state[0]_i_8_n_0 ;
  wire \state[0]_i_9_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[1]_i_6_n_0 ;
  wire \state[1]_i_7_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire \state[4]_i_10_n_0 ;
  wire \state[4]_i_11_n_0 ;
  wire \state[4]_i_12_n_0 ;
  wire \state[4]_i_13_n_0 ;
  wire \state[4]_i_4_n_0 ;
  wire \state[4]_i_5_n_0 ;
  wire \state[4]_i_6_n_0 ;
  wire \state[4]_i_7_n_0 ;
  wire \state[4]_i_8_n_0 ;
  wire \state[4]_i_9_n_0 ;
  wire [1:0]state__0;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire \state_reg[3] ;
  wire \state_reg[4] ;
  wire [1:0]sync_ffs;
  wire [1:0]\sync_ffs_reg[1]_0 ;
  wire timer0;
  wire timer0_carry__0_n_0;
  wire timer0_carry__0_n_1;
  wire timer0_carry__0_n_2;
  wire timer0_carry__0_n_3;
  wire timer0_carry__1_n_1;
  wire timer0_carry__1_n_2;
  wire timer0_carry__1_n_3;
  wire timer0_carry_n_0;
  wire timer0_carry_n_1;
  wire timer0_carry_n_2;
  wire timer0_carry_n_3;
  wire \timer[0]_i_1_n_0 ;
  wire \timer[12]_i_1_n_0 ;
  wire \timer[12]_i_4_n_0 ;
  wire \timer[12]_i_5_n_0 ;
  wire \timer[12]_i_6_n_0 ;
  wire \timer[12]_i_7_n_0 ;
  wire \timer_reg_n_0_[0] ;
  wire \timer_reg_n_0_[10] ;
  wire \timer_reg_n_0_[11] ;
  wire \timer_reg_n_0_[12] ;
  wire \timer_reg_n_0_[1] ;
  wire \timer_reg_n_0_[2] ;
  wire \timer_reg_n_0_[3] ;
  wire \timer_reg_n_0_[4] ;
  wire \timer_reg_n_0_[5] ;
  wire \timer_reg_n_0_[6] ;
  wire \timer_reg_n_0_[7] ;
  wire \timer_reg_n_0_[8] ;
  wire \timer_reg_n_0_[9] ;
  wire tx_busy;
  wire tx_busy_i_1_n_0;
  wire tx_busy_reg_0;
  wire \tx_cmd[8]_i_3_n_0 ;
  wire tx_ena;
  wire tx_ena_reg;
  wire [3:3]NLW_timer0_carry__1_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'h3311331130113311)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(tx_ena),
        .I1(state[0]),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(state[1]),
        .I4(\bit_cnt_reg_n_0_[3] ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "inhibit:01,transact:10,tx_complete:11,receive:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(state__0[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "inhibit:01,transact:10,tx_complete:11,receive:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(state__0[1]),
        .Q(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[0]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_cnt[1]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .O(\bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_cnt[2]_i_1 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .O(\bit_cnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \bit_cnt[3]_i_1 
       (.I0(tx_ena),
        .I1(state[0]),
        .I2(reset_n),
        .I3(state[1]),
        .O(\bit_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_cnt[3]_i_3 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .O(\bit_cnt[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(clk),
        .CE(bit_cnt0),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ),
        .R(\bit_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(clk),
        .CE(bit_cnt0),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[1] ),
        .R(\bit_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(clk),
        .CE(bit_cnt0),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[2] ),
        .R(\bit_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[3] 
       (.C(clk),
        .CE(bit_cnt0),
        .D(\bit_cnt[3]_i_3_n_0 ),
        .Q(\bit_cnt_reg_n_0_[3] ),
        .R(\bit_cnt[3]_i_1_n_0 ));
  ebaz4205_ps2_mouse_0_0_debounce debounce_ps2_clk
       (.D(state__0[1]),
        .E(debounce_ps2_clk_n_2),
        .\FSM_sequential_state_reg[1] (ps2_clock_T_i_2_n_0),
        .Q(state),
        .bit_cnt0(bit_cnt0),
        .clk(clk),
        .\flipflops_reg[0]_0 (sync_ffs[0]),
        .ps2_clk_int(ps2_clk_int),
        .ps2_clk_int_prev(ps2_clk_int_prev),
        .ps2_data_int(ps2_data_int),
        .reset_n(reset_n),
        .result_reg_0(debounce_ps2_clk_n_5),
        .result_reg_1(debounce_ps2_clk_n_6),
        .timer0(timer0),
        .\timer_reg[0] (\timer[12]_i_4_n_0 ),
        .tx_ena(tx_ena));
  ebaz4205_ps2_mouse_0_0_debounce_0 debounce_ps2_data
       (.D(state__0[0]),
        .\FSM_sequential_state_reg[0] (ps2_clock_T_i_2_n_0),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state[0]_i_2_n_0 ),
        .Q(state),
        .clk(clk),
        .\flipflops_reg[0]_0 (sync_ffs[1]),
        .ps2_clk_int(ps2_clk_int),
        .ps2_data_int(ps2_data_int));
  LUT5 #(
    .INIT(32'h80000000)) 
    \mouse_data[31]_i_1 
       (.I0(mouse_data_new_reg),
        .I1(ps2_code_new),
        .I2(ps2_code_new_prev),
        .I3(packet_byte[1]),
        .I4(packet_byte[0]),
        .O(ps2_code_new_reg_2));
  LUT1 #(
    .INIT(2'h1)) 
    \mouse_data[31]_i_2 
       (.I0(reset_n),
        .O(reset_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \mouse_data_int[15]_i_1 
       (.I0(ps2_code_new_reg_1),
        .I1(packet_byte[0]),
        .I2(packet_byte[1]),
        .O(\packet_byte_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \mouse_data_int[23]_i_1 
       (.I0(ps2_code_new_reg_1),
        .I1(packet_byte[1]),
        .I2(packet_byte[0]),
        .O(\packet_byte_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mouse_data_int[31]_i_1 
       (.I0(ps2_code_new_reg_1),
        .I1(packet_byte[0]),
        .I2(packet_byte[1]),
        .O(\packet_byte_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mouse_data_int[7]_i_1 
       (.I0(ps2_code_new_reg_1),
        .I1(packet_byte[0]),
        .I2(packet_byte[1]),
        .O(\packet_byte_reg[0] ));
  LUT6 #(
    .INIT(64'hF0FFFFFF80000000)) 
    mouse_data_new_i_1
       (.I0(packet_byte[0]),
        .I1(packet_byte[1]),
        .I2(ps2_code_new_prev),
        .I3(ps2_code_new),
        .I4(mouse_data_new_reg),
        .I5(mouse_data_new),
        .O(\packet_byte_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \packet_byte[0]_i_2 
       (.I0(ps2_code_new),
        .I1(ps2_code_new_prev),
        .O(ps2_code_new_reg_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \packet_byte[1]_i_2 
       (.I0(ps2_code_new),
        .I1(ps2_code_new_prev),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[0]),
        .I5(reset_n),
        .O(ps2_code_new_reg_1));
  FDRE ps2_clk_int_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(debounce_ps2_clk_n_6),
        .Q(ps2_clk_int_prev),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hDDFF4545)) 
    ps2_clock_T_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(tx_ena),
        .I3(ps2_clock_T_i_2_n_0),
        .I4(ps2_clock_T),
        .O(ps2_clock_T_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h555555FD)) 
    ps2_clock_T_i_2
       (.I0(\timer_reg_n_0_[12] ),
        .I1(ps2_clock_T_i_3_n_0),
        .I2(ps2_clock_T_i_4_n_0),
        .I3(\timer_reg_n_0_[10] ),
        .I4(\timer_reg_n_0_[11] ),
        .O(ps2_clock_T_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    ps2_clock_T_i_3
       (.I0(\timer_reg_n_0_[6] ),
        .I1(\timer_reg_n_0_[4] ),
        .I2(\timer_reg_n_0_[5] ),
        .I3(\timer_reg_n_0_[3] ),
        .O(ps2_clock_T_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    ps2_clock_T_i_4
       (.I0(\timer_reg_n_0_[8] ),
        .I1(\timer_reg_n_0_[7] ),
        .I2(\timer_reg_n_0_[9] ),
        .O(ps2_clock_T_i_4_n_0));
  FDCE ps2_clock_T_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(ps2_clock_T_i_1_n_0),
        .Q(ps2_clock_T));
  LUT2 #(
    .INIT(4'h8)) 
    \ps2_code[7]_i_1 
       (.I0(ps2_code_new_0),
        .I1(\ps2_code[7]_i_3_n_0 ),
        .O(\ps2_code[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \ps2_code[7]_i_2 
       (.I0(\ps2_code[7]_i_4_n_0 ),
        .I1(\timer_reg_n_0_[11] ),
        .I2(\timer_reg_n_0_[5] ),
        .I3(\timer_reg_n_0_[9] ),
        .I4(\ps2_code[7]_i_5_n_0 ),
        .O(ps2_code_new_0));
  LUT5 #(
    .INIT(32'h00006996)) 
    \ps2_code[7]_i_3 
       (.I0(\ps2_code[7]_i_6_n_0 ),
        .I1(\ps2_word_reg_n_0_[8] ),
        .I2(p_5_in),
        .I3(p_6_in),
        .I4(\ps2_code[7]_i_7_n_0 ),
        .O(\ps2_code[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \ps2_code[7]_i_4 
       (.I0(\timer_reg_n_0_[2] ),
        .I1(\timer_reg_n_0_[1] ),
        .I2(\timer_reg_n_0_[12] ),
        .I3(\timer_reg_n_0_[0] ),
        .I4(\timer_reg_n_0_[8] ),
        .I5(\timer_reg_n_0_[10] ),
        .O(\ps2_code[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ps2_code[7]_i_5 
       (.I0(\timer_reg_n_0_[6] ),
        .I1(\timer_reg_n_0_[7] ),
        .I2(\timer_reg_n_0_[3] ),
        .I3(\timer_reg_n_0_[4] ),
        .O(\ps2_code[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \ps2_code[7]_i_6 
       (.I0(\ps2_word_reg_n_0_[7] ),
        .I1(p_2_in),
        .I2(p_4_in),
        .I3(p_3_in),
        .I4(\ps2_word_reg_n_0_[9] ),
        .I5(\ps2_word_reg_n_0_[1] ),
        .O(\ps2_code[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \ps2_code[7]_i_7 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(tx_ena),
        .I3(\ps2_word_reg_n_0_[10] ),
        .I4(\ps2_word_reg_n_0_[0] ),
        .O(\ps2_code[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5554AAAA0000)) 
    ps2_code_new_i_1
       (.I0(\ps2_code[7]_i_3_n_0 ),
        .I1(tx_ena),
        .I2(state[1]),
        .I3(state[0]),
        .I4(ps2_code_new_0),
        .I5(ps2_code_new),
        .O(ps2_code_new_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ps2_code_new_prev_i_1
       (.I0(ps2_code_new),
        .I1(reset_n),
        .I2(ps2_code_new_prev),
        .O(ps2_code_new_reg_3));
  FDCE ps2_code_new_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(ps2_code_new_i_1_n_0),
        .Q(ps2_code_new));
  FDCE \ps2_code_reg[0] 
       (.C(clk),
        .CE(\ps2_code[7]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\ps2_word_reg_n_0_[1] ),
        .Q(\ps2_code_reg[7]_0 [0]));
  FDCE \ps2_code_reg[1] 
       (.C(clk),
        .CE(\ps2_code[7]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(p_6_in),
        .Q(\ps2_code_reg[7]_0 [1]));
  FDCE \ps2_code_reg[2] 
       (.C(clk),
        .CE(\ps2_code[7]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(p_5_in),
        .Q(\ps2_code_reg[7]_0 [2]));
  FDCE \ps2_code_reg[3] 
       (.C(clk),
        .CE(\ps2_code[7]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(p_4_in),
        .Q(\ps2_code_reg[7]_0 [3]));
  FDCE \ps2_code_reg[4] 
       (.C(clk),
        .CE(\ps2_code[7]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(p_3_in),
        .Q(\ps2_code_reg[7]_0 [4]));
  FDCE \ps2_code_reg[5] 
       (.C(clk),
        .CE(\ps2_code[7]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(p_2_in),
        .Q(\ps2_code_reg[7]_0 [5]));
  FDCE \ps2_code_reg[6] 
       (.C(clk),
        .CE(\ps2_code[7]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\ps2_word_reg_n_0_[7] ),
        .Q(\ps2_code_reg[7]_0 [6]));
  FDCE \ps2_code_reg[7] 
       (.C(clk),
        .CE(\ps2_code[7]_i_1_n_0 ),
        .CLR(reset_n_0),
        .D(\ps2_word_reg_n_0_[8] ),
        .Q(\ps2_code_reg[7]_0 [7]));
  LUT6 #(
    .INIT(64'hFFFFEAFF00002A00)) 
    ps2_dat_O_i_1
       (.I0(\ps2_word_reg_n_0_[0] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(reset_n),
        .I4(ps2_dat_O_i_2_n_0),
        .I5(ps2_dat_O),
        .O(ps2_dat_O_i_1_n_0));
  LUT6 #(
    .INIT(64'h2222AAA2AAAAAAAA)) 
    ps2_dat_O_i_2
       (.I0(ps2_dat_T_i_2_n_0),
        .I1(\timer_reg_n_0_[12] ),
        .I2(ps2_clock_T_i_3_n_0),
        .I3(ps2_clock_T_i_4_n_0),
        .I4(ps2_dat_O_i_3_n_0),
        .I5(state[0]),
        .O(ps2_dat_O_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ps2_dat_O_i_3
       (.I0(\timer_reg_n_0_[10] ),
        .I1(\timer_reg_n_0_[11] ),
        .O(ps2_dat_O_i_3_n_0));
  FDRE ps2_dat_O_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_dat_O_i_1_n_0),
        .Q(ps2_dat_O),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF88AAFA0088AA0A)) 
    ps2_dat_T_i_1
       (.I0(ps2_dat_T_i_2_n_0),
        .I1(ps2_clock_T_i_2_n_0),
        .I2(tx_ena),
        .I3(state[1]),
        .I4(state[0]),
        .I5(ps2_dat_T),
        .O(ps2_dat_T_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hE0FF)) 
    ps2_dat_T_i_2
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(state[1]),
        .O(ps2_dat_T_i_2_n_0));
  FDPE ps2_dat_T_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_dat_T_i_1_n_0),
        .PRE(reset_n_0),
        .Q(ps2_dat_T));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \ps2_word[0]_i_1 
       (.I0(\ps2_word_reg_n_0_[1] ),
        .I1(state[1]),
        .I2(tx_ena),
        .O(ps2_word[0]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \ps2_word[10]_i_1 
       (.I0(ps2_data_int),
        .I1(ps2_clk_int),
        .I2(ps2_clk_int_prev),
        .I3(\ps2_word[10]_i_2_n_0 ),
        .I4(\ps2_word[10]_i_3_n_0 ),
        .I5(\ps2_word_reg_n_0_[10] ),
        .O(\ps2_word[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ps2_word[10]_i_2 
       (.I0(reset_n),
        .I1(state[0]),
        .O(\ps2_word[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ps2_word[10]_i_3 
       (.I0(tx_ena),
        .I1(state[1]),
        .O(\ps2_word[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \ps2_word[1]_i_1 
       (.I0(\ps2_word_reg[9]_0 [0]),
        .I1(tx_ena),
        .I2(state[1]),
        .I3(p_6_in),
        .O(ps2_word[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ps2_word[2]_i_1 
       (.I0(\ps2_word_reg[9]_0 [1]),
        .I1(tx_ena),
        .I2(state[1]),
        .I3(p_5_in),
        .O(ps2_word[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ps2_word[3]_i_1 
       (.I0(\ps2_word_reg[9]_0 [2]),
        .I1(tx_ena),
        .I2(state[1]),
        .I3(p_4_in),
        .O(ps2_word[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ps2_word[4]_i_1 
       (.I0(\ps2_word_reg[9]_0 [3]),
        .I1(tx_ena),
        .I2(state[1]),
        .I3(p_3_in),
        .O(ps2_word[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ps2_word[5]_i_1 
       (.I0(\ps2_word_reg[9]_0 [4]),
        .I1(tx_ena),
        .I2(state[1]),
        .I3(p_2_in),
        .O(ps2_word[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ps2_word[6]_i_1 
       (.I0(\ps2_word_reg[9]_0 [5]),
        .I1(tx_ena),
        .I2(state[1]),
        .I3(\ps2_word_reg_n_0_[7] ),
        .O(ps2_word[6]));
  LUT5 #(
    .INIT(32'hCACAFACA)) 
    \ps2_word[7]_i_1 
       (.I0(\ps2_word_reg_n_0_[7] ),
        .I1(\ps2_word_reg_n_0_[8] ),
        .I2(debounce_ps2_clk_n_2),
        .I3(tx_ena),
        .I4(state[1]),
        .O(\ps2_word[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ps2_word[8]_i_1 
       (.I0(\ps2_word_reg[9]_0 [6]),
        .I1(tx_ena),
        .I2(state[1]),
        .I3(\ps2_word_reg_n_0_[9] ),
        .O(ps2_word[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ps2_word[9]_i_2 
       (.I0(\ps2_word_reg[9]_0 [7]),
        .I1(tx_ena),
        .I2(state[1]),
        .I3(\ps2_word_reg_n_0_[10] ),
        .O(ps2_word[9]));
  FDRE \ps2_word_reg[0] 
       (.C(clk),
        .CE(debounce_ps2_clk_n_2),
        .D(ps2_word[0]),
        .Q(\ps2_word_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ps2_word_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\ps2_word[10]_i_1_n_0 ),
        .Q(\ps2_word_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \ps2_word_reg[1] 
       (.C(clk),
        .CE(debounce_ps2_clk_n_2),
        .D(ps2_word[1]),
        .Q(\ps2_word_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \ps2_word_reg[2] 
       (.C(clk),
        .CE(debounce_ps2_clk_n_2),
        .D(ps2_word[2]),
        .Q(p_6_in),
        .R(1'b0));
  FDRE \ps2_word_reg[3] 
       (.C(clk),
        .CE(debounce_ps2_clk_n_2),
        .D(ps2_word[3]),
        .Q(p_5_in),
        .R(1'b0));
  FDRE \ps2_word_reg[4] 
       (.C(clk),
        .CE(debounce_ps2_clk_n_2),
        .D(ps2_word[4]),
        .Q(p_4_in),
        .R(1'b0));
  FDRE \ps2_word_reg[5] 
       (.C(clk),
        .CE(debounce_ps2_clk_n_2),
        .D(ps2_word[5]),
        .Q(p_3_in),
        .R(1'b0));
  FDRE \ps2_word_reg[6] 
       (.C(clk),
        .CE(debounce_ps2_clk_n_2),
        .D(ps2_word[6]),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \ps2_word_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\ps2_word[7]_i_1_n_0 ),
        .Q(\ps2_word_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \ps2_word_reg[8] 
       (.C(clk),
        .CE(debounce_ps2_clk_n_2),
        .D(ps2_word[8]),
        .Q(\ps2_word_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \ps2_word_reg[9] 
       (.C(clk),
        .CE(debounce_ps2_clk_n_2),
        .D(ps2_word[9]),
        .Q(\ps2_word_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h700070FF70007000)) 
    \state[0]_i_1 
       (.I0(Q[2]),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\state[0]_i_3_n_0 ),
        .I3(Q[4]),
        .I4(\state[0]_i_4_n_0 ),
        .I5(\state[0]_i_5_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0000BFB0)) 
    \state[0]_i_10 
       (.I0(ps2_code_new_prev),
        .I1(ps2_code_new),
        .I2(Q[0]),
        .I3(tx_busy),
        .I4(Q[1]),
        .O(\state[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \state[0]_i_2 
       (.I0(\ps2_code_reg[7]_0 [6]),
        .I1(\ps2_code_reg[7]_0 [7]),
        .I2(\ps2_code_reg[7]_0 [5]),
        .I3(\ps2_code_reg[7]_0 [4]),
        .I4(\ps2_code_reg[7]_0 [0]),
        .I5(\state[4]_i_11_n_0 ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF54444444)) 
    \state[0]_i_3 
       (.I0(\state[0]_i_6_n_0 ),
        .I1(Q[0]),
        .I2(\state[1]_i_6_n_0 ),
        .I3(\state[4]_i_8_n_0 ),
        .I4(ps2_code_new_reg_0),
        .I5(\state[0]_i_7_n_0 ),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0E0000000E00EEEE)) 
    \state[0]_i_4 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(ps2_code_new_prev),
        .I3(ps2_code_new),
        .I4(Q[0]),
        .I5(tx_busy),
        .O(\state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBA00)) 
    \state[0]_i_5 
       (.I0(Q[0]),
        .I1(\state[0]_i_8_n_0 ),
        .I2(\state[4]_i_11_n_0 ),
        .I3(\state[0]_i_9_n_0 ),
        .I4(\state[0]_i_10_n_0 ),
        .I5(\state_reg[2] ),
        .O(\state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \state[0]_i_6 
       (.I0(Q[0]),
        .I1(tx_busy),
        .I2(Q[1]),
        .O(\state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBAAABABBBA)) 
    \state[0]_i_7 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(tx_busy),
        .I3(Q[0]),
        .I4(ps2_code_new),
        .I5(ps2_code_new_prev),
        .O(\state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \state[0]_i_8 
       (.I0(\ps2_code_reg[7]_0 [7]),
        .I1(\ps2_code_reg[7]_0 [5]),
        .I2(\ps2_code_reg[7]_0 [6]),
        .I3(\ps2_code_reg[7]_0 [0]),
        .I4(\ps2_code_reg[7]_0 [4]),
        .O(\state[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \state[0]_i_9 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(ps2_code_new),
        .I3(ps2_code_new_prev),
        .O(\state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h303F101F303F1010)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(\state[1]_i_3_n_0 ),
        .I4(\state[1]_i_4_n_0 ),
        .I5(\state[1]_i_5_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFF2AFF00FF2AFF)) 
    \state[1]_i_2 
       (.I0(ps2_code_new_reg_0),
        .I1(\state[4]_i_8_n_0 ),
        .I2(\state[1]_i_6_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(tx_busy),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \state[1]_i_3 
       (.I0(\state[1]_i_7_n_0 ),
        .I1(\ps2_code_reg[7]_0 [4]),
        .I2(\ps2_code_reg[7]_0 [0]),
        .I3(\ps2_code_reg[7]_0 [6]),
        .I4(\state_reg[1] ),
        .I5(ps2_code_new_reg_0),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \state[1]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\ps2_code_reg[7]_0 [6]),
        .I3(\state[3]_i_5_n_0 ),
        .I4(\state[4]_i_9_n_0 ),
        .I5(\state[4]_i_11_n_0 ),
        .O(\state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFFF00000000)) 
    \state[1]_i_5 
       (.I0(ps2_code_new_prev),
        .I1(ps2_code_new),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(\state[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \state[1]_i_6 
       (.I0(\ps2_code_reg[7]_0 [1]),
        .I1(\ps2_code_reg[7]_0 [0]),
        .O(\state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \state[1]_i_7 
       (.I0(\ps2_code_reg[7]_0 [1]),
        .I1(\ps2_code_reg[7]_0 [3]),
        .I2(\ps2_code_reg[7]_0 [5]),
        .I3(\ps2_code_reg[7]_0 [7]),
        .I4(\ps2_code_reg[7]_0 [2]),
        .I5(Q[0]),
        .O(\state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFE0)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(Q[4]),
        .I3(\state[2]_i_4_n_0 ),
        .I4(\state[2]_i_5_n_0 ),
        .I5(\state[2]_i_6_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h5555557500000000)) 
    \state[2]_i_2 
       (.I0(ps2_code_new_reg_0),
        .I1(\ps2_code_reg[7]_0 [2]),
        .I2(\ps2_code_reg[7]_0 [6]),
        .I3(\state[4]_i_9_n_0 ),
        .I4(\state[4]_i_10_n_0 ),
        .I5(Q[2]),
        .O(\state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \state[2]_i_3 
       (.I0(Q[0]),
        .I1(tx_busy),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55FF75FF00000000)) 
    \state[2]_i_4 
       (.I0(Q[0]),
        .I1(\state[4]_i_10_n_0 ),
        .I2(\state[4]_i_13_n_0 ),
        .I3(ps2_code_new_reg_0),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \state[2]_i_5 
       (.I0(\state[4]_i_8_n_0 ),
        .I1(\state[3]_i_2_n_0 ),
        .I2(\state_reg[2] ),
        .I3(Q[1]),
        .I4(\ps2_code_reg[7]_0 [1]),
        .I5(\ps2_code_reg[7]_0 [0]),
        .O(\state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \state[2]_i_6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(\state[4]_i_12_n_0 ),
        .I5(\state[4]_i_11_n_0 ),
        .O(\state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h04000C00040F0C00)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(\state[4]_i_5_n_0 ),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\state_reg[3] ),
        .I5(\state[3]_i_4_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state[3]_i_2 
       (.I0(ps2_code_new_prev),
        .I1(ps2_code_new),
        .I2(Q[0]),
        .O(\state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \state[3]_i_4 
       (.I0(\state[4]_i_11_n_0 ),
        .I1(\ps2_code_reg[7]_0 [0]),
        .I2(\ps2_code_reg[7]_0 [4]),
        .I3(\state[3]_i_5_n_0 ),
        .I4(\ps2_code_reg[7]_0 [6]),
        .I5(Q[0]),
        .O(\state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \state[3]_i_5 
       (.I0(\ps2_code_reg[7]_0 [5]),
        .I1(\ps2_code_reg[7]_0 [7]),
        .O(\state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[4]_i_10 
       (.I0(\ps2_code_reg[7]_0 [7]),
        .I1(\ps2_code_reg[7]_0 [5]),
        .I2(\ps2_code_reg[7]_0 [3]),
        .I3(\ps2_code_reg[7]_0 [1]),
        .O(\state[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \state[4]_i_11 
       (.I0(ps2_code_new_prev),
        .I1(ps2_code_new),
        .I2(\ps2_code_reg[7]_0 [1]),
        .I3(\ps2_code_reg[7]_0 [2]),
        .I4(\ps2_code_reg[7]_0 [3]),
        .O(\state[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \state[4]_i_12 
       (.I0(\ps2_code_reg[7]_0 [0]),
        .I1(\ps2_code_reg[7]_0 [4]),
        .I2(\ps2_code_reg[7]_0 [5]),
        .I3(\ps2_code_reg[7]_0 [7]),
        .I4(\ps2_code_reg[7]_0 [6]),
        .O(\state[4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \state[4]_i_13 
       (.I0(\ps2_code_reg[7]_0 [4]),
        .I1(\ps2_code_reg[7]_0 [0]),
        .I2(\ps2_code_reg[7]_0 [6]),
        .I3(\ps2_code_reg[7]_0 [2]),
        .O(\state[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8A80)) 
    \state[4]_i_2 
       (.I0(\state_reg[4] ),
        .I1(\state[4]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(\state[4]_i_5_n_0 ),
        .I4(\state[4]_i_6_n_0 ),
        .I5(\state[4]_i_7_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFDFDFDFDFDFFFD)) 
    \state[4]_i_4 
       (.I0(ps2_code_new),
        .I1(ps2_code_new_prev),
        .I2(Q[0]),
        .I3(\state[4]_i_8_n_0 ),
        .I4(\ps2_code_reg[7]_0 [1]),
        .I5(\ps2_code_reg[7]_0 [0]),
        .O(\state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55555575FFFFFFFF)) 
    \state[4]_i_5 
       (.I0(ps2_code_new_reg_0),
        .I1(\ps2_code_reg[7]_0 [2]),
        .I2(\ps2_code_reg[7]_0 [6]),
        .I3(\state[4]_i_9_n_0 ),
        .I4(\state[4]_i_10_n_0 ),
        .I5(Q[0]),
        .O(\state[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \state[4]_i_6 
       (.I0(\state[4]_i_11_n_0 ),
        .I1(\state[4]_i_12_n_0 ),
        .I2(Q[0]),
        .I3(\state_reg[3] ),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\state[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA20AAAA00000000)) 
    \state[4]_i_7 
       (.I0(Q[2]),
        .I1(\state[4]_i_10_n_0 ),
        .I2(\state[4]_i_13_n_0 ),
        .I3(ps2_code_new_prev),
        .I4(ps2_code_new),
        .I5(Q[4]),
        .O(\state[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \state[4]_i_8 
       (.I0(\ps2_code_reg[7]_0 [5]),
        .I1(\ps2_code_reg[7]_0 [6]),
        .I2(\ps2_code_reg[7]_0 [4]),
        .I3(\ps2_code_reg[7]_0 [7]),
        .I4(\ps2_code_reg[7]_0 [2]),
        .I5(\ps2_code_reg[7]_0 [3]),
        .O(\state[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[4]_i_9 
       (.I0(\ps2_code_reg[7]_0 [0]),
        .I1(\ps2_code_reg[7]_0 [4]),
        .O(\state[4]_i_9_n_0 ));
  FDRE \sync_ffs_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sync_ffs_reg[1]_0 [0]),
        .Q(sync_ffs[0]),
        .R(1'b0));
  FDRE \sync_ffs_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sync_ffs_reg[1]_0 [1]),
        .Q(sync_ffs[1]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry
       (.CI(1'b0),
        .CO({timer0_carry_n_0,timer0_carry_n_1,timer0_carry_n_2,timer0_carry_n_3}),
        .CYINIT(\timer_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[4:1]),
        .S({\timer_reg_n_0_[4] ,\timer_reg_n_0_[3] ,\timer_reg_n_0_[2] ,\timer_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__0
       (.CI(timer0_carry_n_0),
        .CO({timer0_carry__0_n_0,timer0_carry__0_n_1,timer0_carry__0_n_2,timer0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[8:5]),
        .S({\timer_reg_n_0_[8] ,\timer_reg_n_0_[7] ,\timer_reg_n_0_[6] ,\timer_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer0_carry__1
       (.CI(timer0_carry__0_n_0),
        .CO({NLW_timer0_carry__1_CO_UNCONNECTED[3],timer0_carry__1_n_1,timer0_carry__1_n_2,timer0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[12:9]),
        .S({\timer_reg_n_0_[12] ,\timer_reg_n_0_[11] ,\timer_reg_n_0_[10] ,\timer_reg_n_0_[9] }));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]_i_1 
       (.I0(\timer_reg_n_0_[0] ),
        .O(\timer[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \timer[12]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(reset_n),
        .I3(debounce_ps2_clk_n_5),
        .O(\timer[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBABABABAA)) 
    \timer[12]_i_4 
       (.I0(\timer_reg_n_0_[12] ),
        .I1(\timer[12]_i_5_n_0 ),
        .I2(\ps2_code[7]_i_5_n_0 ),
        .I3(\timer_reg_n_0_[0] ),
        .I4(\timer[12]_i_6_n_0 ),
        .I5(\timer[12]_i_7_n_0 ),
        .O(\timer[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \timer[12]_i_5 
       (.I0(\timer_reg_n_0_[11] ),
        .I1(\timer_reg_n_0_[9] ),
        .I2(\timer_reg_n_0_[10] ),
        .O(\timer[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \timer[12]_i_6 
       (.I0(\timer_reg_n_0_[1] ),
        .I1(\timer_reg_n_0_[2] ),
        .O(\timer[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \timer[12]_i_7 
       (.I0(\timer_reg_n_0_[7] ),
        .I1(\timer_reg_n_0_[6] ),
        .I2(\timer_reg_n_0_[5] ),
        .I3(\timer_reg_n_0_[10] ),
        .I4(\timer_reg_n_0_[8] ),
        .O(\timer[12]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[0] 
       (.C(clk),
        .CE(timer0),
        .D(\timer[0]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[0] ),
        .R(\timer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[10] 
       (.C(clk),
        .CE(timer0),
        .D(in22[10]),
        .Q(\timer_reg_n_0_[10] ),
        .R(\timer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[11] 
       (.C(clk),
        .CE(timer0),
        .D(in22[11]),
        .Q(\timer_reg_n_0_[11] ),
        .R(\timer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[12] 
       (.C(clk),
        .CE(timer0),
        .D(in22[12]),
        .Q(\timer_reg_n_0_[12] ),
        .R(\timer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[1] 
       (.C(clk),
        .CE(timer0),
        .D(in22[1]),
        .Q(\timer_reg_n_0_[1] ),
        .R(\timer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[2] 
       (.C(clk),
        .CE(timer0),
        .D(in22[2]),
        .Q(\timer_reg_n_0_[2] ),
        .R(\timer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[3] 
       (.C(clk),
        .CE(timer0),
        .D(in22[3]),
        .Q(\timer_reg_n_0_[3] ),
        .R(\timer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[4] 
       (.C(clk),
        .CE(timer0),
        .D(in22[4]),
        .Q(\timer_reg_n_0_[4] ),
        .R(\timer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[5] 
       (.C(clk),
        .CE(timer0),
        .D(in22[5]),
        .Q(\timer_reg_n_0_[5] ),
        .R(\timer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[6] 
       (.C(clk),
        .CE(timer0),
        .D(in22[6]),
        .Q(\timer_reg_n_0_[6] ),
        .R(\timer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[7] 
       (.C(clk),
        .CE(timer0),
        .D(in22[7]),
        .Q(\timer_reg_n_0_[7] ),
        .R(\timer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[8] 
       (.C(clk),
        .CE(timer0),
        .D(in22[8]),
        .Q(\timer_reg_n_0_[8] ),
        .R(\timer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[9] 
       (.C(clk),
        .CE(timer0),
        .D(in22[9]),
        .Q(\timer_reg_n_0_[9] ),
        .R(\timer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    tx_busy_i_1
       (.I0(tx_ena),
        .I1(state[0]),
        .I2(state[1]),
        .I3(tx_busy),
        .O(tx_busy_i_1_n_0));
  FDPE tx_busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_busy_i_1_n_0),
        .PRE(reset_n_0),
        .Q(tx_busy));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tx_cmd[8]_i_1 
       (.I0(reset_n),
        .I1(\tx_cmd[8]_i_3_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFF3F3FFFFFCCD0)) 
    \tx_cmd[8]_i_3 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(tx_busy),
        .I5(Q[0]),
        .O(\tx_cmd[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F40)) 
    tx_ena_i_1
       (.I0(tx_busy),
        .I1(reset_n),
        .I2(tx_ena_reg),
        .I3(tx_ena),
        .O(tx_busy_reg_0));
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
