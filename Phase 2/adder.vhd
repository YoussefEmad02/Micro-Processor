------------------------------------------------------
-- Adder component

------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity adder is
	port (
		x,y: in std_logic_vector(31 downto 0);
		z: out std_logic_vector(31 downto 0)
	);
end adder;

architecture BEHAVIORAL of adder is
	begin
	z <= x+y;
end BEHAVIORAL;