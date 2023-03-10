-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Sat Feb 18 17:57:45 2023
-- Host        : guido-UM690 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/guido/Acer/EBAZ4205_SDR_HDMI_PS2/Vivado/Vivado.gen/sources_1/bd/ebaz4205/ip/ebaz4205_ps2_mouse_0_0/ebaz4205_ps2_mouse_0_0_sim_netlist.vhdl
-- Design      : ebaz4205_ps2_mouse_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ebaz4205_ps2_mouse_0_0_debounce is
  port (
    ps2_clk_int : out STD_LOGIC;
    bit_cnt0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    timer0 : out STD_LOGIC;
    result_reg_0 : out STD_LOGIC;
    result_reg_1 : out STD_LOGIC;
    clk : in STD_LOGIC;
    ps2_clk_int_prev : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_ena : in STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC;
    ps2_data_int : in STD_LOGIC;
    \timer_reg[0]\ : in STD_LOGIC;
    \flipflops_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ebaz4205_ps2_mouse_0_0_debounce : entity is "debounce";
end ebaz4205_ps2_mouse_0_0_debounce;

architecture STRUCTURE of ebaz4205_ps2_mouse_0_0_debounce is
  signal \counter_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[7]\ : STD_LOGIC;
  signal counter_set : STD_LOGIC;
  signal \flipflops_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^ps2_clk_int\ : STD_LOGIC;
  signal result_i_1_n_0 : STD_LOGIC;
  signal \^result_reg_0\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_out[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_out[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_out[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_out[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_out[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter_out[7]_i_2\ : label is "soft_lutpair2";
  attribute inverted : string;
  attribute inverted of \counter_out_reg[8]_inv\ : label is "yes";
  attribute SOFT_HLUTNM of result_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \timer[12]_i_3\ : label is "soft_lutpair1";
begin
  ps2_clk_int <= \^ps2_clk_int\;
  result_reg_0 <= \^result_reg_0\;
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF5500"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\,
      I1 => \^ps2_clk_int\,
      I2 => ps2_data_int,
      I3 => Q(0),
      I4 => Q(1),
      O => D(0)
    );
\bit_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000F00000"
    )
        port map (
      I0 => \^ps2_clk_int\,
      I1 => ps2_clk_int_prev,
      I2 => reset_n,
      I3 => Q(0),
      I4 => tx_ena,
      I5 => Q(1),
      O => bit_cnt0
    );
\counter_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      O => plusOp(0)
    );
\counter_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      I1 => \counter_out_reg_n_0_[1]\,
      O => plusOp(1)
    );
\counter_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      I1 => \counter_out_reg_n_0_[1]\,
      I2 => \counter_out_reg_n_0_[2]\,
      O => plusOp(2)
    );
\counter_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_out_reg_n_0_[1]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[2]\,
      I3 => \counter_out_reg_n_0_[3]\,
      O => plusOp(3)
    );
\counter_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[2]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[1]\,
      I3 => \counter_out_reg_n_0_[3]\,
      I4 => \counter_out_reg_n_0_[4]\,
      O => plusOp(4)
    );
\counter_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[3]\,
      I1 => \counter_out_reg_n_0_[1]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[2]\,
      I4 => \counter_out_reg_n_0_[4]\,
      I5 => \counter_out_reg_n_0_[5]\,
      O => plusOp(5)
    );
\counter_out[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_out[7]_i_3_n_0\,
      I1 => \counter_out_reg_n_0_[6]\,
      O => plusOp(6)
    );
\counter_out[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in,
      I1 => \flipflops_reg_n_0_[0]\,
      O => counter_set
    );
\counter_out[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_out[7]_i_3_n_0\,
      I1 => \counter_out_reg_n_0_[6]\,
      I2 => \counter_out_reg_n_0_[7]\,
      O => plusOp(7)
    );
\counter_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[5]\,
      I1 => \counter_out_reg_n_0_[3]\,
      I2 => \counter_out_reg_n_0_[1]\,
      I3 => \counter_out_reg_n_0_[0]\,
      I4 => \counter_out_reg_n_0_[2]\,
      I5 => \counter_out_reg_n_0_[4]\,
      O => \counter_out[7]_i_3_n_0\
    );
\counter_out[8]_inv_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \counter_out_reg_n_0_[6]\,
      I1 => \counter_out[7]_i_3_n_0\,
      I2 => \counter_out_reg_n_0_[7]\,
      O => plusOp(8)
    );
\counter_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(0),
      Q => \counter_out_reg_n_0_[0]\,
      R => counter_set
    );
\counter_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(1),
      Q => \counter_out_reg_n_0_[1]\,
      R => counter_set
    );
\counter_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(2),
      Q => \counter_out_reg_n_0_[2]\,
      R => counter_set
    );
\counter_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(3),
      Q => \counter_out_reg_n_0_[3]\,
      R => counter_set
    );
\counter_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(4),
      Q => \counter_out_reg_n_0_[4]\,
      R => counter_set
    );
\counter_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(5),
      Q => \counter_out_reg_n_0_[5]\,
      R => counter_set
    );
\counter_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(6),
      Q => \counter_out_reg_n_0_[6]\,
      R => counter_set
    );
\counter_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(7),
      Q => \counter_out_reg_n_0_[7]\,
      R => counter_set
    );
\counter_out_reg[8]_inv\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(8),
      Q => sel,
      S => counter_set
    );
\flipflops_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \flipflops_reg[0]_0\(0),
      Q => \flipflops_reg_n_0_[0]\,
      R => '0'
    );
\flipflops_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \flipflops_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
ps2_clk_int_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ps2_clk_int\,
      I1 => reset_n,
      I2 => ps2_clk_int_prev,
      O => result_reg_1
    );
\ps2_word[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004044440040"
    )
        port map (
      I0 => Q(0),
      I1 => reset_n,
      I2 => ps2_clk_int_prev,
      I3 => \^ps2_clk_int\,
      I4 => tx_ena,
      I5 => Q(1),
      O => E(0)
    );
result_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => sel,
      I1 => \flipflops_reg_n_0_[0]\,
      I2 => p_0_in,
      I3 => \^ps2_clk_int\,
      O => result_i_1_n_0
    );
result_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => result_i_1_n_0,
      Q => \^ps2_clk_int\,
      R => '0'
    );
\timer[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F0700070"
    )
        port map (
      I0 => \timer_reg[0]\,
      I1 => \^result_reg_0\,
      I2 => reset_n,
      I3 => Q(0),
      I4 => \FSM_sequential_state_reg[1]\,
      I5 => Q(1),
      O => timer0
    );
\timer[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ps2_clk_int\,
      I1 => tx_ena,
      O => \^result_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ebaz4205_ps2_mouse_0_0_debounce_0 is
  port (
    ps2_data_int : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ps2_clk_int : in STD_LOGIC;
    \flipflops_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ebaz4205_ps2_mouse_0_0_debounce_0 : entity is "debounce";
end ebaz4205_ps2_mouse_0_0_debounce_0;

architecture STRUCTURE of ebaz4205_ps2_mouse_0_0_debounce_0 is
  signal \counter_out[7]_i_3__0_n_0\ : STD_LOGIC;
  signal counter_out_reg : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \counter_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[7]\ : STD_LOGIC;
  signal counter_set : STD_LOGIC;
  signal \flipflops_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^ps2_data_int\ : STD_LOGIC;
  signal \result_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_out[1]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_out[2]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_out[3]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_out[4]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_out[6]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_out[7]_i_2__0\ : label is "soft_lutpair5";
  attribute inverted : string;
  attribute inverted of \counter_out_reg[8]_inv\ : label is "yes";
begin
  ps2_data_int <= \^ps2_data_int\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0233323332333233"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]\,
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \^ps2_data_int\,
      I5 => ps2_clk_int,
      O => D(0)
    );
\counter_out[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      O => \plusOp__0\(0)
    );
\counter_out[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      I1 => \counter_out_reg_n_0_[1]\,
      O => \plusOp__0\(1)
    );
\counter_out[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      I1 => \counter_out_reg_n_0_[1]\,
      I2 => \counter_out_reg_n_0_[2]\,
      O => \plusOp__0\(2)
    );
\counter_out[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_out_reg_n_0_[1]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[2]\,
      I3 => \counter_out_reg_n_0_[3]\,
      O => \plusOp__0\(3)
    );
\counter_out[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[2]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[1]\,
      I3 => \counter_out_reg_n_0_[3]\,
      I4 => \counter_out_reg_n_0_[4]\,
      O => \plusOp__0\(4)
    );
\counter_out[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[3]\,
      I1 => \counter_out_reg_n_0_[1]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[2]\,
      I4 => \counter_out_reg_n_0_[4]\,
      I5 => \counter_out_reg_n_0_[5]\,
      O => \plusOp__0\(5)
    );
\counter_out[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_out[7]_i_3__0_n_0\,
      I1 => \counter_out_reg_n_0_[6]\,
      O => \plusOp__0\(6)
    );
\counter_out[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in,
      I1 => \flipflops_reg_n_0_[0]\,
      O => counter_set
    );
\counter_out[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_out[7]_i_3__0_n_0\,
      I1 => \counter_out_reg_n_0_[6]\,
      I2 => \counter_out_reg_n_0_[7]\,
      O => \plusOp__0\(7)
    );
\counter_out[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[5]\,
      I1 => \counter_out_reg_n_0_[3]\,
      I2 => \counter_out_reg_n_0_[1]\,
      I3 => \counter_out_reg_n_0_[0]\,
      I4 => \counter_out_reg_n_0_[2]\,
      I5 => \counter_out_reg_n_0_[4]\,
      O => \counter_out[7]_i_3__0_n_0\
    );
\counter_out[8]_inv_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \counter_out_reg_n_0_[6]\,
      I1 => \counter_out[7]_i_3__0_n_0\,
      I2 => \counter_out_reg_n_0_[7]\,
      O => \plusOp__0\(8)
    );
