----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/12/2019 02:37:37 PM
-- Design Name: 
-- Module Name: Divizor - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Divider is
    Generic(
            DIV_RATE : integer := 10           
           ); 
    Port ( 
           CLK     : in STD_LOGIC ;
           RESETn  : in STD_LOGIC ;
           DIV_OUT : out STD_LOGIC 
           );
end Divider;

architecture Behavioral of Divider is
signal i: integer := 0;
begin

Divide: process (CLK, RESETn)
begin
    if rising_edge (CLK) then
        if RESETn = '0' or i = (DIV_RATE - 1) then i <= 0;
        else i <= i+ 1;  end if; 
    end if;
end process Divide;

DIV_OUT <= '1' when i = (DIV_RATE - 1) else '0';

end Behavioral;
