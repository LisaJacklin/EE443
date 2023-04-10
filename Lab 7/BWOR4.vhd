--Lisa Jacklin
--EE443 Lab 5
-- 2/28/2023
--BWOR4 code
----------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY BWOR4 IS
	PORT (O1, O2  :IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			U		  :OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	
	END BWOR4;
	
ARCHITECTURE BWOR4_BEHAVIORAL OF BWOR4 IS

	BEGIN
	
	U <= O1 OR O2;
	
END BWOR4_BEHAVIORAL;