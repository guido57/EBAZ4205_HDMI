-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Sun Jan 22 09:23:03 2023
-- Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/EBAZ4205_SDR_HDMI/Zynq/capture-test/capture-test.gen/sources_1/bd/ebaz4205/ip/ebaz4205_DivideBy4_25MHz_0/ebaz4205_DivideBy4_25MHz_0_sim_netlist.vhdl
-- Design      : ebaz4205_DivideBy4_25MHz_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ebaz4205_DivideBy4_25MHz_0_DivideBy2N is
  port (
    clk_out : out STD_LOGIC;
    resetn : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ebaz4205_DivideBy4_25MHz_0_DivideBy2N : entity is "DivideBy2N";
end ebaz4205_DivideBy4_25MHz_0_DivideBy2N;

architecture STRUCTURE of ebaz4205_DivideBy4_25MHz_0_DivideBy2N is
  signal \^clk_out\ : STD_LOGIC;
  signal clk_track_i_1_n_0 : STD_LOGIC;
  signal clk_track_i_2_n_0 : STD_LOGIC;
begin
  clk_out <= \^clk_out\;
clk_track_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clk_out\,
      O => clk_track_i_1_n_0
    );
clk_track_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => clk_track_i_2_n_0
    );
clk_track_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_track_i_2_n_0,
      D => clk_track_i_1_n_0,
      Q => \^clk_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ebaz4205_DivideBy4_25MHz_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ebaz4205_DivideBy4_25MHz_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ebaz4205_DivideBy4_25MHz_0 : entity is "ebaz4205_DivideBy4_25MHz_0,DivideBy2N,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ebaz4205_DivideBy4_25MHz_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ebaz4205_DivideBy4_25MHz_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ebaz4205_DivideBy4_25MHz_0 : entity is "DivideBy2N,Vivado 2021.2";
end ebaz4205_DivideBy4_25MHz_0;

architecture STRUCTURE of ebaz4205_DivideBy4_25MHz_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ebaz4205_DivideBy4_25MHz_0_DivideBy2N
     port map (
      clk => clk,
      clk_out => clk_out,
      resetn => resetn
    );
end STRUCTURE;
