**MIPS Design using VHDL** 

**Project description:** 

1. A design of MIPS processor using VHDL that illustrates a basic computer system by simulating the data and control paths. 
2. The project is done in **two phases.** 

**Phase I** 

 
**Requirements:** 

1- Implement the MIPS register file that reads simultaneously from two registers and write into another.  

- The main module should be called "RegisterFile".  
- The entity should look as follows:  
- **read\_sel1** : in std\_logic\_vector(4 downto 0)  
- **read\_sel2** : in std\_logic\_vector(4 downto 0)  
- **write\_sel** : in std\_logic\_vector(4 downto 0)  
- **write\_ena** : in std\_logic  
- **clk**: in std\_logic  
- **write\_data**: in std\_logic\_vector(31 downto 0)  
- **data1**: out std\_logic\_vector(31 downto 0)  
- **data2**: out std\_logic\_vector(31 downto 0) 

2- Implement 32 bit full ALU.  

- The main module should be called "ALU"  
- ALU functional specifications:  

**ALUOp**    **Function** 

- **0000**  AND
- **0001**  OR 
- **0010**  ADD 
- **0110**  SUB 
- **1100**  NOR 

- Entity should look as follows:  
- **data1** : in std\_logic\_vector(31 downto 0)  
- **data2** : in std\_logic\_vector(31 downto 0)  
- **aluop** : in std\_logic\_vector(3 downto 0)  
- **cin** : in std\_logic  
- **dataout**: out std\_logic\_vector(31 downto 0)  
- **cflag**: out std\_logic  
- **zflag**: out std\_logic  
- **oflag**: out std\_logic 


**Phase II**  

**Requirements:** 

Design a simple MIPS CPU Using VHDL. The proposed CPU should be able to perform certain instructions: R-type (AND, OR, ADD, SUB, SLT and NOR), I-type (lw, sw, beq, bne) and J instruction. 

Steps:  

- Connect the already-built modules including register file, ALU and instruction and data memory module together.  
- Fill the memory module by a simple program. 
- The CPU should be able to execute this program.  
- Simulate the results and check the final results  

The following diagram shows the abstract CPU design 

![](Aspose.Words.052e2867-351b-4cf2-b6e2-31f72fb19617.004.jpeg)

**MainModule Entity should look as follows:****  

- **START**: IN STD\_LOGIC; 
- **CLK**: IN STD\_LOGIC; 
- **RegFileOut1**: OUT STD\_LOGIC\_VECTOR(31 downto 0); 
- **RegFileOut2**: OUT STD\_LOGIC\_VECTOR(31 downto 0); 
- **ALUOut**: OUT STD\_LOGIC\_VECTOR(31 downto 0); 
- **PCOut**: OUT STD\_LOGIC\_VECTOR(31 downto 0); 
- **DataMemOut**: OUT STD\_LOGIC\_VECTOR(31 downto 0); 

**Test Case:** 

- Assembly program that calculates the first twelve Fibonacci numbers and store them in array at 

the beginning of the Data Memory. 

- After the program finishes, you should see the following sequence in $s0: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 0, -1 
