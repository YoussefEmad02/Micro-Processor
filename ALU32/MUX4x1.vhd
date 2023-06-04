library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4x1 is
    Port ( Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           Output : out  STD_LOGIC);
end MUX4x1;

architecture Behavioral of MUX4x1 is

begin

Output <= I0 when Sel = "00" else
          I1 when Sel = "01" else
			 I2 when Sel = "10" else
			 I3 when Sel = "11" else
			 'Z';

end Behavioral;

