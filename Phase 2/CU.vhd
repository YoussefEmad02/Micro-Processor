
------------------------------------------------------
-- Control component
--
-- Decides a bunch of things
-- - reg_dest: should use rd as detsination register
-- - jump: should jump to address
-- - branch: should branch off current address
-- - mem_read: should read from data memory
-- - mem_to_reg: should write value from data memory to a register
-- - mem_write: should write to data memory
-- - alu_src: should use immediate as second parameter of alu
-- - reg_write: should write to a register
-- - alu_op: command to use in alu control
------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CU is
	port (
		OPCODE 		: in std_logic_vector(5 downto 0);

--		Output
		reg_dest	: out std_logic;
		jump		: out std_logic;
		branch		: out std_logic;
		mem_read	: out std_logic;
		mem_to_reg	: out std_logic;
		mem_write	: out std_logic;
		alu_src		: out std_logic;
		reg_write	: out std_logic;
		alu_op		: out std_logic_vector(1 downto 0)
	);
end CU;

architecture BEHAVIORAL of CU is
	begin

	-- The consequences of vhdl syntax 
	--			      R-types	            addi				    beq                            bne                            jump                           lw                               sw
	reg_dest<= 	'1' when OPCODE = "000000" else '0' when OPCODE="001000"  else '0' when OPCODE="000100"  else '0' when OPCODE="000101"  else '0' when OPCODE="000010"  else '0' when OPCODE="100011"  else '0' when OPCODE="101011"  else '0';
	jump 	<=	'0' when OPCODE = "000000" else '0' when OPCODE="001000"  else '0' when OPCODE="000100"  else '0' when OPCODE="000101"  else '1' when OPCODE="000010"  else '0' when OPCODE="100011"  else '0' when OPCODE="101011"  else '0';
	branch	<=	'0' when OPCODE = "000000" else '0' when OPCODE="001000"  else '1' when OPCODE="000100"  else '1' when OPCODE="000101"  else '0' when OPCODE="000010"  else '0' when OPCODE="100011"  else '0' when OPCODE="101011"  else '0';
	mem_read<=	'0' when OPCODE = "000000" else '0' when OPCODE="001000"  else '0' when OPCODE="000100"  else '0' when OPCODE="000101"  else '0' when OPCODE="000010"  else '1' when OPCODE="100011"  else '0' when OPCODE="101011"  else '0';
	mem_to_reg<= 	'0' when OPCODE = "000000" else '0' when OPCODE="001000"  else '0' when OPCODE="000100"  else '0' when OPCODE="000101"  else '0' when OPCODE="000010"  else '1' when OPCODE="100011"  else '0' when OPCODE="101011"  else '0';
	mem_write <= 	'0' when OPCODE = "000000" else '0' when OPCODE="001000"  else '0' when OPCODE="000100"  else '0' when OPCODE="000101"  else '0' when OPCODE="000010"  else '0' when OPCODE="100011"  else '1' when OPCODE="101011"  else '0';
	alu_src	<=	'0' when OPCODE = "000000" else '1' when OPCODE="001000"  else '0' when OPCODE="000100"  else '0' when OPCODE="000101"  else '0' when OPCODE="000010"  else '1' when OPCODE="100011"  else '1' when OPCODE="101011"  else '0';
	reg_write <= 	'1' when OPCODE = "000000" else '1' when OPCODE="001000"  else '0' when OPCODE="000100"  else '0' when OPCODE="000101"  else '0' when OPCODE="000010"  else '1' when OPCODE="100011"  else '0' when OPCODE="101011"  else '0';
	alu_op	<=	"10" when OPCODE ="000000" else "00" when OPCODE="001000" else "01" when OPCODE="000100" else "11" when OPCODE="000101" else "00" when OPCODE="000010" else "00" when OPCODE="100011"  else "00" when OPCODE="101011"  else "00";
		
end BEHAVIORAL;