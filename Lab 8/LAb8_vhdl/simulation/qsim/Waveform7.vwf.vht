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
-- Generated on "04/25/2023 17:56:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ADD4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ADD4_vhd_vec_tst IS
END ADD4_vhd_vec_tst;
ARCHITECTURE ADD4_arch OF ADD4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C0 : STD_LOGIC;
SIGNAL C4 : STD_LOGIC;
SIGNAL LHO : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OVERFLOW : STD_LOGIC;
SIGNAL R : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RHO : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ADD4
	PORT (
	C0 : IN STD_LOGIC;
	C4 : OUT STD_LOGIC;
	LHO : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	OVERFLOW : OUT STD_LOGIC;
	R : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RHO : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ADD4
	PORT MAP (
-- list connections between master ports and signals
	C0 => C0,
	C4 => C4,
	LHO => LHO,
	OVERFLOW => OVERFLOW,
	R => R,
	RHO => RHO
	);

-- C0
t_prcs_C0: PROCESS
BEGIN
	C0 <= '0';
WAIT;
END PROCESS t_prcs_C0;
-- RHO[3]
t_prcs_RHO_3: PROCESS
BEGIN
	RHO(3) <= '1';
WAIT;
END PROCESS t_prcs_RHO_3;
-- RHO[2]
t_prcs_RHO_2: PROCESS
BEGIN
	RHO(2) <= '1';
WAIT;
END PROCESS t_prcs_RHO_2;
-- RHO[1]
t_prcs_RHO_1: PROCESS
BEGIN
	RHO(1) <= '1';
WAIT;
END PROCESS t_prcs_RHO_1;
-- RHO[0]
t_prcs_RHO_0: PROCESS
BEGIN
	RHO(0) <= '1';
WAIT;
END PROCESS t_prcs_RHO_0;
-- LHO[3]
t_prcs_LHO_3: PROCESS
BEGIN
	LHO(3) <= '0';
WAIT;
END PROCESS t_prcs_LHO_3;
-- LHO[2]
t_prcs_LHO_2: PROCESS
BEGIN
	LHO(2) <= '0';
WAIT;
END PROCESS t_prcs_LHO_2;
-- LHO[1]
t_prcs_LHO_1: PROCESS
BEGIN
	LHO(1) <= '0';
WAIT;
END PROCESS t_prcs_LHO_1;
-- LHO[0]
t_prcs_LHO_0: PROCESS
BEGIN
	LHO(0) <= '0';
WAIT;
END PROCESS t_prcs_LHO_0;
END ADD4_arch;
