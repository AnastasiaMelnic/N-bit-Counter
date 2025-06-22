----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2024 05:32:53 PM
-- Design Name: 
-- Module Name: Cnt4bits_MelnicAnastasia - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity CntNbits_L_MA is
    Generic( 
           NUM_BITS_MA     :integer range 0 to 31 :=4;
           LIMIT_MA        :integer               :=9
           );
    Port ( RESETn          : in STD_LOGIC					               ;
           CLK             : in STD_LOGIC					               ;
           Load_MA         : in STD_LOGIC					               ;
		   UnD_MA          : in STD_LOGIC					               ;
		   CE_MA           : in STD_LOGIC					               ;
		   Din_MA	       : in STD_LOGIC_VECTOR(NUM_BITS_MA-1 downto 0)   ;
		   Q_MA            : out STD_LOGIC_VECTOR(NUM_BITS_MA-1 downto 0)  ;  
		   TC_MA           : out STD_LOGIC                     
           );
end CntNbits_L_MA;

architecture Behavioral of CntNbits_L_MA is

constant LIMIT_VEC_MA: std_logic_vector(NUM_BITS_MA-1 downto 0):=std_logic_vector(to_unsigned(LIMIT_MA, NUM_BITS_MA));
constant ZERO_VEC_MA: std_logic_vector(NUM_BITS_MA-1 downto 0):=std_logic_vector(to_unsigned(0,NUM_BITS_MA));
--pentru corectarea erorilor provocate de x"1"
constant ONE_VEC_MA: std_logic_vector(NUM_BITS_MA-1 downto 0):=std_logic_vector(to_unsigned(1,NUM_BITS_MA));

--corectat Melnic Anastasia
signal Q_intern_MA: STD_LOGIC_VECTOR(NUM_BITS_MA-1 downto 0):=ZERO_VEC_MA;
--signal Q_intern_MA: STD_LOGIC_VECTOR(NUM_BITS_MA-1 downto 0):=x"0";


begin

Count_MA: process(CLK, Q_intern_MA, Load_MA, CE_MA, RESETn, UnD_MA, Din_MA)
begin

if rising_edge(CLK) then
	if RESETn='0' then
	--corectat Melnic Anastasia
		Q_intern_MA<=ZERO_VEC_MA;
		--Q_intern_MA<=x"0";
	elsif Load_MA='1' then
	    if Din_MA>LIMIT_VEC_MA then
	       Q_intern_MA<=LIMIT_VEC_MA;
	    else
		   Q_intern_MA<=Din_MA;
		end if;
	elsif CE_MA='1' then
	   if UnD_MA='1' then
	       if Q_intern_MA=LIMIT_VEC_MA then
	           --corectat Melnic Anastasia
	           Q_intern_MA<=ZERO_VEC_MA;
	           --Q_intern_MA<=x"0";
	       else
	           --corectat Melnic Anastasia
	           Q_intern_MA<=Q_intern_MA+ONE_VEC_MA;
	           --Q_intern_MA<=Q_intern_MA+x"1";
	       end if;
	   else--numara in jos
	       if Q_intern_MA=ZERO_VEC_MA then
	           Q_intern_MA<=LIMIT_VEC_MA;
	       else
	           --corectat Melnic Anastasia
	           Q_intern_MA<=Q_intern_MA-ONE_VEC_MA;
	           --Q_intern_MA<=Q_intern_MA-x"1";
	       end if;
	   end if;
	end if;
end if;

end process;

TC_MA<='1' when (UnD_MA='1' and Q_intern_MA=LIMIT_VEC_MA) or 
                (UnD_MA='0' and Q_intern_MA=ZERO_VEC_MA)
			     else '0';
						

Q_MA<=Q_intern_MA;

end Behavioral;