\counter_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(0),
      Q => \counter_out_reg_n_0_[0]\,
      R => counter_set
    );
\counter_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(1),
      Q => \counter_out_reg_n_0_[1]\,
      R => counter_set
    );
\counter_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(2),
      Q => \counter_out_reg_n_0_[2]\,
      R => counter_set
    );
\counter_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(3),
      Q => \counter_out_reg_n_0_[3]\,
      R => counter_set
    );
\counter_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(4),
      Q => \counter_out_reg_n_0_[4]\,
      R => counter_set
    );
\counter_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(5),
      Q => \counter_out_reg_n_0_[5]\,
      R => counter_set
    );
\counter_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(6),
      Q => \counter_out_reg_n_0_[6]\,
      R => counter_set
    );
\counter_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(7),
      Q => \counter_out_reg_n_0_[7]\,
      R => counter_set
    );
\counter_out_reg[8]_inv\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(8),
      Q => counter_out_reg(8),
      S => counter_set
    );
\flipflops_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \flipflops_reg[0]_0\(0),
      Q => \flipflops_reg_n_0_[0]\,
      R => '0'
    );
\flipflops_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \flipflops_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
\result_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => counter_out_reg(8),
      I1 => \flipflops_reg_n_0_[0]\,
      I2 => p_0_in,
      I3 => \^ps2_data_int\,
      O => \result_i_1__0_n_0\
    );
result_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \result_i_1__0_n_0\,
      Q => \^ps2_data_int\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ebaz4205_ps2_mouse_0_0_ps2_transceiver is
  port (
    reset_n_0 : out STD_LOGIC;
    ps2_clock_T : out STD_LOGIC;
    ps2_dat_T : out STD_LOGIC;
    ps2_dat_O : out STD_LOGIC;
    ps2_code_new_reg_0 : out STD_LOGIC;
    ps2_code_new_reg_1 : out STD_LOGIC;
    \ps2_code_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \packet_byte_reg[0]\ : out STD_LOGIC;
    \packet_byte_reg[0]_0\ : out STD_LOGIC;
    \packet_byte_reg[1]\ : out STD_LOGIC;
    \packet_byte_reg[0]_1\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ps2_code_new_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_busy_reg_0 : out STD_LOGIC;
    \packet_byte_reg[0]_2\ : out STD_LOGIC;
    ps2_code_new_reg_3 : out STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ps2_code_new_prev : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    tx_ena : in STD_LOGIC;
    \ps2_word_reg[9]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \state_reg[4]\ : in STD_LOGIC;
    \state_reg[2]\ : in STD_LOGIC;
    \state_reg[3]\ : in STD_LOGIC;
    packet_byte : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[1]\ : in STD_LOGIC;
    mouse_data_new_reg : in STD_LOGIC;
    tx_ena_reg : in STD_LOGIC;
    mouse_data_new : in STD_LOGIC;
    \sync_ffs_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ebaz4205_ps2_mouse_0_0_ps2_transceiver : entity is "ps2_transceiver";
end ebaz4205_ps2_mouse_0_0_ps2_transceiver;

architecture STRUCTURE of ebaz4205_ps2_mouse_0_0_ps2_transceiver is
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal bit_cnt0 : STD_LOGIC;
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal debounce_ps2_clk_n_2 : STD_LOGIC;
  signal debounce_ps2_clk_n_5 : STD_LOGIC;
  signal debounce_ps2_clk_n_6 : STD_LOGIC;
  signal in22 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal ps2_clk_int : STD_LOGIC;
  signal ps2_clk_int_prev : STD_LOGIC;
  signal \^ps2_clock_t\ : STD_LOGIC;
  signal ps2_clock_T_i_1_n_0 : STD_LOGIC;
  signal ps2_clock_T_i_2_n_0 : STD_LOGIC;
  signal ps2_clock_T_i_3_n_0 : STD_LOGIC;
  signal ps2_clock_T_i_4_n_0 : STD_LOGIC;
  signal \ps2_code[7]_i_1_n_0\ : STD_LOGIC;
  signal \ps2_code[7]_i_3_n_0\ : STD_LOGIC;
  signal \ps2_code[7]_i_4_n_0\ : STD_LOGIC;
  signal \ps2_code[7]_i_5_n_0\ : STD_LOGIC;
  signal \ps2_code[7]_i_6_n_0\ : STD_LOGIC;
  signal \ps2_code[7]_i_7_n_0\ : STD_LOGIC;
  signal ps2_code_new : STD_LOGIC;
  signal ps2_code_new_0 : STD_LOGIC;
  signal ps2_code_new_i_1_n_0 : STD_LOGIC;
  signal \^ps2_code_new_reg_0\ : STD_LOGIC;
  signal \^ps2_code_new_reg_1\ : STD_LOGIC;
  signal \^ps2_code_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ps2_dat_o\ : STD_LOGIC;
  signal ps2_dat_O_i_1_n_0 : STD_LOGIC;
  signal ps2_dat_O_i_2_n_0 : STD_LOGIC;
  signal ps2_dat_O_i_3_n_0 : STD_LOGIC;
  signal \^ps2_dat_t\ : STD_LOGIC;
  signal ps2_dat_T_i_1_n_0 : STD_LOGIC;
  signal ps2_dat_T_i_2_n_0 : STD_LOGIC;
  signal ps2_data_int : STD_LOGIC;
  signal ps2_word : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \ps2_word[10]_i_1_n_0\ : STD_LOGIC;
  signal \ps2_word[10]_i_2_n_0\ : STD_LOGIC;
  signal \ps2_word[10]_i_3_n_0\ : STD_LOGIC;
  signal \ps2_word[7]_i_1_n_0\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[0]\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[10]\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[1]\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[7]\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[8]\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[9]\ : STD_LOGIC;
  signal \^reset_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_10_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[0]_i_6_n_0\ : STD_LOGIC;
  signal \state[0]_i_7_n_0\ : STD_LOGIC;
  signal \state[0]_i_8_n_0\ : STD_LOGIC;
  signal \state[0]_i_9_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[1]_i_5_n_0\ : STD_LOGIC;
  signal \state[1]_i_6_n_0\ : STD_LOGIC;
  signal \state[1]_i_7_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_5_n_0\ : STD_LOGIC;
  signal \state[2]_i_6_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_4_n_0\ : STD_LOGIC;
  signal \state[3]_i_5_n_0\ : STD_LOGIC;
  signal \state[4]_i_10_n_0\ : STD_LOGIC;
  signal \state[4]_i_11_n_0\ : STD_LOGIC;
  signal \state[4]_i_12_n_0\ : STD_LOGIC;
  signal \state[4]_i_13_n_0\ : STD_LOGIC;
  signal \state[4]_i_4_n_0\ : STD_LOGIC;
  signal \state[4]_i_5_n_0\ : STD_LOGIC;
  signal \state[4]_i_6_n_0\ : STD_LOGIC;
  signal \state[4]_i_7_n_0\ : STD_LOGIC;
  signal \state[4]_i_8_n_0\ : STD_LOGIC;
  signal \state[4]_i_9_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sync_ffs : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal timer0 : STD_LOGIC;
  signal \timer0_carry__0_n_0\ : STD_LOGIC;
  signal \timer0_carry__0_n_1\ : STD_LOGIC;
  signal \timer0_carry__0_n_2\ : STD_LOGIC;
  signal \timer0_carry__0_n_3\ : STD_LOGIC;
  signal \timer0_carry__1_n_1\ : STD_LOGIC;
  signal \timer0_carry__1_n_2\ : STD_LOGIC;
  signal \timer0_carry__1_n_3\ : STD_LOGIC;
  signal timer0_carry_n_0 : STD_LOGIC;
  signal timer0_carry_n_1 : STD_LOGIC;
  signal timer0_carry_n_2 : STD_LOGIC;
  signal timer0_carry_n_3 : STD_LOGIC;
  signal \timer[0]_i_1_n_0\ : STD_LOGIC;
  signal \timer[12]_i_1_n_0\ : STD_LOGIC;
  signal \timer[12]_i_4_n_0\ : STD_LOGIC;
  signal \timer[12]_i_5_n_0\ : STD_LOGIC;
  signal \timer[12]_i_6_n_0\ : STD_LOGIC;
  signal \timer[12]_i_7_n_0\ : STD_LOGIC;
  signal \timer_reg_n_0_[0]\ : STD_LOGIC;
  signal \timer_reg_n_0_[10]\ : STD_LOGIC;
  signal \timer_reg_n_0_[11]\ : STD_LOGIC;
  signal \timer_reg_n_0_[12]\ : STD_LOGIC;
  signal \timer_reg_n_0_[1]\ : STD_LOGIC;
  signal \timer_reg_n_0_[2]\ : STD_LOGIC;
  signal \timer_reg_n_0_[3]\ : STD_LOGIC;
  signal \timer_reg_n_0_[4]\ : STD_LOGIC;
  signal \timer_reg_n_0_[5]\ : STD_LOGIC;
  signal \timer_reg_n_0_[6]\ : STD_LOGIC;
  signal \timer_reg_n_0_[7]\ : STD_LOGIC;
  signal \timer_reg_n_0_[8]\ : STD_LOGIC;
  signal \timer_reg_n_0_[9]\ : STD_LOGIC;
  signal tx_busy : STD_LOGIC;
  signal tx_busy_i_1_n_0 : STD_LOGIC;
  signal \tx_cmd[8]_i_3_n_0\ : STD_LOGIC;
  signal \NLW_timer0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair15";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "inhibit:01,transact:10,tx_complete:11,receive:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "inhibit:01,transact:10,tx_complete:11,receive:00";
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mouse_data_int[15]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mouse_data_int[23]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mouse_data_int[31]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mouse_data_int[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \packet_byte[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of ps2_clock_T_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ps2_clock_T_i_3 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of ps2_clock_T_i_4 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ps2_code[7]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ps2_code[7]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of ps2_code_new_prev_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of ps2_dat_O_i_3 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ps2_dat_T_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ps2_word[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ps2_word[10]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ps2_word[10]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ps2_word[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \state[0]_i_10\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state[0]_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \state[0]_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \state[0]_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state[2]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \state[3]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \state[3]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \state[4]_i_10\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \state[4]_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state[4]_i_12\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \state[4]_i_13\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \state[4]_i_9\ : label is "soft_lutpair16";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of timer0_carry : label is 35;
  attribute ADDER_THRESHOLD of \timer0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \timer0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \timer[12]_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of tx_busy_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tx_cmd[8]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of tx_ena_i_1 : label is "soft_lutpair20";
begin
  ps2_clock_T <= \^ps2_clock_t\;
  ps2_code_new_reg_0 <= \^ps2_code_new_reg_0\;
  ps2_code_new_reg_1 <= \^ps2_code_new_reg_1\;
  \ps2_code_reg[7]_0\(7 downto 0) <= \^ps2_code_reg[7]_0\(7 downto 0);
  ps2_dat_O <= \^ps2_dat_o\;
  ps2_dat_T <= \^ps2_dat_t\;
  reset_n_0 <= \^reset_n_0\;
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3311331130113311"
    )
        port map (
      I0 => tx_ena,
      I1 => state(0),
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => state(1),
      I4 => \bit_cnt_reg_n_0_[3]\,
      I5 => \FSM_sequential_state[0]_i_3_n_0\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => \state__0\(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => \state__0\(1),
      Q => state(1)
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => tx_ena,
      I1 => state(0),
      I2 => reset_n,
      I3 => state(1),
      O => \bit_cnt[3]_i_1_n_0\
    );
\bit_cnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      O => \bit_cnt[3]_i_3_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_cnt0,
      D => \bit_cnt[0]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[0]\,
      R => \bit_cnt[3]_i_1_n_0\
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_cnt0,
      D => \bit_cnt[1]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[1]\,
      R => \bit_cnt[3]_i_1_n_0\
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_cnt0,
      D => \bit_cnt[2]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[2]\,
      R => \bit_cnt[3]_i_1_n_0\
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_cnt0,
      D => \bit_cnt[3]_i_3_n_0\,
      Q => \bit_cnt_reg_n_0_[3]\,
      R => \bit_cnt[3]_i_1_n_0\
    );
debounce_ps2_clk: entity work.ebaz4205_ps2_mouse_0_0_debounce
     port map (
      D(0) => \state__0\(1),
      E(0) => debounce_ps2_clk_n_2,
      \FSM_sequential_state_reg[1]\ => ps2_clock_T_i_2_n_0,
      Q(1 downto 0) => state(1 downto 0),
      bit_cnt0 => bit_cnt0,
      clk => clk,
      \flipflops_reg[0]_0\(0) => sync_ffs(0),
      ps2_clk_int => ps2_clk_int,
      ps2_clk_int_prev => ps2_clk_int_prev,
      ps2_data_int => ps2_data_int,
      reset_n => reset_n,
      result_reg_0 => debounce_ps2_clk_n_5,
      result_reg_1 => debounce_ps2_clk_n_6,
      timer0 => timer0,
      \timer_reg[0]\ => \timer[12]_i_4_n_0\,
      tx_ena => tx_ena
    );
debounce_ps2_data: entity work.ebaz4205_ps2_mouse_0_0_debounce_0
     port map (
      D(0) => \state__0\(0),
      \FSM_sequential_state_reg[0]\ => ps2_clock_T_i_2_n_0,
      \FSM_sequential_state_reg[0]_0\ => \FSM_sequential_state[0]_i_2_n_0\,
      Q(1 downto 0) => state(1 downto 0),
      clk => clk,
      \flipflops_reg[0]_0\(0) => sync_ffs(1),
      ps2_clk_int => ps2_clk_int,
      ps2_data_int => ps2_data_int
    );
\mouse_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => mouse_data_new_reg,
      I1 => ps2_code_new,
      I2 => ps2_code_new_prev,
      I3 => packet_byte(1),
      I4 => packet_byte(0),
      O => ps2_code_new_reg_2(0)
    );
\mouse_data[31]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \^reset_n_0\
    );
\mouse_data_int[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^ps2_code_new_reg_1\,
      I1 => packet_byte(0),
      I2 => packet_byte(1),
      O => \packet_byte_reg[0]_0\
    );
\mouse_data_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^ps2_code_new_reg_1\,
      I1 => packet_byte(1),
      I2 => packet_byte(0),
      O => \packet_byte_reg[1]\
    );
\mouse_data_int[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^ps2_code_new_reg_1\,
      I1 => packet_byte(0),
      I2 => packet_byte(1),
      O => \packet_byte_reg[0]_1\
    );
\mouse_data_int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^ps2_code_new_reg_1\,
      I1 => packet_byte(0),
      I2 => packet_byte(1),
      O => \packet_byte_reg[0]\
    );
