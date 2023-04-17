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
	BEGIN
	
	PROCESS(INSTRUCT) --THIS IS WHAT WILL DETERMINE THE CONTROL
		BEGIN
		--RECOMENDED THAT WE BUILD A SWITCH CASE STATEMENT WITHIN THE PROCESS 
		--NOTE, THE FIRST 4 BITS ARE OUR CONTROL SIGNAL FROM INSTRUCTION AND THE ONES THAT MATTER
			CASE INSTRUCT (15 DOWNTO 13) IS
				
				WHEN "000" => --ADD
					ALUMUXSEL <= '1';
					PCSEL1 <= '1'; 
					PCSEL2 <= '1';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '1';
					MEMR <= '0';
					ALU_SEL <= "000"; 
				WHEN "001" =>--SUB 
					ALUMUXSEL <= '1';
					PCSEL1 <= '1'; 
					PCSEL2 <= '1';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '1';
					MEMR <= '0';					
					ALU_SEL <= "001";
				WHEN "010" => --AND
					ALUMUXSEL <= '1';
					PCSEL1 <= '1'; 
					PCSEL2 <= '1';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '1';
					MEMR <= '0';	
					ALU_SEL <= "010";
				WHEN "011" => --OR
					ALUMUXSEL <= '1';
					PCSEL1 <= '1'; 
					PCSEL2 <= '1';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '1';
					MEMR <= '0';	
					ALU_SEL <= "011";
				WHEN "100" => --SLT
					ALUMUXSEL <= '1';
					PCSEL1 <= '1'; 
					PCSEL2 <= '1';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '1';
					MEMR <= '0';
					ALU_SEL <= "100";
					
				WHEN "101" => --LW
					ALUMUXSEL <= '1';
					PCSEL1 <= '0'; 
					PCSEL2 <= '0';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '0';
					MEMR <= '0';	
					ALU_SEL <= "101";
				WHEN "110" => --SW
					ALUMUXSEL <= '1';
					PCSEL1 <= '0'; 
					PCSEL2 <= '0';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '0';
					MEMR <= '0';
					ALU_SEL <= "110";
				WHEN "111" => --J
					ALUMUXSEL <= '1';
					PCSEL1 <= '0'; 
					PCSEL2 <= '0';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '0';
					MEMR <= '0';
					ALU_SEL <= "111";
				WHEN OTHERS =>
					ALUMUXSEL <= '0';
					PCSEL1 <= '0'; 
					PCSEL2 <= '0';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '0';
					MEMR <= '0';
					ALU_SEL <= "000";
			END CASE;
			
			--NOW, WE ALSO NEED A IF STATEMENT FOR ZERO WHICH IS USED FOR BRANCHES 
			CASE ZERO IS
				WHEN '1' =>
					ALUMUXSEL <= '0';
					PCSEL1 <= '0'; 
					PCSEL2 <= '0';
					RFMUXSEL <= '0';
					MEMW <= '0'; 
					REGWE<= '0';
					MEMR <= '0';
					ALU_SEL <= "000";
				WHEN OTHERS =>
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