library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.myPackage.ALL;



entity ALU is
    Port ( Data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUop : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           Cflag : out  STD_LOGIC;
           Zflag : out  STD_LOGIC;
           Oflag : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
signal CarryRes  : std_logic_vector(32 downto 0);
signal tempData1 : std_logic_vector(31 downto 0);
signal tempData2 : std_logic_vector(31 downto 0);
signal tempRes   : std_logic_vector(31 downto 0);
signal AndRes    : std_logic_vector(31 downto 0);
signal orRes     : std_logic_vector(31 downto 0);
signal opRes     : std_logic_vector(1 downto 0);
signal finalRes  : std_logic_vector(31 downto 0);


begin

CarryRes(0) <= Cin;
opRes <= ALUop(1) & ALUop(0);

num :for i in 0 to 31 generate

	MUX1    : MUX2x1 port map (ALUop(3), Data1(i), not(Data1(i)), tempData1(i));
	MUX2    : MUX2x1 port map (ALUop(2), Data2(i), not(Data2(i)), tempData2(i));
	ADD_SUB : FullAdder port map (tempData1(i), tempData2(i), CarryRes(i), tempRes(i), CarryRes(i+1));
	AndRes(i) <=   tempData1(i) AND tempData2(i);
	orRes(i)  <=   tempData1(i) OR  tempData2(i);
	MUX3    : MUX4x1 port map (opRes, AndRes(i), orRes (i), tempRes(i), '0', finalRes(i));
	Dataout(i) <= finalRes(i);


end generate;

Cflag <= CarryRes(32) when opRes = "10" else '0';
Zflag <= '1' when finalRes = "00000000000000000000000000000000" else '0';
Oflag <= CarryRes(32) XOR CarryRes(31);


end Behavioral;