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
-- Generated on "04/04/2023 15:29:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MUX2X16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MUX2X16_vhd_vec_tst IS
END MUX2X16_vhd_vec_tst;
ARCHITECTURE MUX2X16_arch OF MUX2X16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL MUXIN1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL MUXIN2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL OUTMUX : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SIGN : STD_LOGIC;
COMPONENT MUX2X16
	PORT (
	MUXIN1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	MUXIN2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	OUTMUX : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGN : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MUX2X16
	PORT MAP (
-- list connections between master ports and signals
	MUXIN1 => MUXIN1,
	MUXIN2 => MUXIN2,
	OUTMUX => OUTMUX,
	SIGN => SIGN
	);
-- MUXIN1[15]
t_prcs_MUXIN1_15: PROCESS
BEGIN
	MUXIN1(15) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_15;
-- MUXIN1[14]
t_prcs_MUXIN1_14: PROCESS
BEGIN
	MUXIN1(14) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_14;
-- MUXIN1[13]
t_prcs_MUXIN1_13: PROCESS
BEGIN
	MUXIN1(13) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_13;
-- MUXIN1[12]
t_prcs_MUXIN1_12: PROCESS
BEGIN
	MUXIN1(12) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_12;
-- MUXIN1[11]
t_prcs_MUXIN1_11: PROCESS
BEGIN
	MUXIN1(11) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_11;
-- MUXIN1[10]
t_prcs_MUXIN1_10: PROCESS
BEGIN
	MUXIN1(10) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_10;
-- MUXIN1[9]
t_prcs_MUXIN1_9: PROCESS
BEGIN
	MUXIN1(9) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_9;
-- MUXIN1[8]
t_prcs_MUXIN1_8: PROCESS
BEGIN
	MUXIN1(8) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_8;
-- MUXIN1[7]
t_prcs_MUXIN1_7: PROCESS
BEGIN
	MUXIN1(7) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_7;
-- MUXIN1[6]
t_prcs_MUXIN1_6: PROCESS
BEGIN
	MUXIN1(6) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_6;
-- MUXIN1[5]
t_prcs_MUXIN1_5: PROCESS
BEGIN
	MUXIN1(5) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_5;
-- MUXIN1[4]
t_prcs_MUXIN1_4: PROCESS
BEGIN
	MUXIN1(4) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_4;
-- MUXIN1[3]
t_prcs_MUXIN1_3: PROCESS
BEGIN
	MUXIN1(3) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_3;
-- MUXIN1[2]
t_prcs_MUXIN1_2: PROCESS
BEGIN
	MUXIN1(2) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_2;
-- MUXIN1[1]
t_prcs_MUXIN1_1: PROCESS
BEGIN
	MUXIN1(1) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_1;
-- MUXIN1[0]
t_prcs_MUXIN1_0: PROCESS
BEGIN
	MUXIN1(0) <= '0';
WAIT;
END PROCESS t_prcs_MUXIN1_0;
-- MUXIN2[15]
t_prcs_MUXIN2_15: PROCESS
BEGIN
	MUXIN2(15) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_15;
-- MUXIN2[14]
t_prcs_MUXIN2_14: PROCESS
BEGIN
	MUXIN2(14) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_14;
-- MUXIN2[13]
t_prcs_MUXIN2_13: PROCESS
BEGIN
	MUXIN2(13) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_13;
-- MUXIN2[12]
t_prcs_MUXIN2_12: PROCESS
BEGIN
	MUXIN2(12) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_12;
-- MUXIN2[11]
t_prcs_MUXIN2_11: PROCESS
BEGIN
	MUXIN2(11) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_11;
-- MUXIN2[10]
t_prcs_MUXIN2_10: PROCESS
BEGIN
	MUXIN2(10) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_10;
-- MUXIN2[9]
t_prcs_MUXIN2_9: PROCESS
BEGIN
	MUXIN2(9) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_9;
-- MUXIN2[8]
t_prcs_MUXIN2_8: PROCESS
BEGIN
	MUXIN2(8) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_8;
-- MUXIN2[7]
t_prcs_MUXIN2_7: PROCESS
BEGIN
	MUXIN2(7) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_7;
-- MUXIN2[6]
t_prcs_MUXIN2_6: PROCESS
BEGIN
	MUXIN2(6) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_6;
-- MUXIN2[5]
t_prcs_MUXIN2_5: PROCESS
BEGIN
	MUXIN2(5) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_5;
-- MUXIN2[4]
t_prcs_MUXIN2_4: PROCESS
BEGIN
	MUXIN2(4) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_4;
-- MUXIN2[3]
t_prcs_MUXIN2_3: PROCESS
BEGIN
	MUXIN2(3) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_3;
-- MUXIN2[2]
t_prcs_MUXIN2_2: PROCESS
BEGIN
	MUXIN2(2) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_2;
-- MUXIN2[1]
t_prcs_MUXIN2_1: PROCESS
BEGIN
	MUXIN2(1) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_1;
-- MUXIN2[0]
t_prcs_MUXIN2_0: PROCESS
BEGIN
	MUXIN2(0) <= '1';
WAIT;
END PROCESS t_prcs_MUXIN2_0;

-- SIGN
t_prcs_SIGN: PROCESS
BEGIN
LOOP
	SIGN <= '0';
	WAIT FOR 100000 ps;
	SIGN <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SIGN;
END MUX2X16_arch;