mouse_data_new_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF80000000"
    )
        port map (
      I0 => packet_byte(0),
      I1 => packet_byte(1),
      I2 => ps2_code_new_prev,
      I3 => ps2_code_new,
      I4 => mouse_data_new_reg,
      I5 => mouse_data_new,
      O => \packet_byte_reg[0]_2\
    );
\packet_byte[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ps2_code_new,
      I1 => ps2_code_new_prev,
      O => \^ps2_code_new_reg_0\
    );
\packet_byte[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => ps2_code_new,
      I1 => ps2_code_new_prev,
      I2 => Q(2),
      I3 => Q(4),
      I4 => Q(0),
      I5 => reset_n,
      O => \^ps2_code_new_reg_1\
    );
ps2_clk_int_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debounce_ps2_clk_n_6,
      Q => ps2_clk_int_prev,
      R => '0'
    );
ps2_clock_T_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFF4545"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => tx_ena,
      I3 => ps2_clock_T_i_2_n_0,
      I4 => \^ps2_clock_t\,
      O => ps2_clock_T_i_1_n_0
    );
ps2_clock_T_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555555FD"
    )
        port map (
      I0 => \timer_reg_n_0_[12]\,
      I1 => ps2_clock_T_i_3_n_0,
      I2 => ps2_clock_T_i_4_n_0,
      I3 => \timer_reg_n_0_[10]\,
      I4 => \timer_reg_n_0_[11]\,
      O => ps2_clock_T_i_2_n_0
    );
ps2_clock_T_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \timer_reg_n_0_[6]\,
      I1 => \timer_reg_n_0_[4]\,
      I2 => \timer_reg_n_0_[5]\,
      I3 => \timer_reg_n_0_[3]\,
      O => ps2_clock_T_i_3_n_0
    );
ps2_clock_T_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \timer_reg_n_0_[8]\,
      I1 => \timer_reg_n_0_[7]\,
      I2 => \timer_reg_n_0_[9]\,
      O => ps2_clock_T_i_4_n_0
    );
ps2_clock_T_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => ps2_clock_T_i_1_n_0,
      Q => \^ps2_clock_t\
    );
\ps2_code[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps2_code_new_0,
      I1 => \ps2_code[7]_i_3_n_0\,
      O => \ps2_code[7]_i_1_n_0\
    );
