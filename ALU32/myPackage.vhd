library IEEE;
use IEEE.STD_LOGIC_1164.all;

package myPackage is

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

end myPackage;

package body myPackage is
 
end myPackage;
