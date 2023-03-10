--Lisa Jacklin
-- EE 443 Lab 5
-- 2/28/2023
--ALU16 CODE
------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ALU16 IS
	PORT(A,B 					  :IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		  SEL						  :IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		  F 						  :OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		  ZERO, OVERFLOW, COUT :OUT STD_LOGIC);
	
	END ALU16;
	
ARCHITECTURE ALU16_BEHAVIOR OF ALU16 IS
	COMPONENT ALU4 IS
		PORT (A, B 			:IN STD_LOGIC_VECTOR (3 DOWNTO 0);
				LESS, CIN 	:IN STD_LOGIC;
				SEL			:IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				COUT, OVERFLOW, SET, ZERO	:OUT STD_LOGIC;
				F				:OUT STD_LOGIC_VECTOR (3 DOWNTO 0));	
	END COMPONENT;
	
--ADD SIGNALS HERE
	SIGNAL COUT0, COUT1, COUT2, COUT3, OV0, OV1, OV2, OV3,LESS, CIN:STD_LOGIC;
   SIGNAL ZER0, ZER1, ZER2, ZER3, SET0, SET1,SET2, SET3 :STD_LOGIC;
	SIGNAL F0,F1,F2,F3    : STD_LOGIC_VECTOR (3 DOWNTO 0);
	
	BEGIN
	--4 PORTMAPS FOR THE ALU4'S WHICH WILL COMPILE THE 16 BIT VALUE IN SEPARATE SECTIONS
	ALU0: ALU4 PORT MAP (A(3 DOWNTO 0), B (3 DOWNTO 0), LESS, CIN, SEL, COUT0, OV0, SET0, ZER0, F0 );
	ALU1: ALU4 PORT MAP (A(7 DOWNTO 4), B (7 DOWNTO 4), LESS, CIN, SEL, COUT1, OV1, SET1, ZER1, F1 );
	ALU2: ALU4 PORT MAP (A(11 DOWNTO 8), B (11 DOWNTO 8), LESS, CIN, SEL, COUT2, OV2, SET2, ZER2, F2 );
	ALU3: ALU4 PORT MAP (A(15 DOWNTO 12), B (15 DOWNTO 12),LESS, CIN, SEL, COUT3, OV3,SET3, ZER3, F3 );
	-- NEED A PROCESS TO DETERMINE THE OUTPUT AS THE INPUTS CHANGE
	
	PROCESS ( SEL) IS
		BEGIN 
			IF SEL = "000" THEN F<= BWANDOUT;  --AND
		 ELSIF SEL = "001" THEN F<= BWOROUT; --OR
		 ELSIF SEL =  "010" THEN F<= ADDOUT; --ADD
		 ELSIF SEL =  "100" THEN F<= SUB; --SUB 
	   -- ELSIF SEL =  "110" THEN SET<= SLT; --SET LESS THAN
		 ELSIF SEL =  "111" THEN F<= PINOUTA; --NOT
		 ELSE F <= A;
		 END IF;	  
		
	END PROCESS;
	
	END ALU16_BEHAVIOR;