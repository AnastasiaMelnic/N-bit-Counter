-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Feb 19 08:38:58 2025
-- Host        : NTTD-GZ9VL13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/EMELNIAP8/Downloads/CntNbits_L_Sim_ILA_MA/CntNbits_L_Sim_ILA_MA/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_Divblock_0_0/Cnt4bits_ILA_MA_Divblock_0_0_sim_netlist.vhdl
-- Design      : Cnt4bits_ILA_MA_Divblock_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cnt4bits_ILA_MA_Divblock_0_0_Divider is
  port (
    \SEL[1]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RESETn : in STD_LOGIC;
    SEL : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cnt4bits_ILA_MA_Divblock_0_0_Divider : entity is "Divider";
end Cnt4bits_ILA_MA_Divblock_0_0_Divider;

architecture STRUCTURE of Cnt4bits_ILA_MA_Divblock_0_0_Divider is
  signal clear : STD_LOGIC;
  signal \i[0]_i_3_n_0\ : STD_LOGIC;
  signal i_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \i_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \i_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \i_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \NLW_i_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
CE_OUT_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => SEL(0),
      I1 => i_reg(0),
      I2 => i_reg(2),
      I3 => i_reg(1),
      O => \SEL[1]\
    );
\i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => RESETn,
      O => clear
    );
\i[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(0),
      O => \i[0]_i_3_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[0]_i_2_n_7\,
      Q => i_reg(0),
      R => clear
    );
\i_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_i_reg[0]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i_reg[0]_i_2_n_2\,
      CO(0) => \i_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \NLW_i_reg[0]_i_2_O_UNCONNECTED\(3),
      O(2) => \i_reg[0]_i_2_n_5\,
      O(1) => \i_reg[0]_i_2_n_6\,
      O(0) => \i_reg[0]_i_2_n_7\,
      S(3) => '0',
      S(2 downto 1) => i_reg(2 downto 1),
      S(0) => \i[0]_i_3_n_0\
    );
\i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[0]_i_2_n_6\,
      Q => i_reg(1),
      R => clear
    );
\i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[0]_i_2_n_5\,
      Q => i_reg(2),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Cnt4bits_ILA_MA_Divblock_0_0_Divider__parameterized1\ is
  port (
    CE_OUT : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RESETn : in STD_LOGIC;
    CE_OUT_0 : in STD_LOGIC;
    SEL : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CE_OUT_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Cnt4bits_ILA_MA_Divblock_0_0_Divider__parameterized1\ : entity is "Divider";
end \Cnt4bits_ILA_MA_Divblock_0_0_Divider__parameterized1\;

architecture STRUCTURE of \Cnt4bits_ILA_MA_Divblock_0_0_Divider__parameterized1\ is
  signal CE_OUT_INST_0_i_10_n_0 : STD_LOGIC;
  signal CE_OUT_INST_0_i_11_n_0 : STD_LOGIC;
  signal CE_OUT_INST_0_i_12_n_0 : STD_LOGIC;
  signal CE_OUT_INST_0_i_13_n_0 : STD_LOGIC;
  signal CE_OUT_INST_0_i_3_n_0 : STD_LOGIC;
  signal CE_OUT_INST_0_i_4_n_0 : STD_LOGIC;
  signal \i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \i[0]_i_3__0_n_0\ : STD_LOGIC;
  signal i_reg : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \i_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \i_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \i_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \i_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \i_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \i_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \i_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \i_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_i_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
CE_OUT_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFABFFABFFAB"
    )
        port map (
      I0 => CE_OUT_0,
      I1 => SEL(0),
      I2 => SEL(1),
      I3 => CE_OUT_1,
      I4 => CE_OUT_INST_0_i_3_n_0,
      I5 => CE_OUT_INST_0_i_4_n_0,
      O => CE_OUT
    );
CE_OUT_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => i_reg(10),
      I1 => i_reg(9),
      I2 => i_reg(7),
      I3 => i_reg(8),
      I4 => i_reg(12),
      I5 => i_reg(11),
      O => CE_OUT_INST_0_i_10_n_0
    );
CE_OUT_INST_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => i_reg(16),
      I1 => i_reg(15),
      I2 => i_reg(13),
      I3 => i_reg(14),
      I4 => i_reg(18),
      I5 => i_reg(17),
      O => CE_OUT_INST_0_i_11_n_0
    );
