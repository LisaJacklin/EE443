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
-- Generated on "01/24/2023 15:25:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          REG16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY REG16_vhd_vec_tst IS
END REG16_vhd_vec_tst;
ARCHITECTURE REG16_arch OF REG16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL EN : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT REG16
	PORT (
	CLK : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	EN : IN STD_LOGIC;
	Q : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : REG16
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	D => D,
	EN => EN,
	Q => Q
	);
-- D[15]
t_prcs_D_15: PROCESS
BEGIN
	D(15) <= '0';
WAIT;
END PROCESS t_prcs_D_15;
-- D[14]
t_prcs_D_14: PROCESS
BEGIN
	D(14) <= '0';
WAIT;
END PROCESS t_prcs_D_14;
-- D[13]
t_prcs_D_13: PROCESS
BEGIN
	D(13) <= '0';
WAIT;
END PROCESS t_prcs_D_13;
-- D[12]
t_prcs_D_12: PROCESS
BEGIN
	D(12) <= '0';
WAIT;
END PROCESS t_prcs_D_12;
-- D[11]
t_prcs_D_11: PROCESS
BEGIN
	D(11) <= '0';
WAIT;
END PROCESS t_prcs_D_11;
-- D[10]
t_prcs_D_10: PROCESS
BEGIN
	D(10) <= '0';
WAIT;
END PROCESS t_prcs_D_10;
-- D[9]
t_prcs_D_9: PROCESS
BEGIN
	D(9) <= '0';
WAIT;
END PROCESS t_prcs_D_9;
-- D[8]
t_prcs_D_8: PROCESS
BEGIN
	D(8) <= '0';
WAIT;
END PROCESS t_prcs_D_8;
-- D[7]
t_prcs_D_7: PROCESS
BEGIN
	D(7) <= '0';
WAIT;
END PROCESS t_prcs_D_7;
-- D[6]
t_prcs_D_6: PROCESS
BEGIN
	D(6) <= '0';
	WAIT FOR 640000 ps;
	D(6) <= '1';
WAIT;
END PROCESS t_prcs_D_6;
-- D[5]
t_prcs_D_5: PROCESS
BEGIN
	D(5) <= '0';
	WAIT FOR 320000 ps;
	D(5) <= '1';
	WAIT FOR 320000 ps;
	D(5) <= '0';
	WAIT FOR 320000 ps;
	D(5) <= '1';
WAIT;
END PROCESS t_prcs_D_5;
-- D[4]
t_prcs_D_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		D(4) <= '0';
		WAIT FOR 160000 ps;
		D(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	D(4) <= '0';
WAIT;
END PROCESS t_prcs_D_4;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		D(3) <= '0';
		WAIT FOR 80000 ps;
		D(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	D(3) <= '0';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		D(2) <= '0';
		WAIT FOR 40000 ps;
		D(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
LOOP
	D(1) <= '0';
	WAIT FOR 20000 ps;
	D(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
LOOP
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D_0;

-- EN
t_prcs_EN: PROCESS
BEGIN
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 10000 ps;
	EN <= '0';
	WAIT FOR 10000 ps;
	EN <= '1';
	WAIT FOR 10000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 40000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 10000 ps;
	EN <= '1';
	WAIT FOR 25000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 10000 ps;
	EN <= '0';
	WAIT FOR 10000 ps;
	EN <= '1';
	WAIT FOR 15000 ps;
	EN <= '0';
	WAIT FOR 10000 ps;
	EN <= '1';
	WAIT FOR 15000 ps;
	EN <= '0';
	WAIT FOR 25000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 10000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 10000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 15000 ps;
	EN <= '1';
	WAIT FOR 10000 ps;
	EN <= '0';
	WAIT FOR 10000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 30000 ps;
	EN <= '1';
	WAIT FOR 20000 ps;
	EN <= '0';
	WAIT FOR 20000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 25000 ps;
	EN <= '1';
	WAIT FOR 20000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 15000 ps;
	EN <= '0';
	WAIT FOR 10000 ps;
	EN <= '1';
	WAIT FOR 35000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 15000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 15000 ps;
	EN <= '0';
	WAIT FOR 15000 ps;
	EN <= '1';
	WAIT FOR 10000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 20000 ps;
	EN <= '1';
	WAIT FOR 10000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 15000 ps;
	EN <= '1';
	WAIT FOR 10000 ps;
	EN <= '0';
	WAIT FOR 10000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 15000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 15000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 25000 ps;
	EN <= '0';
	WAIT FOR 15000 ps;
	EN <= '1';
	WAIT FOR 10000 ps;
	EN <= '0';
	WAIT FOR 10000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 10000 ps;
	EN <= '0';
	WAIT FOR 20000 ps;
	EN <= '1';
	WAIT FOR 15000 ps;
	EN <= '0';
	WAIT FOR 15000 ps;
	EN <= '1';
	WAIT FOR 10000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 15000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 35000 ps;
	EN <= '0';
	WAIT FOR 20000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
	WAIT FOR 5000 ps;
	EN <= '1';
	WAIT FOR 5000 ps;
	EN <= '0';
WAIT;
END PROCESS t_prcs_EN;

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
END REG16_arch;
