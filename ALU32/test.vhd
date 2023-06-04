--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:58:00 04/28/2022
-- Design Name:   
-- Module Name:   D:/ASU/Sophomore/Spring 2022/Computer Organization and Architecture CSE112/Labs/ALU32/test.vhd
-- Project Name:  ALU32
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Data1 : IN  std_logic_vector(31 downto 0);
         Data2 : IN  std_logic_vector(31 downto 0);
         ALUop : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Dataout : OUT  std_logic_vector(31 downto 0);
         Cflag : OUT  std_logic;
         Zflag : OUT  std_logic;
         Oflag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Data1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Data2 : std_logic_vector(31 downto 0) := (others => '0');
   signal ALUop : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Dataout : std_logic_vector(31 downto 0);
   signal Cflag : std_logic;
   signal Zflag : std_logic;
   signal Oflag : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Data1 => Data1,
          Data2 => Data2,
          ALUop => ALUop,
          Cin => Cin,
          Dataout => Dataout,
          Cflag => Cflag,
          Zflag => Zflag,
          Oflag => Oflag
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      	--AND testcase
			Data1<= "11000000000000000000000000000000" ;
			Data2<= "10100000000000000000000000000000" ;
			ALUop <= "0000" ;
			wait for 10ns;
			report "Test1";
			assert(Dataout = "10000000000000000000000000000000" and Zflag = '0') report "1:Fail" severity error;

			wait for 1ns;
		
		--OR testcase
			Data1<= "11000000000000000000000000000000" ;
			Data2<= "10100000000000000000000000000000" ;
			ALUop <= "0001" ;
			wait for 10ns;
			report "Test2";
			assert(Dataout = "11100000000000000000000000000000" and Zflag = '0') report "2:Fail" severity error;

			wait for 1ns;
		
		--ADD testcase1 (overflow = 1, cout = 0)
			Data1<= "01110000000000000000000000000000" ;
			Data2<= "01100000000000000000000000000000" ;
			ALUop <= "0010" ;
			wait for 10ns;
			report "Test3";
			assert(Dataout = "11010000000000000000000000000000" and Oflag = '1' and Cflag = '0' and Zflag = '0') report "3:Fail" severity error;

			wait for 1ns;
		
		--ADD testcase2 (zero = 1, cout = 1)
			Data1<= "11110000000000000000000000000000" ;
			Data2<= "00010000000000000000000000000000" ;
			ALUop <= "0010" ;
			wait for 10ns;
			report "Test4";
			assert(Dataout = "00000000000000000000000000000000" and Oflag = '0' and Cflag = '1' and Zflag = '1') report "4:Fail" severity error;

			wait for 1ns;

		--SUdata2testcase1 (cout = 1)
			Data1<= "00000000000000000000000000000111" ; --data1= 7
			Data2<= "00000000000000000000000000000110" ; --data2= 6
			Cin <= '1' ;
			ALUop <= "0110" ;
			wait for 10ns;
			report "Test5";
			assert(Dataout = "00000000000000000000000000000001" and Oflag = '0' and Cflag = '1' and Zflag = '0') report "5:Fail" severity error;

			wait for 1ns;

		--SUdata2testcase2 (cout = 0)
			Data1<= "00000000000000000000000000000110" ; --data1= 6
			Data2<= "00000000000000000000000000000111" ; --data2= 7
			Cin <= '1' ;
			ALUop <= "0110" ;
			wait for 10ns;
			report "Test6";
			assert(Dataout = "11111111111111111111111111111111" and Oflag = '0' and Cflag = '0' and Zflag = '0') report "6:Fail" severity error;

			wait for 1ns;
			
			--nor testcase 2 (cout = 0)
			Data1<= "00000000000000000000000000000110" ; --data1= 6
			Data2<= "00000000000000000000000000000111" ; --data2= 7
			Cin <= '0' ;
			ALUop <= "1100" ;
			wait for 10ns;
			report "Test8";
			assert(Dataout = "11111111111111111111111111111000" and Oflag = '0' and Cflag = '0' and Zflag = '0') report "8:Fail" severity error;

			wait for 1ns;
			
		report "Test Complete";

      wait;
   end process;

END;