\ps2_code[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \ps2_code[7]_i_4_n_0\,
      I1 => \timer_reg_n_0_[11]\,
      I2 => \timer_reg_n_0_[5]\,
      I3 => \timer_reg_n_0_[9]\,
      I4 => \ps2_code[7]_i_5_n_0\,
      O => ps2_code_new_0
    );
\ps2_code[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006996"
    )
        port map (
      I0 => \ps2_code[7]_i_6_n_0\,
      I1 => \ps2_word_reg_n_0_[8]\,
      I2 => p_5_in,
      I3 => p_6_in,
      I4 => \ps2_code[7]_i_7_n_0\,
      O => \ps2_code[7]_i_3_n_0\
    );
\ps2_code[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \timer_reg_n_0_[2]\,
      I1 => \timer_reg_n_0_[1]\,
      I2 => \timer_reg_n_0_[12]\,
      I3 => \timer_reg_n_0_[0]\,
      I4 => \timer_reg_n_0_[8]\,
      I5 => \timer_reg_n_0_[10]\,
      O => \ps2_code[7]_i_4_n_0\
    );
\ps2_code[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \timer_reg_n_0_[6]\,
      I1 => \timer_reg_n_0_[7]\,
      I2 => \timer_reg_n_0_[3]\,
      I3 => \timer_reg_n_0_[4]\,
      O => \ps2_code[7]_i_5_n_0\
    );
\ps2_code[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \ps2_word_reg_n_0_[7]\,
      I1 => p_2_in,
      I2 => p_4_in,
      I3 => p_3_in,
      I4 => \ps2_word_reg_n_0_[9]\,
      I5 => \ps2_word_reg_n_0_[1]\,
      O => \ps2_code[7]_i_6_n_0\
    );
\ps2_code[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => tx_ena,
      I3 => \ps2_word_reg_n_0_[10]\,
      I4 => \ps2_word_reg_n_0_[0]\,
      O => \ps2_code[7]_i_7_n_0\
    );
ps2_code_new_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5554AAAA0000"
    )
        port map (
      I0 => \ps2_code[7]_i_3_n_0\,
      I1 => tx_ena,
      I2 => state(1),
      I3 => state(0),
      I4 => ps2_code_new_0,
      I5 => ps2_code_new,
      O => ps2_code_new_i_1_n_0
    );
ps2_code_new_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ps2_code_new,
      I1 => reset_n,
      I2 => ps2_code_new_prev,
      O => ps2_code_new_reg_3
    );
ps2_code_new_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => ps2_code_new_i_1_n_0,
      Q => ps2_code_new
    );
\ps2_code_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \ps2_code[7]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \ps2_word_reg_n_0_[1]\,
      Q => \^ps2_code_reg[7]_0\(0)
    );
\ps2_code_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \ps2_code[7]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => p_6_in,
      Q => \^ps2_code_reg[7]_0\(1)
    );
\ps2_code_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \ps2_code[7]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => p_5_in,
      Q => \^ps2_code_reg[7]_0\(2)
    );
\ps2_code_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \ps2_code[7]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => p_4_in,
      Q => \^ps2_code_reg[7]_0\(3)
    );
\ps2_code_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \ps2_code[7]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => p_3_in,
      Q => \^ps2_code_reg[7]_0\(4)
    );
\ps2_code_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \ps2_code[7]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => p_2_in,
      Q => \^ps2_code_reg[7]_0\(5)
    );
\ps2_code_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \ps2_code[7]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \ps2_word_reg_n_0_[7]\,
      Q => \^ps2_code_reg[7]_0\(6)
    );
\ps2_code_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \ps2_code[7]_i_1_n_0\,
      CLR => \^reset_n_0\,
      D => \ps2_word_reg_n_0_[8]\,
      Q => \^ps2_code_reg[7]_0\(7)
    );
ps2_dat_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFF00002A00"
    )
        port map (
      I0 => \ps2_word_reg_n_0_[0]\,
      I1 => state(0),
      I2 => state(1),
      I3 => reset_n,
      I4 => ps2_dat_O_i_2_n_0,
      I5 => \^ps2_dat_o\,
      O => ps2_dat_O_i_1_n_0
    );
ps2_dat_O_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222AAA2AAAAAAAA"
    )
        port map (
      I0 => ps2_dat_T_i_2_n_0,
      I1 => \timer_reg_n_0_[12]\,
      I2 => ps2_clock_T_i_3_n_0,
      I3 => ps2_clock_T_i_4_n_0,
      I4 => ps2_dat_O_i_3_n_0,
      I5 => state(0),
      O => ps2_dat_O_i_2_n_0
    );
ps2_dat_O_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \timer_reg_n_0_[10]\,
      I1 => \timer_reg_n_0_[11]\,
      O => ps2_dat_O_i_3_n_0
    );
ps2_dat_O_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ps2_dat_O_i_1_n_0,
      Q => \^ps2_dat_o\,
      R => '0'
    );
ps2_dat_T_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF88AAFA0088AA0A"
    )
        port map (
      I0 => ps2_dat_T_i_2_n_0,
      I1 => ps2_clock_T_i_2_n_0,
      I2 => tx_ena,
      I3 => state(1),
      I4 => state(0),
      I5 => \^ps2_dat_t\,
      O => ps2_dat_T_i_1_n_0
    );
ps2_dat_T_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0FF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => state(1),
      O => ps2_dat_T_i_2_n_0
    );
ps2_dat_T_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ps2_dat_T_i_1_n_0,
      PRE => \^reset_n_0\,
      Q => \^ps2_dat_t\
    );
\ps2_word[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \ps2_word_reg_n_0_[1]\,
      I1 => state(1),
      I2 => tx_ena,
      O => ps2_word(0)
    );
\ps2_word[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => ps2_data_int,
      I1 => ps2_clk_int,
      I2 => ps2_clk_int_prev,
      I3 => \ps2_word[10]_i_2_n_0\,
      I4 => \ps2_word[10]_i_3_n_0\,
      I5 => \ps2_word_reg_n_0_[10]\,
      O => \ps2_word[10]_i_1_n_0\
    );
\ps2_word[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reset_n,
      I1 => state(0),
      O => \ps2_word[10]_i_2_n_0\
    );
\ps2_word[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_ena,
      I1 => state(1),
      O => \ps2_word[10]_i_3_n_0\
    );
\ps2_word[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \ps2_word_reg[9]_0\(0),
      I1 => tx_ena,
      I2 => state(1),
      I3 => p_6_in,
      O => ps2_word(1)
    );
\ps2_word[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \ps2_word_reg[9]_0\(1),
      I1 => tx_ena,
      I2 => state(1),
      I3 => p_5_in,
      O => ps2_word(2)
    );
\ps2_word[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \ps2_word_reg[9]_0\(2),
      I1 => tx_ena,
      I2 => state(1),
      I3 => p_4_in,
      O => ps2_word(3)
    );
\ps2_word[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \ps2_word_reg[9]_0\(3),
      I1 => tx_ena,
      I2 => state(1),
      I3 => p_3_in,
      O => ps2_word(4)
    );
\ps2_word[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \ps2_word_reg[9]_0\(4),
      I1 => tx_ena,
      I2 => state(1),
      I3 => p_2_in,
      O => ps2_word(5)
    );
\ps2_word[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \ps2_word_reg[9]_0\(5),
      I1 => tx_ena,
      I2 => state(1),
      I3 => \ps2_word_reg_n_0_[7]\,
      O => ps2_word(6)
    );
\ps2_word[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACAFACA"
    )
        port map (
      I0 => \ps2_word_reg_n_0_[7]\,
      I1 => \ps2_word_reg_n_0_[8]\,
      I2 => debounce_ps2_clk_n_2,
      I3 => tx_ena,
      I4 => state(1),
      O => \ps2_word[7]_i_1_n_0\
    );
\ps2_word[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \ps2_word_reg[9]_0\(6),
      I1 => tx_ena,
      I2 => state(1),
      I3 => \ps2_word_reg_n_0_[9]\,
      O => ps2_word(8)
    );
\ps2_word[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \ps2_word_reg[9]_0\(7),
      I1 => tx_ena,
      I2 => state(1),
      I3 => \ps2_word_reg_n_0_[10]\,
      O => ps2_word(9)
    );
\ps2_word_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_ps2_clk_n_2,
      D => ps2_word(0),
      Q => \ps2_word_reg_n_0_[0]\,
      R => '0'
    );
\ps2_word_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ps2_word[10]_i_1_n_0\,
      Q => \ps2_word_reg_n_0_[10]\,
      R => '0'
    );
\ps2_word_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_ps2_clk_n_2,
      D => ps2_word(1),
      Q => \ps2_word_reg_n_0_[1]\,
      R => '0'
    );
\ps2_word_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_ps2_clk_n_2,
      D => ps2_word(2),
      Q => p_6_in,
      R => '0'
    );
\ps2_word_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_ps2_clk_n_2,
      D => ps2_word(3),
      Q => p_5_in,
      R => '0'
    );
\ps2_word_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_ps2_clk_n_2,
      D => ps2_word(4),
      Q => p_4_in,
      R => '0'
    );
