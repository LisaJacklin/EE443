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
-- Generated on "04/25/2023 14:31:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Level2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Level2_vhd_vec_tst IS
END Level2_vhd_vec_tst;
ARCHITECTURE Level2_arch OF Level2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL IMM_EXT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL INS : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL PC_SEL0 : STD_LOGIC;
SIGNAL PC_SEL1 : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
COMPONENT Level2
	PORT (
	CLK : IN STD_LOGIC;
	IMM_EXT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	INS : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	PC_SEL0 : IN STD_LOGIC;
	PC_SEL1 : IN STD_LOGIC;
	RST : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Level2
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	IMM_EXT => IMM_EXT,
	INS => INS,
	PC_SEL0 => PC_SEL0,
	PC_SEL1 => PC_SEL1,
	RST => RST
	);

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

-- PC_SEL0
t_prcs_PC_SEL0: PROCESS
BEGIN
	PC_SEL0 <= '1';
WAIT;
END PROCESS t_prcs_PC_SEL0;

-- PC_SEL1
t_prcs_PC_SEL1: PROCESS
BEGIN
	PC_SEL1 <= '1';
WAIT;
END PROCESS t_prcs_PC_SEL1;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;
END Level2_arch;