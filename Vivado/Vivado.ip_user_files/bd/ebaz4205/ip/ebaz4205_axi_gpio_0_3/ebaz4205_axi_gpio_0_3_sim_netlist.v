// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sat Jan 21 22:33:58 2023
// Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/EBAZ4205_SDR_HDMI/Zynq/capture-test/capture-test.gen/sources_1/bd/ebaz4205/ip/ebaz4205_axi_gpio_0_3/ebaz4205_axi_gpio_0_3_sim_netlist.v
// Design      : ebaz4205_axi_gpio_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ebaz4205_axi_gpio_0_3,axi_gpio,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_gpio,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module ebaz4205_axi_gpio_0_3
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_i);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_I" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE" *) input [23:0]gpio_io_i;

  wire \<const0> ;
  wire [23:0]gpio_io_i;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire NLW_U0_ip2intc_irpt_UNCONNECTED;
  wire [31:0]NLW_U0_gpio2_io_o_UNCONNECTED;
  wire [31:0]NLW_U0_gpio2_io_t_UNCONNECTED;
  wire [23:0]NLW_U0_gpio_io_o_UNCONNECTED;
  wire [23:0]NLW_U0_gpio_io_t_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ALL_INPUTS = "1" *) 
  (* C_ALL_INPUTS_2 = "0" *) 
  (* C_ALL_OUTPUTS = "0" *) 
  (* C_ALL_OUTPUTS_2 = "0" *) 
  (* C_DOUT_DEFAULT = "0" *) 
  (* C_DOUT_DEFAULT_2 = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_GPIO2_WIDTH = "32" *) 
  (* C_GPIO_WIDTH = "24" *) 
  (* C_INTERRUPT_PRESENT = "0" *) 
  (* C_IS_DUAL = "0" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TRI_DEFAULT = "-1" *) 
  (* C_TRI_DEFAULT_2 = "-1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_group = "LOGICORE" *) 
  ebaz4205_axi_gpio_0_3_axi_gpio U0
       (.gpio2_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gpio2_io_o(NLW_U0_gpio2_io_o_UNCONNECTED[31:0]),
        .gpio2_io_t(NLW_U0_gpio2_io_t_UNCONNECTED[31:0]),
        .gpio_io_i(gpio_io_i),
        .gpio_io_o(NLW_U0_gpio_io_o_UNCONNECTED[23:0]),
        .gpio_io_t(NLW_U0_gpio_io_t_UNCONNECTED[23:0]),
        .ip2intc_irpt(NLW_U0_ip2intc_irpt_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[8],1'b0,1'b0,1'b0,1'b0,s_axi_araddr[3:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[8],1'b0,1'b0,1'b0,1'b0,s_axi_awaddr[3:2],1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "GPIO_Core" *) 
module ebaz4205_axi_gpio_0_3_GPIO_Core
   (GPIO_xferAck_i,
    gpio_xferAck_Reg,
    ip2bus_wrack_i,
    ip2bus_rdack_i,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ,
    s_axi_aclk,
    SS,
    bus2ip_cs,
    bus2ip_rnw,
    gpio_io_i,
    E,
    D,
    Q,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg );
  output GPIO_xferAck_i;
  output gpio_xferAck_Reg;
  output ip2bus_wrack_i;
  output ip2bus_rdack_i;
  output [24:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input \Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ;
  input s_axi_aclk;
  input [0:0]SS;
  input bus2ip_cs;
  input bus2ip_rnw;
  input [23:0]gpio_io_i;
  input [0:0]E;
  input [23:0]D;
  input [2:0]Q;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;

  wire Bus_RNW_reg;
  wire [23:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [24:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire GPIO_xferAck_i;
  wire \Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ;
  wire \Not_Dual.gpio_OE_reg_n_0_[0] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[10] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[11] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[12] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[13] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[14] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[15] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[16] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[17] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[18] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[19] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[1] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[20] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[21] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[22] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[23] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[2] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[3] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[4] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[5] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[6] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[7] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[8] ;
  wire \Not_Dual.gpio_OE_reg_n_0_[9] ;
  wire [2:0]Q;
  wire [0:23]Read_Reg_In;
  wire [0:0]SS;
  wire bus2ip_cs;
  wire bus2ip_rnw;
  wire [0:23]gpio_Data_In;
  wire [23:0]gpio_io_i;
  wire [0:23]gpio_io_i_d2;
  wire gpio_xferAck_Reg;
  wire iGPIO_xferAck;
  wire ip2bus_rdack_i;
  wire ip2bus_wrack_i;
  wire [8:31]reg1;
  wire s_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \/i_ 
       (.I0(gpio_xferAck_Reg),
        .I1(bus2ip_cs),
        .I2(GPIO_xferAck_i),
        .O(iGPIO_xferAck));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1[8]_i_1 
       (.I0(gpio_Data_In[0]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[0] ),
        .O(Read_Reg_In[0]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[0]),
        .Q(reg1[8]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[10].reg1[18]_i_1 
       (.I0(gpio_Data_In[10]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[10] ),
        .O(Read_Reg_In[10]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[10].reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[10]),
        .Q(reg1[18]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[11].reg1[19]_i_1 
       (.I0(gpio_Data_In[11]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[11] ),
        .O(Read_Reg_In[11]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[11].reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[11]),
        .Q(reg1[19]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[12].reg1[20]_i_1 
       (.I0(gpio_Data_In[12]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[12] ),
        .O(Read_Reg_In[12]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[12].reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[12]),
        .Q(reg1[20]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[13].reg1[21]_i_1 
       (.I0(gpio_Data_In[13]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[13] ),
        .O(Read_Reg_In[13]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[13].reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[13]),
        .Q(reg1[21]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[14].reg1[22]_i_1 
       (.I0(gpio_Data_In[14]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[14] ),
        .O(Read_Reg_In[14]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[14].reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[14]),
        .Q(reg1[22]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[15].reg1[23]_i_1 
       (.I0(gpio_Data_In[15]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[15] ),
        .O(Read_Reg_In[15]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[15].reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[15]),
        .Q(reg1[23]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[16].reg1[24]_i_1 
       (.I0(gpio_Data_In[16]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[16] ),
        .O(Read_Reg_In[16]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[16].reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[16]),
        .Q(reg1[24]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[17].reg1[25]_i_1 
       (.I0(gpio_Data_In[17]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[17] ),
        .O(Read_Reg_In[17]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[17].reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[17]),
        .Q(reg1[25]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[18].reg1[26]_i_1 
       (.I0(gpio_Data_In[18]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[18] ),
        .O(Read_Reg_In[18]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[18].reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[18]),
        .Q(reg1[26]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[19].reg1[27]_i_1 
       (.I0(gpio_Data_In[19]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[19] ),
        .O(Read_Reg_In[19]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[19].reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[19]),
        .Q(reg1[27]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[1].reg1[9]_i_1 
       (.I0(gpio_Data_In[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[1] ),
        .O(Read_Reg_In[1]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[1].reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[1]),
        .Q(reg1[9]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[20].reg1[28]_i_1 
       (.I0(gpio_Data_In[20]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[20] ),
        .O(Read_Reg_In[20]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[20].reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[20]),
        .Q(reg1[28]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[21].reg1[29]_i_1 
       (.I0(gpio_Data_In[21]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[21] ),
        .O(Read_Reg_In[21]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[21].reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[21]),
        .Q(reg1[29]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[22].reg1[30]_i_1 
       (.I0(gpio_Data_In[22]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[22] ),
        .O(Read_Reg_In[22]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[22].reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[22]),
        .Q(reg1[30]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[23].reg1[31]_i_2 
       (.I0(gpio_Data_In[23]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[23] ),
        .O(Read_Reg_In[23]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[23].reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[23]),
        .Q(reg1[31]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[2].reg1[10]_i_1 
       (.I0(gpio_Data_In[2]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[2] ),
        .O(Read_Reg_In[2]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[2].reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[2]),
        .Q(reg1[10]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[3].reg1[11]_i_1 
       (.I0(gpio_Data_In[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[3] ),
        .O(Read_Reg_In[3]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[3].reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[3]),
        .Q(reg1[11]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[4].reg1[12]_i_1 
       (.I0(gpio_Data_In[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[4] ),
        .O(Read_Reg_In[4]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[4].reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[4]),
        .Q(reg1[12]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[5].reg1[13]_i_1 
       (.I0(gpio_Data_In[5]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[5] ),
        .O(Read_Reg_In[5]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[5].reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[5]),
        .Q(reg1[13]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[6].reg1[14]_i_1 
       (.I0(gpio_Data_In[6]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[6] ),
        .O(Read_Reg_In[6]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[6].reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[6]),
        .Q(reg1[14]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[7].reg1[15]_i_1 
       (.I0(gpio_Data_In[7]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[7] ),
        .O(Read_Reg_In[7]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[7].reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[7]),
        .Q(reg1[15]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[8].reg1[16]_i_1 
       (.I0(gpio_Data_In[8]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[8] ),
        .O(Read_Reg_In[8]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[8].reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[8]),
        .Q(reg1[16]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[9].reg1[17]_i_1 
       (.I0(gpio_Data_In[9]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Not_Dual.gpio_OE_reg_n_0_[9] ),
        .O(Read_Reg_In[9]));
  FDRE \Not_Dual.ALLIN1_ND.READ_REG_GEN[9].reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[9]),
        .Q(reg1[17]),
        .R(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 ));
  ebaz4205_axi_gpio_0_3_cdc_sync \Not_Dual.INPUT_DOUBLE_REGS3 
       (.gpio_io_i(gpio_io_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_vect_out({gpio_io_i_d2[0],gpio_io_i_d2[1],gpio_io_i_d2[2],gpio_io_i_d2[3],gpio_io_i_d2[4],gpio_io_i_d2[5],gpio_io_i_d2[6],gpio_io_i_d2[7],gpio_io_i_d2[8],gpio_io_i_d2[9],gpio_io_i_d2[10],gpio_io_i_d2[11],gpio_io_i_d2[12],gpio_io_i_d2[13],gpio_io_i_d2[14],gpio_io_i_d2[15],gpio_io_i_d2[16],gpio_io_i_d2[17],gpio_io_i_d2[18],gpio_io_i_d2[19],gpio_io_i_d2[20],gpio_io_i_d2[21],gpio_io_i_d2[22],gpio_io_i_d2[23]}));
  FDRE \Not_Dual.gpio_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[0]),
        .Q(gpio_Data_In[0]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[10]),
        .Q(gpio_Data_In[10]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[11]),
        .Q(gpio_Data_In[11]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[12]),
        .Q(gpio_Data_In[12]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[13]),
        .Q(gpio_Data_In[13]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[14]),
        .Q(gpio_Data_In[14]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[15]),
        .Q(gpio_Data_In[15]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[16]),
        .Q(gpio_Data_In[16]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[17]),
        .Q(gpio_Data_In[17]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[18]),
        .Q(gpio_Data_In[18]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[19]),
        .Q(gpio_Data_In[19]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[1]),
        .Q(gpio_Data_In[1]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[20]),
        .Q(gpio_Data_In[20]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[21]),
        .Q(gpio_Data_In[21]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[22]),
        .Q(gpio_Data_In[22]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[23]),
        .Q(gpio_Data_In[23]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[2]),
        .Q(gpio_Data_In[2]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[3]),
        .Q(gpio_Data_In[3]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[4]),
        .Q(gpio_Data_In[4]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[5]),
        .Q(gpio_Data_In[5]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[6]),
        .Q(gpio_Data_In[6]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[7]),
        .Q(gpio_Data_In[7]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[8]),
        .Q(gpio_Data_In[8]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[9]),
        .Q(gpio_Data_In[9]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[23]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[13]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[10] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[12]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[11] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[11]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[12] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[10]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[13] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[9]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[14] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[8]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[15] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[7]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[16] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[6]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[17] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[5]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[18] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[19] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[22]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[1] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[20] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[21] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[22] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[23] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[21]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[2] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[20]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[3] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[19]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[4] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[18]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[5] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[17]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[6] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[16]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[7] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[15]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[8] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[14]),
        .Q(\Not_Dual.gpio_OE_reg_n_0_[9] ),
        .S(SS));
  FDRE gpio_xferAck_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_xferAck_i),
        .Q(gpio_xferAck_Reg),
        .R(SS));
  FDRE iGPIO_xferAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iGPIO_xferAck),
        .Q(GPIO_xferAck_i),
        .R(SS));
  LUT5 #(
    .INIT(32'h00001400)) 
    \ip2bus_data_i_D1[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [24]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[10]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[10]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [21]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[11]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[11]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [20]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[12]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[12]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [19]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[13]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[13]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [18]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[14]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[14]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [17]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[15]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[15]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [16]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[16]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[16]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [15]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[17]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[17]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [14]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[18]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[18]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [13]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[19]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[19]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [12]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[20]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[20]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [11]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[21]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[21]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [10]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[22]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[22]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [9]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[23]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[23]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [8]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[24]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[24]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [7]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[25]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[25]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [6]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[26]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[26]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [5]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[27]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[27]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [4]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[28]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[28]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [3]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[29]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[29]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [2]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[30]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[30]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [1]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[31]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[31]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [0]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[8]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[8]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [23]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[9]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[9]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [22]));
  LUT2 #(
    .INIT(4'h8)) 
    ip2bus_rdack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .O(ip2bus_rdack_i));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_wrack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .O(ip2bus_wrack_i));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module ebaz4205_axi_gpio_0_3_address_decoder
   (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Bus_RNW_reg,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    E,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg,
    D,
    Q,
    s_axi_aclk,
    \Not_Dual.gpio_OE_reg[0] ,
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8] ,
    s_axi_aresetn,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    ip2bus_rdack_i_D1,
    s_axi_arready,
    s_axi_arready_0,
    ip2bus_wrack_i_D1,
    s_axi_awready,
    s_axi_wdata);
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output Bus_RNW_reg;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output [0:0]E;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg;
  output [23:0]D;
  input Q;
  input s_axi_aclk;
  input [2:0]\Not_Dual.gpio_OE_reg[0] ;
  input \Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8] ;
  input s_axi_aresetn;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input ip2bus_rdack_i_D1;
  input s_axi_arready;
  input [3:0]s_axi_arready_0;
  input ip2bus_wrack_i_D1;
  input s_axi_awready;
  input [31:0]s_axi_wdata;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire [23:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire GPIO_xferAck_i;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8] ;
  wire [2:0]\Not_Dual.gpio_OE_reg[0] ;
  wire Q;
  wire bus2ip_rnw_i_reg;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire cs_ce_clr;
  wire gpio_xferAck_Reg;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [3:0]s_axi_arready_0;
  wire s_axi_awready;
  wire [31:0]s_axi_wdata;

  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8] ),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\Not_Dual.gpio_OE_reg[0] [0]),
        .I1(\Not_Dual.gpio_OE_reg[0] [1]),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(ip2bus_rdack_i_D1_reg),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2 
       (.I0(\Not_Dual.gpio_OE_reg[0] [1]),
        .I1(\Not_Dual.gpio_OE_reg[0] [0]),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  ebaz4205_axi_gpio_0_3_pselect_f \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\Not_Dual.gpio_OE_reg[0] [1:0]),
        .ce_expnd_i_3(ce_expnd_i_3));
  ebaz4205_axi_gpio_0_3_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\Not_Dual.gpio_OE_reg[0] [1:0]),
        .ce_expnd_i_1(ce_expnd_i_1));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(Q),
        .I2(s_axi_aresetn),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(ip2bus_wrack_i_D1_reg),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \Not_Dual.ALLIN1_ND.READ_REG_GEN[23].reg1[31]_i_1 
       (.I0(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8] ),
        .I1(GPIO_xferAck_i),
        .I2(gpio_xferAck_Reg),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .O(bus2ip_rnw_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \Not_Dual.gpio_OE[0]_i_1 
       (.I0(\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8] ),
        .I1(\Not_Dual.gpio_OE_reg[0] [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(\Not_Dual.gpio_OE_reg[0] [1]),
        .I4(\Not_Dual.gpio_OE_reg[0] [0]),
        .O(E));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[0]_i_2 
       (.I0(s_axi_wdata[23]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[31]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[10]_i_1 
       (.I0(s_axi_wdata[13]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[21]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[11]_i_1 
       (.I0(s_axi_wdata[12]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[20]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[12]_i_1 
       (.I0(s_axi_wdata[11]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[19]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[13]_i_1 
       (.I0(s_axi_wdata[10]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[18]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[14]_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[17]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[15]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[16]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[16]_i_1 
       (.I0(s_axi_wdata[7]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[15]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[17]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[14]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[18]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[13]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[19]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[12]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[1]_i_1 
       (.I0(s_axi_wdata[22]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[30]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[20]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[11]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[21]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[10]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[22]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[9]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[23]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[8]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[2]_i_1 
       (.I0(s_axi_wdata[21]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[29]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[3]_i_1 
       (.I0(s_axi_wdata[20]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[28]),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[4]_i_1 
       (.I0(s_axi_wdata[19]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[27]),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[5]_i_1 
       (.I0(s_axi_wdata[18]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[26]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[6]_i_1 
       (.I0(s_axi_wdata[17]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[25]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[7]_i_1 
       (.I0(s_axi_wdata[16]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[24]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[8]_i_1 
       (.I0(s_axi_wdata[15]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[23]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Not_Dual.gpio_OE[9]_i_1 
       (.I0(s_axi_wdata[14]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_OE_reg[0] [1]),
        .I3(s_axi_wdata[22]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack_i_D1),
        .I1(s_axi_arready),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[1]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[0]),
        .O(ip2bus_rdack_i_D1_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_i_D1),
        .I1(s_axi_awready),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[1]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[0]),
        .O(ip2bus_wrack_i_D1_reg));
endmodule

(* C_ALL_INPUTS = "1" *) (* C_ALL_INPUTS_2 = "0" *) (* C_ALL_OUTPUTS = "0" *) 
(* C_ALL_OUTPUTS_2 = "0" *) (* C_DOUT_DEFAULT = "0" *) (* C_DOUT_DEFAULT_2 = "0" *) 
(* C_FAMILY = "zynq" *) (* C_GPIO2_WIDTH = "32" *) (* C_GPIO_WIDTH = "24" *) 
(* C_INTERRUPT_PRESENT = "0" *) (* C_IS_DUAL = "0" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TRI_DEFAULT = "-1" *) (* C_TRI_DEFAULT_2 = "-1" *) 
(* ORIG_REF_NAME = "axi_gpio" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_group = "LOGICORE" *) 
module ebaz4205_axi_gpio_0_3_axi_gpio
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* sigis = "Clk" *) input s_axi_aclk;
  (* sigis = "Rst" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input [23:0]gpio_io_i;
  output [23:0]gpio_io_o;
  output [23:0]gpio_io_t;
  input [31:0]gpio2_io_i;
  output [31:0]gpio2_io_o;
  output [31:0]gpio2_io_t;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_13;
  wire AXI_LITE_IPIF_I_n_16;
  wire [0:23]DBus_Reg;
  wire GPIO_xferAck_i;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire [0:6]bus2ip_addr;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [23:0]gpio_io_i;
  wire gpio_xferAck_Reg;
  wire [0:31]ip2bus_data;
  wire [0:31]ip2bus_data_i_D1;
  wire ip2bus_rdack_i;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [30:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;

  assign gpio2_io_o[31] = \<const0> ;
  assign gpio2_io_o[30] = \<const0> ;
  assign gpio2_io_o[29] = \<const0> ;
  assign gpio2_io_o[28] = \<const0> ;
  assign gpio2_io_o[27] = \<const0> ;
  assign gpio2_io_o[26] = \<const0> ;
  assign gpio2_io_o[25] = \<const0> ;
  assign gpio2_io_o[24] = \<const0> ;
  assign gpio2_io_o[23] = \<const0> ;
  assign gpio2_io_o[22] = \<const0> ;
  assign gpio2_io_o[21] = \<const0> ;
  assign gpio2_io_o[20] = \<const0> ;
  assign gpio2_io_o[19] = \<const0> ;
  assign gpio2_io_o[18] = \<const0> ;
  assign gpio2_io_o[17] = \<const0> ;
  assign gpio2_io_o[16] = \<const0> ;
  assign gpio2_io_o[15] = \<const0> ;
  assign gpio2_io_o[14] = \<const0> ;
  assign gpio2_io_o[13] = \<const0> ;
  assign gpio2_io_o[12] = \<const0> ;
  assign gpio2_io_o[11] = \<const0> ;
  assign gpio2_io_o[10] = \<const0> ;
  assign gpio2_io_o[9] = \<const0> ;
  assign gpio2_io_o[8] = \<const0> ;
  assign gpio2_io_o[7] = \<const0> ;
  assign gpio2_io_o[6] = \<const0> ;
  assign gpio2_io_o[5] = \<const0> ;
  assign gpio2_io_o[4] = \<const0> ;
  assign gpio2_io_o[3] = \<const0> ;
  assign gpio2_io_o[2] = \<const0> ;
  assign gpio2_io_o[1] = \<const0> ;
  assign gpio2_io_o[0] = \<const0> ;
  assign gpio2_io_t[31] = \<const0> ;
  assign gpio2_io_t[30] = \<const0> ;
  assign gpio2_io_t[29] = \<const0> ;
  assign gpio2_io_t[28] = \<const0> ;
  assign gpio2_io_t[27] = \<const0> ;
  assign gpio2_io_t[26] = \<const0> ;
  assign gpio2_io_t[25] = \<const0> ;
  assign gpio2_io_t[24] = \<const0> ;
  assign gpio2_io_t[23] = \<const0> ;
  assign gpio2_io_t[22] = \<const0> ;
  assign gpio2_io_t[21] = \<const0> ;
  assign gpio2_io_t[20] = \<const0> ;
  assign gpio2_io_t[19] = \<const0> ;
  assign gpio2_io_t[18] = \<const0> ;
  assign gpio2_io_t[17] = \<const0> ;
  assign gpio2_io_t[16] = \<const0> ;
  assign gpio2_io_t[15] = \<const0> ;
  assign gpio2_io_t[14] = \<const0> ;
  assign gpio2_io_t[13] = \<const0> ;
  assign gpio2_io_t[12] = \<const0> ;
  assign gpio2_io_t[11] = \<const0> ;
  assign gpio2_io_t[10] = \<const0> ;
  assign gpio2_io_t[9] = \<const0> ;
  assign gpio2_io_t[8] = \<const0> ;
  assign gpio2_io_t[7] = \<const0> ;
  assign gpio2_io_t[6] = \<const0> ;
  assign gpio2_io_t[5] = \<const0> ;
  assign gpio2_io_t[4] = \<const0> ;
  assign gpio2_io_t[3] = \<const0> ;
  assign gpio2_io_t[2] = \<const0> ;
  assign gpio2_io_t[1] = \<const0> ;
  assign gpio2_io_t[0] = \<const0> ;
  assign gpio_io_o[23] = \<const0> ;
  assign gpio_io_o[22] = \<const0> ;
  assign gpio_io_o[21] = \<const0> ;
  assign gpio_io_o[20] = \<const0> ;
  assign gpio_io_o[19] = \<const0> ;
  assign gpio_io_o[18] = \<const0> ;
  assign gpio_io_o[17] = \<const0> ;
  assign gpio_io_o[16] = \<const0> ;
  assign gpio_io_o[15] = \<const0> ;
  assign gpio_io_o[14] = \<const0> ;
  assign gpio_io_o[13] = \<const0> ;
  assign gpio_io_o[12] = \<const0> ;
  assign gpio_io_o[11] = \<const0> ;
  assign gpio_io_o[10] = \<const0> ;
  assign gpio_io_o[9] = \<const0> ;
  assign gpio_io_o[8] = \<const0> ;
  assign gpio_io_o[7] = \<const0> ;
  assign gpio_io_o[6] = \<const0> ;
  assign gpio_io_o[5] = \<const0> ;
  assign gpio_io_o[4] = \<const0> ;
  assign gpio_io_o[3] = \<const0> ;
  assign gpio_io_o[2] = \<const0> ;
  assign gpio_io_o[1] = \<const0> ;
  assign gpio_io_o[0] = \<const0> ;
  assign gpio_io_t[23] = \<const0> ;
  assign gpio_io_t[22] = \<const0> ;
  assign gpio_io_t[21] = \<const0> ;
  assign gpio_io_t[20] = \<const0> ;
  assign gpio_io_t[19] = \<const0> ;
  assign gpio_io_t[18] = \<const0> ;
  assign gpio_io_t[17] = \<const0> ;
  assign gpio_io_t[16] = \<const0> ;
  assign gpio_io_t[15] = \<const0> ;
  assign gpio_io_t[14] = \<const0> ;
  assign gpio_io_t[13] = \<const0> ;
  assign gpio_io_t[12] = \<const0> ;
  assign gpio_io_t[11] = \<const0> ;
  assign gpio_io_t[10] = \<const0> ;
  assign gpio_io_t[9] = \<const0> ;
  assign gpio_io_t[8] = \<const0> ;
  assign gpio_io_t[7] = \<const0> ;
  assign gpio_io_t[6] = \<const0> ;
  assign gpio_io_t[5] = \<const0> ;
  assign gpio_io_t[4] = \<const0> ;
  assign gpio_io_t[3] = \<const0> ;
  assign gpio_io_t[2] = \<const0> ;
  assign gpio_io_t[1] = \<const0> ;
  assign gpio_io_t[0] = \<const0> ;
  assign ip2intc_irpt = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [30];
  assign s_axi_rdata[30] = \^s_axi_rdata [30];
  assign s_axi_rdata[29] = \^s_axi_rdata [30];
  assign s_axi_rdata[28] = \^s_axi_rdata [30];
  assign s_axi_rdata[27] = \^s_axi_rdata [30];
  assign s_axi_rdata[26] = \^s_axi_rdata [30];
  assign s_axi_rdata[25] = \^s_axi_rdata [30];
  assign s_axi_rdata[24] = \^s_axi_rdata [30];
  assign s_axi_rdata[23:0] = \^s_axi_rdata [23:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  ebaz4205_axi_gpio_0_3_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({DBus_Reg[0],DBus_Reg[1],DBus_Reg[2],DBus_Reg[3],DBus_Reg[4],DBus_Reg[5],DBus_Reg[6],DBus_Reg[7],DBus_Reg[8],DBus_Reg[9],DBus_Reg[10],DBus_Reg[11],DBus_Reg[12],DBus_Reg[13],DBus_Reg[14],DBus_Reg[15],DBus_Reg[16],DBus_Reg[17],DBus_Reg[18],DBus_Reg[19],DBus_Reg[20],DBus_Reg[21],DBus_Reg[22],DBus_Reg[23]}),
        .E(AXI_LITE_IPIF_I_n_13),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .Q({bus2ip_addr[0],bus2ip_addr[5],bus2ip_addr[6]}),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_rnw_i_reg(AXI_LITE_IPIF_I_n_16),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(s_axi_arready),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(s_axi_awready),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[8],s_axi_araddr[3:2]}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[8],s_axi_awaddr[3:2]}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [30],\^s_axi_rdata [23:0]}),
        .\s_axi_rdata_i_reg[31] ({ip2bus_data_i_D1[0],ip2bus_data_i_D1[8],ip2bus_data_i_D1[9],ip2bus_data_i_D1[10],ip2bus_data_i_D1[11],ip2bus_data_i_D1[12],ip2bus_data_i_D1[13],ip2bus_data_i_D1[14],ip2bus_data_i_D1[15],ip2bus_data_i_D1[16],ip2bus_data_i_D1[17],ip2bus_data_i_D1[18],ip2bus_data_i_D1[19],ip2bus_data_i_D1[20],ip2bus_data_i_D1[21],ip2bus_data_i_D1[22],ip2bus_data_i_D1[23],ip2bus_data_i_D1[24],ip2bus_data_i_D1[25],ip2bus_data_i_D1[26],ip2bus_data_i_D1[27],ip2bus_data_i_D1[28],ip2bus_data_i_D1[29],ip2bus_data_i_D1[30],ip2bus_data_i_D1[31]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  ebaz4205_axi_gpio_0_3_GPIO_Core gpio_core_1
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({DBus_Reg[0],DBus_Reg[1],DBus_Reg[2],DBus_Reg[3],DBus_Reg[4],DBus_Reg[5],DBus_Reg[6],DBus_Reg[7],DBus_Reg[8],DBus_Reg[9],DBus_Reg[10],DBus_Reg[11],DBus_Reg[12],DBus_Reg[13],DBus_Reg[14],DBus_Reg[15],DBus_Reg[16],DBus_Reg[17],DBus_Reg[18],DBus_Reg[19],DBus_Reg[20],DBus_Reg[21],DBus_Reg[22],DBus_Reg[23]}),
        .E(AXI_LITE_IPIF_I_n_13),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ({ip2bus_data[0],ip2bus_data[8],ip2bus_data[9],ip2bus_data[10],ip2bus_data[11],ip2bus_data[12],ip2bus_data[13],ip2bus_data[14],ip2bus_data[15],ip2bus_data[16],ip2bus_data[17],ip2bus_data[18],ip2bus_data[19],ip2bus_data[20],ip2bus_data[21],ip2bus_data[22],ip2bus_data[23],ip2bus_data[24],ip2bus_data[25],ip2bus_data[26],ip2bus_data[27],ip2bus_data[28],ip2bus_data[29],ip2bus_data[30],ip2bus_data[31]}),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8]_0 (AXI_LITE_IPIF_I_n_16),
        .Q({bus2ip_addr[0],bus2ip_addr[5],bus2ip_addr[6]}),
        .SS(bus2ip_reset),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_rnw(bus2ip_rnw),
        .gpio_io_i(gpio_io_i),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i(ip2bus_rdack_i),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .s_axi_aclk(s_axi_aclk));
  FDRE \ip2bus_data_i_D1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[0]),
        .Q(ip2bus_data_i_D1[0]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[10]),
        .Q(ip2bus_data_i_D1[10]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[11]),
        .Q(ip2bus_data_i_D1[11]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[12]),
        .Q(ip2bus_data_i_D1[12]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[13]),
        .Q(ip2bus_data_i_D1[13]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[14]),
        .Q(ip2bus_data_i_D1[14]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[15]),
        .Q(ip2bus_data_i_D1[15]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[16]),
        .Q(ip2bus_data_i_D1[16]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[17]),
        .Q(ip2bus_data_i_D1[17]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[18]),
        .Q(ip2bus_data_i_D1[18]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[19]),
        .Q(ip2bus_data_i_D1[19]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[20]),
        .Q(ip2bus_data_i_D1[20]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[21]),
        .Q(ip2bus_data_i_D1[21]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[22]),
        .Q(ip2bus_data_i_D1[22]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[23]),
        .Q(ip2bus_data_i_D1[23]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[24]),
        .Q(ip2bus_data_i_D1[24]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[25]),
        .Q(ip2bus_data_i_D1[25]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[26]),
        .Q(ip2bus_data_i_D1[26]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[27]),
        .Q(ip2bus_data_i_D1[27]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[28]),
        .Q(ip2bus_data_i_D1[28]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[29]),
        .Q(ip2bus_data_i_D1[29]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[30]),
        .Q(ip2bus_data_i_D1[30]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[31]),
        .Q(ip2bus_data_i_D1[31]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[8]),
        .Q(ip2bus_data_i_D1[8]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[9]),
        .Q(ip2bus_data_i_D1[9]),
        .R(bus2ip_reset));
  FDRE ip2bus_rdack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_i),
        .Q(ip2bus_rdack_i_D1),
        .R(bus2ip_reset));
  FDRE ip2bus_wrack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_i),
        .Q(ip2bus_wrack_i_D1),
        .R(bus2ip_reset));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module ebaz4205_axi_gpio_0_3_axi_lite_ipif
   (bus2ip_reset,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Q,
    bus2ip_rnw,
    Bus_RNW_reg,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    bus2ip_cs,
    E,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg,
    s_axi_rdata,
    D,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_bready,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \s_axi_rdata_i_reg[31] ,
    s_axi_wdata,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output bus2ip_reset;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output [2:0]Q;
  output bus2ip_rnw;
  output Bus_RNW_reg;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output bus2ip_cs;
  output [0:0]E;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg;
  output [24:0]s_axi_rdata;
  output [23:0]D;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input [24:0]\s_axi_rdata_i_reg[31] ;
  input [31:0]s_axi_wdata;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;

  wire Bus_RNW_reg;
  wire [23:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire GPIO_xferAck_i;
  wire [2:0]Q;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire bus2ip_rnw_i_reg;
  wire gpio_xferAck_Reg;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_reg;
  wire [24:0]s_axi_rdata;
  wire [24:0]\s_axi_rdata_i_reg[31] ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;

  ebaz4205_axi_gpio_0_3_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg(Bus_RNW_reg),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (bus2ip_cs),
        .Q(Q),
        .SR(bus2ip_reset),
        .bus2ip_rnw_i_reg_0(bus2ip_rnw),
        .bus2ip_rnw_i_reg_1(bus2ip_rnw_i_reg),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31]_0 (\s_axi_rdata_i_reg[31] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ebaz4205_axi_gpio_0_3_cdc_sync
   (scndry_vect_out,
    gpio_io_i,
    s_axi_aclk);
  output [23:0]scndry_vect_out;
  input [23:0]gpio_io_i;
  input s_axi_aclk;

  wire [23:0]gpio_io_i;
  wire s_axi_aclk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d1_cdc_to_10;
  wire s_level_out_bus_d1_cdc_to_11;
  wire s_level_out_bus_d1_cdc_to_12;
  wire s_level_out_bus_d1_cdc_to_13;
  wire s_level_out_bus_d1_cdc_to_14;
  wire s_level_out_bus_d1_cdc_to_15;
  wire s_level_out_bus_d1_cdc_to_16;
  wire s_level_out_bus_d1_cdc_to_17;
  wire s_level_out_bus_d1_cdc_to_18;
  wire s_level_out_bus_d1_cdc_to_19;
  wire s_level_out_bus_d1_cdc_to_2;
  wire s_level_out_bus_d1_cdc_to_20;
  wire s_level_out_bus_d1_cdc_to_21;
  wire s_level_out_bus_d1_cdc_to_22;
  wire s_level_out_bus_d1_cdc_to_23;
  wire s_level_out_bus_d1_cdc_to_3;
  wire s_level_out_bus_d1_cdc_to_4;
  wire s_level_out_bus_d1_cdc_to_5;
  wire s_level_out_bus_d1_cdc_to_6;
  wire s_level_out_bus_d1_cdc_to_7;
  wire s_level_out_bus_d1_cdc_to_8;
  wire s_level_out_bus_d1_cdc_to_9;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d2_10;
  wire s_level_out_bus_d2_11;
  wire s_level_out_bus_d2_12;
  wire s_level_out_bus_d2_13;
  wire s_level_out_bus_d2_14;
  wire s_level_out_bus_d2_15;
  wire s_level_out_bus_d2_16;
  wire s_level_out_bus_d2_17;
  wire s_level_out_bus_d2_18;
  wire s_level_out_bus_d2_19;
  wire s_level_out_bus_d2_2;
  wire s_level_out_bus_d2_20;
  wire s_level_out_bus_d2_21;
  wire s_level_out_bus_d2_22;
  wire s_level_out_bus_d2_23;
  wire s_level_out_bus_d2_3;
  wire s_level_out_bus_d2_4;
  wire s_level_out_bus_d2_5;
  wire s_level_out_bus_d2_6;
  wire s_level_out_bus_d2_7;
  wire s_level_out_bus_d2_8;
  wire s_level_out_bus_d2_9;
  wire s_level_out_bus_d3_0;
  wire s_level_out_bus_d3_1;
  wire s_level_out_bus_d3_10;
  wire s_level_out_bus_d3_11;
  wire s_level_out_bus_d3_12;
  wire s_level_out_bus_d3_13;
  wire s_level_out_bus_d3_14;
  wire s_level_out_bus_d3_15;
  wire s_level_out_bus_d3_16;
  wire s_level_out_bus_d3_17;
  wire s_level_out_bus_d3_18;
  wire s_level_out_bus_d3_19;
  wire s_level_out_bus_d3_2;
  wire s_level_out_bus_d3_20;
  wire s_level_out_bus_d3_21;
  wire s_level_out_bus_d3_22;
  wire s_level_out_bus_d3_23;
  wire s_level_out_bus_d3_3;
  wire s_level_out_bus_d3_4;
  wire s_level_out_bus_d3_5;
  wire s_level_out_bus_d3_6;
  wire s_level_out_bus_d3_7;
  wire s_level_out_bus_d3_8;
  wire s_level_out_bus_d3_9;
  wire [23:0]scndry_vect_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_10),
        .Q(s_level_out_bus_d2_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_11),
        .Q(s_level_out_bus_d2_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_12),
        .Q(s_level_out_bus_d2_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_13),
        .Q(s_level_out_bus_d2_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_14),
        .Q(s_level_out_bus_d2_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_15),
        .Q(s_level_out_bus_d2_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_16),
        .Q(s_level_out_bus_d2_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_17),
        .Q(s_level_out_bus_d2_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_18),
        .Q(s_level_out_bus_d2_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_19),
        .Q(s_level_out_bus_d2_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_20),
        .Q(s_level_out_bus_d2_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_21),
        .Q(s_level_out_bus_d2_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_22),
        .Q(s_level_out_bus_d2_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_23),
        .Q(s_level_out_bus_d2_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_2),
        .Q(s_level_out_bus_d2_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_3),
        .Q(s_level_out_bus_d2_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_4),
        .Q(s_level_out_bus_d2_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_5),
        .Q(s_level_out_bus_d2_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_6),
        .Q(s_level_out_bus_d2_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_7),
        .Q(s_level_out_bus_d2_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_8),
        .Q(s_level_out_bus_d2_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_9),
        .Q(s_level_out_bus_d2_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(s_level_out_bus_d3_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_10),
        .Q(s_level_out_bus_d3_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_11),
        .Q(s_level_out_bus_d3_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_12),
        .Q(s_level_out_bus_d3_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_13),
        .Q(s_level_out_bus_d3_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_14),
        .Q(s_level_out_bus_d3_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_15),
        .Q(s_level_out_bus_d3_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_16),
        .Q(s_level_out_bus_d3_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_17),
        .Q(s_level_out_bus_d3_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_18),
        .Q(s_level_out_bus_d3_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_19),
        .Q(s_level_out_bus_d3_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(s_level_out_bus_d3_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_20),
        .Q(s_level_out_bus_d3_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_21),
        .Q(s_level_out_bus_d3_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_22),
        .Q(s_level_out_bus_d3_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_23),
        .Q(s_level_out_bus_d3_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_2),
        .Q(s_level_out_bus_d3_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_3),
        .Q(s_level_out_bus_d3_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_4),
        .Q(s_level_out_bus_d3_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_5),
        .Q(s_level_out_bus_d3_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_6),
        .Q(s_level_out_bus_d3_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_7),
        .Q(s_level_out_bus_d3_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_8),
        .Q(s_level_out_bus_d3_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_9),
        .Q(s_level_out_bus_d3_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_0),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_10),
        .Q(scndry_vect_out[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_11),
        .Q(scndry_vect_out[11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_12),
        .Q(scndry_vect_out[12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_13),
        .Q(scndry_vect_out[13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_14),
        .Q(scndry_vect_out[14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_15),
        .Q(scndry_vect_out[15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_16),
        .Q(scndry_vect_out[16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_17),
        .Q(scndry_vect_out[17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_18),
        .Q(scndry_vect_out[18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_19),
        .Q(scndry_vect_out[19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_1),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_20),
        .Q(scndry_vect_out[20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_21),
        .Q(scndry_vect_out[21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_22),
        .Q(scndry_vect_out[22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_23),
        .Q(scndry_vect_out[23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_2),
        .Q(scndry_vect_out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_3),
        .Q(scndry_vect_out[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_4),
        .Q(scndry_vect_out[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_5),
        .Q(scndry_vect_out[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_6),
        .Q(scndry_vect_out[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_7),
        .Q(scndry_vect_out[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_8),
        .Q(scndry_vect_out[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_9),
        .Q(scndry_vect_out[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[10]),
        .Q(s_level_out_bus_d1_cdc_to_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[11]),
        .Q(s_level_out_bus_d1_cdc_to_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[12]),
        .Q(s_level_out_bus_d1_cdc_to_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[13]),
        .Q(s_level_out_bus_d1_cdc_to_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[14]),
        .Q(s_level_out_bus_d1_cdc_to_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[15]),
        .Q(s_level_out_bus_d1_cdc_to_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[16]),
        .Q(s_level_out_bus_d1_cdc_to_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[17]),
        .Q(s_level_out_bus_d1_cdc_to_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[18]),
        .Q(s_level_out_bus_d1_cdc_to_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[19]),
        .Q(s_level_out_bus_d1_cdc_to_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[20]),
        .Q(s_level_out_bus_d1_cdc_to_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[21]),
        .Q(s_level_out_bus_d1_cdc_to_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[22]),
        .Q(s_level_out_bus_d1_cdc_to_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[23]),
        .Q(s_level_out_bus_d1_cdc_to_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[2]),
        .Q(s_level_out_bus_d1_cdc_to_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[3]),
        .Q(s_level_out_bus_d1_cdc_to_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[4]),
        .Q(s_level_out_bus_d1_cdc_to_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[5]),
        .Q(s_level_out_bus_d1_cdc_to_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[6]),
        .Q(s_level_out_bus_d1_cdc_to_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[7]),
        .Q(s_level_out_bus_d1_cdc_to_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[8]),
        .Q(s_level_out_bus_d1_cdc_to_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[9]),
        .Q(s_level_out_bus_d1_cdc_to_9),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module ebaz4205_axi_gpio_0_3_pselect_f
   (ce_expnd_i_3,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] );
  output ce_expnd_i_3;
  input [1:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;

  wire [1:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire ce_expnd_i_3;

  LUT2 #(
    .INIT(4'h1)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [1]),
        .O(ce_expnd_i_3));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module ebaz4205_axi_gpio_0_3_pselect_f__parameterized1
   (ce_expnd_i_1,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] );
  output ce_expnd_i_1;
  input [1:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;

  wire [1:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire ce_expnd_i_1;

  LUT2 #(
    .INIT(4'h2)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [0]),
        .O(ce_expnd_i_1));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module ebaz4205_axi_gpio_0_3_slave_attachment
   (SR,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Q,
    bus2ip_rnw_i_reg_0,
    Bus_RNW_reg,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    E,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg_1,
    s_axi_rdata,
    D,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_bready,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \s_axi_rdata_i_reg[31]_0 ,
    s_axi_wdata,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output [0:0]SR;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output [2:0]Q;
  output bus2ip_rnw_i_reg_0;
  output Bus_RNW_reg;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [0:0]E;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg_1;
  output [24:0]s_axi_rdata;
  output [23:0]D;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input [24:0]\s_axi_rdata_i_reg[31]_0 ;
  input [31:0]s_axi_wdata;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;

  wire Bus_RNW_reg;
  wire [23:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire GPIO_xferAck_i;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire bus2ip_rnw_i_reg_0;
  wire bus2ip_rnw_i_reg_1;
  wire clear;
  wire gpio_xferAck_Reg;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire p_0_in;
  wire [8:2]p_1_in;
  wire p_5_in;
  wire [3:0]plusOp;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [24:0]s_axi_rdata;
  wire [24:0]\s_axi_rdata_i_reg[31]_0 ;
  wire s_axi_rready;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ip2bus_rdack_i_D1_reg),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(ip2bus_wrack_i_D1_reg),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  ebaz4205_axi_gpio_0_3_address_decoder I_DECODER
       (.Bus_RNW_reg(Bus_RNW_reg),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\Not_Dual.ALLIN1_ND.READ_REG_GEN[0].reg1_reg[8] (bus2ip_rnw_i_reg_0),
        .\Not_Dual.gpio_OE_reg[0] (Q),
        .Q(start2),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg_1),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(is_read_reg_n_0),
        .s_axi_arready_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .s_axi_awready(is_write_reg_n_0),
        .s_axi_wdata(s_axi_wdata));
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid),
        .O(p_1_in[8]));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(Q[0]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(Q[1]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(Q[2]),
        .R(SR));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state1__2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid_i_reg_0),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(p_0_in));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(SR),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [18]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [19]),
        .Q(s_axi_rdata[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [20]),
        .Q(s_axi_rdata[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [21]),
        .Q(s_axi_rdata[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [22]),
        .Q(s_axi_rdata[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [23]),
        .Q(s_axi_rdata[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [24]),
        .Q(s_axi_rdata[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(ip2bus_rdack_i_D1_reg),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  LUT5 #(
    .INIT(32'h0FCAFFCA)) 
    \state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(ip2bus_wrack_i_D1_reg),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(state1__2),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(ip2bus_rdack_i_D1_reg),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(SR));
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
