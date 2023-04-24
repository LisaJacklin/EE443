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
-- Generated on "04/24/2023 10:46:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CONTROL
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CONTROL_vhd_vec_tst IS
END CONTROL_vhd_vec_tst;
ARCHITECTURE CONTROL_arch OF CONTROL_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALU_SEL : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ALUMUXSEL : STD_LOGIC;
SIGNAL INSTRUCT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL MEMR : STD_LOGIC;
SIGNAL MEMW : STD_LOGIC;
SIGNAL PCSEL1 : STD_LOGIC;
SIGNAL PCSEL2 : STD_LOGIC;
SIGNAL REGWE : STD_LOGIC;
SIGNAL RFMUXSEL : STD_LOGIC;
SIGNAL ZERO : STD_LOGIC;
COMPONENT CONTROL
	PORT (
	ALU_SEL : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	ALUMUXSEL : OUT STD_LOGIC;
	INSTRUCT : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	MEMR : OUT STD_LOGIC;
	MEMW : OUT STD_LOGIC;
	PCSEL1 : OUT STD_LOGIC;
	PCSEL2 : OUT STD_LOGIC;
	REGWE : OUT STD_LOGIC;
	RFMUXSEL : OUT STD_LOGIC;
	ZERO : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CONTROL
	PORT MAP (
-- list connections between master ports and signals
	ALU_SEL => ALU_SEL,
	ALUMUXSEL => ALUMUXSEL,
	INSTRUCT => INSTRUCT,
	MEMR => MEMR,
	MEMW => MEMW,
	PCSEL1 => PCSEL1,
	PCSEL2 => PCSEL2,
	REGWE => REGWE,
	RFMUXSEL => RFMUXSEL,
	ZERO => ZERO
	);

-- ZERO
t_prcs_ZERO: PROCESS
BEGIN
	ZERO <= '1';
WAIT;
END PROCESS t_prcs_ZERO;
-- INSTRUCT[15]
t_prcs_INSTRUCT_15: PROCESS
BEGIN
	INSTRUCT(15) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_15;
-- INSTRUCT[14]
t_prcs_INSTRUCT_14: PROCESS
BEGIN
	INSTRUCT(14) <= '0';
	WAIT FOR 340000 ps;
	INSTRUCT(14) <= '1';
WAIT;
END PROCESS t_prcs_INSTRUCT_14;
-- INSTRUCT[13]
t_prcs_INSTRUCT_13: PROCESS
BEGIN
	INSTRUCT(13) <= '1';
	WAIT FOR 340000 ps;
	INSTRUCT(13) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_13;
-- INSTRUCT[12]
t_prcs_INSTRUCT_12: PROCESS
BEGIN
	INSTRUCT(12) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_12;
-- INSTRUCT[11]
t_prcs_INSTRUCT_11: PROCESS
BEGIN
	INSTRUCT(11) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_11;
-- INSTRUCT[10]
t_prcs_INSTRUCT_10: PROCESS
BEGIN
	INSTRUCT(10) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_10;
-- INSTRUCT[9]
t_prcs_INSTRUCT_9: PROCESS
BEGIN
	INSTRUCT(9) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_9;
-- INSTRUCT[8]
t_prcs_INSTRUCT_8: PROCESS
BEGIN
	INSTRUCT(8) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_8;
-- INSTRUCT[7]
t_prcs_INSTRUCT_7: PROCESS
BEGIN
	INSTRUCT(7) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_7;
-- INSTRUCT[6]
t_prcs_INSTRUCT_6: PROCESS
BEGIN
	INSTRUCT(6) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_6;
-- INSTRUCT[5]
t_prcs_INSTRUCT_5: PROCESS
BEGIN
	INSTRUCT(5) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_5;
-- INSTRUCT[4]
t_prcs_INSTRUCT_4: PROCESS
BEGIN
	INSTRUCT(4) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_4;
-- INSTRUCT[3]
t_prcs_INSTRUCT_3: PROCESS
BEGIN
	INSTRUCT(3) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_3;
-- INSTRUCT[2]
t_prcs_INSTRUCT_2: PROCESS
BEGIN
	INSTRUCT(2) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_2;
-- INSTRUCT[1]
t_prcs_INSTRUCT_1: PROCESS
BEGIN
	INSTRUCT(1) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_1;
-- INSTRUCT[0]
t_prcs_INSTRUCT_0: PROCESS
BEGIN
	INSTRUCT(0) <= '0';
WAIT;
END PROCESS t_prcs_INSTRUCT_0;
END CONTROL_arch;
