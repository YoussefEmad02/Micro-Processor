----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:43:27 04/26/2022 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use work.myPackage.ALL;

entity RegisterFile is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk 	     : in  STD_LOGIC;
           RST 	     : in  STD_LOGIC;
           write_data: in  STD_LOGIC_VECTOR (31 downto 0);
           data1     : out STD_LOGIC_VECTOR (31 downto 0);
           data2     : out STD_LOGIC_VECTOR (31 downto 0));
    end RegisterFile;

architecture Behavioral of RegisterFile is

signal L,wire_0,wire_1,wire_2,wire_3,wire_4,wire_5,wire_6,wire_7,
wire_8,wire_9,wire_10,wire_11,wire_12,wire_13,wire_14,wire_15,wire_16
,wire_17,wire_18,wire_19,wire_20,wire_21,wire_22,wire_23,wire_24,wire_25,wire_26,
wire_27,wire_28,wire_29,wire_30,wire_31: STD_LOGIC_VECTOR (31 downto 0):= (others=>'0');

begin

	decoder_1 : decoder port map (write_sel,write_ena,L);

	Reg_0 	  : Reg 		port map (write_data,RST,clk,L(0),'0', wire_0  );
	Reg_1 	  : Reg 		port map (write_data,RST,clk,L(1),'0', wire_1  );
	Reg_2 	  : Reg 		port map (write_data,RST,clk,L(2),'0', wire_2  );
	Reg_3 	  : Reg 		port map (write_data,RST,clk,L(3),'0', wire_3  );
	Reg_4 	  : Reg 		port map (write_data,RST,clk,L(4),'0', wire_4  );
	Reg_5 	  : Reg 		port map (write_data,RST,clk,L(5),'0', wire_5  );
	Reg_6 	  : Reg 		port map (write_data,RST,clk,L(6),'0', wire_6  );
	Reg_7 	  : Reg  	        port map (write_data,RST,clk,L(7),'0', wire_7  );
	Reg_8 	  : Reg 		port map (write_data,RST,clk,L(8),'0', wire_8  );
	Reg_9 	  : Reg 		port map (write_data,RST,clk,L(9),'0', wire_9  );
	Reg_10	  : Reg 		port map (write_data,RST,clk,L(10),'0',wire_10 );
	Reg_11	  : Reg 		port map (write_data,RST,clk,L(11),'0',wire_11 );
	Reg_12	  : Reg 		port map (write_data,RST,clk,L(12),'0',wire_12 );
	Reg_13	  : Reg 		port map (write_data,RST,clk,L(13),'0',wire_13 );
	Reg_14	  : Reg  	port map (write_data,RST,clk,L(14),'0',wire_14 );
	Reg_15	  : Reg  	port map (write_data,RST,clk,L(15),'0',wire_15 );
	Reg_16	  : Reg 		port map (write_data,RST,clk,L(16),'0',wire_16 );
	Reg_17	  : Reg 		port map (write_data,RST,clk,L(17),'0',wire_17 );
	Reg_18	  : Reg 		port map (write_data,RST,clk,L(18),'0',wire_18 );
	Reg_19	  : Reg 		port map (write_data,RST,clk,L(19),'0',wire_19 );
	Reg_20	  : Reg 		port map (write_data,RST,clk,L(20),'0',wire_20 );
	Reg_21	  : Reg 		port map (write_data,RST,clk,L(21),'0',wire_21 );
	Reg_22	  : Reg 		port map (write_data,RST,clk,L(22),'0',wire_22 );
	Reg_23	  : Reg 		port map (write_data,RST,clk,L(23),'0',wire_23 );
	Reg_24	  : Reg 		port map (write_data,RST,clk,L(24),'0',wire_24 );
	Reg_25	  : Reg 		port map (write_data,RST,clk,L(25),'0',wire_25 );
	Reg_26	  : Reg 		port map (write_data,RST,clk,L(26),'0',wire_26 );
	Reg_27	  : Reg 		port map (write_data,RST,clk,L(27),'0',wire_27 );
	Reg_28	  : Reg 		port map (write_data,RST,clk,L(28),'0',wire_28 );
	Reg_29	  : Reg 		port map (write_data,RST,clk,L(29),'0',wire_29 );
	Reg_30	  : Reg 		port map (write_data,RST,clk,L(30),'0',wire_30 );
	Reg_31	  : Reg 		port map (write_data,RST,clk,L(31),'0',wire_31 );

	Mux_1  : Mux port map (read_sel1,wire_0,wire_1,wire_2,wire_3,wire_4,wire_5,wire_6,wire_7,wire_8,wire_9,wire_10,wire_11,wire_12,wire_13,wire_14,wire_15,wire_16,wire_17,wire_18,wire_19,wire_20,wire_21,wire_22,wire_23,wire_24,wire_25,wire_26,wire_27,wire_28,wire_29,wire_30,wire_31,data1);
												
	Mux_2 : Mux port map (read_sel2,wire_0,wire_1,wire_2,wire_3,wire_4,wire_5,wire_6,wire_7,wire_8,wire_9,wire_10,wire_11,wire_12,wire_13,wire_14,wire_15,wire_16,wire_17,wire_18,wire_19,wire_20,wire_21,wire_22,wire_23,wire_24,wire_25,wire_26,wire_27,wire_28,wire_29,wire_30,wire_31,data2);

end Behavioral;

