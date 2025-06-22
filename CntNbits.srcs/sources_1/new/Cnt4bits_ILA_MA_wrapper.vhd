--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Wed Feb 19 08:36:27 2025
--Host        : NTTD-GZ9VL13 running 64-bit major release  (build 9200)
--Command     : generate_target Cnt4bits_ILA_MA_wrapper.bd
--Design      : Cnt4bits_ILA_MA_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cnt4bits_ILA_MA_wrapper is
  port (
    CE_MA : in STD_LOGIC;
    Din_MA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Load_MA : in STD_LOGIC;
    Q_MA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SEL_MA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TC_MA : out STD_LOGIC;
    UnD_MA : in STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end Cnt4bits_ILA_MA_wrapper;

architecture STRUCTURE of Cnt4bits_ILA_MA_wrapper is
  component Cnt4bits_ILA_MA is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    Load_MA : in STD_LOGIC;
    UnD_MA : in STD_LOGIC;
    CE_MA : in STD_LOGIC;
    Din_MA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_MA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TC_MA : out STD_LOGIC;
    SEL_MA : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component Cnt4bits_ILA_MA;
begin
Cnt4bits_ILA_MA_i: component Cnt4bits_ILA_MA
     port map (
      CE_MA => CE_MA,
      Din_MA(3 downto 0) => Din_MA(3 downto 0),
      Load_MA => Load_MA,
      Q_MA(3 downto 0) => Q_MA(3 downto 0),
      SEL_MA(1 downto 0) => SEL_MA(1 downto 0),
      TC_MA => TC_MA,
      UnD_MA => UnD_MA,
      reset => reset,
      sys_clock => sys_clock
    );
end STRUCTURE;