CE_OUT_INST_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => i_reg(21),
      I1 => i_reg(22),
      I2 => i_reg(20),
      I3 => i_reg(19),
      I4 => i_reg(23),
      I5 => i_reg(24),
      O => CE_OUT_INST_0_i_12_n_0
    );
CE_OUT_INST_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i_reg(3),
      I1 => i_reg(4),
      I2 => i_reg(1),
      I3 => i_reg(2),
      I4 => i_reg(6),
      I5 => i_reg(5),
      O => CE_OUT_INST_0_i_13_n_0
    );
CE_OUT_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => SEL(0),
      I1 => i_reg(0),
      I2 => CE_OUT_INST_0_i_10_n_0,
      O => CE_OUT_INST_0_i_3_n_0
    );
CE_OUT_INST_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => CE_OUT_INST_0_i_11_n_0,
      I1 => CE_OUT_INST_0_i_12_n_0,
      I2 => CE_OUT_INST_0_i_13_n_0,
      O => CE_OUT_INST_0_i_4_n_0
    );
\i[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => CE_OUT_INST_0_i_10_n_0,
      I1 => i_reg(0),
      I2 => CE_OUT_INST_0_i_4_n_0,
      I3 => RESETn,
      O => \i[0]_i_1__0_n_0\
    );
\i[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(0),
      O => \i[0]_i_3__0_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[0]_i_2__0_n_7\,
      Q => i_reg(0),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_reg[0]_i_2__0_n_0\,
      CO(2) => \i_reg[0]_i_2__0_n_1\,
      CO(1) => \i_reg[0]_i_2__0_n_2\,
      CO(0) => \i_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \i_reg[0]_i_2__0_n_4\,
      O(2) => \i_reg[0]_i_2__0_n_5\,
      O(1) => \i_reg[0]_i_2__0_n_6\,
      O(0) => \i_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => i_reg(3 downto 1),
      S(0) => \i[0]_i_3__0_n_0\
    );
\i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[8]_i_1_n_5\,
      Q => i_reg(10),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[8]_i_1_n_4\,
      Q => i_reg(11),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[12]_i_1_n_7\,
      Q => i_reg(12),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[8]_i_1_n_0\,
      CO(3) => \i_reg[12]_i_1_n_0\,
      CO(2) => \i_reg[12]_i_1_n_1\,
      CO(1) => \i_reg[12]_i_1_n_2\,
      CO(0) => \i_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[12]_i_1_n_4\,
      O(2) => \i_reg[12]_i_1_n_5\,
      O(1) => \i_reg[12]_i_1_n_6\,
      O(0) => \i_reg[12]_i_1_n_7\,
      S(3 downto 0) => i_reg(15 downto 12)
    );
\i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[12]_i_1_n_6\,
      Q => i_reg(13),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[12]_i_1_n_5\,
      Q => i_reg(14),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[12]_i_1_n_4\,
      Q => i_reg(15),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[16]_i_1_n_7\,
      Q => i_reg(16),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[12]_i_1_n_0\,
      CO(3) => \i_reg[16]_i_1_n_0\,
      CO(2) => \i_reg[16]_i_1_n_1\,
      CO(1) => \i_reg[16]_i_1_n_2\,
      CO(0) => \i_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[16]_i_1_n_4\,
      O(2) => \i_reg[16]_i_1_n_5\,
      O(1) => \i_reg[16]_i_1_n_6\,
      O(0) => \i_reg[16]_i_1_n_7\,
      S(3 downto 0) => i_reg(19 downto 16)
    );
\i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[16]_i_1_n_6\,
      Q => i_reg(17),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[16]_i_1_n_5\,
      Q => i_reg(18),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[16]_i_1_n_4\,
      Q => i_reg(19),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[0]_i_2__0_n_6\,
      Q => i_reg(1),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[20]_i_1_n_7\,
      Q => i_reg(20),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[16]_i_1_n_0\,
      CO(3) => \i_reg[20]_i_1_n_0\,
      CO(2) => \i_reg[20]_i_1_n_1\,
      CO(1) => \i_reg[20]_i_1_n_2\,
      CO(0) => \i_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[20]_i_1_n_4\,
      O(2) => \i_reg[20]_i_1_n_5\,
      O(1) => \i_reg[20]_i_1_n_6\,
      O(0) => \i_reg[20]_i_1_n_7\,
      S(3 downto 0) => i_reg(23 downto 20)
    );
