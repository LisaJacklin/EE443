--Lisa Jacklin
-- EE443 Lab 5
--2/28/2023
--BWAND4 code
-------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


ENTITY BWAND4 IS
	PORT ( b1, b2 :in STD_LOGIC_VECTOR (3 DOWNTO 0);
			 F					 :OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
	
	END BWAND4;
	
ARCHITECTURE BWAND4_BEHAVIORAL OF BWAND4 IS

	BEGIN
	
	F <= B1 AND B2;
	
END BWAND4_BEHAVIORAL;