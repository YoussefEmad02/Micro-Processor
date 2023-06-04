
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MUX2nX1 is
    generic (nWidth : natural := 1); -- number of bits in the input and output pins
    Port ( Sel : in  STD_LOGIC;
           I0 : in  STD_LOGIC_VECTOR(nWidth-1 downto 0);
           I1 : in  STD_LOGIC_VECTOR(nWidth-1 downto 0);
           Output : out  STD_LOGIC_VECTOR(nWidth-1 downto 0));
end MUX2nX1;

architecture Behavioral of MUX2nX1 is

begin


Output <= I0 when Sel = '0' else
          I1 when Sel = '1' else
			(others=>'Z');

end Behavioral;
