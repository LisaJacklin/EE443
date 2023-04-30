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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition"

-- DATE "04/30/2023 11:42:59"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	topLev IS
    PORT (
	Z : OUT std_logic;
	INS : OUT std_logic_vector(15 DOWNTO 0);
	CLK : IN std_logic;
	RST : IN std_logic;
	PCSEL0 : OUT std_logic;
	PCSEL1 : OUT std_logic;
	REGWE : OUT std_logic;
	ALUMUXSEL : OUT std_logic;
	ALU_SEL : OUT std_logic_vector(2 DOWNTO 0);
	IMM_EXT : OUT std_logic_vector(15 DOWNTO 0);
	MEMOUT : OUT std_logic_vector(15 DOWNTO 0);
	MEMW : OUT std_logic;
	MEMR : OUT std_logic;
	RTDAT : OUT std_logic_vector(15 DOWNTO 0);
	PCMUXSEL : OUT std_logic;
	PCOUT : OUT std_logic_vector(15 DOWNTO 0);
	RSDAT : OUT std_logic_vector(15 DOWNTO 0)
	);
END topLev;

-- Design Ports Information
-- Z	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[15]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[14]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[13]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[12]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[11]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[10]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[9]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[8]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[7]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[6]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[5]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[4]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[3]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCSEL0	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCSEL1	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGWE	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUMUXSEL	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[2]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[1]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[0]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[15]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[14]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[13]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[12]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[11]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[10]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[9]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[8]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[6]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[5]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[4]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[3]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[15]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[14]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[13]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[12]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[11]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[10]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[8]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[7]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[6]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[5]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[4]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[3]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[1]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[0]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMW	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMR	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[15]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[14]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[13]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[12]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[11]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[10]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[9]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[8]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[7]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[6]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[4]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[2]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[0]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXSEL	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[15]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[14]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[13]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[12]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[11]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[10]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[9]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[8]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[7]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[6]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[5]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[4]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[3]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[2]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[0]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[15]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[14]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[13]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[12]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[11]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[10]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[9]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[8]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[6]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[3]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[0]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF topLev IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_INS : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_PCSEL0 : std_logic;
SIGNAL ww_PCSEL1 : std_logic;
SIGNAL ww_REGWE : std_logic;
SIGNAL ww_ALUMUXSEL : std_logic;
SIGNAL ww_ALU_SEL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_IMM_EXT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_MEMOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_MEMW : std_logic;
SIGNAL ww_MEMR : std_logic;
SIGNAL ww_RTDAT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PCMUXSEL : std_logic;
SIGNAL ww_PCOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RSDAT : std_logic_vector(15 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \INS[15]~output_o\ : std_logic;
SIGNAL \INS[14]~output_o\ : std_logic;
SIGNAL \INS[13]~output_o\ : std_logic;
SIGNAL \INS[12]~output_o\ : std_logic;
SIGNAL \INS[11]~output_o\ : std_logic;
SIGNAL \INS[10]~output_o\ : std_logic;
SIGNAL \INS[9]~output_o\ : std_logic;
SIGNAL \INS[8]~output_o\ : std_logic;
SIGNAL \INS[7]~output_o\ : std_logic;
SIGNAL \INS[6]~output_o\ : std_logic;
SIGNAL \INS[5]~output_o\ : std_logic;
SIGNAL \INS[4]~output_o\ : std_logic;
SIGNAL \INS[3]~output_o\ : std_logic;
SIGNAL \INS[2]~output_o\ : std_logic;
SIGNAL \INS[1]~output_o\ : std_logic;
SIGNAL \INS[0]~output_o\ : std_logic;
SIGNAL \PCSEL0~output_o\ : std_logic;
SIGNAL \PCSEL1~output_o\ : std_logic;
SIGNAL \REGWE~output_o\ : std_logic;
SIGNAL \ALUMUXSEL~output_o\ : std_logic;
SIGNAL \ALU_SEL[2]~output_o\ : std_logic;
SIGNAL \ALU_SEL[1]~output_o\ : std_logic;
SIGNAL \ALU_SEL[0]~output_o\ : std_logic;
SIGNAL \IMM_EXT[15]~output_o\ : std_logic;
SIGNAL \IMM_EXT[14]~output_o\ : std_logic;
SIGNAL \IMM_EXT[13]~output_o\ : std_logic;
SIGNAL \IMM_EXT[12]~output_o\ : std_logic;
SIGNAL \IMM_EXT[11]~output_o\ : std_logic;
SIGNAL \IMM_EXT[10]~output_o\ : std_logic;
SIGNAL \IMM_EXT[9]~output_o\ : std_logic;
SIGNAL \IMM_EXT[8]~output_o\ : std_logic;
SIGNAL \IMM_EXT[7]~output_o\ : std_logic;
SIGNAL \IMM_EXT[6]~output_o\ : std_logic;
SIGNAL \IMM_EXT[5]~output_o\ : std_logic;
SIGNAL \IMM_EXT[4]~output_o\ : std_logic;
SIGNAL \IMM_EXT[3]~output_o\ : std_logic;
SIGNAL \IMM_EXT[2]~output_o\ : std_logic;
SIGNAL \IMM_EXT[1]~output_o\ : std_logic;
SIGNAL \IMM_EXT[0]~output_o\ : std_logic;
SIGNAL \MEMOUT[15]~output_o\ : std_logic;
SIGNAL \MEMOUT[14]~output_o\ : std_logic;
SIGNAL \MEMOUT[13]~output_o\ : std_logic;
SIGNAL \MEMOUT[12]~output_o\ : std_logic;
SIGNAL \MEMOUT[11]~output_o\ : std_logic;
SIGNAL \MEMOUT[10]~output_o\ : std_logic;
SIGNAL \MEMOUT[9]~output_o\ : std_logic;
SIGNAL \MEMOUT[8]~output_o\ : std_logic;
SIGNAL \MEMOUT[7]~output_o\ : std_logic;
SIGNAL \MEMOUT[6]~output_o\ : std_logic;
SIGNAL \MEMOUT[5]~output_o\ : std_logic;
SIGNAL \MEMOUT[4]~output_o\ : std_logic;
SIGNAL \MEMOUT[3]~output_o\ : std_logic;
SIGNAL \MEMOUT[2]~output_o\ : std_logic;
SIGNAL \MEMOUT[1]~output_o\ : std_logic;
SIGNAL \MEMOUT[0]~output_o\ : std_logic;
SIGNAL \MEMW~output_o\ : std_logic;
SIGNAL \MEMR~output_o\ : std_logic;
SIGNAL \RTDAT[15]~output_o\ : std_logic;
SIGNAL \RTDAT[14]~output_o\ : std_logic;
SIGNAL \RTDAT[13]~output_o\ : std_logic;
SIGNAL \RTDAT[12]~output_o\ : std_logic;
SIGNAL \RTDAT[11]~output_o\ : std_logic;
SIGNAL \RTDAT[10]~output_o\ : std_logic;
SIGNAL \RTDAT[9]~output_o\ : std_logic;
SIGNAL \RTDAT[8]~output_o\ : std_logic;
SIGNAL \RTDAT[7]~output_o\ : std_logic;
SIGNAL \RTDAT[6]~output_o\ : std_logic;
SIGNAL \RTDAT[5]~output_o\ : std_logic;
SIGNAL \RTDAT[4]~output_o\ : std_logic;
SIGNAL \RTDAT[3]~output_o\ : std_logic;
SIGNAL \RTDAT[2]~output_o\ : std_logic;
SIGNAL \RTDAT[1]~output_o\ : std_logic;
SIGNAL \RTDAT[0]~output_o\ : std_logic;
SIGNAL \PCMUXSEL~output_o\ : std_logic;
SIGNAL \PCOUT[15]~output_o\ : std_logic;
SIGNAL \PCOUT[14]~output_o\ : std_logic;
SIGNAL \PCOUT[13]~output_o\ : std_logic;
SIGNAL \PCOUT[12]~output_o\ : std_logic;
SIGNAL \PCOUT[11]~output_o\ : std_logic;
SIGNAL \PCOUT[10]~output_o\ : std_logic;
SIGNAL \PCOUT[9]~output_o\ : std_logic;
SIGNAL \PCOUT[8]~output_o\ : std_logic;
SIGNAL \PCOUT[7]~output_o\ : std_logic;
SIGNAL \PCOUT[6]~output_o\ : std_logic;
SIGNAL \PCOUT[5]~output_o\ : std_logic;
SIGNAL \PCOUT[4]~output_o\ : std_logic;
SIGNAL \PCOUT[3]~output_o\ : std_logic;
SIGNAL \PCOUT[2]~output_o\ : std_logic;
SIGNAL \PCOUT[1]~output_o\ : std_logic;
SIGNAL \PCOUT[0]~output_o\ : std_logic;
SIGNAL \RSDAT[15]~output_o\ : std_logic;
SIGNAL \RSDAT[14]~output_o\ : std_logic;
SIGNAL \RSDAT[13]~output_o\ : std_logic;
SIGNAL \RSDAT[12]~output_o\ : std_logic;
SIGNAL \RSDAT[11]~output_o\ : std_logic;
SIGNAL \RSDAT[10]~output_o\ : std_logic;
SIGNAL \RSDAT[9]~output_o\ : std_logic;
SIGNAL \RSDAT[8]~output_o\ : std_logic;
SIGNAL \RSDAT[7]~output_o\ : std_logic;
SIGNAL \RSDAT[6]~output_o\ : std_logic;
SIGNAL \RSDAT[5]~output_o\ : std_logic;
SIGNAL \RSDAT[4]~output_o\ : std_logic;
SIGNAL \RSDAT[3]~output_o\ : std_logic;
SIGNAL \RSDAT[2]~output_o\ : std_logic;
SIGNAL \RSDAT[1]~output_o\ : std_logic;
SIGNAL \RSDAT[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst9|IMEM~1_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[1]~6_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst1|A1|A1|c4Buff~0_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[4]~4_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~15_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[2]~2_combout\ : std_logic;
SIGNAL \inst3|inst1|A1|A2|s4~0_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~11_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~12_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[5]~5_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~13_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~14_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[3]~3_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~0_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~2_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~3_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~4_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~5_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~6_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~7_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~8_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~9_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~10_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX1|G10|Y[0]~1_combout\ : std_logic;
SIGNAL \inst4|inst1|REGI2|Q[1]~1_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX1|G10|Y[3]~0_combout\ : std_logic;
SIGNAL \inst1|DMEM~514_combout\ : std_logic;
SIGNAL \inst1|DMEM~513_combout\ : std_logic;
SIGNAL \inst4|inst1|REGI2|Q[4]~0_combout\ : std_logic;
SIGNAL \inst1|DMEM~512_combout\ : std_logic;
SIGNAL \inst1|DMEM~515_combout\ : std_logic;
SIGNAL \inst1|DMEM~516_combout\ : std_logic;
SIGNAL \inst1|DMEM~517_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|inst1|REGI2|Q[7]~2_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX2|G10|Y[3]~0_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX2|G10|Y[2]~1_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX2|G10|Y[1]~2_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX2|G10|Y[0]~3_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX2|G9|Y[2]~0_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX2|G9|Y[1]~1_combout\ : std_logic;
SIGNAL \inst3|inst1|A1|A2|c4Buff~1_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[6]~14_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[7]~13_combout\ : std_logic;
SIGNAL \inst3|inst1|A1|A2|c4Buff~0_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[8]~12_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[9]~11_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[10]~15_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[11]~7_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[11]~8_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[11]~10_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[12]~9_combout\ : std_logic;
SIGNAL \inst3|inst|PCOUT[13]~2_combout\ : std_logic;
SIGNAL \inst3|inst1|A1|A4|s4~0_combout\ : std_logic;
SIGNAL \inst3|inst|PCOUT[14]~1_combout\ : std_logic;
SIGNAL \inst3|inst|PCOUT[15]~0_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX1|G2|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX1|G10|Y[3]~2_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX1|G10|Y[2]~3_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX1|G10|Y[1]~4_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX1|G9|Y[2]~0_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX1|G9|Y[1]~1_combout\ : std_logic;
SIGNAL \inst3|inst|PCOUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst1|A1|A3|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst1|REGI2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst1|MUX1|G10|ALT_INV_Y[0]~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_DMEM~516_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_DMEM~515_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_DMEM~513_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst3|inst9|ALT_INV_IMEM~6_combout\ : std_logic;
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Z <= ww_Z;
INS <= ww_INS;
ww_CLK <= CLK;
ww_RST <= RST;
PCSEL0 <= ww_PCSEL0;
PCSEL1 <= ww_PCSEL1;
REGWE <= ww_REGWE;
ALUMUXSEL <= ww_ALUMUXSEL;
ALU_SEL <= ww_ALU_SEL;
IMM_EXT <= ww_IMM_EXT;
MEMOUT <= ww_MEMOUT;
MEMW <= ww_MEMW;
MEMR <= ww_MEMR;
RTDAT <= ww_RTDAT;
PCMUXSEL <= ww_PCMUXSEL;
PCOUT <= ww_PCOUT;
RSDAT <= ww_RSDAT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst4|inst1|MUX1|G10|ALT_INV_Y[0]~1_combout\ <= NOT \inst4|inst1|MUX1|G10|Y[0]~1_combout\;
\inst1|ALT_INV_DMEM~516_combout\ <= NOT \inst1|DMEM~516_combout\;
\inst1|ALT_INV_DMEM~515_combout\ <= NOT \inst1|DMEM~515_combout\;
\inst1|ALT_INV_DMEM~513_combout\ <= NOT \inst1|DMEM~513_combout\;
\inst|ALT_INV_Mux4~0_combout\ <= NOT \inst|Mux4~0_combout\;
\inst|ALT_INV_Mux1~0_combout\ <= NOT \inst|Mux1~0_combout\;
\inst3|inst9|ALT_INV_IMEM~6_combout\ <= NOT \inst3|inst9|IMEM~6_combout\;
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y20_N2
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\INS[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~0_combout\,
	devoe => ww_devoe,
	o => \INS[15]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\INS[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~2_combout\,
	devoe => ww_devoe,
	o => \INS[14]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\INS[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~0_combout\,
	devoe => ww_devoe,
	o => \INS[13]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\INS[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~0_combout\,
	devoe => ww_devoe,
	o => \INS[12]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\INS[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~3_combout\,
	devoe => ww_devoe,
	o => \INS[11]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\INS[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~4_combout\,
	devoe => ww_devoe,
	o => \INS[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\INS[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|ALT_INV_IMEM~6_combout\,
	devoe => ww_devoe,
	o => \INS[9]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\INS[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~8_combout\,
	devoe => ww_devoe,
	o => \INS[8]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\INS[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~10_combout\,
	devoe => ww_devoe,
	o => \INS[7]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\INS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INS[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\INS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~12_combout\,
	devoe => ww_devoe,
	o => \INS[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\INS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~12_combout\,
	devoe => ww_devoe,
	o => \INS[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\INS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~3_combout\,
	devoe => ww_devoe,
	o => \INS[3]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\INS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~14_combout\,
	devoe => ww_devoe,
	o => \INS[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\INS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~15_combout\,
	devoe => ww_devoe,
	o => \INS[1]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\INS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INS[0]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\PCSEL0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PCSEL0~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\PCSEL1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \PCSEL1~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\REGWE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \REGWE~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\ALUMUXSEL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ALUMUXSEL~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\ALU_SEL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ALU_SEL[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\ALU_SEL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ALU_SEL[1]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\ALU_SEL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_SEL[0]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\IMM_EXT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IMM_EXT[15]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\IMM_EXT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IMM_EXT[14]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\IMM_EXT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IMM_EXT[13]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\IMM_EXT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IMM_EXT[12]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\IMM_EXT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IMM_EXT[11]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\IMM_EXT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IMM_EXT[10]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\IMM_EXT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IMM_EXT[9]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\IMM_EXT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IMM_EXT[8]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\IMM_EXT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IMM_EXT[7]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\IMM_EXT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IMM_EXT[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\IMM_EXT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~12_combout\,
	devoe => ww_devoe,
	o => \IMM_EXT[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\IMM_EXT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~12_combout\,
	devoe => ww_devoe,
	o => \IMM_EXT[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\IMM_EXT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~3_combout\,
	devoe => ww_devoe,
	o => \IMM_EXT[3]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\IMM_EXT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~14_combout\,
	devoe => ww_devoe,
	o => \IMM_EXT[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\IMM_EXT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~15_combout\,
	devoe => ww_devoe,
	o => \IMM_EXT[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\IMM_EXT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IMM_EXT[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\MEMOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DMEM~512_combout\,
	devoe => ww_devoe,
	o => \MEMOUT[15]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\MEMOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_DMEM~513_combout\,
	devoe => ww_devoe,
	o => \MEMOUT[14]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\MEMOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MEMOUT[13]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\MEMOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DMEM~514_combout\,
	devoe => ww_devoe,
	o => \MEMOUT[12]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\MEMOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MEMOUT[11]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\MEMOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_DMEM~515_combout\,
	devoe => ww_devoe,
	o => \MEMOUT[10]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\MEMOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DMEM~514_combout\,
	devoe => ww_devoe,
	o => \MEMOUT[9]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\MEMOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_DMEM~515_combout\,
	devoe => ww_devoe,
	o => \MEMOUT[8]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\MEMOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_DMEM~516_combout\,
	devoe => ww_devoe,
	o => \MEMOUT[7]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\MEMOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DMEM~517_combout\,
	devoe => ww_devoe,
	o => \MEMOUT[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\MEMOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DMEM~512_combout\,
	devoe => ww_devoe,
	o => \MEMOUT[5]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\MEMOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_DMEM~513_combout\,
	devoe => ww_devoe,
	o => \MEMOUT[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\MEMOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MEMOUT[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\MEMOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DMEM~514_combout\,
	devoe => ww_devoe,
	o => \MEMOUT[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\MEMOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX1|G10|ALT_INV_Y[0]~1_combout\,
	devoe => ww_devoe,
	o => \MEMOUT[1]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\MEMOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MEMOUT[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\MEMW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \MEMW~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\MEMR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MEMR~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\RTDAT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RTDAT[15]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\RTDAT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RTDAT[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\RTDAT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RTDAT[13]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\RTDAT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RTDAT[12]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\RTDAT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RTDAT[11]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\RTDAT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RTDAT[10]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\RTDAT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RTDAT[9]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\RTDAT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RTDAT[8]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\RTDAT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX2|G10|Y[3]~0_combout\,
	devoe => ww_devoe,
	o => \RTDAT[7]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\RTDAT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX2|G10|Y[2]~1_combout\,
	devoe => ww_devoe,
	o => \RTDAT[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\RTDAT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX2|G10|Y[1]~2_combout\,
	devoe => ww_devoe,
	o => \RTDAT[5]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\RTDAT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX2|G10|Y[0]~3_combout\,
	devoe => ww_devoe,
	o => \RTDAT[4]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\RTDAT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RTDAT[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\RTDAT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX2|G9|Y[2]~0_combout\,
	devoe => ww_devoe,
	o => \RTDAT[2]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\RTDAT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX2|G9|Y[1]~1_combout\,
	devoe => ww_devoe,
	o => \RTDAT[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\RTDAT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RTDAT[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\PCMUXSEL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \PCMUXSEL~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\PCOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(15),
	devoe => ww_devoe,
	o => \PCOUT[15]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\PCOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(14),
	devoe => ww_devoe,
	o => \PCOUT[14]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\PCOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(13),
	devoe => ww_devoe,
	o => \PCOUT[13]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\PCOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(12),
	devoe => ww_devoe,
	o => \PCOUT[12]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\PCOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(11),
	devoe => ww_devoe,
	o => \PCOUT[11]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\PCOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(10),
	devoe => ww_devoe,
	o => \PCOUT[10]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\PCOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(9),
	devoe => ww_devoe,
	o => \PCOUT[9]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\PCOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(8),
	devoe => ww_devoe,
	o => \PCOUT[8]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\PCOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(7),
	devoe => ww_devoe,
	o => \PCOUT[7]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\PCOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(6),
	devoe => ww_devoe,
	o => \PCOUT[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\PCOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(5),
	devoe => ww_devoe,
	o => \PCOUT[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\PCOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(4),
	devoe => ww_devoe,
	o => \PCOUT[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\PCOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(3),
	devoe => ww_devoe,
	o => \PCOUT[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\PCOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(2),
	devoe => ww_devoe,
	o => \PCOUT[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\PCOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|PCOUT\(1),
	devoe => ww_devoe,
	o => \PCOUT[1]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\PCOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PCOUT[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\RSDAT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RSDAT[15]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\RSDAT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RSDAT[14]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\RSDAT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RSDAT[13]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\RSDAT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RSDAT[12]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\RSDAT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RSDAT[11]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\RSDAT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RSDAT[10]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\RSDAT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RSDAT[9]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\RSDAT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX1|G2|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \RSDAT[8]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\RSDAT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX1|G10|Y[3]~2_combout\,
	devoe => ww_devoe,
	o => \RSDAT[7]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\RSDAT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX1|G10|Y[2]~3_combout\,
	devoe => ww_devoe,
	o => \RSDAT[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\RSDAT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX1|G10|Y[1]~4_combout\,
	devoe => ww_devoe,
	o => \RSDAT[5]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\RSDAT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX1|G10|Y[0]~1_combout\,
	devoe => ww_devoe,
	o => \RSDAT[4]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\RSDAT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RSDAT[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\RSDAT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX1|G9|Y[2]~0_combout\,
	devoe => ww_devoe,
	o => \RSDAT[2]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\RSDAT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX1|G9|Y[1]~1_combout\,
	devoe => ww_devoe,
	o => \RSDAT[1]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\RSDAT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RSDAT[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X3_Y22_N12
\inst3|inst9|IMEM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~1_combout\ = (!\inst3|inst|PCOUT\(4) & ((\inst3|inst|PCOUT\(3) & (!\inst3|inst|PCOUT\(2) & !\inst3|inst|PCOUT\(1))) # (!\inst3|inst|PCOUT\(3) & (\inst3|inst|PCOUT\(2) & \inst3|inst|PCOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datab => \inst3|inst|PCOUT\(2),
	datac => \inst3|inst|PCOUT\(1),
	datad => \inst3|inst|PCOUT\(4),
	combout => \inst3|inst9|IMEM~1_combout\);

-- Location: LCCOMB_X3_Y22_N30
\inst3|inst7|OUTMUX[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[1]~6_combout\ = (!\inst3|inst|PCOUT\(1) & ((\inst3|inst9|IMEM~0_combout\) # ((\inst3|inst|PCOUT\(5)) # (!\inst3|inst9|IMEM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~0_combout\,
	datab => \inst3|inst9|IMEM~1_combout\,
	datac => \inst3|inst|PCOUT\(1),
	datad => \inst3|inst|PCOUT\(5),
	combout => \inst3|inst7|OUTMUX[1]~6_combout\);

-- Location: IOIBUF_X0_Y36_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X3_Y22_N31
\inst3|inst|PCOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[1]~6_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(1));

-- Location: LCCOMB_X3_Y22_N20
\inst3|inst1|A1|A1|c4Buff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A1|c4Buff~0_combout\ = (!\inst3|inst|PCOUT\(2)) # (!\inst3|inst|PCOUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|PCOUT\(1),
	datad => \inst3|inst|PCOUT\(2),
	combout => \inst3|inst1|A1|A1|c4Buff~0_combout\);

-- Location: LCCOMB_X3_Y22_N4
\inst3|inst7|OUTMUX[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[4]~4_combout\ = (!\inst|Mux1~0_combout\ & (\inst3|inst|PCOUT\(4) $ (((\inst3|inst|PCOUT\(3) & !\inst3|inst1|A1|A1|c4Buff~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datab => \inst3|inst1|A1|A1|c4Buff~0_combout\,
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst|Mux1~0_combout\,
	combout => \inst3|inst7|OUTMUX[4]~4_combout\);

-- Location: FF_X3_Y22_N5
\inst3|inst|PCOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[4]~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(4));

-- Location: LCCOMB_X3_Y22_N28
\inst3|inst9|IMEM~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~15_combout\ = (!\inst3|inst|PCOUT\(3) & (!\inst3|inst|PCOUT\(4) & (!\inst3|inst|PCOUT\(5) & !\inst3|inst|PCOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datab => \inst3|inst|PCOUT\(4),
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst|PCOUT\(1),
	combout => \inst3|inst9|IMEM~15_combout\);

-- Location: LCCOMB_X3_Y22_N24
\inst3|inst7|OUTMUX[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[2]~2_combout\ = (\inst|Mux1~0_combout\ & (\inst3|inst9|IMEM~15_combout\)) # (!\inst|Mux1~0_combout\ & ((\inst3|inst|PCOUT\(1) $ (\inst3|inst|PCOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~15_combout\,
	datab => \inst3|inst|PCOUT\(1),
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst|Mux1~0_combout\,
	combout => \inst3|inst7|OUTMUX[2]~2_combout\);

-- Location: FF_X3_Y22_N25
\inst3|inst|PCOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[2]~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(2));

-- Location: LCCOMB_X3_Y22_N22
\inst3|inst1|A1|A2|s4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A2|s4~0_combout\ = (((!\inst3|inst|PCOUT\(4)) # (!\inst3|inst|PCOUT\(1))) # (!\inst3|inst|PCOUT\(2))) # (!\inst3|inst|PCOUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datab => \inst3|inst|PCOUT\(2),
	datac => \inst3|inst|PCOUT\(1),
	datad => \inst3|inst|PCOUT\(4),
	combout => \inst3|inst1|A1|A2|s4~0_combout\);

-- Location: LCCOMB_X3_Y22_N8
\inst3|inst9|IMEM~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~11_combout\ = (\inst3|inst|PCOUT\(1) & (!\inst3|inst|PCOUT\(4) & (!\inst3|inst|PCOUT\(3) & !\inst3|inst|PCOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datab => \inst3|inst|PCOUT\(4),
	datac => \inst3|inst|PCOUT\(3),
	datad => \inst3|inst|PCOUT\(5),
	combout => \inst3|inst9|IMEM~11_combout\);

-- Location: LCCOMB_X3_Y22_N14
\inst3|inst9|IMEM~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~12_combout\ = (!\inst3|inst|PCOUT\(2) & \inst3|inst9|IMEM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst9|IMEM~11_combout\,
	combout => \inst3|inst9|IMEM~12_combout\);

-- Location: LCCOMB_X3_Y22_N18
\inst3|inst7|OUTMUX[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[5]~5_combout\ = (\inst|Mux1~0_combout\ & (((\inst3|inst9|IMEM~12_combout\)))) # (!\inst|Mux1~0_combout\ & (\inst3|inst1|A1|A2|s4~0_combout\ $ (((!\inst3|inst|PCOUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|A1|A2|s4~0_combout\,
	datab => \inst3|inst9|IMEM~12_combout\,
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst|Mux1~0_combout\,
	combout => \inst3|inst7|OUTMUX[5]~5_combout\);

-- Location: FF_X3_Y22_N19
\inst3|inst|PCOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[5]~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(5));

-- Location: LCCOMB_X3_Y22_N2
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (!\inst3|inst|PCOUT\(5) & (\inst3|inst9|IMEM~1_combout\ & !\inst3|inst9|IMEM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(5),
	datac => \inst3|inst9|IMEM~1_combout\,
	datad => \inst3|inst9|IMEM~0_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X3_Y22_N16
\inst3|inst9|IMEM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~13_combout\ = (!\inst3|inst|PCOUT\(4) & (!\inst3|inst|PCOUT\(3) & (\inst3|inst|PCOUT\(1) $ (\inst3|inst|PCOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datab => \inst3|inst|PCOUT\(4),
	datac => \inst3|inst|PCOUT\(3),
	datad => \inst3|inst|PCOUT\(2),
	combout => \inst3|inst9|IMEM~13_combout\);

-- Location: LCCOMB_X3_Y22_N26
\inst3|inst9|IMEM~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~14_combout\ = (!\inst3|inst|PCOUT\(5) & \inst3|inst9|IMEM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst9|IMEM~13_combout\,
	combout => \inst3|inst9|IMEM~14_combout\);

-- Location: LCCOMB_X3_Y22_N10
\inst3|inst7|OUTMUX[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[3]~3_combout\ = (\inst|Mux1~0_combout\ & (((\inst3|inst9|IMEM~14_combout\)))) # (!\inst|Mux1~0_combout\ & (\inst3|inst1|A1|A1|c4Buff~0_combout\ $ ((!\inst3|inst|PCOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datab => \inst3|inst1|A1|A1|c4Buff~0_combout\,
	datac => \inst3|inst|PCOUT\(3),
	datad => \inst3|inst9|IMEM~14_combout\,
	combout => \inst3|inst7|OUTMUX[3]~3_combout\);

-- Location: FF_X3_Y22_N11
\inst3|inst|PCOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[3]~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(3));

-- Location: LCCOMB_X3_Y22_N0
\inst3|inst9|IMEM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~0_combout\ = (!\inst3|inst|PCOUT\(3) & (!\inst3|inst|PCOUT\(5) & (!\inst3|inst|PCOUT\(4) & \inst3|inst|PCOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst3|inst|PCOUT\(2),
	combout => \inst3|inst9|IMEM~0_combout\);

-- Location: LCCOMB_X1_Y22_N0
\inst3|inst9|IMEM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~2_combout\ = (\inst3|inst9|IMEM~1_combout\ & !\inst3|inst|PCOUT\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~1_combout\,
	datac => \inst3|inst|PCOUT\(5),
	combout => \inst3|inst9|IMEM~2_combout\);

-- Location: LCCOMB_X2_Y22_N4
\inst3|inst9|IMEM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~3_combout\ = (\inst3|inst|PCOUT\(1) & \inst3|inst9|IMEM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datac => \inst3|inst9|IMEM~0_combout\,
	combout => \inst3|inst9|IMEM~3_combout\);

-- Location: LCCOMB_X2_Y22_N10
\inst3|inst9|IMEM~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~4_combout\ = (!\inst3|inst|PCOUT\(1) & \inst3|inst9|IMEM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datac => \inst3|inst9|IMEM~0_combout\,
	combout => \inst3|inst9|IMEM~4_combout\);

-- Location: LCCOMB_X2_Y22_N0
\inst3|inst9|IMEM~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~5_combout\ = (\inst3|inst|PCOUT\(4)) # ((\inst3|inst|PCOUT\(3)) # ((\inst3|inst|PCOUT\(1) & !\inst3|inst|PCOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datab => \inst3|inst|PCOUT\(4),
	datac => \inst3|inst|PCOUT\(3),
	datad => \inst3|inst|PCOUT\(2),
	combout => \inst3|inst9|IMEM~5_combout\);

-- Location: LCCOMB_X2_Y22_N26
\inst3|inst9|IMEM~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~6_combout\ = (\inst3|inst|PCOUT\(5)) # (\inst3|inst9|IMEM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst9|IMEM~5_combout\,
	combout => \inst3|inst9|IMEM~6_combout\);

-- Location: LCCOMB_X3_Y22_N6
\inst3|inst9|IMEM~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~7_combout\ = (!\inst3|inst|PCOUT\(3) & (!\inst3|inst|PCOUT\(4) & ((\inst3|inst|PCOUT\(1)) # (\inst3|inst|PCOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datab => \inst3|inst|PCOUT\(4),
	datac => \inst3|inst|PCOUT\(1),
	datad => \inst3|inst|PCOUT\(2),
	combout => \inst3|inst9|IMEM~7_combout\);

-- Location: LCCOMB_X1_Y21_N24
\inst3|inst9|IMEM~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~8_combout\ = (!\inst3|inst|PCOUT\(5) & \inst3|inst9|IMEM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst9|IMEM~7_combout\,
	combout => \inst3|inst9|IMEM~8_combout\);

-- Location: LCCOMB_X2_Y22_N24
\inst3|inst9|IMEM~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~9_combout\ = (\inst3|inst|PCOUT\(4)) # ((\inst3|inst|PCOUT\(3)) # (\inst3|inst|PCOUT\(2) $ (\inst3|inst|PCOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(4),
	datab => \inst3|inst|PCOUT\(2),
	datac => \inst3|inst|PCOUT\(1),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst3|inst9|IMEM~9_combout\);

-- Location: LCCOMB_X1_Y22_N2
\inst3|inst9|IMEM~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~10_combout\ = (!\inst3|inst|PCOUT\(5) & !\inst3|inst9|IMEM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst9|IMEM~9_combout\,
	combout => \inst3|inst9|IMEM~10_combout\);

-- Location: LCCOMB_X2_Y22_N18
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst3|inst9|IMEM~0_combout\) # ((!\inst3|inst|PCOUT\(5) & \inst3|inst9|IMEM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst3|inst9|IMEM~0_combout\,
	datad => \inst3|inst9|IMEM~1_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X2_Y22_N28
\inst4|inst1|MUX1|G10|Y[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G10|Y[0]~1_combout\ = (\inst4|inst1|REGI2|Q\(4) & (!\inst3|inst9|IMEM~3_combout\ & (\inst3|inst9|IMEM~6_combout\ $ (!\inst3|inst9|IMEM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~6_combout\,
	datab => \inst4|inst1|REGI2|Q\(4),
	datac => \inst3|inst9|IMEM~3_combout\,
	datad => \inst3|inst9|IMEM~4_combout\,
	combout => \inst4|inst1|MUX1|G10|Y[0]~1_combout\);

-- Location: LCCOMB_X2_Y22_N8
\inst4|inst1|REGI2|Q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|REGI2|Q[1]~1_combout\ = !\inst4|inst1|MUX1|G10|Y[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst1|MUX1|G10|Y[0]~1_combout\,
	combout => \inst4|inst1|REGI2|Q[1]~1_combout\);

-- Location: FF_X2_Y22_N9
\inst4|inst1|REGI2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst1|REGI2|Q[1]~1_combout\,
	ena => \inst|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(1));

-- Location: LCCOMB_X2_Y22_N20
\inst4|inst1|MUX1|G10|Y[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G10|Y[3]~0_combout\ = (\inst3|inst9|IMEM~0_combout\ & ((\inst3|inst|PCOUT\(1)) # ((!\inst3|inst|PCOUT\(5) & !\inst3|inst9|IMEM~5_combout\)))) # (!\inst3|inst9|IMEM~0_combout\ & (((\inst3|inst|PCOUT\(5)) # 
-- (\inst3|inst9|IMEM~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst3|inst9|IMEM~0_combout\,
	datad => \inst3|inst9|IMEM~5_combout\,
	combout => \inst4|inst1|MUX1|G10|Y[3]~0_combout\);

-- Location: LCCOMB_X2_Y22_N22
\inst1|DMEM~514\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~514_combout\ = (!\inst4|inst1|REGI2|Q\(4) & (!\inst4|inst1|MUX1|G10|Y[3]~0_combout\ & (\inst4|inst1|REGI2|Q\(1) $ (\inst4|inst1|REGI2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(4),
	datab => \inst4|inst1|REGI2|Q\(1),
	datac => \inst4|inst1|REGI2|Q\(2),
	datad => \inst4|inst1|MUX1|G10|Y[3]~0_combout\,
	combout => \inst1|DMEM~514_combout\);

-- Location: FF_X2_Y22_N23
\inst4|inst1|REGI2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|DMEM~514_combout\,
	ena => \inst|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(2));

-- Location: LCCOMB_X2_Y22_N2
\inst1|DMEM~513\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~513_combout\ = (!\inst4|inst1|MUX1|G10|Y[3]~0_combout\ & ((\inst4|inst1|REGI2|Q\(4)) # ((\inst4|inst1|REGI2|Q\(1) & \inst4|inst1|REGI2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(4),
	datab => \inst4|inst1|REGI2|Q\(1),
	datac => \inst4|inst1|REGI2|Q\(2),
	datad => \inst4|inst1|MUX1|G10|Y[3]~0_combout\,
	combout => \inst1|DMEM~513_combout\);

-- Location: LCCOMB_X2_Y22_N14
\inst4|inst1|REGI2|Q[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|REGI2|Q[4]~0_combout\ = !\inst1|DMEM~513_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|DMEM~513_combout\,
	combout => \inst4|inst1|REGI2|Q[4]~0_combout\);

-- Location: FF_X2_Y22_N15
\inst4|inst1|REGI2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst1|REGI2|Q[4]~0_combout\,
	ena => \inst|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(4));

-- Location: LCCOMB_X2_Y22_N12
\inst1|DMEM~512\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~512_combout\ = (\inst4|inst1|MUX1|G10|Y[3]~0_combout\) # ((!\inst4|inst1|REGI2|Q\(4) & (!\inst4|inst1|REGI2|Q\(1) & !\inst4|inst1|REGI2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(4),
	datab => \inst4|inst1|REGI2|Q\(1),
	datac => \inst4|inst1|REGI2|Q\(2),
	datad => \inst4|inst1|MUX1|G10|Y[3]~0_combout\,
	combout => \inst1|DMEM~512_combout\);

-- Location: LCCOMB_X1_Y22_N24
\inst1|DMEM~515\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~515_combout\ = (\inst4|inst1|MUX1|G10|Y[3]~0_combout\) # ((\inst4|inst1|REGI2|Q\(4)) # ((!\inst4|inst1|REGI2|Q\(2) & !\inst4|inst1|REGI2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|MUX1|G10|Y[3]~0_combout\,
	datab => \inst4|inst1|REGI2|Q\(2),
	datac => \inst4|inst1|REGI2|Q\(1),
	datad => \inst4|inst1|REGI2|Q\(4),
	combout => \inst1|DMEM~515_combout\);

-- Location: LCCOMB_X2_Y22_N16
\inst1|DMEM~516\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~516_combout\ = (!\inst4|inst1|MUX1|G10|Y[3]~0_combout\ & ((\inst4|inst1|REGI2|Q\(4)) # (\inst4|inst1|REGI2|Q\(1) $ (\inst4|inst1|REGI2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(4),
	datab => \inst4|inst1|REGI2|Q\(1),
	datac => \inst4|inst1|REGI2|Q\(2),
	datad => \inst4|inst1|MUX1|G10|Y[3]~0_combout\,
	combout => \inst1|DMEM~516_combout\);

-- Location: LCCOMB_X2_Y22_N30
\inst1|DMEM~517\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~517_combout\ = (!\inst4|inst1|REGI2|Q\(4) & (\inst4|inst1|REGI2|Q\(1) & (\inst4|inst1|REGI2|Q\(2) & !\inst4|inst1|MUX1|G10|Y[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(4),
	datab => \inst4|inst1|REGI2|Q\(1),
	datac => \inst4|inst1|REGI2|Q\(2),
	datad => \inst4|inst1|MUX1|G10|Y[3]~0_combout\,
	combout => \inst1|DMEM~517_combout\);

-- Location: LCCOMB_X1_Y22_N26
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst3|inst9|IMEM~1_combout\ & (\inst3|inst9|IMEM~0_combout\ & !\inst3|inst|PCOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~1_combout\,
	datab => \inst3|inst9|IMEM~0_combout\,
	datac => \inst3|inst|PCOUT\(5),
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X2_Y22_N6
\inst4|inst1|REGI2|Q[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|REGI2|Q[7]~2_combout\ = !\inst1|DMEM~516_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|DMEM~516_combout\,
	combout => \inst4|inst1|REGI2|Q[7]~2_combout\);

-- Location: FF_X2_Y22_N7
\inst4|inst1|REGI2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst1|REGI2|Q[7]~2_combout\,
	ena => \inst|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(7));

-- Location: LCCOMB_X1_Y22_N16
\inst4|inst1|MUX2|G10|Y[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G10|Y[3]~0_combout\ = (\inst4|inst1|REGI2|Q\(7) & (!\inst3|inst|PCOUT\(5) & (!\inst3|inst9|IMEM~9_combout\ & !\inst3|inst9|IMEM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(7),
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst3|inst9|IMEM~9_combout\,
	datad => \inst3|inst9|IMEM~7_combout\,
	combout => \inst4|inst1|MUX2|G10|Y[3]~0_combout\);

-- Location: FF_X2_Y22_N27
\inst4|inst1|REGI2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|DMEM~517_combout\,
	sload => VCC,
	ena => \inst|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(6));

-- Location: LCCOMB_X1_Y22_N18
\inst4|inst1|MUX2|G10|Y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G10|Y[2]~1_combout\ = (!\inst3|inst9|IMEM~7_combout\ & (\inst4|inst1|REGI2|Q\(6) & (!\inst3|inst|PCOUT\(5) & !\inst3|inst9|IMEM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~7_combout\,
	datab => \inst4|inst1|REGI2|Q\(6),
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst9|IMEM~9_combout\,
	combout => \inst4|inst1|MUX2|G10|Y[2]~1_combout\);

-- Location: FF_X2_Y22_N13
\inst4|inst1|REGI2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|DMEM~512_combout\,
	ena => \inst|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(5));

-- Location: LCCOMB_X1_Y22_N20
\inst4|inst1|MUX2|G10|Y[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G10|Y[1]~2_combout\ = (\inst4|inst1|REGI2|Q\(5) & (!\inst3|inst9|IMEM~9_combout\ & (!\inst3|inst|PCOUT\(5) & !\inst3|inst9|IMEM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(5),
	datab => \inst3|inst9|IMEM~9_combout\,
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst9|IMEM~7_combout\,
	combout => \inst4|inst1|MUX2|G10|Y[1]~2_combout\);

-- Location: LCCOMB_X1_Y22_N14
\inst4|inst1|MUX2|G10|Y[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G10|Y[0]~3_combout\ = (\inst4|inst1|REGI2|Q\(4) & (!\inst3|inst9|IMEM~9_combout\ & (!\inst3|inst|PCOUT\(5) & !\inst3|inst9|IMEM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(4),
	datab => \inst3|inst9|IMEM~9_combout\,
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst9|IMEM~7_combout\,
	combout => \inst4|inst1|MUX2|G10|Y[0]~3_combout\);

-- Location: LCCOMB_X1_Y22_N28
\inst4|inst1|MUX2|G9|Y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G9|Y[2]~0_combout\ = (!\inst3|inst|PCOUT\(5) & (\inst4|inst1|REGI2|Q\(2) & (!\inst3|inst9|IMEM~9_combout\ & !\inst3|inst9|IMEM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(5),
	datab => \inst4|inst1|REGI2|Q\(2),
	datac => \inst3|inst9|IMEM~9_combout\,
	datad => \inst3|inst9|IMEM~7_combout\,
	combout => \inst4|inst1|MUX2|G9|Y[2]~0_combout\);

-- Location: LCCOMB_X1_Y22_N10
\inst4|inst1|MUX2|G9|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G9|Y[1]~1_combout\ = (!\inst3|inst|PCOUT\(5) & (\inst4|inst1|REGI2|Q\(1) & (!\inst3|inst9|IMEM~9_combout\ & !\inst3|inst9|IMEM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(5),
	datab => \inst4|inst1|REGI2|Q\(1),
	datac => \inst3|inst9|IMEM~9_combout\,
	datad => \inst3|inst9|IMEM~7_combout\,
	combout => \inst4|inst1|MUX2|G9|Y[1]~1_combout\);

-- Location: LCCOMB_X4_Y22_N18
\inst3|inst1|A1|A2|c4Buff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A2|c4Buff~1_combout\ = (\inst3|inst1|A1|A2|s4~0_combout\) # (!\inst3|inst|PCOUT\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst1|A1|A2|s4~0_combout\,
	combout => \inst3|inst1|A1|A2|c4Buff~1_combout\);

-- Location: LCCOMB_X4_Y22_N28
\inst3|inst7|OUTMUX[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[6]~14_combout\ = (\inst|Mux1~0_combout\ & (((\inst3|inst9|IMEM~12_combout\)))) # (!\inst|Mux1~0_combout\ & (\inst3|inst1|A1|A2|c4Buff~1_combout\ $ ((!\inst3|inst|PCOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datab => \inst3|inst1|A1|A2|c4Buff~1_combout\,
	datac => \inst3|inst|PCOUT\(6),
	datad => \inst3|inst9|IMEM~12_combout\,
	combout => \inst3|inst7|OUTMUX[6]~14_combout\);

-- Location: FF_X4_Y22_N29
\inst3|inst|PCOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[6]~14_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(6));

-- Location: LCCOMB_X4_Y22_N22
\inst3|inst7|OUTMUX[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[7]~13_combout\ = (!\inst|Mux1~0_combout\ & (\inst3|inst|PCOUT\(7) $ (((\inst3|inst|PCOUT\(6) & !\inst3|inst1|A1|A2|c4Buff~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(6),
	datab => \inst3|inst1|A1|A2|c4Buff~1_combout\,
	datac => \inst3|inst|PCOUT\(7),
	datad => \inst|Mux1~0_combout\,
	combout => \inst3|inst7|OUTMUX[7]~13_combout\);

-- Location: FF_X4_Y22_N23
\inst3|inst|PCOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[7]~13_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(7));

-- Location: LCCOMB_X4_Y22_N16
\inst3|inst1|A1|A2|c4Buff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A2|c4Buff~0_combout\ = (((\inst3|inst1|A1|A2|s4~0_combout\) # (!\inst3|inst|PCOUT\(7))) # (!\inst3|inst|PCOUT\(5))) # (!\inst3|inst|PCOUT\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(6),
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst3|inst|PCOUT\(7),
	datad => \inst3|inst1|A1|A2|s4~0_combout\,
	combout => \inst3|inst1|A1|A2|c4Buff~0_combout\);

-- Location: LCCOMB_X1_Y22_N4
\inst3|inst7|OUTMUX[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[8]~12_combout\ = (\inst|Mux1~0_combout\ & (((\inst3|inst9|IMEM~10_combout\)))) # (!\inst|Mux1~0_combout\ & (\inst3|inst1|A1|A2|c4Buff~0_combout\ $ (((!\inst3|inst|PCOUT\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|A1|A2|c4Buff~0_combout\,
	datab => \inst3|inst9|IMEM~10_combout\,
	datac => \inst3|inst|PCOUT\(8),
	datad => \inst|Mux1~0_combout\,
	combout => \inst3|inst7|OUTMUX[8]~12_combout\);

-- Location: FF_X1_Y22_N5
\inst3|inst|PCOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[8]~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(8));

-- Location: LCCOMB_X4_Y22_N20
\inst3|inst1|A1|A3|R[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A3|R\(1) = \inst3|inst|PCOUT\(9) $ (((\inst3|inst1|A1|A2|c4Buff~0_combout\) # (!\inst3|inst|PCOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(9),
	datac => \inst3|inst|PCOUT\(8),
	datad => \inst3|inst1|A1|A2|c4Buff~0_combout\,
	combout => \inst3|inst1|A1|A3|R\(1));

-- Location: LCCOMB_X4_Y22_N12
\inst3|inst7|OUTMUX[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[9]~11_combout\ = (\inst|Mux1~0_combout\ & (!\inst3|inst|PCOUT\(5) & (\inst3|inst9|IMEM~7_combout\))) # (!\inst|Mux1~0_combout\ & (((!\inst3|inst1|A1|A3|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst3|inst9|IMEM~7_combout\,
	datad => \inst3|inst1|A1|A3|R\(1),
	combout => \inst3|inst7|OUTMUX[9]~11_combout\);

-- Location: FF_X4_Y22_N13
\inst3|inst|PCOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[9]~11_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(9));

-- Location: LCCOMB_X4_Y22_N10
\inst3|inst1|A1|A3|R[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A3|R\(2) = \inst3|inst|PCOUT\(10) $ ((((\inst3|inst1|A1|A2|c4Buff~0_combout\) # (!\inst3|inst|PCOUT\(8))) # (!\inst3|inst|PCOUT\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(9),
	datab => \inst3|inst|PCOUT\(10),
	datac => \inst3|inst|PCOUT\(8),
	datad => \inst3|inst1|A1|A2|c4Buff~0_combout\,
	combout => \inst3|inst1|A1|A3|R\(2));

-- Location: LCCOMB_X4_Y22_N14
\inst3|inst7|OUTMUX[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[10]~15_combout\ = (\inst|Mux1~0_combout\ & (!\inst3|inst|PCOUT\(5) & (!\inst3|inst9|IMEM~5_combout\))) # (!\inst|Mux1~0_combout\ & (((!\inst3|inst1|A1|A3|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst3|inst9|IMEM~5_combout\,
	datad => \inst3|inst1|A1|A3|R\(2),
	combout => \inst3|inst7|OUTMUX[10]~15_combout\);

-- Location: FF_X4_Y22_N15
\inst3|inst|PCOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[10]~15_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(10));

-- Location: LCCOMB_X4_Y22_N30
\inst3|inst7|OUTMUX[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[11]~7_combout\ = (\inst3|inst|PCOUT\(7) & (\inst3|inst|PCOUT\(6) & (\inst3|inst|PCOUT\(10) & \inst3|inst|PCOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(7),
	datab => \inst3|inst|PCOUT\(6),
	datac => \inst3|inst|PCOUT\(10),
	datad => \inst3|inst|PCOUT\(5),
	combout => \inst3|inst7|OUTMUX[11]~7_combout\);

-- Location: LCCOMB_X4_Y22_N24
\inst3|inst7|OUTMUX[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[11]~8_combout\ = (\inst3|inst|PCOUT\(9) & (\inst3|inst|PCOUT\(8) & (\inst3|inst7|OUTMUX[11]~7_combout\ & !\inst3|inst1|A1|A2|s4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(9),
	datab => \inst3|inst|PCOUT\(8),
	datac => \inst3|inst7|OUTMUX[11]~7_combout\,
	datad => \inst3|inst1|A1|A2|s4~0_combout\,
	combout => \inst3|inst7|OUTMUX[11]~8_combout\);

-- Location: LCCOMB_X4_Y22_N0
\inst3|inst7|OUTMUX[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[11]~10_combout\ = (!\inst|Mux1~0_combout\ & (\inst3|inst|PCOUT\(11) $ (\inst3|inst7|OUTMUX[11]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datac => \inst3|inst|PCOUT\(11),
	datad => \inst3|inst7|OUTMUX[11]~8_combout\,
	combout => \inst3|inst7|OUTMUX[11]~10_combout\);

-- Location: FF_X4_Y22_N1
\inst3|inst|PCOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[11]~10_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(11));

-- Location: LCCOMB_X4_Y22_N26
\inst3|inst7|OUTMUX[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[12]~9_combout\ = (!\inst|Mux1~0_combout\ & (\inst3|inst|PCOUT\(12) $ (((\inst3|inst|PCOUT\(11) & \inst3|inst7|OUTMUX[11]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(11),
	datab => \inst3|inst7|OUTMUX[11]~8_combout\,
	datac => \inst3|inst|PCOUT\(12),
	datad => \inst|Mux1~0_combout\,
	combout => \inst3|inst7|OUTMUX[12]~9_combout\);

-- Location: FF_X4_Y22_N27
\inst3|inst|PCOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[12]~9_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(12));

-- Location: LCCOMB_X4_Y22_N4
\inst3|inst|PCOUT[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|PCOUT[13]~2_combout\ = \inst3|inst|PCOUT\(13) $ (((\inst3|inst|PCOUT\(12) & (\inst3|inst|PCOUT\(11) & \inst3|inst7|OUTMUX[11]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(12),
	datab => \inst3|inst|PCOUT\(11),
	datac => \inst3|inst|PCOUT\(13),
	datad => \inst3|inst7|OUTMUX[11]~8_combout\,
	combout => \inst3|inst|PCOUT[13]~2_combout\);

-- Location: FF_X4_Y22_N5
\inst3|inst|PCOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst|PCOUT[13]~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(13));

-- Location: LCCOMB_X4_Y22_N2
\inst3|inst1|A1|A4|s4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A4|s4~0_combout\ = (((!\inst3|inst7|OUTMUX[11]~8_combout\) # (!\inst3|inst|PCOUT\(13))) # (!\inst3|inst|PCOUT\(11))) # (!\inst3|inst|PCOUT\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(12),
	datab => \inst3|inst|PCOUT\(11),
	datac => \inst3|inst|PCOUT\(13),
	datad => \inst3|inst7|OUTMUX[11]~8_combout\,
	combout => \inst3|inst1|A1|A4|s4~0_combout\);

-- Location: LCCOMB_X4_Y22_N6
\inst3|inst|PCOUT[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|PCOUT[14]~1_combout\ = \inst3|inst|PCOUT\(14) $ (!\inst3|inst1|A1|A4|s4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|PCOUT\(14),
	datad => \inst3|inst1|A1|A4|s4~0_combout\,
	combout => \inst3|inst|PCOUT[14]~1_combout\);

-- Location: FF_X4_Y22_N7
\inst3|inst|PCOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst|PCOUT[14]~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(14));

-- Location: LCCOMB_X4_Y22_N8
\inst3|inst|PCOUT[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|PCOUT[15]~0_combout\ = \inst3|inst|PCOUT\(15) $ (((\inst3|inst|PCOUT\(14) & !\inst3|inst1|A1|A4|s4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(14),
	datac => \inst3|inst|PCOUT\(15),
	datad => \inst3|inst1|A1|A4|s4~0_combout\,
	combout => \inst3|inst|PCOUT[15]~0_combout\);

-- Location: FF_X4_Y22_N9
\inst3|inst|PCOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst|PCOUT[15]~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(15));

-- Location: LCCOMB_X1_Y21_N6
\inst4|inst1|MUX1|G2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G2|Equal1~0_combout\ = (!\inst3|inst9|IMEM~5_combout\ & (\inst3|inst9|IMEM~0_combout\ & (!\inst3|inst|PCOUT\(5) & !\inst3|inst|PCOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~5_combout\,
	datab => \inst3|inst9|IMEM~0_combout\,
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst|PCOUT\(1),
	combout => \inst4|inst1|MUX1|G2|Equal1~0_combout\);

-- Location: LCCOMB_X1_Y22_N30
\inst4|inst1|MUX1|G10|Y[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G10|Y[3]~2_combout\ = (\inst4|inst1|REGI2|Q\(7) & (!\inst3|inst9|IMEM~3_combout\ & (\inst3|inst9|IMEM~4_combout\ $ (!\inst3|inst9|IMEM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(7),
	datab => \inst3|inst9|IMEM~4_combout\,
	datac => \inst3|inst9|IMEM~6_combout\,
	datad => \inst3|inst9|IMEM~3_combout\,
	combout => \inst4|inst1|MUX1|G10|Y[3]~2_combout\);

-- Location: LCCOMB_X1_Y22_N8
\inst4|inst1|MUX1|G10|Y[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G10|Y[2]~3_combout\ = (\inst4|inst1|REGI2|Q\(6) & (!\inst3|inst9|IMEM~3_combout\ & (\inst3|inst9|IMEM~4_combout\ $ (!\inst3|inst9|IMEM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~4_combout\,
	datab => \inst4|inst1|REGI2|Q\(6),
	datac => \inst3|inst9|IMEM~6_combout\,
	datad => \inst3|inst9|IMEM~3_combout\,
	combout => \inst4|inst1|MUX1|G10|Y[2]~3_combout\);

-- Location: LCCOMB_X1_Y22_N6
\inst4|inst1|MUX1|G10|Y[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G10|Y[1]~4_combout\ = (\inst4|inst1|REGI2|Q\(5) & (!\inst3|inst9|IMEM~3_combout\ & (\inst3|inst9|IMEM~4_combout\ $ (!\inst3|inst9|IMEM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(5),
	datab => \inst3|inst9|IMEM~4_combout\,
	datac => \inst3|inst9|IMEM~6_combout\,
	datad => \inst3|inst9|IMEM~3_combout\,
	combout => \inst4|inst1|MUX1|G10|Y[1]~4_combout\);

-- Location: LCCOMB_X1_Y22_N12
\inst4|inst1|MUX1|G9|Y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G9|Y[2]~0_combout\ = (!\inst3|inst9|IMEM~3_combout\ & (\inst4|inst1|REGI2|Q\(2) & (\inst3|inst9|IMEM~4_combout\ $ (!\inst3|inst9|IMEM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~4_combout\,
	datab => \inst3|inst9|IMEM~3_combout\,
	datac => \inst3|inst9|IMEM~6_combout\,
	datad => \inst4|inst1|REGI2|Q\(2),
	combout => \inst4|inst1|MUX1|G9|Y[2]~0_combout\);

-- Location: LCCOMB_X1_Y22_N22
\inst4|inst1|MUX1|G9|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G9|Y[1]~1_combout\ = (\inst4|inst1|REGI2|Q\(1) & (!\inst3|inst9|IMEM~3_combout\ & (\inst3|inst9|IMEM~6_combout\ $ (!\inst3|inst9|IMEM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~6_combout\,
	datab => \inst4|inst1|REGI2|Q\(1),
	datac => \inst3|inst9|IMEM~4_combout\,
	datad => \inst3|inst9|IMEM~3_combout\,
	combout => \inst4|inst1|MUX1|G9|Y[1]~1_combout\);

ww_Z <= \Z~output_o\;

ww_INS(15) <= \INS[15]~output_o\;

ww_INS(14) <= \INS[14]~output_o\;

ww_INS(13) <= \INS[13]~output_o\;

ww_INS(12) <= \INS[12]~output_o\;

ww_INS(11) <= \INS[11]~output_o\;

ww_INS(10) <= \INS[10]~output_o\;

ww_INS(9) <= \INS[9]~output_o\;

ww_INS(8) <= \INS[8]~output_o\;

ww_INS(7) <= \INS[7]~output_o\;

ww_INS(6) <= \INS[6]~output_o\;

ww_INS(5) <= \INS[5]~output_o\;

ww_INS(4) <= \INS[4]~output_o\;

ww_INS(3) <= \INS[3]~output_o\;

ww_INS(2) <= \INS[2]~output_o\;

ww_INS(1) <= \INS[1]~output_o\;

ww_INS(0) <= \INS[0]~output_o\;

ww_PCSEL0 <= \PCSEL0~output_o\;

ww_PCSEL1 <= \PCSEL1~output_o\;

ww_REGWE <= \REGWE~output_o\;

ww_ALUMUXSEL <= \ALUMUXSEL~output_o\;

ww_ALU_SEL(2) <= \ALU_SEL[2]~output_o\;

ww_ALU_SEL(1) <= \ALU_SEL[1]~output_o\;

ww_ALU_SEL(0) <= \ALU_SEL[0]~output_o\;

ww_IMM_EXT(15) <= \IMM_EXT[15]~output_o\;

ww_IMM_EXT(14) <= \IMM_EXT[14]~output_o\;

ww_IMM_EXT(13) <= \IMM_EXT[13]~output_o\;

ww_IMM_EXT(12) <= \IMM_EXT[12]~output_o\;

ww_IMM_EXT(11) <= \IMM_EXT[11]~output_o\;

ww_IMM_EXT(10) <= \IMM_EXT[10]~output_o\;

ww_IMM_EXT(9) <= \IMM_EXT[9]~output_o\;

ww_IMM_EXT(8) <= \IMM_EXT[8]~output_o\;

ww_IMM_EXT(7) <= \IMM_EXT[7]~output_o\;

ww_IMM_EXT(6) <= \IMM_EXT[6]~output_o\;

ww_IMM_EXT(5) <= \IMM_EXT[5]~output_o\;

ww_IMM_EXT(4) <= \IMM_EXT[4]~output_o\;

ww_IMM_EXT(3) <= \IMM_EXT[3]~output_o\;

ww_IMM_EXT(2) <= \IMM_EXT[2]~output_o\;

ww_IMM_EXT(1) <= \IMM_EXT[1]~output_o\;

ww_IMM_EXT(0) <= \IMM_EXT[0]~output_o\;

ww_MEMOUT(15) <= \MEMOUT[15]~output_o\;

ww_MEMOUT(14) <= \MEMOUT[14]~output_o\;

ww_MEMOUT(13) <= \MEMOUT[13]~output_o\;

ww_MEMOUT(12) <= \MEMOUT[12]~output_o\;

ww_MEMOUT(11) <= \MEMOUT[11]~output_o\;

ww_MEMOUT(10) <= \MEMOUT[10]~output_o\;

ww_MEMOUT(9) <= \MEMOUT[9]~output_o\;

ww_MEMOUT(8) <= \MEMOUT[8]~output_o\;

ww_MEMOUT(7) <= \MEMOUT[7]~output_o\;

ww_MEMOUT(6) <= \MEMOUT[6]~output_o\;

ww_MEMOUT(5) <= \MEMOUT[5]~output_o\;

ww_MEMOUT(4) <= \MEMOUT[4]~output_o\;

ww_MEMOUT(3) <= \MEMOUT[3]~output_o\;

ww_MEMOUT(2) <= \MEMOUT[2]~output_o\;

ww_MEMOUT(1) <= \MEMOUT[1]~output_o\;

ww_MEMOUT(0) <= \MEMOUT[0]~output_o\;

ww_MEMW <= \MEMW~output_o\;

ww_MEMR <= \MEMR~output_o\;

ww_RTDAT(15) <= \RTDAT[15]~output_o\;

ww_RTDAT(14) <= \RTDAT[14]~output_o\;

ww_RTDAT(13) <= \RTDAT[13]~output_o\;

ww_RTDAT(12) <= \RTDAT[12]~output_o\;

ww_RTDAT(11) <= \RTDAT[11]~output_o\;

ww_RTDAT(10) <= \RTDAT[10]~output_o\;

ww_RTDAT(9) <= \RTDAT[9]~output_o\;

ww_RTDAT(8) <= \RTDAT[8]~output_o\;

ww_RTDAT(7) <= \RTDAT[7]~output_o\;

ww_RTDAT(6) <= \RTDAT[6]~output_o\;

ww_RTDAT(5) <= \RTDAT[5]~output_o\;

ww_RTDAT(4) <= \RTDAT[4]~output_o\;

ww_RTDAT(3) <= \RTDAT[3]~output_o\;

ww_RTDAT(2) <= \RTDAT[2]~output_o\;

ww_RTDAT(1) <= \RTDAT[1]~output_o\;

ww_RTDAT(0) <= \RTDAT[0]~output_o\;

ww_PCMUXSEL <= \PCMUXSEL~output_o\;

ww_PCOUT(15) <= \PCOUT[15]~output_o\;

ww_PCOUT(14) <= \PCOUT[14]~output_o\;

ww_PCOUT(13) <= \PCOUT[13]~output_o\;

ww_PCOUT(12) <= \PCOUT[12]~output_o\;

ww_PCOUT(11) <= \PCOUT[11]~output_o\;

ww_PCOUT(10) <= \PCOUT[10]~output_o\;

ww_PCOUT(9) <= \PCOUT[9]~output_o\;

ww_PCOUT(8) <= \PCOUT[8]~output_o\;

ww_PCOUT(7) <= \PCOUT[7]~output_o\;

ww_PCOUT(6) <= \PCOUT[6]~output_o\;

ww_PCOUT(5) <= \PCOUT[5]~output_o\;

ww_PCOUT(4) <= \PCOUT[4]~output_o\;

ww_PCOUT(3) <= \PCOUT[3]~output_o\;

ww_PCOUT(2) <= \PCOUT[2]~output_o\;

ww_PCOUT(1) <= \PCOUT[1]~output_o\;

ww_PCOUT(0) <= \PCOUT[0]~output_o\;

ww_RSDAT(15) <= \RSDAT[15]~output_o\;

ww_RSDAT(14) <= \RSDAT[14]~output_o\;

ww_RSDAT(13) <= \RSDAT[13]~output_o\;

ww_RSDAT(12) <= \RSDAT[12]~output_o\;

ww_RSDAT(11) <= \RSDAT[11]~output_o\;

ww_RSDAT(10) <= \RSDAT[10]~output_o\;

ww_RSDAT(9) <= \RSDAT[9]~output_o\;

ww_RSDAT(8) <= \RSDAT[8]~output_o\;

ww_RSDAT(7) <= \RSDAT[7]~output_o\;

ww_RSDAT(6) <= \RSDAT[6]~output_o\;

ww_RSDAT(5) <= \RSDAT[5]~output_o\;

ww_RSDAT(4) <= \RSDAT[4]~output_o\;

ww_RSDAT(3) <= \RSDAT[3]~output_o\;

ww_RSDAT(2) <= \RSDAT[2]~output_o\;

ww_RSDAT(1) <= \RSDAT[1]~output_o\;

ww_RSDAT(0) <= \RSDAT[0]~output_o\;
END structure;