\ps2_word_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_ps2_clk_n_2,
      D => ps2_word(5),
      Q => p_3_in,
      R => '0'
    );
\ps2_word_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_ps2_clk_n_2,
      D => ps2_word(6),
      Q => p_2_in,
      R => '0'
    );
\ps2_word_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ps2_word[7]_i_1_n_0\,
      Q => \ps2_word_reg_n_0_[7]\,
      R => '0'
    );
\ps2_word_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_ps2_clk_n_2,
      D => ps2_word(8),
      Q => \ps2_word_reg_n_0_[8]\,
      R => '0'
    );
\ps2_word_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_ps2_clk_n_2,
      D => ps2_word(9),
      Q => \ps2_word_reg_n_0_[9]\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"700070FF70007000"
    )
        port map (
      I0 => Q(2),
      I1 => \state[0]_i_2_n_0\,
      I2 => \state[0]_i_3_n_0\,
      I3 => Q(4),
      I4 => \state[0]_i_4_n_0\,
      I5 => \state[0]_i_5_n_0\,
      O => D(0)
    );
\state[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BFB0"
    )
        port map (
      I0 => ps2_code_new_prev,
      I1 => ps2_code_new,
      I2 => Q(0),
      I3 => tx_busy,
      I4 => Q(1),
      O => \state[0]_i_10_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => \^ps2_code_reg[7]_0\(6),
      I1 => \^ps2_code_reg[7]_0\(7),
      I2 => \^ps2_code_reg[7]_0\(5),
      I3 => \^ps2_code_reg[7]_0\(4),
      I4 => \^ps2_code_reg[7]_0\(0),
      I5 => \state[4]_i_11_n_0\,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF54444444"
    )
        port map (
      I0 => \state[0]_i_6_n_0\,
      I1 => Q(0),
      I2 => \state[1]_i_6_n_0\,
      I3 => \state[4]_i_8_n_0\,
      I4 => \^ps2_code_new_reg_0\,
      I5 => \state[0]_i_7_n_0\,
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0000000E00EEEE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => ps2_code_new_prev,
      I3 => ps2_code_new,
      I4 => Q(0),
      I5 => tx_busy,
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBA00"
    )
        port map (
      I0 => Q(0),
      I1 => \state[0]_i_8_n_0\,
      I2 => \state[4]_i_11_n_0\,
      I3 => \state[0]_i_9_n_0\,
      I4 => \state[0]_i_10_n_0\,
      I5 => \state_reg[2]\,
      O => \state[0]_i_5_n_0\
    );
\state[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => Q(0),
      I1 => tx_busy,
      I2 => Q(1),
      O => \state[0]_i_6_n_0\
    );
\state[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBAAABABBBA"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => tx_busy,
      I3 => Q(0),
      I4 => ps2_code_new,
      I5 => ps2_code_new_prev,
      O => \state[0]_i_7_n_0\
    );
\state[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \^ps2_code_reg[7]_0\(7),
      I1 => \^ps2_code_reg[7]_0\(5),
      I2 => \^ps2_code_reg[7]_0\(6),
      I3 => \^ps2_code_reg[7]_0\(0),
      I4 => \^ps2_code_reg[7]_0\(4),
      O => \state[0]_i_8_n_0\
    );
\state[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => ps2_code_new,
      I3 => ps2_code_new_prev,
      O => \state[0]_i_9_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303F101F303F1010"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => Q(2),
      I2 => Q(4),
      I3 => \state[1]_i_3_n_0\,
      I4 => \state[1]_i_4_n_0\,
      I5 => \state[1]_i_5_n_0\,
      O => D(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2AFF00FF2AFF"
    )
        port map (
      I0 => \^ps2_code_new_reg_0\,
      I1 => \state[4]_i_8_n_0\,
      I2 => \state[1]_i_6_n_0\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => tx_busy,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => \state[1]_i_7_n_0\,
      I1 => \^ps2_code_reg[7]_0\(4),
      I2 => \^ps2_code_reg[7]_0\(0),
      I3 => \^ps2_code_reg[7]_0\(6),
      I4 => \state_reg[1]\,
      I5 => \^ps2_code_new_reg_0\,
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^ps2_code_reg[7]_0\(6),
      I3 => \state[3]_i_5_n_0\,
      I4 => \state[4]_i_9_n_0\,
      I5 => \state[4]_i_11_n_0\,
      O => \state[1]_i_4_n_0\
    );
\state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFFF00000000"
    )
        port map (
      I0 => ps2_code_new_prev,
      I1 => ps2_code_new,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(1),
      O => \state[1]_i_5_n_0\
    );
\state[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ps2_code_reg[7]_0\(1),
      I1 => \^ps2_code_reg[7]_0\(0),
      O => \state[1]_i_6_n_0\
    );
\state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \^ps2_code_reg[7]_0\(1),
      I1 => \^ps2_code_reg[7]_0\(3),
      I2 => \^ps2_code_reg[7]_0\(5),
      I3 => \^ps2_code_reg[7]_0\(7),
      I4 => \^ps2_code_reg[7]_0\(2),
      I5 => Q(0),
      O => \state[1]_i_7_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFEFEFE0"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => \state[2]_i_3_n_0\,
      I2 => Q(4),
      I3 => \state[2]_i_4_n_0\,
      I4 => \state[2]_i_5_n_0\,
      I5 => \state[2]_i_6_n_0\,
      O => D(2)
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555557500000000"
    )
        port map (
      I0 => \^ps2_code_new_reg_0\,
      I1 => \^ps2_code_reg[7]_0\(2),
      I2 => \^ps2_code_reg[7]_0\(6),
      I3 => \state[4]_i_9_n_0\,
      I4 => \state[4]_i_10_n_0\,
      I5 => Q(2),
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => Q(0),
      I1 => tx_busy,
      I2 => Q(1),
      I3 => Q(2),
      O => \state[2]_i_3_n_0\
    );
\state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FF75FF00000000"
    )
        port map (
      I0 => Q(0),
      I1 => \state[4]_i_10_n_0\,
      I2 => \state[4]_i_13_n_0\,
      I3 => \^ps2_code_new_reg_0\,
      I4 => Q(1),
      I5 => Q(2),
      O => \state[2]_i_4_n_0\
    );
\state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \state[4]_i_8_n_0\,
      I1 => \state[3]_i_2_n_0\,
      I2 => \state_reg[2]\,
      I3 => Q(1),
      I4 => \^ps2_code_reg[7]_0\(1),
      I5 => \^ps2_code_reg[7]_0\(0),
      O => \state[2]_i_5_n_0\
    );
\state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => \state[4]_i_12_n_0\,
      I5 => \state[4]_i_11_n_0\,
      O => \state[2]_i_6_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04000C00040F0C00"
    )
        port map (
      I0 => \state[3]_i_2_n_0\,
      I1 => \state[4]_i_5_n_0\,
      I2 => Q(4),
      I3 => Q(3),
      I4 => \state_reg[3]\,
      I5 => \state[3]_i_4_n_0\,
      O => D(3)
    );
\state[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => ps2_code_new_prev,
      I1 => ps2_code_new,
      I2 => Q(0),
      O => \state[3]_i_2_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFFFFFFFFFF"
    )
        port map (
      I0 => \state[4]_i_11_n_0\,
      I1 => \^ps2_code_reg[7]_0\(0),
      I2 => \^ps2_code_reg[7]_0\(4),
      I3 => \state[3]_i_5_n_0\,
      I4 => \^ps2_code_reg[7]_0\(6),
      I5 => Q(0),
      O => \state[3]_i_4_n_0\
    );
\state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^ps2_code_reg[7]_0\(5),
      I1 => \^ps2_code_reg[7]_0\(7),
      O => \state[3]_i_5_n_0\
    );
\state[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^ps2_code_reg[7]_0\(7),
      I1 => \^ps2_code_reg[7]_0\(5),
      I2 => \^ps2_code_reg[7]_0\(3),
      I3 => \^ps2_code_reg[7]_0\(1),
      O => \state[4]_i_10_n_0\
    );
\state[4]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => ps2_code_new_prev,
      I1 => ps2_code_new,
      I2 => \^ps2_code_reg[7]_0\(1),
      I3 => \^ps2_code_reg[7]_0\(2),
      I4 => \^ps2_code_reg[7]_0\(3),
      O => \state[4]_i_11_n_0\
    );
\state[4]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \^ps2_code_reg[7]_0\(0),
      I1 => \^ps2_code_reg[7]_0\(4),
      I2 => \^ps2_code_reg[7]_0\(5),
      I3 => \^ps2_code_reg[7]_0\(7),
      I4 => \^ps2_code_reg[7]_0\(6),
      O => \state[4]_i_12_n_0\
    );
\state[4]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \^ps2_code_reg[7]_0\(4),
      I1 => \^ps2_code_reg[7]_0\(0),
      I2 => \^ps2_code_reg[7]_0\(6),
      I3 => \^ps2_code_reg[7]_0\(2),
      O => \state[4]_i_13_n_0\
    );
