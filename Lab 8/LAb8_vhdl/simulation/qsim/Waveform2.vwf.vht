-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/18/2023 17:20:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Level3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Level3_vhd_vec_tst IS
END Level3_vhd_vec_tst;
ARCHITECTURE Level3_arch OF Level3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALU_RES : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ALU_SEL : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ALUMUX_SEL : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL IMM_EXT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL INS : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RDDAT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL REG_WE : STD_LOGIC;
SIGNAL RFMUX_SEL : STD_LOGIC;
SIGNAL RTDAT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ZERO : STD_LOGIC;
COMPONENT Level3
	PORT (
	ALU_RES : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ALU_SEL : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	ALUMUX_SEL : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	IMM_EXT : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	INS : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	RDDAT : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	REG_WE : IN STD_LOGIC;
	RFMUX_SEL : IN STD_LOGIC;
	RTDAT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ZERO : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Level3
	PORT MAP (
-- list connections between master ports and signals
	ALU_RES => ALU_RES,
	ALU_SEL => ALU_SEL,
	ALUMUX_SEL => ALUMUX_SEL,
	CLK => CLK,
	IMM_EXT => IMM_EXT,
	INS => INS,
	RDDAT => RDDAT,
	REG_WE => REG_WE,
	RFMUX_SEL => RFMUX_SEL,
	RTDAT => RTDAT,
	ZERO => ZERO
	);
-- ALU_SEL[2]
t_prcs_ALU_SEL_2: PROCESS
BEGIN
	ALU_SEL(2) <= '0';
WAIT;
END PROCESS t_prcs_ALU_SEL_2;
-- ALU_SEL[1]
t_prcs_ALU_SEL_1: PROCESS
BEGIN
	ALU_SEL(1) <= '0';
WAIT;
END PROCESS t_prcs_ALU_SEL_1;
-- ALU_SEL[0]
t_prcs_ALU_SEL_0: PROCESS
BEGIN
	ALU_SEL(0) <= '0';
WAIT;
END PROCESS t_prcs_ALU_SEL_0;

-- ALUMUX_SEL
t_prcs_ALUMUX_SEL: PROCESS
BEGIN
	ALUMUX_SEL <= '0';
WAIT;
END PROCESS t_prcs_ALUMUX_SEL;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- IMM_EXT[15]
t_prcs_IMM_EXT_15: PROCESS
BEGIN
	IMM_EXT(15) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_15;
-- IMM_EXT[14]
t_prcs_IMM_EXT_14: PROCESS
BEGIN
	IMM_EXT(14) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_14;
-- IMM_EXT[13]
t_prcs_IMM_EXT_13: PROCESS
BEGIN
	IMM_EXT(13) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_13;
-- IMM_EXT[12]
t_prcs_IMM_EXT_12: PROCESS
BEGIN
	IMM_EXT(12) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_12;
-- IMM_EXT[11]
t_prcs_IMM_EXT_11: PROCESS
BEGIN
	IMM_EXT(11) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_11;
-- IMM_EXT[10]
t_prcs_IMM_EXT_10: PROCESS
BEGIN
	IMM_EXT(10) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_10;
-- IMM_EXT[9]
t_prcs_IMM_EXT_9: PROCESS
BEGIN
	IMM_EXT(9) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_9;
-- IMM_EXT[8]
t_prcs_IMM_EXT_8: PROCESS
BEGIN
	IMM_EXT(8) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_8;
-- IMM_EXT[7]
t_prcs_IMM_EXT_7: PROCESS
BEGIN
	IMM_EXT(7) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_7;
-- IMM_EXT[6]
t_prcs_IMM_EXT_6: PROCESS
BEGIN
	IMM_EXT(6) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_6;
-- IMM_EXT[5]
t_prcs_IMM_EXT_5: PROCESS
BEGIN
	IMM_EXT(5) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_5;
-- IMM_EXT[4]
t_prcs_IMM_EXT_4: PROCESS
BEGIN
	IMM_EXT(4) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_4;
-- IMM_EXT[3]
t_prcs_IMM_EXT_3: PROCESS
BEGIN
	IMM_EXT(3) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_3;
-- IMM_EXT[2]
t_prcs_IMM_EXT_2: PROCESS
BEGIN
	IMM_EXT(2) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_2;
-- IMM_EXT[1]
t_prcs_IMM_EXT_1: PROCESS
BEGIN
	IMM_EXT(1) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_1;
-- IMM_EXT[0]
t_prcs_IMM_EXT_0: PROCESS
BEGIN
	IMM_EXT(0) <= '0';
WAIT;
END PROCESS t_prcs_IMM_EXT_0;
-- INS[15]
t_prcs_INS_15: PROCESS
BEGIN
	INS(15) <= '0';
WAIT;
END PROCESS t_prcs_INS_15;
-- INS[14]
t_prcs_INS_14: PROCESS
BEGIN
	INS(14) <= '0';
WAIT;
END PROCESS t_prcs_INS_14;
-- INS[13]
t_prcs_INS_13: PROCESS
BEGIN
	INS(13) <= '0';
WAIT;
END PROCESS t_prcs_INS_13;
-- INS[12]
t_prcs_INS_12: PROCESS
BEGIN
	INS(12) <= '0';
WAIT;
END PROCESS t_prcs_INS_12;
-- INS[11]
t_prcs_INS_11: PROCESS
BEGIN
	INS(11) <= '0';
WAIT;
END PROCESS t_prcs_INS_11;
-- INS[10]
t_prcs_INS_10: PROCESS
BEGIN
	INS(10) <= '0';
WAIT;
END PROCESS t_prcs_INS_10;
-- INS[9]
t_prcs_INS_9: PROCESS
BEGIN
	INS(9) <= '0';
WAIT;
END PROCESS t_prcs_INS_9;
-- INS[8]
t_prcs_INS_8: PROCESS
BEGIN
	INS(8) <= '0';
WAIT;
END PROCESS t_prcs_INS_8;
-- INS[7]
t_prcs_INS_7: PROCESS
BEGIN
	INS(7) <= '0';
WAIT;
END PROCESS t_prcs_INS_7;
-- INS[6]
t_prcs_INS_6: PROCESS
BEGIN
	INS(6) <= '0';
WAIT;
END PROCESS t_prcs_INS_6;
-- INS[5]
t_prcs_INS_5: PROCESS
BEGIN
	INS(5) <= '0';
WAIT;
END PROCESS t_prcs_INS_5;
-- INS[4]
t_prcs_INS_4: PROCESS
BEGIN
	INS(4) <= '0';
WAIT;
END PROCESS t_prcs_INS_4;
-- INS[3]
t_prcs_INS_3: PROCESS
BEGIN
	INS(3) <= '0';
WAIT;
END PROCESS t_prcs_INS_3;
-- INS[2]
t_prcs_INS_2: PROCESS
BEGIN
	INS(2) <= '0';
	WAIT FOR 210000 ps;
	INS(2) <= '1';
	WAIT FOR 110000 ps;
	INS(2) <= '0';
WAIT;
END PROCESS t_prcs_INS_2;
-- INS[1]
t_prcs_INS_1: PROCESS
BEGIN
	INS(1) <= '0';
	WAIT FOR 80000 ps;
	INS(1) <= '1';
	WAIT FOR 130000 ps;
	INS(1) <= '0';
WAIT;
END PROCESS t_prcs_INS_1;
-- INS[0]
t_prcs_INS_0: PROCESS
BEGIN
	INS(0) <= '0';
WAIT;
END PROCESS t_prcs_INS_0;
-- RDDAT[15]
t_prcs_RDDAT_15: PROCESS
BEGIN
	RDDAT(15) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_15;
-- RDDAT[14]
t_prcs_RDDAT_14: PROCESS
BEGIN
	RDDAT(14) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_14;
-- RDDAT[13]
t_prcs_RDDAT_13: PROCESS
BEGIN
	RDDAT(13) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_13;
-- RDDAT[12]
t_prcs_RDDAT_12: PROCESS
BEGIN
	RDDAT(12) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_12;
-- RDDAT[11]
t_prcs_RDDAT_11: PROCESS
BEGIN
	RDDAT(11) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_11;
-- RDDAT[10]
t_prcs_RDDAT_10: PROCESS
BEGIN
	RDDAT(10) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_10;
-- RDDAT[9]
t_prcs_RDDAT_9: PROCESS
BEGIN
	RDDAT(9) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_9;
-- RDDAT[8]
t_prcs_RDDAT_8: PROCESS
BEGIN
	RDDAT(8) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_8;
-- RDDAT[7]
t_prcs_RDDAT_7: PROCESS
BEGIN
	RDDAT(7) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_7;
-- RDDAT[6]
t_prcs_RDDAT_6: PROCESS
BEGIN
	RDDAT(6) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_6;
-- RDDAT[5]
t_prcs_RDDAT_5: PROCESS
BEGIN
	RDDAT(5) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_5;
-- RDDAT[4]
t_prcs_RDDAT_4: PROCESS
BEGIN
	RDDAT(4) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_4;
-- RDDAT[3]
t_prcs_RDDAT_3: PROCESS
BEGIN
	RDDAT(3) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_3;
-- RDDAT[2]
t_prcs_RDDAT_2: PROCESS
BEGIN
	RDDAT(2) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_2;
-- RDDAT[1]
t_prcs_RDDAT_1: PROCESS
BEGIN
	RDDAT(1) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_1;
-- RDDAT[0]
t_prcs_RDDAT_0: PROCESS
BEGIN
	RDDAT(0) <= '1';
WAIT;
END PROCESS t_prcs_RDDAT_0;

-- REG_WE
t_prcs_REG_WE: PROCESS
BEGIN
	REG_WE <= '1';
WAIT;
END PROCESS t_prcs_REG_WE;

-- RFMUX_SEL
t_prcs_RFMUX_SEL: PROCESS
BEGIN
	RFMUX_SEL <= '1';
WAIT;
END PROCESS t_prcs_RFMUX_SEL;
END Level3_arch;
