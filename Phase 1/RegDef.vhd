----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:53:45 04/26/2022 
-- Design Name: 
-- Module Name:    RegDef - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.ALL;

entity RegDef is

    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           load : in  STD_LOGIC;
			  increment : in STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end RegDef;

architecture Behavioral of RegDef is
signal temporary : std_logic_vector (31 downto 0); 	
begin

	process (clk, rst) 
		begin
			if (rst = '1') then
				temporary <= (others => '0');
			elsif (clk'event and clk = '1' and load = '1') then
				temporary <= input;
				elsif (clk'event and clk = '1' and increment = '1') then
				temporary <= STD_LOGIC_VECTOR(signed(temporary) + 1);
			
			end if;
		end process;
	
	output <= temporary;
	
end Behavioral;