\state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8A80"
    )
        port map (
      I0 => \state_reg[4]\,
      I1 => \state[4]_i_4_n_0\,
      I2 => Q(1),
      I3 => \state[4]_i_5_n_0\,
      I4 => \state[4]_i_6_n_0\,
      I5 => \state[4]_i_7_n_0\,
      O => D(4)
    );
\state[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFDFDFDFDFFFD"
    )
        port map (
      I0 => ps2_code_new,
      I1 => ps2_code_new_prev,
      I2 => Q(0),
      I3 => \state[4]_i_8_n_0\,
      I4 => \^ps2_code_reg[7]_0\(1),
      I5 => \^ps2_code_reg[7]_0\(0),
      O => \state[4]_i_4_n_0\
    );
\state[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555575FFFFFFFF"
    )
        port map (
      I0 => \^ps2_code_new_reg_0\,
      I1 => \^ps2_code_reg[7]_0\(2),
      I2 => \^ps2_code_reg[7]_0\(6),
      I3 => \state[4]_i_9_n_0\,
      I4 => \state[4]_i_10_n_0\,
      I5 => Q(0),
      O => \state[4]_i_5_n_0\
    );
\state[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \state[4]_i_11_n_0\,
      I1 => \state[4]_i_12_n_0\,
      I2 => Q(0),
      I3 => \state_reg[3]\,
      I4 => Q(3),
      I5 => Q(4),
      O => \state[4]_i_6_n_0\
    );
\state[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA20AAAA00000000"
    )
        port map (
      I0 => Q(2),
      I1 => \state[4]_i_10_n_0\,
      I2 => \state[4]_i_13_n_0\,
      I3 => ps2_code_new_prev,
      I4 => ps2_code_new,
      I5 => Q(4),
      O => \state[4]_i_7_n_0\
    );
\state[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^ps2_code_reg[7]_0\(5),
      I1 => \^ps2_code_reg[7]_0\(6),
      I2 => \^ps2_code_reg[7]_0\(4),
      I3 => \^ps2_code_reg[7]_0\(7),
      I4 => \^ps2_code_reg[7]_0\(2),
      I5 => \^ps2_code_reg[7]_0\(3),
      O => \state[4]_i_8_n_0\
    );
\state[4]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ps2_code_reg[7]_0\(0),
      I1 => \^ps2_code_reg[7]_0\(4),
      O => \state[4]_i_9_n_0\
    );
\sync_ffs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sync_ffs_reg[1]_0\(0),
      Q => sync_ffs(0),
      R => '0'
    );
\sync_ffs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sync_ffs_reg[1]_0\(1),
      Q => sync_ffs(1),
      R => '0'
    );
timer0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => timer0_carry_n_0,
      CO(2) => timer0_carry_n_1,
      CO(1) => timer0_carry_n_2,
      CO(0) => timer0_carry_n_3,
      CYINIT => \timer_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(4 downto 1),
      S(3) => \timer_reg_n_0_[4]\,
      S(2) => \timer_reg_n_0_[3]\,
      S(1) => \timer_reg_n_0_[2]\,
      S(0) => \timer_reg_n_0_[1]\
    );
\timer0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => timer0_carry_n_0,
      CO(3) => \timer0_carry__0_n_0\,
      CO(2) => \timer0_carry__0_n_1\,
      CO(1) => \timer0_carry__0_n_2\,
      CO(0) => \timer0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(8 downto 5),
      S(3) => \timer_reg_n_0_[8]\,
      S(2) => \timer_reg_n_0_[7]\,
      S(1) => \timer_reg_n_0_[6]\,
      S(0) => \timer_reg_n_0_[5]\
    );
\timer0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer0_carry__0_n_0\,
      CO(3) => \NLW_timer0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \timer0_carry__1_n_1\,
      CO(1) => \timer0_carry__1_n_2\,
      CO(0) => \timer0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(12 downto 9),
      S(3) => \timer_reg_n_0_[12]\,
      S(2) => \timer_reg_n_0_[11]\,
      S(1) => \timer_reg_n_0_[10]\,
      S(0) => \timer_reg_n_0_[9]\
    );
\timer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timer_reg_n_0_[0]\,
      O => \timer[0]_i_1_n_0\
    );
\timer[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => reset_n,
      I3 => debounce_ps2_clk_n_5,
      O => \timer[12]_i_1_n_0\
    );
\timer[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBABABABAA"
    )
        port map (
      I0 => \timer_reg_n_0_[12]\,
      I1 => \timer[12]_i_5_n_0\,
      I2 => \ps2_code[7]_i_5_n_0\,
      I3 => \timer_reg_n_0_[0]\,
      I4 => \timer[12]_i_6_n_0\,
      I5 => \timer[12]_i_7_n_0\,
      O => \timer[12]_i_4_n_0\
    );
\timer[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => \timer_reg_n_0_[11]\,
      I1 => \timer_reg_n_0_[9]\,
      I2 => \timer_reg_n_0_[10]\,
      O => \timer[12]_i_5_n_0\
    );
\timer[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \timer_reg_n_0_[1]\,
      I1 => \timer_reg_n_0_[2]\,
      O => \timer[12]_i_6_n_0\
    );
\timer[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF80"
    )
        port map (
      I0 => \timer_reg_n_0_[7]\,
      I1 => \timer_reg_n_0_[6]\,
      I2 => \timer_reg_n_0_[5]\,
      I3 => \timer_reg_n_0_[10]\,
      I4 => \timer_reg_n_0_[8]\,
      O => \timer[12]_i_7_n_0\
    );
\timer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => timer0,
      D => \timer[0]_i_1_n_0\,
      Q => \timer_reg_n_0_[0]\,
      R => \timer[12]_i_1_n_0\
    );
\timer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => timer0,
      D => in22(10),
      Q => \timer_reg_n_0_[10]\,
      R => \timer[12]_i_1_n_0\
    );
\timer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => timer0,
      D => in22(11),
      Q => \timer_reg_n_0_[11]\,
      R => \timer[12]_i_1_n_0\
    );
\timer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => timer0,
      D => in22(12),
      Q => \timer_reg_n_0_[12]\,
      R => \timer[12]_i_1_n_0\
    );
\timer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => timer0,
      D => in22(1),
      Q => \timer_reg_n_0_[1]\,
      R => \timer[12]_i_1_n_0\
    );
\timer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => timer0,
      D => in22(2),
      Q => \timer_reg_n_0_[2]\,
      R => \timer[12]_i_1_n_0\
    );
\timer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => timer0,
      D => in22(3),
      Q => \timer_reg_n_0_[3]\,
      R => \timer[12]_i_1_n_0\
    );
\timer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => timer0,
      D => in22(4),
      Q => \timer_reg_n_0_[4]\,
      R => \timer[12]_i_1_n_0\
    );
\timer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => timer0,
      D => in22(5),
      Q => \timer_reg_n_0_[5]\,
      R => \timer[12]_i_1_n_0\
    );
\timer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => timer0,
      D => in22(6),
      Q => \timer_reg_n_0_[6]\,
      R => \timer[12]_i_1_n_0\
    );
\timer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => timer0,
      D => in22(7),
      Q => \timer_reg_n_0_[7]\,
      R => \timer[12]_i_1_n_0\
    );
\timer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => timer0,
      D => in22(8),
      Q => \timer_reg_n_0_[8]\,
      R => \timer[12]_i_1_n_0\
    );
\timer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => timer0,
      D => in22(9),
      Q => \timer_reg_n_0_[9]\,
      R => \timer[12]_i_1_n_0\
    );
tx_busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => tx_ena,
      I1 => state(0),
      I2 => state(1),
      I3 => tx_busy,
      O => tx_busy_i_1_n_0
    );
tx_busy_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => tx_busy_i_1_n_0,
      PRE => \^reset_n_0\,
      Q => tx_busy
    );
\tx_cmd[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reset_n,
      I1 => \tx_cmd[8]_i_3_n_0\,
      O => E(0)
    );
\tx_cmd[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF3F3FFFFFCCD0"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(1),
      I3 => Q(2),
      I4 => tx_busy,
      I5 => Q(0),
      O => \tx_cmd[8]_i_3_n_0\
    );
