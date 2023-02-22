--Lisa Jacklin
-- EE 443 Lab 0 
--1/24/2023

--REG8 vHDL

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY REG8 IS 
	PORT (D 			:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			WE, CLK  :IN STD_LOGIC;								--NOTE THAT EN HERE IS THE WE (WRITE ENABLED)
			Q			:OUT STD_LOGIC_VECTOR(7 DOWNTO 0 ));

END REG8;

-- in order for quartus to give u the flip flops that are required in this 
--code to create the register, the architecture of the entity must be a process

ARCHITECTURE REG8_BEHAVIORAL OF REG8 IS
		
BEGIN
		U: PROCESS(CLK) IS
			BEGIN
				IF (CLK'event AND CLK = '1' AND WE = '1') THEN
					Q <= D;
				END IF;
			END PROCESS;
			
END REG8_BEHAVIORAL;