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
-- Generated on "04/27/2023 13:36:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ADD16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ADD16_vhd_vec_tst IS
END ADD16_vhd_vec_tst;
ARCHITECTURE ADD16_arch OF ADD16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADDOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL CAIN : STD_LOGIC;
SIGNAL CAOUT : STD_LOGIC;
SIGNAL INA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL INB : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT ADD16
	PORT (
	ADDOUT : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	CAIN : IN STD_LOGIC;
	CAOUT : BUFFER STD_LOGIC;
	INA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	INB : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ADD16
	PORT MAP (
-- list connections between master ports and signals
	ADDOUT => ADDOUT,
	CAIN => CAIN,
	CAOUT => CAOUT,
	INA => INA,
	INB => INB
	);

-- CAIN
t_prcs_CAIN: PROCESS
BEGIN
	CAIN <= '0';
WAIT;
END PROCESS t_prcs_CAIN;
-- INA[15]
t_prcs_INA_15: PROCESS
BEGIN
	INA(15) <= '0';
WAIT;
END PROCESS t_prcs_INA_15;
-- INA[14]
t_prcs_INA_14: PROCESS
BEGIN
	INA(14) <= '0';
WAIT;
END PROCESS t_prcs_INA_14;
-- INA[13]
t_prcs_INA_13: PROCESS
BEGIN
	INA(13) <= '0';
WAIT;
END PROCESS t_prcs_INA_13;
-- INA[12]
t_prcs_INA_12: PROCESS
BEGIN
	INA(12) <= '0';
WAIT;
END PROCESS t_prcs_INA_12;
-- INA[11]
t_prcs_INA_11: PROCESS
BEGIN
	INA(11) <= '0';
WAIT;
END PROCESS t_prcs_INA_11;
-- INA[10]
t_prcs_INA_10: PROCESS
BEGIN
	INA(10) <= '0';
WAIT;
END PROCESS t_prcs_INA_10;
-- INA[9]
t_prcs_INA_9: PROCESS
BEGIN
	INA(9) <= '0';
WAIT;
END PROCESS t_prcs_INA_9;
-- INA[8]
t_prcs_INA_8: PROCESS
BEGIN
	INA(8) <= '1';
WAIT;
END PROCESS t_prcs_INA_8;
-- INA[7]
t_prcs_INA_7: PROCESS
BEGIN
	INA(7) <= '1';
WAIT;
END PROCESS t_prcs_INA_7;
-- INA[6]
t_prcs_INA_6: PROCESS
BEGIN
	INA(6) <= '0';
WAIT;
END PROCESS t_prcs_INA_6;
-- INA[5]
t_prcs_INA_5: PROCESS
BEGIN
	INA(5) <= '0';
WAIT;
END PROCESS t_prcs_INA_5;
-- INA[4]
t_prcs_INA_4: PROCESS
BEGIN
	INA(4) <= '0';
WAIT;
END PROCESS t_prcs_INA_4;
-- INA[3]
t_prcs_INA_3: PROCESS
BEGIN
	INA(3) <= '0';
WAIT;
END PROCESS t_prcs_INA_3;
-- INA[2]
t_prcs_INA_2: PROCESS
BEGIN
	INA(2) <= '0';
WAIT;
END PROCESS t_prcs_INA_2;
-- INA[1]
t_prcs_INA_1: PROCESS
BEGIN
	INA(1) <= '0';
WAIT;
END PROCESS t_prcs_INA_1;
-- INA[0]
t_prcs_INA_0: PROCESS
BEGIN
	INA(0) <= '0';
WAIT;
END PROCESS t_prcs_INA_0;
-- INB[15]
t_prcs_INB_15: PROCESS
BEGIN
	INB(15) <= '0';
WAIT;
END PROCESS t_prcs_INB_15;
-- INB[14]
t_prcs_INB_14: PROCESS
BEGIN
	INB(14) <= '0';
WAIT;
END PROCESS t_prcs_INB_14;
-- INB[13]
t_prcs_INB_13: PROCESS
BEGIN
	INB(13) <= '0';
WAIT;
END PROCESS t_prcs_INB_13;
-- INB[12]
t_prcs_INB_12: PROCESS
BEGIN
	INB(12) <= '0';
WAIT;
END PROCESS t_prcs_INB_12;
-- INB[11]
t_prcs_INB_11: PROCESS
BEGIN
	INB(11) <= '0';
WAIT;
END PROCESS t_prcs_INB_11;
-- INB[10]
t_prcs_INB_10: PROCESS
BEGIN
	INB(10) <= '0';
WAIT;
END PROCESS t_prcs_INB_10;
-- INB[9]
t_prcs_INB_9: PROCESS
BEGIN
	INB(9) <= '0';
WAIT;
END PROCESS t_prcs_INB_9;
-- INB[8]
t_prcs_INB_8: PROCESS
BEGIN
	INB(8) <= '0';
WAIT;
END PROCESS t_prcs_INB_8;
-- INB[7]
t_prcs_INB_7: PROCESS
BEGIN
	INB(7) <= '0';
WAIT;
END PROCESS t_prcs_INB_7;
-- INB[6]
t_prcs_INB_6: PROCESS
BEGIN
	INB(6) <= '0';
WAIT;
END PROCESS t_prcs_INB_6;
-- INB[5]
t_prcs_INB_5: PROCESS
BEGIN
	INB(5) <= '1';
WAIT;
END PROCESS t_prcs_INB_5;
-- INB[4]
t_prcs_INB_4: PROCESS
BEGIN
	INB(4) <= '1';
WAIT;
END PROCESS t_prcs_INB_4;
-- INB[3]
t_prcs_INB_3: PROCESS
BEGIN
	INB(3) <= '0';
WAIT;
END PROCESS t_prcs_INB_3;
-- INB[2]
t_prcs_INB_2: PROCESS
BEGIN
	INB(2) <= '0';
WAIT;
END PROCESS t_prcs_INB_2;
-- INB[1]
t_prcs_INB_1: PROCESS
BEGIN
	INB(1) <= '0';
WAIT;
END PROCESS t_prcs_INB_1;
-- INB[0]
t_prcs_INB_0: PROCESS
BEGIN
	INB(0) <= '0';
WAIT;
END PROCESS t_prcs_INB_0;
END ADD16_arch;