\i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[20]_i_1_n_6\,
      Q => i_reg(21),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[20]_i_1_n_5\,
      Q => i_reg(22),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[20]_i_1_n_4\,
      Q => i_reg(23),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[24]_i_1_n_7\,
      Q => i_reg(24),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[20]_i_1_n_0\,
      CO(3 downto 0) => \NLW_i_reg[24]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_i_reg[24]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \i_reg[24]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => i_reg(24)
    );
\i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[0]_i_2__0_n_5\,
      Q => i_reg(2),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[0]_i_2__0_n_4\,
      Q => i_reg(3),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[4]_i_1_n_7\,
      Q => i_reg(4),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[0]_i_2__0_n_0\,
      CO(3) => \i_reg[4]_i_1_n_0\,
      CO(2) => \i_reg[4]_i_1_n_1\,
      CO(1) => \i_reg[4]_i_1_n_2\,
      CO(0) => \i_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[4]_i_1_n_4\,
      O(2) => \i_reg[4]_i_1_n_5\,
      O(1) => \i_reg[4]_i_1_n_6\,
      O(0) => \i_reg[4]_i_1_n_7\,
      S(3 downto 0) => i_reg(7 downto 4)
    );
\i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[4]_i_1_n_6\,
      Q => i_reg(5),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[4]_i_1_n_5\,
      Q => i_reg(6),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[4]_i_1_n_4\,
      Q => i_reg(7),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[8]_i_1_n_7\,
      Q => i_reg(8),
      R => \i[0]_i_1__0_n_0\
    );
\i_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[4]_i_1_n_0\,
      CO(3) => \i_reg[8]_i_1_n_0\,
      CO(2) => \i_reg[8]_i_1_n_1\,
      CO(1) => \i_reg[8]_i_1_n_2\,
      CO(0) => \i_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[8]_i_1_n_4\,
      O(2) => \i_reg[8]_i_1_n_5\,
      O(1) => \i_reg[8]_i_1_n_6\,
      O(0) => \i_reg[8]_i_1_n_7\,
      S(3 downto 0) => i_reg(11 downto 8)
    );
