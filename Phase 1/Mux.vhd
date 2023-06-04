----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:39:02 04/26/2022 
-- Design Name: 
-- Module Name:    Mux - Behavioral 
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

entity Mux is
    Port ( S : in  STD_LOGIC_VECTOR (4 downto 0);
           i0 : in  STD_LOGIC_VECTOR (31 downto 0);
			  i1 : in  STD_LOGIC_VECTOR (31 downto 0);
			  i2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  i3 : in  STD_LOGIC_VECTOR (31 downto 0);
			  i4 : in  STD_LOGIC_VECTOR (31 downto 0);
			  i5 : in  STD_LOGIC_VECTOR (31 downto 0);
			  i6 : in  STD_LOGIC_VECTOR (31 downto 0);
			  i7 : in  STD_LOGIC_VECTOR (31 downto 0);
			  i8 : in  STD_LOGIC_VECTOR (31 downto 0);
			  i9 : in  STD_LOGIC_VECTOR (31 downto 0);
			  i10: in  STD_LOGIC_VECTOR (31 downto 0);
			  i11: in  STD_LOGIC_VECTOR (31 downto 0);
			  i12: in  STD_LOGIC_VECTOR (31 downto 0);
			  i13: in  STD_LOGIC_VECTOR (31 downto 0);
			  i14: in  STD_LOGIC_VECTOR (31 downto 0);
			  i15: in  STD_LOGIC_VECTOR (31 downto 0);
			  i16: in  STD_LOGIC_VECTOR (31 downto 0);
			  i17: in  STD_LOGIC_VECTOR (31 downto 0);
			  i18: in  STD_LOGIC_VECTOR (31 downto 0);
			  i19: in  STD_LOGIC_VECTOR (31 downto 0);
			  i20: in  STD_LOGIC_VECTOR (31 downto 0);
			  i21: in  STD_LOGIC_VECTOR (31 downto 0);
			  i22: in  STD_LOGIC_VECTOR (31 downto 0);
			  i23: in  STD_LOGIC_VECTOR (31 downto 0);
			  i24: in  STD_LOGIC_VECTOR (31 downto 0);
			  i25: in  STD_LOGIC_VECTOR (31 downto 0);
			  i26: in  STD_LOGIC_VECTOR (31 downto 0);
			  i27: in  STD_LOGIC_VECTOR (31 downto 0);
			  i28: in  STD_LOGIC_VECTOR (31 downto 0);
			  i29: in  STD_LOGIC_VECTOR (31 downto 0);
			  i30: in  STD_LOGIC_VECTOR (31 downto 0);
			  i31: in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux;

architecture Behavioral of Mux is

begin

  output <=	i0  when S = "00000" else
				i1  when S = "00001" else
				i2  when S = "00010" else
				i3  when S = "00011" else
				i4  when S = "00100" else
				i5  when S = "00101" else
				i6  when S = "00110" else
				i7  when S = "00111" else
				i8  when S = "01000" else
				i9  when S = "01001" else
				i10 when S = "01010" else
				i11 when S = "01011" else
				i12 when S = "01100" else
				i13 when S = "01101" else
				i14 when S = "01110" else
				i15 when S = "01111" else
				i16 when S = "10000" else
				i17 when S = "10001" else
				i18 when S = "10010" else
				i19 when S = "10011" else
				i20 when S = "10100" else
				i21 when S = "10101" else
				i22 when S = "10110" else
				i23 when S = "10111" else
				i24 when S = "11000" else
				i25 when S = "11001" else
				i26 when S = "11010" else
				i27 when S = "11011" else
				i28 when S = "11100" else
				i29 when S = "11101" else
				i30 when S = "11110" else
				i31 when S = "11111" else
				(others => 'Z');

end Behavioral;

