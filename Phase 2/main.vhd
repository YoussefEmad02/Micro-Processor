------------------------------------------------------
-- This is the main script that is run when simulating
-- in modelsim.
------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.myPackage.ALL;

entity Main is
	port(
		START	    : IN STD_LOGIC;
		CLK	    : IN STD_LOGIC;

		RegFileOut1 : OUT STD_LOGIC_VECTOR(31 downto 0);
		RegFileOut2 : OUT STD_LOGIC_VECTOR(31 downto 0);
		ALUOut	    : OUT STD_LOGIC_VECTOR(31 downto 0);
		PCOut	    : OUT STD_LOGIC_VECTOR(31 downto 0);
		DataMemOut  : OUT STD_LOGIC_VECTOR(31 downto 0)

	);
end Main;

architecture BEHAVIORAL of Main is

	-- dummy vector
	--signal dummy_vector: std_logic_vector(31 downto 0):= "00000000000000000000000000000000";

	signal instr_address: std_logic_vector(31 downto 0); -- Address of the instruction to run
	signal next_address: std_logic_vector(31 downto 0); -- Next address to be loaded into PC
	signal instruction: std_logic_vector(31 downto 0); -- The actual instruction to run
	signal WInstruction: std_logic_vector(31 downto 0); -- The instruction to fill instruction memory at start
	signal read_data_1, read_data_2, write_data, extended_immediate, shifted_immediate, alu_in_2, alu_result, last_instr_address, incremented_address, add2_result, mux4_result, concatenated_pc_and_jump_address, mem_read_data: std_logic_vector(31 downto 0):= "00000000000000000000000000000000"; -- vhdl does not allow me to port map " y => incremented_address(31 downto 28) & shifted_jump_address "
	signal shifted_jump_address: std_logic_vector(27 downto 0);
	signal jump_address: std_logic_vector(25 downto 0);
	signal immediate: std_logic_vector(15 downto 0);
	signal opcode, funct: std_logic_vector(5 downto 0);
	signal rs, rt, rd, shampt, write_reg: std_logic_vector(4 downto 0);
	signal alu_control_fuct: std_logic_vector(3 downto 0);
	signal reg_dest, jump, branch, mem_read, mem_to_reg, mem_write, alu_src, reg_write, alu_zero, branch_and_alu_zero: std_logic:= '0'; -- vhdl does not allow me to port map " s => (branch and alu_zero) "
 	signal cflag,oflag,zflag:std_logic := '0';
	signal alu_op: std_logic_vector(1 downto 0);

	 -- Enum for checking if the instructions have loaded
	type PState is (Loading, Running, Done);
	signal CurState: PState:= Loading;

	-- The clock for the other components; starts when the state is ready
	signal en: std_logic:= '0';

	-- Load the other components
	component PCounter is
	port(
		CLK		: in std_logic;
                RST             : in STD_LOGIC;
		Address_to_Load : in std_logic_vector(31 downto 0);
		Current_Address : out std_logic_vector(31 downto 0)
	     );
	end component;

	component Inst_Mem is
		port (
	                CLK         : in STD_LOGIC;
	                Load        : in STD_LOGIC;
	                last_instr_address  : out STD_LOGIC_VECTOR (31 downto 0);
			Address     : in STD_LOGIC_VECTOR (31 downto 0);
			Instruction : out STD_LOGIC_VECTOR (31 downto 0)
		      );
		end component;
	component RegisterFile is
    		Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
	           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
	           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
	           write_ena : in  STD_LOGIC;
	           clk 	     : in  STD_LOGIC;
                   RST       : in STD_LOGIC;
	           write_data: in  STD_LOGIC_VECTOR (31 downto 0);
	           data1     : out STD_LOGIC_VECTOR (31 downto 0);
	           data2     : out STD_LOGIC_VECTOR (31 downto 0));
	end component; 

	component CU is
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
	end  component;

	component ALU_Function is
	port (
		Func		 : in std_logic_vector(5 downto 0);
		ALU_OP		 : in std_logic_vector(1 downto 0);

		ALU_Control_Fuct : out std_logic_vector(3 downto 0)
	);
	end component;

	component sign_extend
		port (
			x: in std_logic_vector(15 downto 0);
			y: out std_logic_vector(31 downto 0)
		);
	end component;

	component ALU Port ( 
	   Data1   : in  STD_LOGIC_VECTOR (31 downto 0);
           Data2   : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUop   : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin     : in  STD_LOGIC;
 --          less    : in STD_LOGIC;
           Dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           Cflag   : out  STD_LOGIC;
           Zflag   : out  STD_LOGIC;
           Oflag   : out  STD_LOGIC);
	end component;

	component shifter
		generic (n1: natural:= 32; n2: natural:= 32; k: natural:= 2);
		port (
			x: in std_logic_vector(n1-1 downto 0);
			y: out std_logic_vector(n2-1 downto 0)
		);
	end component;
	component adder 
		port (
			x,y: in std_logic_vector(31 downto 0);
			z: out std_logic_vector(31 downto 0)
		);		
	end component;
	
	component Data_Mem is
	  Generic(
		NWords 		: natural := 64;
		WordSize	: natural := 32; 
		AddressSize	: natural := 32);
	  port ( 
		CLK       : in STD_LOGIC;
		LoadIt	  : in STD_LOGIC;
	        MEM_READ  : in STD_LOGIC;
		MEM_WRITE : in STD_LOGIC;
		ADDRESS   : in STD_LOGIC_VECTOR (AddressSize-1 downto 0);
	  	INPUT     : in STD_LOGIC_VECTOR (WordSize-1 downto 0);

		OUTPUT    : out STD_LOGIC_VECTOR (WordSize-1 downto 0)
		);
	end component;

	begin
        ALUOut <= alu_result;

	process(CLK)
		begin
		case CurState is
			when Running =>
				en <= '1';
			when others =>
				en <= '0';
		end case;

		if CLK='1' and CLK'event then
			case CurState is
				when Loading =>
					CurState <= Running; -- give 1 cycle to load the instructions into memory
				when running =>
					if instr_address > last_instr_address then
						CurState <= Done; -- stop moving the pc after it has passed the last instruction
						en <= '0';
					end if;
				when others =>
					null;
			end case;
		end if;
	end process;

	-- Wire some stuff
	opcode <= instruction(31 downto 26);
	rs <= instruction(25 downto 21);
	rt <= instruction(20 downto 16);
	rd <= instruction(15 downto 11);
	shampt <= instruction(10 downto 6);
	funct <= instruction(5 downto 0);
	immediate <= instruction(15 downto 0);
	jump_address <= instruction(25 downto 0);

	Prog_Count: PCounter port map 
	     (
		CLK		=> CLK,--EN, 
                RST             => START,
		Address_to_Load => next_address,
		Current_Address => instr_address
	     );

	IM: Inst_Mem port map ( 
			CLK 	=> CLK,
			Load	=> START,
                	last_instr_address  => last_instr_address,
			Address     => instr_address,
			Instruction => instruction); -- write an other component to load inst memory and return last_instr_address);

	CONTROL1: CU port map (
		OPCODE 	=> opcode,
		reg_dest=> reg_dest, 
		jump 	=> jump,
		branch	=> branch, 
		mem_read=> mem_read, 
		mem_to_reg=> mem_to_reg,
		mem_write=> mem_write,
		alu_src	=> alu_src,
		reg_write=> reg_write,
		alu_op 	=> alu_op);

	-- This mux is going into Register's Write Register port; chooses between rt and rd
	MUX1: MUX2nX1 generic map(5) port map (
		Sel => reg_dest,
		I0  => rt, 
		I1  => rd, 
		Output => write_reg );

	REG: RegisterFile port map (
    		   read_sel1 => rs,
	           read_sel2 => rt,
	           write_sel => write_reg,
	           write_ena => reg_write, 
	           clk 	     => CLK,---en
                   RST       => START,
	           write_data=> write_data, 
	           data1     => read_data_1, 
	           data2     => read_data_2);

	ALU_CONTRL: ALU_Function port map (
       		   Func	  => funct,
		   ALU_OP => alu_op,
		   ALU_Control_Fuct => alu_control_fuct);

	RegFileOut1 <= read_data_1;
	RegFileOut2 <= read_data_2;
	ALUOut	    <= alu_result;
	PCOut	    <= instr_address;
	DataMemOut  <= mem_read_data; 


	---- This mux is going into the ALU's second input; chooses between read_data_2 and the immediate
	SGN_EXT: sign_extend port map (immediate, extended_immediate);

	MUX2: MUX2nX1 generic map(32) port map (
		Sel => alu_src,
		I0  => read_data_2, 
		I1  => extended_immediate, 
		Output => alu_in_2 );

	ALU1: ALU port map (
		Data1   => read_data_1,
	        Data2   => alu_in_2,
		ALUop   => alu_control_fuct,
	        Cin     => '0',
	        Dataout => alu_result,
	        Cflag   => cflag,
	        Zflag   => alu_zero,
	        Oflag   => oflag);

	-- This mux is going into the Register's Write Data; chooses between the alu_result and read_data from data memory
	MUX3: MUX2nX1 generic map (32) port map (
		I0 => alu_result, 
		I1 => mem_read_data, 
		Sel => mem_to_reg,
		Output => write_data
	);

	-- The Shift Left 2 for the immediate
	SHIFT1: shifter port map (
		x => extended_immediate,
		y => shifted_immediate
	);

	-- The +4 adder for the pc
	ADD1: adder port map (
		x => instr_address,
		y => "00000000000000000000000000000100",
		z => incremented_address
	);

	-- The mux between the +4 adder and the following adder
	branch_and_alu_zero <= branch and alu_zero;
	MUX4: MUX2nX1 generic map (32) port map (
		I0 => incremented_address,
		I1 => add2_result,
		Sel => branch_and_alu_zero,
		Output => mux4_result
	);

	-- The adder between the PC and the sign-extended immediate
	ADD2: adder port map (
		x => incremented_address,
		y => shifted_immediate,
		z => add2_result
	);

	-- The Shift Left 2 for the jump instruction
	SHIFT2: shifter generic map (n1 =>26, n2 => 28) port map (
		x => jump_address,
		y => shifted_jump_address
	);

	-- This mux chooses between the result of mux4 and the jump address
	concatenated_pc_and_jump_address <= incremented_address(31 downto 28) & shifted_jump_address;--review this
	MUX5: MUX2nX1 generic map (32) port map (
		I0 => mux4_result,
		I1 => concatenated_pc_and_jump_address,
		Sel => jump,
		Output => next_address
	);
	
	MEM: Data_Mem generic map (
		NWords 	   => 64,
		WordSize   => 32, 
		AddressSize=> 32)
	  port map( 
		CLK       => CLK,--EN
		LoadIt	  => Start,
	        MEM_READ  => mem_read,
		MEM_WRITE => mem_write,
		ADDRESS   => alu_result,
	  	INPUT     => read_data_2,

		OUTPUT    => mem_read_data);

end BEHAVIORAL;