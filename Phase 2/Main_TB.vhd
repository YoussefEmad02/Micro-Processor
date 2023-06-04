
-- Test the Main Phase2 module

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:58:00 05/5/2022
-- Design Name:   
-- Module Name:   D:/ASU/Sophomore/Spring 2022/Computer Organization and Architecture CSE112/Labs/PHASE2/main_TB.vhd
-- Project Name:  PHASE2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MAIN
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
use STD.textio.all; -- Required for freading a file

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY Main_TB IS
END Main_TB;
 
ARCHITECTURE behavior OF Main_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Main is
	port(
		START	    : IN STD_LOGIC;
		CLK	    : IN STD_LOGIC;

		RegFileOut1 : OUT STD_LOGIC_VECTOR(31 downto 0);
		RegFileOut2 : OUT STD_LOGIC_VECTOR(31 downto 0);
		ALUOut	    : OUT STD_LOGIC_VECTOR(31 downto 0);
		PCOut	    : OUT STD_LOGIC_VECTOR(31 downto 0);
		DataMemOut  : OUT STD_LOGIC_VECTOR(31 downto 0)
	);
	END COMPONENT;
    

   --Inputs
   signal CLK,Start: std_logic := '0';
   --Outputs
   signal RegFileOut1 : std_logic_vector(31 downto 0);
   signal RegFileOut2 : std_logic_vector(31 downto 0) := (others => '0');
   signal ALUOut      : std_logic_vector(31 downto 0) := (others => '0');
   signal PCOut	      : std_logic_vector(31 downto 0) := (others => '0');
   signal DataMemOut  : std_logic_vector(31 downto 0) := (others => '0');
   
    
BEGIN
   -- Instantiate the Unit Under Test (UUT)
   uut: Main PORT MAP (
          START => Start,
          CLK => CLK,
          RegFileOut1 => RegFileOut1,
	  RegFileOut2 => RegFileOut2,
	  ALUOut      => ALUOut,
	  PCOut	      => PCOut,
	  DataMemOut  => DataMemOut);

    Start <= '1', '0' after 60 ns;
    CLK_Process: process
        begin
           -- Clock process definitions
	   CLK <= not CLK ; wait for 50 ns;
           
	end process;

   -- Stimulus process
   stim_proc: process
       begin
   		
   -- The process for reading the instructions into memory
     
        wait; 
   end process;

END;