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
-- Generated on "04/04/2023 15:33:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MUX2X3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MUX2X3_vhd_vec_tst IS
END MUX2X3_vhd_vec_tst;
ARCHITECTURE MUX2X3_arch OF MUX2X3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL INPU1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL INPU2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL OUTPU2X3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL SIGNL2X3 : STD_LOGIC;
COMPONENT MUX2X3
	PORT (
	INPU1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	INPU2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	OUTPU2X3 : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNL2X3 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MUX2X3
	PORT MAP (
-- list connections between master ports and signals
	INPU1 => INPU1,
	INPU2 => INPU2,
	OUTPU2X3 => OUTPU2X3,
	SIGNL2X3 => SIGNL2X3
	);
-- INPU1[2]
t_prcs_INPU1_2: PROCESS
BEGIN
	INPU1(2) <= '0';
WAIT;
END PROCESS t_prcs_INPU1_2;
-- INPU1[1]
t_prcs_INPU1_1: PROCESS
BEGIN
	INPU1(1) <= '0';
WAIT;
END PROCESS t_prcs_INPU1_1;
-- INPU1[0]
t_prcs_INPU1_0: PROCESS
BEGIN
	INPU1(0) <= '0';
WAIT;
END PROCESS t_prcs_INPU1_0;
-- INPU2[2]
t_prcs_INPU2_2: PROCESS
BEGIN
	INPU2(2) <= '1';
WAIT;
END PROCESS t_prcs_INPU2_2;
-- INPU2[1]
t_prcs_INPU2_1: PROCESS
BEGIN
	INPU2(1) <= '1';
WAIT;
END PROCESS t_prcs_INPU2_1;
-- INPU2[0]
t_prcs_INPU2_0: PROCESS
BEGIN
	INPU2(0) <= '1';
WAIT;
END PROCESS t_prcs_INPU2_0;

-- SIGNL2X3
t_prcs_SIGNL2X3: PROCESS
BEGIN
LOOP
	SIGNL2X3 <= '0';
	WAIT FOR 100000 ps;
	SIGNL2X3 <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SIGNL2X3;
END MUX2X3_arch;
