library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity FullAdder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Result : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is
SIGNAL temp : std_logic_vector(1 downto 0); 

begin

temp <= ('0' & A) + ('0' & B) + ('0' & Cin);

Result <= temp(0);

Cout <= temp(1);

end Behavioral;

