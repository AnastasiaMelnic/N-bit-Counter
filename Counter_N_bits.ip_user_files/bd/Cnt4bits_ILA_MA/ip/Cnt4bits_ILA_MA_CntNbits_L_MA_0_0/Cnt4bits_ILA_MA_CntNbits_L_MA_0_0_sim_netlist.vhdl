-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Feb 19 08:39:19 2025
-- Host        : NTTD-GZ9VL13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/EMELNIAP8/Downloads/CntNbits_L_Sim_ILA_MA/CntNbits_L_Sim_ILA_MA/CntNbits_L_Sim_ILA_MA.gen/sources_1/bd/Cnt4bits_ILA_MA/ip/Cnt4bits_ILA_MA_CntNbits_L_MA_0_0/Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_sim_netlist.vhdl
-- Design      : Cnt4bits_ILA_MA_CntNbits_L_MA_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_CntNbits_L_MA is
  port (
    \Q_intern_MA_reg[3]_0\ : out STD_LOGIC;
    \Q_intern_MA_reg[2]_0\ : out STD_LOGIC;
    \Q_intern_MA_reg[1]_0\ : out STD_LOGIC;
    \Q_intern_MA_reg[0]_0\ : out STD_LOGIC;
    TC_MA : out STD_LOGIC;
    RESETn : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Din_MA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Load_MA : in STD_LOGIC;
    UnD_MA : in STD_LOGIC;
    CE_MA : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_CntNbits_L_MA : entity is "CntNbits_L_MA";
end Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_CntNbits_L_MA;

architecture STRUCTURE of Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_CntNbits_L_MA is
  signal \Q_intern_MA[0]_i_1_n_0\ : STD_LOGIC;
  signal \Q_intern_MA[1]_i_1_n_0\ : STD_LOGIC;
  signal \Q_intern_MA[1]_i_2_n_0\ : STD_LOGIC;
  signal \Q_intern_MA[2]_i_1_n_0\ : STD_LOGIC;
  signal \Q_intern_MA[2]_i_2_n_0\ : STD_LOGIC;
  signal \Q_intern_MA[3]_i_1_n_0\ : STD_LOGIC;
  signal \Q_intern_MA[3]_i_2_n_0\ : STD_LOGIC;
  signal \Q_intern_MA[3]_i_3_n_0\ : STD_LOGIC;
  signal \Q_intern_MA[3]_i_4_n_0\ : STD_LOGIC;
  signal \^q_intern_ma_reg[0]_0\ : STD_LOGIC;
  signal \^q_intern_ma_reg[1]_0\ : STD_LOGIC;
  signal \^q_intern_ma_reg[2]_0\ : STD_LOGIC;
  signal \^q_intern_ma_reg[3]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_intern_MA[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q_intern_MA[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Q_intern_MA[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q_intern_MA[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Q_intern_MA[3]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of TC_MA_INST_0 : label is "soft_lutpair1";
begin
  \Q_intern_MA_reg[0]_0\ <= \^q_intern_ma_reg[0]_0\;
  \Q_intern_MA_reg[1]_0\ <= \^q_intern_ma_reg[1]_0\;
  \Q_intern_MA_reg[2]_0\ <= \^q_intern_ma_reg[2]_0\;
  \Q_intern_MA_reg[3]_0\ <= \^q_intern_ma_reg[3]_0\;
\Q_intern_MA[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA80000FFA8FFFF"
    )
        port map (
      I0 => Din_MA(3),
      I1 => Din_MA(1),
      I2 => Din_MA(2),
      I3 => Din_MA(0),
      I4 => Load_MA,
      I5 => \^q_intern_ma_reg[0]_0\,
      O => \Q_intern_MA[0]_i_1_n_0\
    );
\Q_intern_MA[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => Din_MA(1),
      I1 => Din_MA(3),
      I2 => Load_MA,
      I3 => \Q_intern_MA[1]_i_2_n_0\,
      O => \Q_intern_MA[1]_i_1_n_0\
    );
\Q_intern_MA[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A5AA524"
    )
        port map (
      I0 => UnD_MA,
      I1 => \^q_intern_ma_reg[3]_0\,
      I2 => \^q_intern_ma_reg[0]_0\,
      I3 => \^q_intern_ma_reg[2]_0\,
      I4 => \^q_intern_ma_reg[1]_0\,
      O => \Q_intern_MA[1]_i_2_n_0\
    );
\Q_intern_MA[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => Din_MA(2),
      I1 => Din_MA(3),
      I2 => Load_MA,
      I3 => \Q_intern_MA[2]_i_2_n_0\,
      O => \Q_intern_MA[2]_i_1_n_0\
    );
\Q_intern_MA[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FA0FA04"
    )
        port map (
      I0 => UnD_MA,
      I1 => \^q_intern_ma_reg[3]_0\,
      I2 => \^q_intern_ma_reg[0]_0\,
      I3 => \^q_intern_ma_reg[2]_0\,
      I4 => \^q_intern_ma_reg[1]_0\,
      O => \Q_intern_MA[2]_i_2_n_0\
    );
\Q_intern_MA[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RESETn,
      O => \Q_intern_MA[3]_i_1_n_0\
    );
\Q_intern_MA[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Load_MA,
      I1 => CE_MA,
      O => \Q_intern_MA[3]_i_2_n_0\
    );
\Q_intern_MA[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din_MA(3),
      I1 => Load_MA,
      I2 => \Q_intern_MA[3]_i_4_n_0\,
      O => \Q_intern_MA[3]_i_3_n_0\
    );
\Q_intern_MA[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CC4CCC9"
    )
        port map (
      I0 => UnD_MA,
      I1 => \^q_intern_ma_reg[3]_0\,
      I2 => \^q_intern_ma_reg[1]_0\,
      I3 => \^q_intern_ma_reg[2]_0\,
      I4 => \^q_intern_ma_reg[0]_0\,
      O => \Q_intern_MA[3]_i_4_n_0\
    );
\Q_intern_MA_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_intern_MA[3]_i_2_n_0\,
      D => \Q_intern_MA[0]_i_1_n_0\,
      Q => \^q_intern_ma_reg[0]_0\,
      R => \Q_intern_MA[3]_i_1_n_0\
    );
\Q_intern_MA_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_intern_MA[3]_i_2_n_0\,
      D => \Q_intern_MA[1]_i_1_n_0\,
      Q => \^q_intern_ma_reg[1]_0\,
      R => \Q_intern_MA[3]_i_1_n_0\
    );
\Q_intern_MA_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_intern_MA[3]_i_2_n_0\,
      D => \Q_intern_MA[2]_i_1_n_0\,
      Q => \^q_intern_ma_reg[2]_0\,
      R => \Q_intern_MA[3]_i_1_n_0\
    );
\Q_intern_MA_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_intern_MA[3]_i_2_n_0\,
      D => \Q_intern_MA[3]_i_3_n_0\,
      Q => \^q_intern_ma_reg[3]_0\,
      R => \Q_intern_MA[3]_i_1_n_0\
    );
TC_MA_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080001"
    )
        port map (
      I0 => UnD_MA,
      I1 => \^q_intern_ma_reg[0]_0\,
      I2 => \^q_intern_ma_reg[2]_0\,
      I3 => \^q_intern_ma_reg[1]_0\,
      I4 => \^q_intern_ma_reg[3]_0\,
      O => TC_MA
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cnt4bits_ILA_MA_CntNbits_L_MA_0_0 is
  port (
    RESETn : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Load_MA : in STD_LOGIC;
    UnD_MA : in STD_LOGIC;
    CE_MA : in STD_LOGIC;
    Din_MA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_MA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TC_MA : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Cnt4bits_ILA_MA_CntNbits_L_MA_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Cnt4bits_ILA_MA_CntNbits_L_MA_0_0 : entity is "Cnt4bits_ILA_MA_CntNbits_L_MA_0_0,CntNbits_L_MA,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Cnt4bits_ILA_MA_CntNbits_L_MA_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Cnt4bits_ILA_MA_CntNbits_L_MA_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Cnt4bits_ILA_MA_CntNbits_L_MA_0_0 : entity is "CntNbits_L_MA,Vivado 2024.1";
end Cnt4bits_ILA_MA_CntNbits_L_MA_0_0;

architecture STRUCTURE of Cnt4bits_ILA_MA_CntNbits_L_MA_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESETn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of RESETn : signal is "xilinx.com:signal:reset:1.0 RESETn RST";
  attribute x_interface_parameter of RESETn : signal is "XIL_INTERFACENAME RESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Cnt4bits_ILA_MA_CntNbits_L_MA_0_0_CntNbits_L_MA
     port map (
      CE_MA => CE_MA,
      CLK => CLK,
      Din_MA(3 downto 0) => Din_MA(3 downto 0),
      Load_MA => Load_MA,
      \Q_intern_MA_reg[0]_0\ => Q_MA(0),
      \Q_intern_MA_reg[1]_0\ => Q_MA(1),
      \Q_intern_MA_reg[2]_0\ => Q_MA(2),
      \Q_intern_MA_reg[3]_0\ => Q_MA(3),
      RESETn => RESETn,
      TC_MA => TC_MA,
      UnD_MA => UnD_MA
    );
end STRUCTURE;
