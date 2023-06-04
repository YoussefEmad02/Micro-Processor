------------------------------------------------------
-- Program Counter component
--
-- Points to Address of next instruction to run and returns
-- that Address in Current_Address.
------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PCounter is
	port(
		CLK		: in std_logic;
                RST             : in STD_LOGIC;
		Address_to_Load : in std_logic_vector(31 downto 0);
		Current_Address : out std_logic_vector(31 downto 0)
	     );
end PCounter;

architecture BEHAVIORAL of PCounter is

	signal Address: std_logic_vector(31 downto 0):= "00000000000000000000000000000000";

	begin

	process(CLK)
	    begin
                if( RST = '1') then
                  Address <= (others=> '0');

		else if CLK='0' and CLK'event then
			Address <= Address_to_Load;
			end if;
                end if;
	end process;
        Current_Address <= Address;

end BEHAVIORAL;