\i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[8]_i_1_n_6\,
      Q => i_reg(9),
      R => \i[0]_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Cnt4bits_ILA_MA_Divblock_0_0_Divider__parameterized3\ is
  port (
    \i_reg[23]_0\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RESETn : in STD_LOGIC;
    SEL : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Cnt4bits_ILA_MA_Divblock_0_0_Divider__parameterized3\ : entity is "Divider";
end \Cnt4bits_ILA_MA_Divblock_0_0_Divider__parameterized3\;

architecture STRUCTURE of \Cnt4bits_ILA_MA_Divblock_0_0_Divider__parameterized3\ is
  signal CE_OUT_INST_0_i_5_n_0 : STD_LOGIC;
  signal CE_OUT_INST_0_i_6_n_0 : STD_LOGIC;
  signal CE_OUT_INST_0_i_7_n_0 : STD_LOGIC;
  signal CE_OUT_INST_0_i_8_n_0 : STD_LOGIC;
  signal CE_OUT_INST_0_i_9_n_0 : STD_LOGIC;
  signal \i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \i[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \i[0]_i_4_n_0\ : STD_LOGIC;
  signal \i[0]_i_5_n_0\ : STD_LOGIC;
  signal i_reg : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \i_reg[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \i_reg[0]_i_2__1_n_1\ : STD_LOGIC;
  signal \i_reg[0]_i_2__1_n_2\ : STD_LOGIC;
  signal \i_reg[0]_i_2__1_n_3\ : STD_LOGIC;
  signal \i_reg[0]_i_2__1_n_4\ : STD_LOGIC;
  signal \i_reg[0]_i_2__1_n_5\ : STD_LOGIC;
  signal \i_reg[0]_i_2__1_n_6\ : STD_LOGIC;
  signal \i_reg[0]_i_2__1_n_7\ : STD_LOGIC;
  signal \i_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \i_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \i_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \i_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \i_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \i_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \i_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \i_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \i_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \i_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \i_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \i_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \i_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \i_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \i_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \i_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \i_reg[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \i_reg[20]_i_1__0_n_1\ : STD_LOGIC;
  signal \i_reg[20]_i_1__0_n_2\ : STD_LOGIC;
  signal \i_reg[20]_i_1__0_n_3\ : STD_LOGIC;
  signal \i_reg[20]_i_1__0_n_4\ : STD_LOGIC;
  signal \i_reg[20]_i_1__0_n_5\ : STD_LOGIC;
  signal \i_reg[20]_i_1__0_n_6\ : STD_LOGIC;
  signal \i_reg[20]_i_1__0_n_7\ : STD_LOGIC;
  signal \i_reg[24]_i_1__0_n_2\ : STD_LOGIC;
  signal \i_reg[24]_i_1__0_n_3\ : STD_LOGIC;
  signal \i_reg[24]_i_1__0_n_5\ : STD_LOGIC;
  signal \i_reg[24]_i_1__0_n_6\ : STD_LOGIC;
  signal \i_reg[24]_i_1__0_n_7\ : STD_LOGIC;
  signal \i_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \i_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \i_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \i_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \i_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \i_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \i_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \i_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \i_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \i_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \i_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \i_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \i_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \i_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \i_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \i_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \NLW_i_reg[24]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_reg[24]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CE_OUT_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of CE_OUT_INST_0_i_9 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i[0]_i_3__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i[0]_i_4\ : label is "soft_lutpair1";
begin
CE_OUT_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => CE_OUT_INST_0_i_5_n_0,
      I1 => CE_OUT_INST_0_i_6_n_0,
      I2 => CE_OUT_INST_0_i_7_n_0,
      I3 => CE_OUT_INST_0_i_8_n_0,
      I4 => CE_OUT_INST_0_i_9_n_0,
      O => \i_reg[23]_0\
    );
CE_OUT_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => i_reg(23),
      I1 => i_reg(24),
      I2 => i_reg(21),
      I3 => i_reg(22),
      I4 => i_reg(25),
      I5 => i_reg(26),
      O => CE_OUT_INST_0_i_5_n_0
    );
CE_OUT_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => i_reg(18),
      I1 => i_reg(17),
      I2 => i_reg(15),
      I3 => i_reg(16),
      I4 => i_reg(19),
      I5 => i_reg(20),
      O => CE_OUT_INST_0_i_6_n_0
    );
CE_OUT_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => i_reg(11),
      I1 => i_reg(12),
      I2 => i_reg(9),
      I3 => i_reg(10),
      I4 => i_reg(14),
      I5 => i_reg(13),
      O => CE_OUT_INST_0_i_7_n_0
    );
CE_OUT_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => i_reg(5),
      I1 => i_reg(6),
      I2 => i_reg(3),
      I3 => i_reg(4),
      I4 => i_reg(8),
      I5 => i_reg(7),
      O => CE_OUT_INST_0_i_8_n_0
    );
CE_OUT_INST_0_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => SEL(0),
      I1 => SEL(1),
      I2 => i_reg(0),
      I3 => i_reg(2),
      I4 => i_reg(1),
      O => CE_OUT_INST_0_i_9_n_0
    );
\i[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFFFFFF"
    )
        port map (
      I0 => CE_OUT_INST_0_i_5_n_0,
      I1 => \i[0]_i_3__1_n_0\,
      I2 => CE_OUT_INST_0_i_8_n_0,
      I3 => \i[0]_i_4_n_0\,
      I4 => i_reg(0),
      I5 => RESETn,
      O => \i[0]_i_1__1_n_0\
    );
\i[0]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CE_OUT_INST_0_i_6_n_0,
      I1 => CE_OUT_INST_0_i_7_n_0,
      O => \i[0]_i_3__1_n_0\
    );
\i[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_reg(1),
      I1 => i_reg(2),
      O => \i[0]_i_4_n_0\
    );
