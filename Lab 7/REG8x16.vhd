--Lisa Jacklin
-- EE 443 LAb 4 
-- 2/21/2023

-- REG8x16 using all of the other components

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY REG8x16 IS
	PORT ( ADD_R1, ADD_R2, ADD_W :IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			 DIN						  :BUFFER STD_LOGIC_VECTOR (15 DOWNTO 0);
			 EN, CLK 				  :IN STD_LOGIC;	-- THE SIGNAL AND CLOCK SIGNAL
			 DOUT1, DOUT2 			  :OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END REG8x16;

ARCHITECTURE REG8x16_BEHAVIORAL OF REG8x16 IS
	-- 8 TO 16 MULTIPLEXER
	COMPONENT mux8X16 IS
		PORT ( I1, I2, I3, I4, I5, I6, I7, I8	:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
				 SGNL										:IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				 Z											:OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT;
	
	--THREE TO EIGHT DECODER FOR READ AND WRITE 
	COMPONENT DCD3x8 IS
		PORT (S	:IN STD_LOGIC_VECTOR(2 DOWNTO 0);
				Q 	:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT;
	
	-- 8 BIT REGISTER
	COMPONENT REG8 IS
			PORT (D 			:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			WE, CLK  :IN STD_LOGIC;								--NOTE THAT EN HERE IS THE WE (WRITE ENABLED)
			Q			:OUT STD_LOGIC_VECTOR(7 DOWNTO 0 ));
	END COMPONENT;
	
	SIGNAL R1,R2,R3,R4,R5,R6,R7,R8 :STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL DECOUT :STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
		--SETTING UP THE REGISTERS TO TAKE INPUTS, ENABLES, CLOCKS AND TO BE STORED IN A SIGNAL
			REGI1: REG8 PORT MAP (DIN(7 DOWNTO 0), EN, CLK, R1(7 DOWNTO 0));
			REGI2: REG8 PORT MAP (DIN(7 DOWNTO 0), EN, CLK, R2(7 DOWNTO 0));
			REGI3: REG8 PORT MAP (DIN(7 DOWNTO 0), EN, CLK, R3(7 DOWNTO 0));
			REGI4: REG8 PORT MAP (DIN(7 DOWNTO 0), EN, CLK, R4(7 DOWNTO 0));
			
			REGI5: REG8 PORT MAP (DIN(7 DOWNTO 0), EN, CLK, R5(7 DOWNTO 0));
			REGI6: REG8 PORT MAP (DIN(7 DOWNTO 0), EN, CLK, R6(7 DOWNTO 0));
			REGI7: REG8 PORT MAP (DIN(7 DOWNTO 0), EN, CLK, R7(7 DOWNTO 0));
			REGI8: REG8 PORT MAP (DIN(7 DOWNTO 0), EN, CLK, R8(7 DOWNTO 0));

			--THE NEXT THING IS SETTING UP THE DECODER FOR WRITING
			
			DECO: DCD3x8 PORT MAP (ADD_W(2 DOWNTO 0), DECOUT (7 DOWNTO 0));
			
			--IF THE EN FOR WRITING IS ON, THEN THIS WILL BE PLACED IN THE INPUT FOR THE REGISTERS.
			PROCESS(EN) IS
				BEGIN
				IF (EN = '1') THEN
					DIN(7 DOWNTO 0) <= DECOUT;
				END IF;
			END PROCESS;
			
			--NOW TO SET UP THE ADD_R1 AND ADD_R2 WITH THE MULTIPLEXER 8X16...
			MUX1:MUX8X16 PORT MAP (R1, R2, R3, R4, R5, R6, R7,R8, ADD_R1, DOUT1);
			MUX2:MUX8X16 PORT MAP (R1, R2, R3, R4, R5, R6, R7,R8, ADD_R2, DOUT2);
			
		
	END REG8x16_BEHAVIORAL;