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
-- Generated on "04/27/2023 15:54:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          topLev
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY topLev_vhd_vec_tst IS
END topLev_vhd_vec_tst;
ARCHITECTURE topLev_arch OF topLev_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALU_SEL : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL INS : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL MEMOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL PCOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
SIGNAL RTDAT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Z : STD_LOGIC;
COMPONENT topLev
	PORT (
	ALU_SEL : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	CLK : IN STD_LOGIC;
	INS : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	MEMOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	PCOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RST : IN STD_LOGIC;
	RTDAT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : topLev
	PORT MAP (
-- list connections between master ports and signals
	ALU_SEL => ALU_SEL,
	CLK => CLK,
	INS => INS,
	MEMOUT => MEMOUT,
	PCOUT => PCOUT,
	RST => RST,
	RTDAT => RTDAT,
	Z => Z
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		CLK <= '0';
		WAIT FOR 40000 ps;
		CLK <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
	WAIT FOR 650000 ps;
	RST <= '1';
	WAIT FOR 150000 ps;
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;
END topLev_arch;
