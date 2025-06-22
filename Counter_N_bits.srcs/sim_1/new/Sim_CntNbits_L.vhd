----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/06/2020 01:19:59 PM
-- Design Name: 
-- Module Name: Sim_Cnt4Bits - Behavioral
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

entity Sim_CntNbits_L is
--  Port ( );
end Sim_CntNbits_L;


architecture Behavioral of Sim_CntNbits_L is

--Pentru mesaje de simulare: Avem nevoie sa fixam lungimea unui sir de caractere
subtype StrFixLength is string (1 to 20);

function ToFixLength (StringIn : string) return StrFixLength is
    variable V : StrFixLength := (others => ' ');
	begin
	if StringIn'length > StrFixLength'length then
	  return StringIn(1 to StrFixLength'length);
	else
	  V(1 to StringIn'length) := StringIn;
	  return V;
	end if;
end ToFixLength;

--ToVec: Scurteaza conversia din intreg in std_logic_vector
function ToVec (Val : integer; NUMBITS: integer) return std_logic_vector is
	begin
	return std_logic_vector( TO_UNSIGNED (Val, NUMBITS) );
end ToVec;

--LoadVal: Incarca o valoare in numarator
-- 1. Seteaz? Din la valoarea VAL
-- 2. Impuls (de 2 CLK) pe Load
procedure LoadVal (     signal   Sgn        : out    STD_LOGIC; 
                        signal  Dout        : OUT    STD_LOGIC_VECTOR;
                         VAL                :     STD_LOGIC_VECTOR; 
                        signal   CLK        : in     STD_LOGIC) is
    begin
        Dout <= VAL after 3 ns;
    	Sgn <='1' after 3 ns;
        wait until rising_edge(CLK);
        wait until rising_edge(CLK);
        Sgn <='0' after 3 ns;
end procedure;



--WaitonClks: Asteapta Numclks perioade de tact
procedure WaitClks (signal   CLK     : in     STD_LOGIC;
                      constant NumClks : in     integer ) is
    begin
        for i in 0 to NumClks - 1 loop
            wait until rising_edge(CLK);
        end loop;
end procedure;


component CntNbits_L_MA is
	generic(
		NUM_BITS_MA 		: integer range 0 to 31	:= 4;
		LIMIT_MA  		    : integer               := 9
	);
    Port ( 
			CLK 		: in 	STD_LOGIC			                      ;
			RESETn 		: in 	STD_LOGIC			                      ;	
			Load_MA		: in 	STD_LOGIC			                      ;
			UnD_MA   	: in 	STD_LOGIC			                      ;
			CE_MA		: in 	STD_LOGIC			                      ;
			Din_MA		: in 	STD_LOGIC_VECTOR (NUM_BITS_MA-1 downto 0) ;
			Q_MA		: out	STD_LOGIC_VECTOR (NUM_BITS_MA-1 downto 0) ;
			TC_MA		: out	STD_LOGIC					  
			);
end component CntNbits_L_MA;

constant	NUM_BITS_MA 		: integer range 0 to 31	:= 5;
constant	LIMIT_MA   	     	: integer               := 20;

signal	CLK 		: STD_LOGIC			          	:='0';
signal	RESETn 		: STD_LOGIC			          	:='0';	
signal	Load_MA		: STD_LOGIC			          	:='0';
signal	UnD_MA		: STD_LOGIC			          	:='1';
signal	CE_MA		: STD_LOGIC			          	:='0';
signal	Din_MA		: STD_LOGIC_VECTOR (NUM_BITS_MA-1 downto 0):=std_logic_vector( TO_UNSIGNED (LIMIT_MA, NUM_BITS_MA) );
signal	Q_MA		: STD_LOGIC_VECTOR (NUM_BITS_MA-1 downto 0);
signal	TC_MA		: STD_LOGIC					    :='0' ;

constant CLK_PERIOD_MA : time := 10 ns;

signal MSG_MA: StrFixLength := ToFixLength("RESET");

signal NumClksSinceReset_MA : integer := 0;


begin

--Instantierea componentei, care urmeaza sa fie testat (UUT - Unit Under Test)
UUT: CntNbits_L_MA
	Generic map(
		NUM_BITS_MA => NUM_BITS_MA,
		LIMIT_MA   => LIMIT_MA  
	)
    Port Map( 
			CLK 		    => CLK 	      ,
			RESETn 		    => RESETn     ,	
			Load_MA		    => Load_MA	  ,
			UnD_MA			=> UnD_MA	  ,
			CE_MA			=> CE_MA	  ,
			Din_MA			=> Din_MA	  ,
			Q_MA			=> Q_MA	      ,
			TC_MA			=> TC_MA   	  
			);                    

--Generam CLK


CLK <= NOT CLK after CLK_PERIOD_MA/2;

--NUmaram perioadale de tact trecute de la Reset
Cnt_Clk_Periods: process (CLK, RESETn, NumClksSinceReset_MA)
begin
	if RESETn = '0' then
		NumClksSinceReset_MA <= 0;
	elsif rising_edge(CLK) then
		NumClksSinceReset_MA <= NumClksSinceReset_MA + 1;
	end if;
end process Cnt_Clk_Periods;


--Instructiunile TescBench propriu-zise: Procesul principal
TestBench: process
variable i: integer :=0;
begin
	MSG_MA <= ToFixLength("RESET");
	--3 clocks than raise RESETn
	for i in 0 to 2 loop
		wait until rising_edge(CLK);
	end loop;
	RESETn <= '1' after 3 ns;

	-- Test Count up until limit and roll Over
	wait until rising_edge(CLK);
	MSG_MA <= ToFixLength("CU ROL");
	CE_MA <= '1' after 3 ns;
	wait until Q_MA = ToVec(LIMIT_MA, NUM_BITS_MA);
	wait until Q_MA = ToVec(3, NUM_BITS_MA);
	
	-- Test Count down until limit and roll Over
	wait until rising_edge(CLK);
	MSG_MA <= ToFixLength("CD ROL");
	UnD_MA <= '0' after 3 ns;
	wait until Q_MA = ToVec(0, NUM_BITS_MA);
	wait until Q_MA = ToVec(LIMIT_MA -2, NUM_BITS_MA);	
    -- Coount up again
	UnD_MA <='1' after 3 ns;
	WaitClks(CLK, 5);
	
	--load a larger number, than LIMIT
	MSG_MA <= ToFixLength("Load > LIMIT");
	LoadVal (Load_MA, Din_MA, ToVec(LIMIT_MA +2 , NUM_BITS_MA), CLK);
	WaitClks(CLK, 4);

	--load a smaller number, than LIMIT
	MSG_MA <= ToFixLength("Load < LIMIT");
	LoadVal (Load_MA, Din_MA, ToVec(LIMIT_MA - 2 , NUM_BITS_MA), CLK);
	WaitClks(CLK, 4);

    MSG_MA <= ToFixLength("Counting Up 2");
	
wait;
end process TestBench;

end Behavioral;
