--Lisa Jacklin
-- EE 443 Lab 8
--CONTROL.vhd
-------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CONTROL IS
	PORT(INSTRUCT								:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			ZERO									:IN STD_LOGIC;
			ALUMUXSEL, PCSEL1, PCSEL2		:OUT STD_LOGIC;
			RFMUXSEL, MEMW, REGWE, MEMR 	:OUT STD_LOGIC;
			ALU_SEL								:OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END CONTROL;

ARCHITECTURE CONTROL_BE OF CONTROL IS
	signal OPCODE : STD_LOGIC_VECTOR (3 DOWNTO 0);

	BEGIN
	
	OPCODE <= INSTRUCT(15 DOWNTO 12);
	
	PROCESS(OPCODE, ZERO) --THIS IS WHAT WILL DETERMINE THE CONTROL
		BEGIN
		--RECOMENDED THAT WE BUILD A SWITCH CASE STATEMENT WITHIN THE PROCESS 
		--NOTE, THE FIRST 4 BITS ARE OUR CONTROL SIGNAL FROM INSTRUCTION AND THE ONES THAT MATTER
			CASE OPCODE IS
				
				WHEN "0010" => --JMP
					ALUMUXSEL <= '1';
					PCSEL1 <= '1'; --YOU ARE THE ONLY ZERO THAT IS NEEDED
					PCSEL2 <= '0';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '0';
					MEMR <= '0';
					ALU_SEL <= "000"; 
				WHEN "0000" => --ALL R TYPES
					ALUMUXSEL <= '0'; --MATERS
					PCSEL1 <= '1'; 
					PCSEL2 <= '0';
					RFMUXSEL <= '1';
					MEMW <= '0'; 
					REGWE<= '1';
					MEMR <= '0';	
					ALU_SEL <= "000";		
				WHEN "1011" => --LW
					ALUMUXSEL <= '1';
					PCSEL1 <= '0'; 
					PCSEL2 <= '1';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '0';
					MEMR <= '0';	
					ALU_SEL <= "000";
				WHEN "1111" => --SW
					ALUMUXSEL <= '1';
					PCSEL1 <= '1'; 
					PCSEL2 <= '0';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '0';
					MEMR <= '0';
					ALU_SEL <= "000";
				WHEN "0100" => --BEQ
					ALUMUXSEL <= '1';
					PCSEL1 <= '0'; 
					PCSEL2 <= '0';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '0';
					MEMR <= '0';
					ALU_SEL <= "110";
				when OTHERS =>
				  ALUMUXSEL <= '0';
					PCSEL1 <= '0'; 
					PCSEL2 <= '0';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '0';
					MEMR <= '0';
					ALU_SEL <= "000";
			END CASE;

	END PROCESS;
	
	END CONTROL_BE;