\i[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(0),
      O => \i[0]_i_5_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[0]_i_2__1_n_7\,
      Q => i_reg(0),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[0]_i_2__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_reg[0]_i_2__1_n_0\,
      CO(2) => \i_reg[0]_i_2__1_n_1\,
      CO(1) => \i_reg[0]_i_2__1_n_2\,
      CO(0) => \i_reg[0]_i_2__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \i_reg[0]_i_2__1_n_4\,
      O(2) => \i_reg[0]_i_2__1_n_5\,
      O(1) => \i_reg[0]_i_2__1_n_6\,
      O(0) => \i_reg[0]_i_2__1_n_7\,
      S(3 downto 1) => i_reg(3 downto 1),
      S(0) => \i[0]_i_5_n_0\
    );
\i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[8]_i_1__0_n_5\,
      Q => i_reg(10),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[8]_i_1__0_n_4\,
      Q => i_reg(11),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[12]_i_1__0_n_7\,
      Q => i_reg(12),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[8]_i_1__0_n_0\,
      CO(3) => \i_reg[12]_i_1__0_n_0\,
      CO(2) => \i_reg[12]_i_1__0_n_1\,
      CO(1) => \i_reg[12]_i_1__0_n_2\,
      CO(0) => \i_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[12]_i_1__0_n_4\,
      O(2) => \i_reg[12]_i_1__0_n_5\,
      O(1) => \i_reg[12]_i_1__0_n_6\,
      O(0) => \i_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => i_reg(15 downto 12)
    );
\i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[12]_i_1__0_n_6\,
      Q => i_reg(13),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[12]_i_1__0_n_5\,
      Q => i_reg(14),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[12]_i_1__0_n_4\,
      Q => i_reg(15),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[16]_i_1__0_n_7\,
      Q => i_reg(16),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[12]_i_1__0_n_0\,
      CO(3) => \i_reg[16]_i_1__0_n_0\,
      CO(2) => \i_reg[16]_i_1__0_n_1\,
      CO(1) => \i_reg[16]_i_1__0_n_2\,
      CO(0) => \i_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[16]_i_1__0_n_4\,
      O(2) => \i_reg[16]_i_1__0_n_5\,
      O(1) => \i_reg[16]_i_1__0_n_6\,
      O(0) => \i_reg[16]_i_1__0_n_7\,
      S(3 downto 0) => i_reg(19 downto 16)
    );
\i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[16]_i_1__0_n_6\,
      Q => i_reg(17),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[16]_i_1__0_n_5\,
      Q => i_reg(18),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[16]_i_1__0_n_4\,
      Q => i_reg(19),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[0]_i_2__1_n_6\,
      Q => i_reg(1),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[20]_i_1__0_n_7\,
      Q => i_reg(20),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[20]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[16]_i_1__0_n_0\,
      CO(3) => \i_reg[20]_i_1__0_n_0\,
      CO(2) => \i_reg[20]_i_1__0_n_1\,
      CO(1) => \i_reg[20]_i_1__0_n_2\,
      CO(0) => \i_reg[20]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[20]_i_1__0_n_4\,
      O(2) => \i_reg[20]_i_1__0_n_5\,
      O(1) => \i_reg[20]_i_1__0_n_6\,
      O(0) => \i_reg[20]_i_1__0_n_7\,
      S(3 downto 0) => i_reg(23 downto 20)
    );
\i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[20]_i_1__0_n_6\,
      Q => i_reg(21),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[20]_i_1__0_n_5\,
      Q => i_reg(22),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[20]_i_1__0_n_4\,
      Q => i_reg(23),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[24]_i_1__0_n_7\,
      Q => i_reg(24),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[24]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[20]_i_1__0_n_0\,
      CO(3 downto 2) => \NLW_i_reg[24]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i_reg[24]_i_1__0_n_2\,
      CO(0) => \i_reg[24]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i_reg[24]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \i_reg[24]_i_1__0_n_5\,
      O(1) => \i_reg[24]_i_1__0_n_6\,
      O(0) => \i_reg[24]_i_1__0_n_7\,
      S(3) => '0',
      S(2 downto 0) => i_reg(26 downto 24)
    );
\i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[24]_i_1__0_n_6\,
      Q => i_reg(25),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[24]_i_1__0_n_5\,
      Q => i_reg(26),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[0]_i_2__1_n_5\,
      Q => i_reg(2),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[0]_i_2__1_n_4\,
      Q => i_reg(3),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[4]_i_1__0_n_7\,
      Q => i_reg(4),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[0]_i_2__1_n_0\,
      CO(3) => \i_reg[4]_i_1__0_n_0\,
      CO(2) => \i_reg[4]_i_1__0_n_1\,
      CO(1) => \i_reg[4]_i_1__0_n_2\,
      CO(0) => \i_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[4]_i_1__0_n_4\,
      O(2) => \i_reg[4]_i_1__0_n_5\,
      O(1) => \i_reg[4]_i_1__0_n_6\,
      O(0) => \i_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => i_reg(7 downto 4)
    );