tx_ena_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => tx_busy,
      I1 => reset_n,
      I2 => tx_ena_reg,
      I3 => tx_ena,
      O => tx_busy_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ebaz4205_ps2_mouse_0_0_ps2_mouse_w is
  port (
    mouse_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ps2_clock_T : out STD_LOGIC;
    ps2_dat_T : out STD_LOGIC;
    ps2_dat_O : out STD_LOGIC;
    mouse_data_new : out STD_LOGIC;
    reset_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ebaz4205_ps2_mouse_0_0_ps2_mouse_w : entity is "ps2_mouse_w";
end ebaz4205_ps2_mouse_0_0_ps2_mouse_w;

architecture STRUCTURE of ebaz4205_ps2_mouse_0_0_ps2_mouse_w is
  signal g0_b0_n_0 : STD_LOGIC;
  signal \mouse_data[31]_i_3_n_0\ : STD_LOGIC;
  signal mouse_data_int : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^mouse_data_new\ : STD_LOGIC;
  signal packet_byte : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \packet_byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \packet_byte[1]_i_1_n_0\ : STD_LOGIC;
  signal ps2_code : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps2_code_new_prev : STD_LOGIC;
  signal ps2_transceiver_0_n_0 : STD_LOGIC;
  signal ps2_transceiver_0_n_19 : STD_LOGIC;
  signal ps2_transceiver_0_n_20 : STD_LOGIC;
  signal ps2_transceiver_0_n_21 : STD_LOGIC;
  signal ps2_transceiver_0_n_22 : STD_LOGIC;
  signal ps2_transceiver_0_n_24 : STD_LOGIC;
  signal ps2_transceiver_0_n_25 : STD_LOGIC;
  signal ps2_transceiver_0_n_26 : STD_LOGIC;
  signal ps2_transceiver_0_n_27 : STD_LOGIC;
  signal ps2_transceiver_0_n_4 : STD_LOGIC;
  signal ps2_transceiver_0_n_5 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \state[1]_i_8_n_0\ : STD_LOGIC;
  signal \state[2]_i_7_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_3_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal \state_reg_n_0_[4]\ : STD_LOGIC;
  signal tx_cmd : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal tx_cmd0 : STD_LOGIC;
  signal \tx_cmd[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_cmd_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_cmd_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_cmd_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_cmd_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_cmd_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_cmd_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_cmd_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_cmd_reg_n_0_[8]\ : STD_LOGIC;
  signal tx_ena : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of g0_b0 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \mouse_data[31]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \state[1]_i_8\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \state[2]_i_7\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \state[3]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \state[4]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \tx_cmd[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \tx_cmd[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \tx_cmd[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tx_cmd[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \tx_cmd[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \tx_cmd[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \tx_cmd[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \tx_cmd[8]_i_2\ : label is "soft_lutpair27";
begin
  mouse_data_new <= \^mouse_data_new\;
g0_b0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00095551"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[4]\,
      O => g0_b0_n_0
    );
\mouse_data[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[0]\,
      O => \mouse_data[31]_i_3_n_0\
    );
\mouse_data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_19,
      D => ps2_code(0),
      Q => mouse_data_int(0),
      R => '0'
    );
\mouse_data_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_20,
      D => ps2_code(2),
      Q => mouse_data_int(10),
      R => '0'
    );
\mouse_data_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_20,
      D => ps2_code(3),
      Q => mouse_data_int(11),
      R => '0'
    );
\mouse_data_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_20,
      D => ps2_code(4),
      Q => mouse_data_int(12),
      R => '0'
    );
\mouse_data_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_20,
      D => ps2_code(5),
      Q => mouse_data_int(13),
      R => '0'
    );
\mouse_data_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_20,
      D => ps2_code(6),
      Q => mouse_data_int(14),
      R => '0'
    );
\mouse_data_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_20,
      D => ps2_code(7),
      Q => mouse_data_int(15),
      R => '0'
    );
\mouse_data_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_21,
      D => ps2_code(0),
      Q => mouse_data_int(16),
      R => '0'
    );
\mouse_data_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_21,
      D => ps2_code(1),
      Q => mouse_data_int(17),
      R => '0'
    );
\mouse_data_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_21,
      D => ps2_code(2),
      Q => mouse_data_int(18),
      R => '0'
    );
\mouse_data_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_21,
      D => ps2_code(3),
      Q => mouse_data_int(19),
      R => '0'
    );
\mouse_data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_19,
      D => ps2_code(1),
      Q => mouse_data_int(1),
      R => '0'
    );
\mouse_data_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_21,
      D => ps2_code(4),
      Q => mouse_data_int(20),
      R => '0'
    );
\mouse_data_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_21,
      D => ps2_code(5),
      Q => mouse_data_int(21),
      R => '0'
    );
\mouse_data_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_21,
      D => ps2_code(6),
      Q => mouse_data_int(22),
      R => '0'
    );
\mouse_data_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_21,
      D => ps2_code(7),
      Q => mouse_data_int(23),
      R => '0'
    );
\mouse_data_int_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_22,
      D => ps2_code(0),
      Q => mouse_data_int(24),
      R => '0'
    );
\mouse_data_int_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_22,
      D => ps2_code(1),
      Q => mouse_data_int(25),
      R => '0'
    );
\mouse_data_int_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_22,
      D => ps2_code(2),
      Q => mouse_data_int(26),
      R => '0'
    );
\mouse_data_int_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_22,
      D => ps2_code(3),
      Q => mouse_data_int(27),
      R => '0'
    );
\mouse_data_int_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_22,
      D => ps2_code(4),
      Q => mouse_data_int(28),
      R => '0'
    );
\mouse_data_int_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_22,
      D => ps2_code(5),
      Q => mouse_data_int(29),
      R => '0'
    );
\mouse_data_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_19,
      D => ps2_code(2),
      Q => mouse_data_int(2),
      R => '0'
    );
\mouse_data_int_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_22,
      D => ps2_code(6),
      Q => mouse_data_int(30),
      R => '0'
    );
\mouse_data_int_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_22,
      D => ps2_code(7),
      Q => mouse_data_int(31),
      R => '0'
    );
\mouse_data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_19,
      D => ps2_code(3),
      Q => mouse_data_int(3),
      R => '0'
    );
\mouse_data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_19,
      D => ps2_code(4),
      Q => mouse_data_int(4),
      R => '0'
    );
\mouse_data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_19,
      D => ps2_code(5),
      Q => mouse_data_int(5),
      R => '0'
    );
\mouse_data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_19,
      D => ps2_code(6),
      Q => mouse_data_int(6),
      R => '0'
    );
\mouse_data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_19,
      D => ps2_code(7),
      Q => mouse_data_int(7),
      R => '0'
    );
\mouse_data_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_20,
      D => ps2_code(0),
      Q => mouse_data_int(8),
      R => '0'
    );
\mouse_data_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_20,
      D => ps2_code(1),
      Q => mouse_data_int(9),
      R => '0'
    );
mouse_data_new_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => ps2_transceiver_0_n_0,
      D => ps2_transceiver_0_n_26,
      Q => \^mouse_data_new\
    );
\mouse_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(0),
      Q => mouse_data(0)
    );
\mouse_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(10),
      Q => mouse_data(10)
    );
\mouse_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(11),
      Q => mouse_data(11)
    );
\mouse_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(12),
      Q => mouse_data(12)
    );
\mouse_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(13),
      Q => mouse_data(13)
    );
\mouse_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(14),
      Q => mouse_data(14)
    );
\mouse_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(15),
      Q => mouse_data(15)
    );
\mouse_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(16),
      Q => mouse_data(16)
    );
\mouse_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(17),
      Q => mouse_data(17)
    );
\mouse_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(18),
      Q => mouse_data(18)
    );
\mouse_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(19),
      Q => mouse_data(19)
    );
\mouse_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(1),
      Q => mouse_data(1)
    );
\mouse_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(20),
      Q => mouse_data(20)
    );
\mouse_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(21),
      Q => mouse_data(21)
    );
\mouse_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(22),
      Q => mouse_data(22)
    );
\mouse_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(23),
      Q => mouse_data(23)
    );
\mouse_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(24),
      Q => mouse_data(24)
    );
\mouse_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(25),
      Q => mouse_data(25)
    );
\mouse_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(26),
      Q => mouse_data(26)
    );
\mouse_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(27),
      Q => mouse_data(27)
    );
\mouse_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(28),
      Q => mouse_data(28)
    );
\mouse_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(29),
      Q => mouse_data(29)
    );
\mouse_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(2),
      Q => mouse_data(2)
    );
\mouse_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(30),
      Q => mouse_data(30)
    );
\mouse_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(31),
      Q => mouse_data(31)
    );
\mouse_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(3),
      Q => mouse_data(3)
    );
\mouse_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(4),
      Q => mouse_data(4)
    );
\mouse_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(5),
      Q => mouse_data(5)
    );
\mouse_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(6),
      Q => mouse_data(6)
    );
\mouse_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(7),
      Q => mouse_data(7)
    );
\mouse_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(8),
      Q => mouse_data(8)
    );
\mouse_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ps2_transceiver_0_n_24,
      CLR => ps2_transceiver_0_n_0,
      D => mouse_data_int(9),
      Q => mouse_data(9)
    );
\packet_byte[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => reset_n,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => ps2_transceiver_0_n_4,
      I5 => packet_byte(0),
      O => \packet_byte[0]_i_1_n_0\
    );
\packet_byte[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => packet_byte(0),
      I1 => ps2_transceiver_0_n_5,
      I2 => packet_byte(1),
      O => \packet_byte[1]_i_1_n_0\
    );
\packet_byte_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \packet_byte[0]_i_1_n_0\,
      Q => packet_byte(0),
      R => '0'
    );
\packet_byte_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \packet_byte[1]_i_1_n_0\,
      Q => packet_byte(1),
      R => '0'
    );
