--Lisa Jacklin
--EE 443 LAb 6
-- DATA_MEM.vhd
----------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY DATA_MEM IS
	PORT( ADDR, DIN 	:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			WE, RE, CLK :IN STD_LOGIC;
			DOUT 			:OUT STD_LOGIC_VECTOR (15 DOWNTO 0));	
END DATA_MEM;

ARCHITECTURE DATA_BEHAVIOR OF DATA_MEM IS

------COMPONENTS-----------------------
	COMPONENT DCD3x8 IS
		PORT (S	:IN STD_LOGIC_VECTOR(2 DOWNTO 0);
				Q 	:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT;

	COMPONENT DCD4X16 IS
	PORT( IN4 	:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			CLK 	:IN STD_LOGIC;
			OUT16 :OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT REG8 IS 
	PORT (D 			:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			WE, CLK  :IN STD_LOGIC;	--NOTE THAT EN HERE IS THE WE (WRITE ENABLED)
			Q			:OUT STD_LOGIC_VECTOR(7 DOWNTO 0 ));
	END COMPONENT;
	
-----------SIGNALS----------------------------
	SIGNAL REGOUT1, REGOUT2 :STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL ADDR4: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL INT_BUS: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL WORD_SEL: STD_LOGIC_VECTOR(1 DOWNTO 0);
	
	
	type RAM is array(0 to 31) of STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	SIGNAL DMEM : RAM := (  
		  0 => "1100000010110010",   -- THIS IS WHERE HARDCODED INSTRUCTIONS BELONG
        1 => "0000110100000100",
        2 => "0101011100010110",
        3 => "0000010111000010",
        4 => "0000000000000000",
        5 => "0000000000000000",
        6 => "0000000000000000",
        7 => "0000000000000000",
        8 => "0000000000000000",
        9 => "0000000000000000",
        10 => "0000000000000000",
        11 => "0000000000000000",
        12 => "0000000000000000",
        13 => "0000000000000000",
        14 => "0000000000000000",
        15 => "0000000000000000",
        16 => "0000000000000000",
        17 => "0000000000000000",
        18 => "0000000000000000",
        19 => "0000000000000000",
        20 => "0000000000000000",
        21 => "0000000000000000",
        22 => "0000000000000000",
        23 => "0000000000000000",
        24 => "0000000000000000",
        25 => "0000000000000000",
        26 => "0000000000000000",
        27 => "0000000000000000",
        28 => "0000000000000000",
        29 => "0000000000000000",
        30 => "0000000000000000",
        31 => "0000000000000000");
-------------------------------------------
	
	BEGIN
	--GENERATING THE MEMORY SLOTS FOR THE LSB AND MSB OF THE INFORMATION GIVEN
		REGI: for n in 0 to 15 GENERATE
			b0: reg8 port map(DIN(7 DOWNTO 0), WE, CLK, REGOUT1 ); --LSB
			b1: reg8 port map(DIN(15 downto 8), WE, CLK, REGOUT2); --MSB
		
		END GENERATE REGI;
	
	--HANDLING THE ADDRESS NOW, 16 TO 4
	ADDR4 <= ADDR(3 DOWNTO 0);
	
	--NOW, TO WORK ON THE MULTIPLEXER to choose the correct output

	--using the output from the mux, 
	WORD_SEL(0) <= ADDR(4);
	
	process(addr4) 
		begin
		
		int_bus <= REGOUT1 WHEN ADDR4 = '00000000';
					  REGOUT2 WHEN OTHERS;
	
	END PROCESS;
	--PROGRAM CHUNK FROM THE BOARD
	DOUT (15 DOWNTO 0) <= "ZZZZZZZZZZZZZZZZ" WHEN RE = '0'
							ELSE INT_BUS WHEN WORD_SEL(0) = '1' ELSE (OTHERS => 'Z');
							
							
							
	PROCESS (WE, RE) 
	BEGIN
	
		IF (WE = '1') THEN
			DMEM((TO_INTEGER(UNSIGNED(ADDR)) - 268500992)/4) <= DIN;
		END IF;
		
		IF (RE = '1') THEN
			DOUT <= DMEM((TO_INTEGER(UNSIGNED(ADDR)) - 268500992)/4);
		END IF;
	
	END PROCESS;
	
	
END DATA_BEHAVIOR;
