----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:59:09 04/26/2022 
-- Design Name: 
-- Module Name:    Reg - Behavioral 
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

entity Reg is

    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           load : in  STD_LOGIC;
			  inc : in STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end Reg;

architecture Behavioral of Reg is
signal temp : std_logic_vector (31 downto 0); 	
begin

	process (clk, rst) 
		begin
			IF (rst = '1') THEN
				temp <= (others => '0');
			ELSIF (clk'event and clk = '1') THEN
				IF(load ='1') THEN
					temp <= input;
				ELSIF (inc = '1')THEN
					temp <= STD_LOGIC_VECTOR(signed(temp) + 1);
				END IF;
			END IF;
		end process;

	output <= temp;
	
end Behavioral;

