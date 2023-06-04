library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Data_Mem is
  Generic(
	NWords 		: natural := 64;
	WordSize	: natural := 32; 
	AddressSize	: natural := 32);
  port ( 
	CLK       : in STD_LOGIC;
	LoadIt	  : in STD_LOGIC;
        MEM_READ  : in STD_LOGIC;
	MEM_WRITE : in STD_LOGIC;
	ADDRESS   : in STD_LOGIC_VECTOR (AddressSize-1 downto 0);
  	INPUT     : in STD_LOGIC_VECTOR (WordSize-1 downto 0);

	OUTPUT    : out STD_LOGIC_VECTOR (WordSize-1 downto 0)
	);

end Data_Mem;

architecture BEHAVIORAL of Data_Mem is

  type   MEM is array (0 to NWords-1) of STD_LOGIC_VECTOR (WordSize-1 downto 0);
  signal MEMORY : MEM;
  signal OUTS: STD_LOGIC_VECTOR(WordSize-1 downto 0);
  signal ADDRover4: STD_LOGIC_VECTOR(AddressSize-2 - 1 downto 0);
  signal ADDR_int: integer;
begin

  process ( MEM_READ, MEM_WRITE, CLK, ADDRESS, INPUT ) is
  begin
	if LoadIt = '1' then
-----------------------
--Project1 test
-----------------------
		memory(0) <= "00000000000000000000000000000000" ;
		memory(1) <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" ;
		memory(2) <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" ;
		memory(3) <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" ;
		memory(4) <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" ;
		memory(5) <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" ;
		memory(6) <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" ;
		memory(7) <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" ;
		memory(8) <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" ;
		memory(9) <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" ;
		memory(10) <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" ;
		memory(11) <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" ;
		memory(12) <= "00000000000000000000000000001100" ;
		memory(13) <= "00000000000000000000000000000001" ;
		memory(14) <= "00000000000000000000000000000100" ;

	else
		if FALLING_EDGE(CLK) then
			if MEM_WRITE = '1' then
				MEMORY(ADDR_int) <= INPUT;
      			end if;		
    		end if;
	end if;
	
  end process;

  ADDRover4 <= ADDRESS(31 downto 2) ;
  ADDR_int <= CONV_INTEGER(ADDRover4);
  OUTS <= MEMORY(ADDR_int) when MEM_READ = '1' and (ADDR_int < NWords) else
           (others => 'Z') when MEM_READ = '0' ;
	
	OUTPUT <= OUTS;

end BEHAVIORAL;

