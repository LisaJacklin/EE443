--Lisa Jacklin
--EE 443 Lab 6
--INS_MEM.vhd
----------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY INS_MEM IS
	PORT(ADDR	:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		  DOUT	:OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	
END INS_MEM;

ARCHITECTURE INS_MEM_BEHAVIOR OF INS_MEM IS
--SO BY USING TYPE, THIS SHOULD CREATE A CUSTOM DATA TYPE THAT CAN BE USED.
	TYPE TWO_ADDR IS ARRAY(INTEGER RANGE<>) OF --NOTE THAT THE RANGE HERE CAN CHANGE
				STD_LOGIC_VECTOR(31 DOWNTO 0);
	
-------COMPONENTS--------------------------------
	COMPONENT DCD5x32 IS 
		PORT (DCDIN	:IN STD_LOGIC_VECTOR(4 DOWNTO 0);
				DCDOUT :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));	
	END COMPONENT;
		--INCLUDING 3X8 IN ORDER TO TO USE THE 5X32 DECODER
	COMPONENT DCD3x8 IS
	PORT (S	:IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			Q 	:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));

	END COMPONENT;
		
	--NOTE THAT THE COLON IN BETWEEN IMEM AND TWO_ADDR IS IMPORTANT! JUST LIKE WHEN USING STD:LOGIC
	SIGNAL IMEM : TWO_ADDR(0 TO 15);
	
	BEGIN
	
		D1: DCD5X32 PORT MAP (ADDR (5 DOWNTO 1), IMEM(0));

	
	--NOTE THAT THE DECODER WILL ONLY DO WORK WHEN ADDR(15 DOWNTO 6) ARE ZERO
	--NOTE THAT ONLY EVEN MEMORY ADDRESSES ARE USED.
	
----ASSIGNING MEMORY-------------------------------------
	
	--EXAMPLE IMEM(0) <= "1000101110101101";
	
	--THIS CODE WILL ONLY WORK IF THE FIRST SEVERAL BITS ARE ZERO SO, STARTS THE DECODING
	--IF (ADDR(15 DOWNTO 6) = "0000000000") THEN

	--END IF;
	
END INS_MEM_BEHAVIOR;