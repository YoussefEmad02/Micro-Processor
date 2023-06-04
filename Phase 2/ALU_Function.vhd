
------------------------------------------------------
-- ALU Control component
-- 
-- Used for deciding which operation the alu shoud perform.
--
-- and: 0000
-- or: 0001
-- add: 0010
-- subtract-not-equal: 0011 # For bne. Not sure if these are the right alu_control bits, but this one was available.
-- subtract: 0110
-- set-on-less-than: 0111
------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ALU_Function is
	port (
		Func		 : in std_logic_vector(5 downto 0);
		ALU_OP		 : in std_logic_vector(1 downto 0);

		ALU_Control_Fuct : out std_logic_vector(3 downto 0)
	);
end ALU_Function;

architecture BEHAVIORAL of ALU_Function is
-- List the ALU codes
	signal AND_OP		: std_logic_vector(3 downto 0):= "0000";
	signal OR_OP		: std_logic_vector(3 downto 0):= "0001";
	signal ADD		: std_logic_vector(3 downto 0):= "0010";
	signal SUB		: std_logic_vector(3 downto 0):= "0110";
	signal SLT		: std_logic_vector(3 downto 0):= "0111"; -- set on less than
        signal NOR_OP		: std_logic_vector(3 downto 0):= "1100";
	signal Branch_not_equal : std_logic_vector(3 downto 0):= "1010"; -- need to be checked in the ALU 1110

	begin

	ALU_Control_Fuct <= ADD    when(ALU_OP= "00" or ( Func = "100000" and ALU_OP = "10")) else
			    SUB    when(ALU_OP= "01" or ( Func = "100010" and ALU_OP = "10")) else
			    AND_OP when(ALU_OP= "10" and  Func = "100100") else
			    OR_OP  when(ALU_OP= "10" and  Func = "100101") else
			    SLT    when(ALU_OP= "10" and  Func = "101010") else
			    NOR_OP when(ALU_OP= "10" and  Func = "100111") else
			    Branch_not_equal when  ( ALU_OP = "11") else
			    "0000";
						
end BEHAVIORAL;