\i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[4]_i_1__0_n_6\,
      Q => i_reg(5),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[4]_i_1__0_n_5\,
      Q => i_reg(6),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[4]_i_1__0_n_4\,
      Q => i_reg(7),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[8]_i_1__0_n_7\,
      Q => i_reg(8),
      R => \i[0]_i_1__1_n_0\
    );
\i_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[4]_i_1__0_n_0\,
      CO(3) => \i_reg[8]_i_1__0_n_0\,
      CO(2) => \i_reg[8]_i_1__0_n_1\,
      CO(1) => \i_reg[8]_i_1__0_n_2\,
      CO(0) => \i_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[8]_i_1__0_n_4\,
      O(2) => \i_reg[8]_i_1__0_n_5\,
      O(1) => \i_reg[8]_i_1__0_n_6\,
      O(0) => \i_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => i_reg(11 downto 8)
    );
\i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_reg[8]_i_1__0_n_6\,
      Q => i_reg(9),
      R => \i[0]_i_1__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cnt4bits_ILA_MA_Divblock_0_0_Divblock is
  port (
    CE_OUT : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RESETn : in STD_LOGIC;
    SEL : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cnt4bits_ILA_MA_Divblock_0_0_Divblock : entity is "Divblock";
end Cnt4bits_ILA_MA_Divblock_0_0_Divblock;

architecture STRUCTURE of Cnt4bits_ILA_MA_Divblock_0_0_Divblock is
  signal \Dividers[1].Div_n_0\ : STD_LOGIC;
  signal \Dividers[3].Div_n_0\ : STD_LOGIC;
begin
\Dividers[1].Div\: entity work.Cnt4bits_ILA_MA_Divblock_0_0_Divider
     port map (
      CLK => CLK,
      RESETn => RESETn,
      SEL(0) => SEL(1),
      \SEL[1]\ => \Dividers[1].Div_n_0\
    );
\Dividers[2].Div\: entity work.\Cnt4bits_ILA_MA_Divblock_0_0_Divider__parameterized1\
     port map (
      CE_OUT => CE_OUT,
      CE_OUT_0 => \Dividers[3].Div_n_0\,
      CE_OUT_1 => \Dividers[1].Div_n_0\,
      CLK => CLK,
      RESETn => RESETn,
      SEL(1 downto 0) => SEL(1 downto 0)
    );
\Dividers[3].Div\: entity work.\Cnt4bits_ILA_MA_Divblock_0_0_Divider__parameterized3\
     port map (
      CLK => CLK,
      RESETn => RESETn,
      SEL(1 downto 0) => SEL(1 downto 0),
      \i_reg[23]_0\ => \Dividers[3].Div_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cnt4bits_ILA_MA_Divblock_0_0 is
  port (
    CLK : in STD_LOGIC;
    SEL : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RESETn : in STD_LOGIC;
    CE_OUT : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Cnt4bits_ILA_MA_Divblock_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Cnt4bits_ILA_MA_Divblock_0_0 : entity is "Cnt4bits_ILA_MA_Divblock_0_0,Divblock,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Cnt4bits_ILA_MA_Divblock_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Cnt4bits_ILA_MA_Divblock_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Cnt4bits_ILA_MA_Divblock_0_0 : entity is "Divblock,Vivado 2024.1";
end Cnt4bits_ILA_MA_Divblock_0_0;

architecture STRUCTURE of Cnt4bits_ILA_MA_Divblock_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESETn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of RESETn : signal is "xilinx.com:signal:reset:1.0 RESETn RST";
  attribute x_interface_parameter of RESETn : signal is "XIL_INTERFACENAME RESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Cnt4bits_ILA_MA_Divblock_0_0_Divblock
     port map (
      CE_OUT => CE_OUT,
      CLK => CLK,
      RESETn => RESETn,
      SEL(1 downto 0) => SEL(1 downto 0)
    );
end STRUCTURE;