ps2_code_new_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ps2_transceiver_0_n_27,
      Q => ps2_code_new_prev,
      R => '0'
    );
ps2_transceiver_0: entity work.ebaz4205_ps2_mouse_0_0_ps2_transceiver
     port map (
      D(4 downto 0) => state(4 downto 0),
      E(0) => tx_cmd0,
      Q(4) => \state_reg_n_0_[4]\,
      Q(3) => \state_reg_n_0_[3]\,
      Q(2) => \state_reg_n_0_[2]\,
      Q(1) => \state_reg_n_0_[1]\,
      Q(0) => \state_reg_n_0_[0]\,
      clk => clk,
      mouse_data_new => \^mouse_data_new\,
      mouse_data_new_reg => \mouse_data[31]_i_3_n_0\,
      packet_byte(1 downto 0) => packet_byte(1 downto 0),
      \packet_byte_reg[0]\ => ps2_transceiver_0_n_19,
      \packet_byte_reg[0]_0\ => ps2_transceiver_0_n_20,
      \packet_byte_reg[0]_1\ => ps2_transceiver_0_n_22,
      \packet_byte_reg[0]_2\ => ps2_transceiver_0_n_26,
      \packet_byte_reg[1]\ => ps2_transceiver_0_n_21,
      ps2_clock_T => ps2_clock_T,
      ps2_code_new_prev => ps2_code_new_prev,
      ps2_code_new_reg_0 => ps2_transceiver_0_n_4,
      ps2_code_new_reg_1 => ps2_transceiver_0_n_5,
      ps2_code_new_reg_2(0) => ps2_transceiver_0_n_24,
      ps2_code_new_reg_3 => ps2_transceiver_0_n_27,
      \ps2_code_reg[7]_0\(7 downto 0) => ps2_code(7 downto 0),
      ps2_dat_O => ps2_dat_O,
      ps2_dat_T => ps2_dat_T,
      \ps2_word_reg[9]_0\(7) => \tx_cmd_reg_n_0_[8]\,
      \ps2_word_reg[9]_0\(6) => \tx_cmd_reg_n_0_[7]\,
      \ps2_word_reg[9]_0\(5) => \tx_cmd_reg_n_0_[5]\,
      \ps2_word_reg[9]_0\(4) => \tx_cmd_reg_n_0_[4]\,
      \ps2_word_reg[9]_0\(3) => \tx_cmd_reg_n_0_[3]\,
      \ps2_word_reg[9]_0\(2) => \tx_cmd_reg_n_0_[2]\,
      \ps2_word_reg[9]_0\(1) => \tx_cmd_reg_n_0_[1]\,
      \ps2_word_reg[9]_0\(0) => \tx_cmd_reg_n_0_[0]\,
      reset_n => reset_n,
      reset_n_0 => ps2_transceiver_0_n_0,
      \state_reg[1]\ => \state[1]_i_8_n_0\,
      \state_reg[2]\ => \state[2]_i_7_n_0\,
      \state_reg[3]\ => \state[3]_i_3_n_0\,
      \state_reg[4]\ => \state[4]_i_3_n_0\,
      \sync_ffs_reg[1]_0\(1 downto 0) => D(1 downto 0),
      tx_busy_reg_0 => ps2_transceiver_0_n_25,
      tx_ena => tx_ena,
      tx_ena_reg => g0_b0_n_0
    );
\state[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      O => \state[1]_i_8_n_0\
    );
\state[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      O => \state[2]_i_7_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      O => \state[3]_i_3_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[2]\,
      O => \state[4]_i_1_n_0\
    );
\state[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[2]\,
      O => \state[4]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[4]_i_1_n_0\,
      CLR => ps2_transceiver_0_n_0,
      D => state(0),
      Q => \state_reg_n_0_[0]\
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[4]_i_1_n_0\,
      CLR => ps2_transceiver_0_n_0,
      D => state(1),
      Q => \state_reg_n_0_[1]\
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[4]_i_1_n_0\,
      CLR => ps2_transceiver_0_n_0,
      D => state(2),
      Q => \state_reg_n_0_[2]\
    );
\state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[4]_i_1_n_0\,
      CLR => ps2_transceiver_0_n_0,
      D => state(3),
      Q => \state_reg_n_0_[3]\
    );
\state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[4]_i_1_n_0\,
      CLR => ps2_transceiver_0_n_0,
      D => state(4),
      Q => \state_reg_n_0_[4]\
    );
\tx_cmd[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[1]\,
      O => tx_cmd(0)
    );
\tx_cmd[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      O => tx_cmd(1)
    );
\tx_cmd[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5501"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[1]\,
      O => \tx_cmd[2]_i_1_n_0\
    );
\tx_cmd[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      O => tx_cmd(3)
    );
\tx_cmd[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      O => tx_cmd(4)
    );
\tx_cmd[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      O => tx_cmd(5)
    );
\tx_cmd[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[1]\,
      O => tx_cmd(7)
    );
\tx_cmd[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"888F"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[4]\,
      O => tx_cmd(8)
    );
\tx_cmd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_cmd0,
      D => tx_cmd(0),
      Q => \tx_cmd_reg_n_0_[0]\,
      R => '0'
    );
\tx_cmd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_cmd0,
      D => tx_cmd(1),
      Q => \tx_cmd_reg_n_0_[1]\,
      R => '0'
    );
\tx_cmd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_cmd0,
      D => \tx_cmd[2]_i_1_n_0\,
      Q => \tx_cmd_reg_n_0_[2]\,
      R => '0'
    );
\tx_cmd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_cmd0,
      D => tx_cmd(3),
      Q => \tx_cmd_reg_n_0_[3]\,
      R => '0'
    );
\tx_cmd_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_cmd0,
      D => tx_cmd(4),
      Q => \tx_cmd_reg_n_0_[4]\,
      R => '0'
    );
\tx_cmd_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_cmd0,
      D => tx_cmd(5),
      Q => \tx_cmd_reg_n_0_[5]\,
      R => '0'
    );
\tx_cmd_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_cmd0,
      D => tx_cmd(7),
      Q => \tx_cmd_reg_n_0_[7]\,
      R => '0'
    );
\tx_cmd_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_cmd0,
      D => tx_cmd(8),
      Q => \tx_cmd_reg_n_0_[8]\,
      R => '0'
    );
tx_ena_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_transceiver_0_n_25,
      Q => tx_ena,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ebaz4205_ps2_mouse_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    ps2_clk : inout STD_LOGIC;
    ps2_data : inout STD_LOGIC;
    mouse_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mouse_data_new : out STD_LOGIC;
    ps2_clock_T : out STD_LOGIC;
    ps2_clock_O : out STD_LOGIC;
    ps2_clock_I : in STD_LOGIC;
    ps2_dat_T : out STD_LOGIC;
    ps2_dat_O : out STD_LOGIC;
    ps2_dat_I : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ebaz4205_ps2_mouse_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ebaz4205_ps2_mouse_0_0 : entity is "ebaz4205_ps2_mouse_0_0,ps2_mouse_w,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ebaz4205_ps2_mouse_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ebaz4205_ps2_mouse_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of ebaz4205_ps2_mouse_0_0 : entity is "ps2_mouse_w,Vivado 2022.2";
end ebaz4205_ps2_mouse_0_0;

architecture STRUCTURE of ebaz4205_ps2_mouse_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset_n, ASSOCIATED_BUSIF ps2_dat, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ebaz4205_util_ds_buf_0_0_BUFG_O, INSERT_VIP 0";
  attribute x_interface_info of ps2_clk : signal is "xilinx.com:signal:clock:1.0 ps2_clk CLK";
  attribute x_interface_parameter of ps2_clk : signal is "XIL_INTERFACENAME ps2_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of ps2_clock_I : signal is "xilinx.com:interface:gpio:1.0 ps2_clock TRI_I";
  attribute x_interface_info of ps2_clock_O : signal is "xilinx.com:interface:gpio:1.0 ps2_clock TRI_O";
  attribute x_interface_info of ps2_clock_T : signal is "xilinx.com:interface:gpio:1.0 ps2_clock TRI_T";
  attribute x_interface_info of ps2_dat_I : signal is "xilinx.com:interface:gpio:1.0 ps2_dat TRI_I";
  attribute x_interface_info of ps2_dat_O : signal is "xilinx.com:interface:gpio:1.0 ps2_dat TRI_O";
  attribute x_interface_info of ps2_dat_T : signal is "xilinx.com:interface:gpio:1.0 ps2_dat TRI_T";
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  ps2_clock_O <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.ebaz4205_ps2_mouse_0_0_ps2_mouse_w
     port map (
      D(1) => ps2_dat_I,
      D(0) => ps2_clock_I,
      clk => clk,
      mouse_data(31 downto 0) => mouse_data(31 downto 0),
      mouse_data_new => mouse_data_new,
      ps2_clock_T => ps2_clock_T,
      ps2_dat_O => ps2_dat_O,
      ps2_dat_T => ps2_dat_T,
      reset_n => reset_n
    );
end STRUCTURE;
