--Lisa Jacklin
--EE 443 LAb 6
-- DATA_MEM.vhd
----------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

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
	WITH ADDR4 SELECT
		INT_BUS <= REGOUT1 WHEN '00000000',
					REGOUT2 WHEN OTHERS;
	
	--using the output from the mux, 
	WORD_SEL(0) <= ADDR(4);
	
	--PROGRAM CHUNK FROM THE BOARD
	DOUT (15 DOWNTO 0) <= "ZZZZZZZZZZZZZZZZ" WHEN RE = '0'
							ELSE INT_BUS WHEN WORD_SEL(0) = '1' ELSE (OTHERS => 'Z');
	
	
END DATA_BEHAVIOR;
