-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/23/2023 11:11:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          INS_MEM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY INS_MEM_vhd_vec_tst IS
END INS_MEM_vhd_vec_tst;
ARCHITECTURE INS_MEM_arch OF INS_MEM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADDR : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT INS_MEM
	PORT (
	ADDR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : INS_MEM
	PORT MAP (
-- list connections between master ports and signals
	ADDR => ADDR,
	DOUT => DOUT
	);
-- ADDR[15]
t_prcs_ADDR_15: PROCESS
BEGIN
	ADDR(15) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_15;
-- ADDR[14]
t_prcs_ADDR_14: PROCESS
BEGIN
	ADDR(14) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_14;
-- ADDR[13]
t_prcs_ADDR_13: PROCESS
BEGIN
	ADDR(13) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_13;
-- ADDR[12]
t_prcs_ADDR_12: PROCESS
BEGIN
	ADDR(12) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_12;
-- ADDR[11]
t_prcs_ADDR_11: PROCESS
BEGIN
	ADDR(11) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_11;
-- ADDR[10]
t_prcs_ADDR_10: PROCESS
BEGIN
	ADDR(10) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_10;
-- ADDR[9]
t_prcs_ADDR_9: PROCESS
BEGIN
	ADDR(9) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_9;
-- ADDR[8]
t_prcs_ADDR_8: PROCESS
BEGIN
	ADDR(8) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_8;
-- ADDR[7]
t_prcs_ADDR_7: PROCESS
BEGIN
	ADDR(7) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_7;
-- ADDR[6]
t_prcs_ADDR_6: PROCESS
BEGIN
	ADDR(6) <= '0';
	WAIT FOR 640000 ps;
	ADDR(6) <= '1';
WAIT;
END PROCESS t_prcs_ADDR_6;
-- ADDR[5]
t_prcs_ADDR_5: PROCESS
BEGIN
	ADDR(5) <= '0';
	WAIT FOR 320000 ps;
	ADDR(5) <= '1';
	WAIT FOR 320000 ps;
	ADDR(5) <= '0';
	WAIT FOR 320000 ps;
	ADDR(5) <= '1';
WAIT;
END PROCESS t_prcs_ADDR_5;
-- ADDR[4]
t_prcs_ADDR_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		ADDR(4) <= '0';
		WAIT FOR 160000 ps;
		ADDR(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	ADDR(4) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_4;
-- ADDR[3]
t_prcs_ADDR_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		ADDR(3) <= '0';
		WAIT FOR 80000 ps;
		ADDR(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	ADDR(3) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_3;
-- ADDR[2]
t_prcs_ADDR_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		ADDR(2) <= '0';
		WAIT FOR 40000 ps;
		ADDR(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	ADDR(2) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_2;
-- ADDR[1]
t_prcs_ADDR_1: PROCESS
BEGIN
LOOP
	ADDR(1) <= '0';
	WAIT FOR 20000 ps;
	ADDR(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ADDR_1;
-- ADDR[0]
t_prcs_ADDR_0: PROCESS
BEGIN
LOOP
	ADDR(0) <= '0';
	WAIT FOR 10000 ps;
	ADDR(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ADDR_0;
END INS_MEM_arch;
