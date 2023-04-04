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
-- Generated on "04/04/2023 15:35:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PCJMP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PCJMP_vhd_vec_tst IS
END PCJMP_vhd_vec_tst;
ARCHITECTURE PCJMP_arch OF PCJMP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL INS : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL PCOLD : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL PCOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT PCJMP
	PORT (
	INS : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	PCOLD : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	PCOUT : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : PCJMP
	PORT MAP (
-- list connections between master ports and signals
	INS => INS,
	PCOLD => PCOLD,
	PCOUT => PCOUT
	);
-- INS[11]
t_prcs_INS_11: PROCESS
BEGIN
	INS(11) <= '1';
WAIT;
END PROCESS t_prcs_INS_11;
-- INS[10]
t_prcs_INS_10: PROCESS
BEGIN
	INS(10) <= '1';
WAIT;
END PROCESS t_prcs_INS_10;
-- INS[9]
t_prcs_INS_9: PROCESS
BEGIN
	INS(9) <= '1';
WAIT;
END PROCESS t_prcs_INS_9;
-- INS[8]
t_prcs_INS_8: PROCESS
BEGIN
	INS(8) <= '1';
WAIT;
END PROCESS t_prcs_INS_8;
-- INS[7]
t_prcs_INS_7: PROCESS
BEGIN
	INS(7) <= '1';
WAIT;
END PROCESS t_prcs_INS_7;
-- INS[6]
t_prcs_INS_6: PROCESS
BEGIN
	INS(6) <= '1';
WAIT;
END PROCESS t_prcs_INS_6;
-- INS[5]
t_prcs_INS_5: PROCESS
BEGIN
	INS(5) <= '1';
WAIT;
END PROCESS t_prcs_INS_5;
-- INS[4]
t_prcs_INS_4: PROCESS
BEGIN
	INS(4) <= '1';
WAIT;
END PROCESS t_prcs_INS_4;
-- INS[3]
t_prcs_INS_3: PROCESS
BEGIN
	INS(3) <= '1';
WAIT;
END PROCESS t_prcs_INS_3;
-- INS[2]
t_prcs_INS_2: PROCESS
BEGIN
	INS(2) <= '1';
WAIT;
END PROCESS t_prcs_INS_2;
-- INS[1]
t_prcs_INS_1: PROCESS
BEGIN
	INS(1) <= '1';
WAIT;
END PROCESS t_prcs_INS_1;
-- INS[0]
t_prcs_INS_0: PROCESS
BEGIN
	INS(0) <= '1';
WAIT;
END PROCESS t_prcs_INS_0;
-- PCOLD[2]
t_prcs_PCOLD_2: PROCESS
BEGIN
	PCOLD(2) <= '1';
WAIT;
END PROCESS t_prcs_PCOLD_2;
-- PCOLD[1]
t_prcs_PCOLD_1: PROCESS
BEGIN
	PCOLD(1) <= '1';
WAIT;
END PROCESS t_prcs_PCOLD_1;
-- PCOLD[0]
t_prcs_PCOLD_0: PROCESS
BEGIN
	PCOLD(0) <= '1';
WAIT;
END PROCESS t_prcs_PCOLD_0;
END PCJMP_arch;
