library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MUX2x1 is
    Port ( Sel : in  STD_LOGIC;
           I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           Output : out  STD_LOGIC);
end MUX2x1;

architecture Behavioral of MUX2x1 is

begin


Output <= I0 when Sel = '0' else
          I1 when Sel = '1' else
			'Z';

end Behavioral;

