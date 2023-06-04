--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package myPackage is
component Mux is
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
end component;

component Reg is

    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           load : in  STD_LOGIC;
			  inc : in STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component decoder is
    Port ( 
			input : in STD_LOGIC_VECTOR (4 downto 0);
			enable : in STD_LOGIC;
			output : out STD_LOGIC_VECTOR (31 downto 0));
end component;

end myPackage;

package body myPackage is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end myPackage;
