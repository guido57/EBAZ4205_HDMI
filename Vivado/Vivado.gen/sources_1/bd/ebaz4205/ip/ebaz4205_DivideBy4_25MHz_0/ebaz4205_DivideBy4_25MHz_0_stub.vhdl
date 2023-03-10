-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Sat Feb 18 17:56:34 2023
-- Host        : guido-UM690 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /media/guido/Acer/EBAZ4205_SDR_HDMI_PS2/Vivado/Vivado.gen/sources_1/bd/ebaz4205/ip/ebaz4205_DivideBy4_25MHz_0/ebaz4205_DivideBy4_25MHz_0_stub.vhdl
-- Design      : ebaz4205_DivideBy4_25MHz_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ebaz4205_DivideBy4_25MHz_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );

end ebaz4205_DivideBy4_25MHz_0;

architecture stub of ebaz4205_DivideBy4_25MHz_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,clk_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "DivideBy2N,Vivado 2022.2";
begin
end;
