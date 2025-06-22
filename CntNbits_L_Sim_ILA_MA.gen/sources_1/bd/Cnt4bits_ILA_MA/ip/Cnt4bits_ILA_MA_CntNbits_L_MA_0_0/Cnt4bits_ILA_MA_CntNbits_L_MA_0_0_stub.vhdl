-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Feb 19 08:39:19 2025
-- Host        : NTTD-GZ9VL13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/EMELNIAP8/Downloads/CntNbits_L_Sim_ILA_MA/CntNbits_L_Sim_ILA_MA/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_CntNbits_L_MA_0_0/Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_stub.vhdl
-- Design      : Cnt4bits_ILA_MA_CntNbits_L_MA_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Cnt4bits_ILA_MA_CntNbits_L_MA_0_0 is
  Port ( 
    RESETn : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Load_MA : in STD_LOGIC;
    UnD_MA : in STD_LOGIC;
    CE_MA : in STD_LOGIC;
    Din_MA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_MA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TC_MA : out STD_LOGIC
  );

end Cnt4bits_ILA_MA_CntNbits_L_MA_0_0;

architecture stub of Cnt4bits_ILA_MA_CntNbits_L_MA_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "RESETn,CLK,Load_MA,UnD_MA,CE_MA,Din_MA[3:0],Q_MA[3:0],TC_MA";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "CntNbits_L_MA,Vivado 2024.1";
begin
end;
