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
-- Generated on "04/30/2023 11:42:58"
                                                             
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
SIGNAL ALUMUXSEL : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL IMM_EXT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL INS : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL MEMOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL MEMR : STD_LOGIC;
SIGNAL MEMW : STD_LOGIC;
SIGNAL PCMUXSEL : STD_LOGIC;
SIGNAL PCOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL PCSEL0 : STD_LOGIC;
SIGNAL PCSEL1 : STD_LOGIC;
SIGNAL REGWE : STD_LOGIC;
SIGNAL RSDAT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
SIGNAL RTDAT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Z : STD_LOGIC;
COMPONENT topLev
	PORT (
	ALU_SEL : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	ALUMUXSEL : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	IMM_EXT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	INS : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	MEMOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	MEMR : OUT STD_LOGIC;
	MEMW : OUT STD_LOGIC;
	PCMUXSEL : OUT STD_LOGIC;
	PCOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	PCSEL0 : OUT STD_LOGIC;
	PCSEL1 : OUT STD_LOGIC;
	REGWE : OUT STD_LOGIC;
	RSDAT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
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
	ALUMUXSEL => ALUMUXSEL,
	CLK => CLK,
	IMM_EXT => IMM_EXT,
	INS => INS,
	MEMOUT => MEMOUT,
	MEMR => MEMR,
	MEMW => MEMW,
	PCMUXSEL => PCMUXSEL,
	PCOUT => PCOUT,
	PCSEL0 => PCSEL0,
	PCSEL1 => PCSEL1,
	REGWE => REGWE,
	RSDAT => RSDAT,
	RST => RST,
	RTDAT => RTDAT,
	Z => Z
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
	WAIT FOR 620000 ps;
	RST <= '1';
	WAIT FOR 140000 ps;
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;
END topLev_arch;
