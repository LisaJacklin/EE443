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
-- Generated on "04/27/2023 16:40:32"
                                                             
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
END INS_MEM_arch;
