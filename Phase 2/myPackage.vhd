library IEEE;
use IEEE.STD_LOGIC_1164.all;

package myPackage is

component adder 
		port (
			x,y: in std_logic_vector(31 downto 0);
			z: out std_logic_vector(31 downto 0)
		);		
	end component;

COMPONENT MUX2nX1 is
    generic (nWidth : natural := 1); -- number of bits in the input and output pins
    Port ( Sel : in  STD_LOGIC;
           I0 : in  STD_LOGIC_VECTOR(nWidth-1 downto 0);
           I1 : in  STD_LOGIC_VECTOR(nWidth-1 downto 0);
           Output : out  STD_LOGIC_VECTOR(nWidth-1 downto 0));
end COMPONENT;

COMPONENT MUX2x1 is
    Port ( Sel : in  STD_LOGIC;
           I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           Output : out  STD_LOGIC);
end COMPONENT;

COMPONENT MUX4x1 is
    Port ( Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           Output : out  STD_LOGIC);
end COMPONENT;

COMPONENT FullAdder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Result : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end COMPONENT;
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
 
end myPackage;
