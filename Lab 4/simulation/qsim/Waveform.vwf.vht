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
-- Generated on "02/28/2023 17:13:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          REG8x16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY REG8x16_vhd_vec_tst IS
END REG8x16_vhd_vec_tst;
ARCHITECTURE REG8x16_arch OF REG8x16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADD_R1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ADD_R2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ADD_W : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL DIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DOUT1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DOUT2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL EN : STD_LOGIC;
COMPONENT REG8x16
	PORT (
	ADD_R1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	ADD_R2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	ADD_W : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	CLK : IN STD_LOGIC;
	DIN : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	DOUT1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	DOUT2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	EN : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : REG8x16
	PORT MAP (
-- list connections between master ports and signals
	ADD_R1 => ADD_R1,
	ADD_R2 => ADD_R2,
	ADD_W => ADD_W,
	CLK => CLK,
	DIN => DIN,
	DOUT1 => DOUT1,
	DOUT2 => DOUT2,
	EN => EN
	);
-- ADD_R1[2]
t_prcs_ADD_R1_2: PROCESS
BEGIN
	ADD_R1(2) <= '0';
WAIT;
END PROCESS t_prcs_ADD_R1_2;
-- ADD_R1[1]
t_prcs_ADD_R1_1: PROCESS
BEGIN
	ADD_R1(1) <= '0';
WAIT;
END PROCESS t_prcs_ADD_R1_1;
-- ADD_R1[0]
t_prcs_ADD_R1_0: PROCESS
BEGIN
	ADD_R1(0) <= '0';
WAIT;
END PROCESS t_prcs_ADD_R1_0;
-- ADD_R2[2]
t_prcs_ADD_R2_2: PROCESS
BEGIN
	ADD_R2(2) <= '0';
WAIT;
END PROCESS t_prcs_ADD_R2_2;
-- ADD_R2[1]
t_prcs_ADD_R2_1: PROCESS
BEGIN
	ADD_R2(1) <= '0';
WAIT;
END PROCESS t_prcs_ADD_R2_1;
-- ADD_R2[0]
t_prcs_ADD_R2_0: PROCESS
BEGIN
	ADD_R2(0) <= '0';
WAIT;
END PROCESS t_prcs_ADD_R2_0;
-- ADD_W[2]
t_prcs_ADD_W_2: PROCESS
BEGIN
	ADD_W(2) <= '0';
WAIT;
END PROCESS t_prcs_ADD_W_2;
-- ADD_W[1]
t_prcs_ADD_W_1: PROCESS
BEGIN
	ADD_W(1) <= '0';
WAIT;
END PROCESS t_prcs_ADD_W_1;
-- ADD_W[0]
t_prcs_ADD_W_0: PROCESS
BEGIN
	ADD_W(0) <= '0';
WAIT;
END PROCESS t_prcs_ADD_W_0;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- EN
t_prcs_EN: PROCESS
BEGIN
	EN <= '1';
WAIT;
END PROCESS t_prcs_EN;
END REG8x16_arch;
