--Lisa Jacklin
--EE 443 Lab 7
--PCJMP.vhd
-------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PCJMP IS
	PORT(PCOLD	:IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		  INS		:IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		  PCOUT	:OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END PCJMP;

ARCHITECTURE PCJMP_BEHAVIOR OF PCJMP IS
	BEGIN
	
	PROCESS (INS, PCOLD) 
		BEGIN
		
		PCOUT <= PCOLD & INS & '0';
		
	END PROCESS;
END PCJMP_BEHAVIOR;