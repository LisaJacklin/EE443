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

-- DATE "04/28/2023 12:44:45"

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
	ALU_SEL : OUT std_logic_vector(2 DOWNTO 0);
	MEMOUT : OUT std_logic_vector(15 DOWNTO 0);
	RTDAT : OUT std_logic_vector(15 DOWNTO 0);
	PCOUT : OUT std_logic_vector(15 DOWNTO 0);
	RSDAT : OUT std_logic_vector(15 DOWNTO 0)
	);
END topLev;

-- Design Ports Information
-- Z	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[15]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[14]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[13]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[12]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[11]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[8]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[5]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[4]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[0]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[0]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[15]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[14]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[13]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[12]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[11]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[10]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[9]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[8]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[7]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[6]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[4]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[3]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[2]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[0]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[15]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[14]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[13]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[12]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[11]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[10]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[9]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[8]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[7]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[3]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[0]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[15]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[14]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[13]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[12]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[11]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[10]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[9]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[8]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[7]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[4]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[15]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[14]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[13]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[12]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[11]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[9]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[8]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSDAT[0]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_ALU_SEL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_MEMOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RTDAT : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \ALU_SEL[2]~output_o\ : std_logic;
SIGNAL \ALU_SEL[1]~output_o\ : std_logic;
SIGNAL \ALU_SEL[0]~output_o\ : std_logic;
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
SIGNAL \inst3|inst1|A1|A1|c4Buff~0_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~13_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~14_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[3]~3_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[4]~4_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~1_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[1]~6_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~15_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[2]~2_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~11_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~12_combout\ : std_logic;
SIGNAL \inst3|inst1|A1|A2|s4~0_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[5]~5_combout\ : std_logic;
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
SIGNAL \inst4|inst1|MUX1|G10|Y[0]~1_combout\ : std_logic;
SIGNAL \inst4|inst1|REGI2|Q[1]~1_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX1|G10|Y[3]~0_combout\ : std_logic;
SIGNAL \inst1|DMEM~513_combout\ : std_logic;
SIGNAL \inst4|inst1|REGI2|Q[4]~0_combout\ : std_logic;
SIGNAL \inst1|DMEM~514_combout\ : std_logic;
SIGNAL \inst1|DMEM~512_combout\ : std_logic;
SIGNAL \inst1|DMEM~515_combout\ : std_logic;
SIGNAL \inst1|DMEM~516_combout\ : std_logic;
SIGNAL \inst1|DMEM~517_combout\ : std_logic;
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
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|inst1|MUX1|G10|ALT_INV_Y[0]~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_DMEM~516_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_DMEM~515_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_DMEM~513_combout\ : std_logic;
SIGNAL \inst3|inst9|ALT_INV_IMEM~6_combout\ : std_logic;

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
ALU_SEL <= ww_ALU_SEL;
MEMOUT <= ww_MEMOUT;
RTDAT <= ww_RTDAT;
PCOUT <= ww_PCOUT;
RSDAT <= ww_RSDAT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
\inst4|inst1|MUX1|G10|ALT_INV_Y[0]~1_combout\ <= NOT \inst4|inst1|MUX1|G10|Y[0]~1_combout\;
\inst1|ALT_INV_DMEM~516_combout\ <= NOT \inst1|DMEM~516_combout\;
\inst1|ALT_INV_DMEM~515_combout\ <= NOT \inst1|DMEM~515_combout\;
\inst1|ALT_INV_DMEM~513_combout\ <= NOT \inst1|DMEM~513_combout\;
\inst3|inst9|ALT_INV_IMEM~6_combout\ <= NOT \inst3|inst9|IMEM~6_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X98_Y0_N23
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

-- Location: IOOBUF_X1_Y73_N23
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

-- Location: IOOBUF_X0_Y69_N9
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

-- Location: IOOBUF_X1_Y73_N16
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

-- Location: IOOBUF_X1_Y73_N2
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

-- Location: IOOBUF_X25_Y73_N16
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

-- Location: IOOBUF_X18_Y73_N16
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

-- Location: IOOBUF_X18_Y73_N23
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

-- Location: IOOBUF_X23_Y73_N9
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

-- Location: IOOBUF_X11_Y73_N2
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

-- Location: IOOBUF_X54_Y0_N16
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

-- Location: IOOBUF_X1_Y73_N9
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

-- Location: IOOBUF_X3_Y73_N23
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

-- Location: IOOBUF_X25_Y73_N23
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

-- Location: IOOBUF_X5_Y73_N9
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

-- Location: IOOBUF_X13_Y73_N2
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

-- Location: IOOBUF_X69_Y0_N9
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

-- Location: IOOBUF_X31_Y73_N9
\ALU_SEL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ALU_SEL[2]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\ALU_SEL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ALU_SEL[1]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X27_Y73_N23
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

-- Location: IOOBUF_X0_Y63_N16
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X0_Y66_N16
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

-- Location: IOOBUF_X0_Y27_N23
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

-- Location: IOOBUF_X0_Y67_N16
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

-- Location: IOOBUF_X0_Y65_N16
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

-- Location: IOOBUF_X0_Y67_N23
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

-- Location: IOOBUF_X13_Y73_N23
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

-- Location: IOOBUF_X5_Y73_N2
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

-- Location: IOOBUF_X27_Y73_N9
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

-- Location: IOOBUF_X0_Y63_N23
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

-- Location: IOOBUF_X115_Y48_N2
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

-- Location: IOOBUF_X0_Y66_N23
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

-- Location: IOOBUF_X29_Y73_N9
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

-- Location: IOOBUF_X102_Y0_N16
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

-- Location: IOOBUF_X3_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X107_Y73_N9
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

-- Location: IOOBUF_X67_Y73_N2
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

-- Location: IOOBUF_X113_Y0_N9
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

-- Location: IOOBUF_X115_Y23_N9
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

-- Location: IOOBUF_X115_Y51_N9
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

-- Location: IOOBUF_X115_Y34_N16
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

-- Location: IOOBUF_X16_Y73_N16
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

-- Location: IOOBUF_X20_Y73_N9
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

-- Location: IOOBUF_X20_Y73_N16
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

-- Location: IOOBUF_X27_Y73_N16
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

-- Location: IOOBUF_X0_Y55_N9
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

-- Location: IOOBUF_X23_Y73_N2
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

-- Location: IOOBUF_X20_Y73_N23
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

-- Location: IOOBUF_X52_Y0_N9
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

-- Location: IOOBUF_X7_Y73_N23
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

-- Location: IOOBUF_X11_Y73_N16
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

-- Location: IOOBUF_X0_Y68_N2
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

-- Location: IOOBUF_X11_Y73_N23
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

-- Location: IOOBUF_X0_Y68_N9
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

-- Location: IOOBUF_X5_Y73_N23
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

-- Location: IOOBUF_X11_Y73_N9
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

-- Location: IOOBUF_X3_Y73_N2
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

-- Location: IOOBUF_X3_Y73_N9
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

-- Location: IOOBUF_X0_Y68_N16
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

-- Location: IOOBUF_X7_Y73_N16
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

-- Location: IOOBUF_X9_Y73_N2
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

-- Location: IOOBUF_X9_Y73_N9
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

-- Location: IOOBUF_X13_Y73_N9
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

-- Location: IOOBUF_X13_Y73_N16
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

-- Location: IOOBUF_X0_Y28_N16
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

-- Location: IOOBUF_X113_Y73_N9
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

-- Location: IOOBUF_X89_Y0_N2
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

-- Location: IOOBUF_X0_Y19_N9
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

-- Location: IOOBUF_X115_Y49_N9
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

-- Location: IOOBUF_X72_Y73_N9
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

-- Location: IOOBUF_X58_Y73_N9
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

-- Location: IOOBUF_X115_Y56_N23
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

-- Location: IOOBUF_X20_Y73_N2
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

-- Location: IOOBUF_X16_Y73_N9
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

-- Location: IOOBUF_X16_Y73_N2
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

-- Location: IOOBUF_X23_Y73_N23
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

-- Location: IOOBUF_X29_Y73_N2
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

-- Location: IOOBUF_X111_Y73_N9
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

-- Location: IOOBUF_X16_Y73_N23
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

-- Location: IOOBUF_X23_Y73_N16
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

-- Location: IOOBUF_X87_Y0_N23
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

-- Location: LCCOMB_X14_Y71_N30
\inst3|inst1|A1|A1|c4Buff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A1|c4Buff~0_combout\ = (!\inst3|inst|PCOUT\(1)) # (!\inst3|inst|PCOUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst|PCOUT\(1),
	combout => \inst3|inst1|A1|A1|c4Buff~0_combout\);

-- Location: LCCOMB_X14_Y71_N24
\inst3|inst9|IMEM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~13_combout\ = (!\inst3|inst|PCOUT\(4) & (!\inst3|inst|PCOUT\(3) & (\inst3|inst|PCOUT\(2) $ (\inst3|inst|PCOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(2),
	datab => \inst3|inst|PCOUT\(4),
	datac => \inst3|inst|PCOUT\(3),
	datad => \inst3|inst|PCOUT\(1),
	combout => \inst3|inst9|IMEM~13_combout\);

-- Location: LCCOMB_X14_Y71_N10
\inst3|inst9|IMEM~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~14_combout\ = (!\inst3|inst|PCOUT\(5) & \inst3|inst9|IMEM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst9|IMEM~13_combout\,
	combout => \inst3|inst9|IMEM~14_combout\);

-- Location: LCCOMB_X13_Y71_N8
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (!\inst3|inst9|IMEM~0_combout\ & (!\inst3|inst|PCOUT\(5) & \inst3|inst9|IMEM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst9|IMEM~0_combout\,
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst9|IMEM~1_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y71_N2
\inst3|inst7|OUTMUX[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[3]~3_combout\ = (\inst|Mux5~0_combout\ & (((\inst3|inst9|IMEM~14_combout\)))) # (!\inst|Mux5~0_combout\ & (\inst3|inst1|A1|A1|c4Buff~0_combout\ $ (((!\inst3|inst|PCOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|A1|A1|c4Buff~0_combout\,
	datab => \inst3|inst9|IMEM~14_combout\,
	datac => \inst3|inst|PCOUT\(3),
	datad => \inst|Mux5~0_combout\,
	combout => \inst3|inst7|OUTMUX[3]~3_combout\);

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

-- Location: FF_X14_Y71_N3
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

-- Location: LCCOMB_X14_Y71_N12
\inst3|inst7|OUTMUX[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[4]~4_combout\ = (!\inst|Mux5~0_combout\ & (\inst3|inst|PCOUT\(4) $ (((\inst3|inst|PCOUT\(3) & !\inst3|inst1|A1|A1|c4Buff~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datab => \inst3|inst1|A1|A1|c4Buff~0_combout\,
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst|Mux5~0_combout\,
	combout => \inst3|inst7|OUTMUX[4]~4_combout\);

-- Location: FF_X14_Y71_N13
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

-- Location: LCCOMB_X14_Y71_N18
\inst3|inst9|IMEM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~1_combout\ = (!\inst3|inst|PCOUT\(4) & ((\inst3|inst|PCOUT\(3) & (!\inst3|inst|PCOUT\(2) & !\inst3|inst|PCOUT\(1))) # (!\inst3|inst|PCOUT\(3) & (\inst3|inst|PCOUT\(2) & \inst3|inst|PCOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(4),
	datab => \inst3|inst|PCOUT\(3),
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst|PCOUT\(1),
	combout => \inst3|inst9|IMEM~1_combout\);

-- Location: LCCOMB_X13_Y71_N12
\inst3|inst7|OUTMUX[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[1]~6_combout\ = (!\inst3|inst|PCOUT\(1) & (((\inst3|inst9|IMEM~0_combout\) # (\inst3|inst|PCOUT\(5))) # (!\inst3|inst9|IMEM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~1_combout\,
	datab => \inst3|inst9|IMEM~0_combout\,
	datac => \inst3|inst|PCOUT\(1),
	datad => \inst3|inst|PCOUT\(5),
	combout => \inst3|inst7|OUTMUX[1]~6_combout\);

-- Location: FF_X13_Y71_N13
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

-- Location: LCCOMB_X14_Y71_N0
\inst3|inst9|IMEM~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~15_combout\ = (!\inst3|inst|PCOUT\(1) & (!\inst3|inst|PCOUT\(5) & (!\inst3|inst|PCOUT\(3) & !\inst3|inst|PCOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst3|inst|PCOUT\(3),
	datad => \inst3|inst|PCOUT\(4),
	combout => \inst3|inst9|IMEM~15_combout\);

-- Location: LCCOMB_X14_Y71_N8
\inst3|inst7|OUTMUX[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[2]~2_combout\ = (\inst|Mux5~0_combout\ & (((\inst3|inst9|IMEM~15_combout\)))) # (!\inst|Mux5~0_combout\ & (\inst3|inst|PCOUT\(1) $ (((\inst3|inst|PCOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datab => \inst3|inst9|IMEM~15_combout\,
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst|Mux5~0_combout\,
	combout => \inst3|inst7|OUTMUX[2]~2_combout\);

-- Location: FF_X14_Y71_N9
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

-- Location: LCCOMB_X13_Y71_N16
\inst3|inst9|IMEM~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~11_combout\ = (!\inst3|inst|PCOUT\(3) & (!\inst3|inst|PCOUT\(5) & (!\inst3|inst|PCOUT\(4) & \inst3|inst|PCOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst3|inst|PCOUT\(1),
	combout => \inst3|inst9|IMEM~11_combout\);

-- Location: LCCOMB_X13_Y71_N18
\inst3|inst9|IMEM~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~12_combout\ = (!\inst3|inst|PCOUT\(2) & \inst3|inst9|IMEM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst9|IMEM~11_combout\,
	combout => \inst3|inst9|IMEM~12_combout\);

-- Location: LCCOMB_X13_Y71_N22
\inst3|inst1|A1|A2|s4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A2|s4~0_combout\ = (((!\inst3|inst|PCOUT\(3)) # (!\inst3|inst|PCOUT\(4))) # (!\inst3|inst|PCOUT\(2))) # (!\inst3|inst|PCOUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datab => \inst3|inst|PCOUT\(2),
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst3|inst1|A1|A2|s4~0_combout\);

-- Location: LCCOMB_X14_Y71_N26
\inst3|inst7|OUTMUX[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[5]~5_combout\ = (\inst|Mux5~0_combout\ & (\inst3|inst9|IMEM~12_combout\)) # (!\inst|Mux5~0_combout\ & ((\inst3|inst1|A1|A2|s4~0_combout\ $ (!\inst3|inst|PCOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~12_combout\,
	datab => \inst3|inst1|A1|A2|s4~0_combout\,
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst|Mux5~0_combout\,
	combout => \inst3|inst7|OUTMUX[5]~5_combout\);

-- Location: FF_X14_Y71_N27
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

-- Location: LCCOMB_X14_Y71_N28
\inst3|inst9|IMEM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~0_combout\ = (!\inst3|inst|PCOUT\(5) & (!\inst3|inst|PCOUT\(3) & (\inst3|inst|PCOUT\(2) & !\inst3|inst|PCOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(5),
	datab => \inst3|inst|PCOUT\(3),
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst|PCOUT\(4),
	combout => \inst3|inst9|IMEM~0_combout\);

-- Location: LCCOMB_X7_Y71_N8
\inst3|inst9|IMEM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~2_combout\ = (\inst3|inst9|IMEM~1_combout\ & !\inst3|inst|PCOUT\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst9|IMEM~1_combout\,
	datad => \inst3|inst|PCOUT\(5),
	combout => \inst3|inst9|IMEM~2_combout\);

-- Location: LCCOMB_X13_Y71_N10
\inst3|inst9|IMEM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~3_combout\ = (\inst3|inst|PCOUT\(1) & \inst3|inst9|IMEM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datad => \inst3|inst9|IMEM~0_combout\,
	combout => \inst3|inst9|IMEM~3_combout\);

-- Location: LCCOMB_X13_Y71_N28
\inst3|inst9|IMEM~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~4_combout\ = (!\inst3|inst|PCOUT\(1) & \inst3|inst9|IMEM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datad => \inst3|inst9|IMEM~0_combout\,
	combout => \inst3|inst9|IMEM~4_combout\);

-- Location: LCCOMB_X13_Y71_N30
\inst3|inst9|IMEM~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~5_combout\ = (\inst3|inst|PCOUT\(4)) # ((\inst3|inst|PCOUT\(3)) # ((\inst3|inst|PCOUT\(1) & !\inst3|inst|PCOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datab => \inst3|inst|PCOUT\(4),
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst3|inst9|IMEM~5_combout\);

-- Location: LCCOMB_X13_Y71_N4
\inst3|inst9|IMEM~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~6_combout\ = (\inst3|inst|PCOUT\(5)) # (\inst3|inst9|IMEM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst3|inst9|IMEM~5_combout\,
	combout => \inst3|inst9|IMEM~6_combout\);

-- Location: LCCOMB_X13_Y71_N26
\inst3|inst9|IMEM~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~7_combout\ = (!\inst3|inst|PCOUT\(4) & (!\inst3|inst|PCOUT\(3) & ((\inst3|inst|PCOUT\(1)) # (\inst3|inst|PCOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datab => \inst3|inst|PCOUT\(4),
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst3|inst9|IMEM~7_combout\);

-- Location: LCCOMB_X16_Y71_N4
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

-- Location: LCCOMB_X13_Y71_N0
\inst3|inst9|IMEM~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~9_combout\ = (\inst3|inst|PCOUT\(4)) # ((\inst3|inst|PCOUT\(3)) # (\inst3|inst|PCOUT\(1) $ (\inst3|inst|PCOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datab => \inst3|inst|PCOUT\(4),
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst3|inst9|IMEM~9_combout\);

-- Location: LCCOMB_X13_Y71_N6
\inst3|inst9|IMEM~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~10_combout\ = (!\inst3|inst|PCOUT\(5) & !\inst3|inst9|IMEM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst9|IMEM~9_combout\,
	combout => \inst3|inst9|IMEM~10_combout\);

-- Location: LCCOMB_X13_Y71_N24
\inst4|inst1|MUX1|G10|Y[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G10|Y[0]~1_combout\ = (\inst4|inst1|REGI2|Q\(4) & (!\inst3|inst9|IMEM~3_combout\ & (\inst3|inst9|IMEM~4_combout\ $ (!\inst3|inst9|IMEM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(4),
	datab => \inst3|inst9|IMEM~4_combout\,
	datac => \inst3|inst9|IMEM~6_combout\,
	datad => \inst3|inst9|IMEM~3_combout\,
	combout => \inst4|inst1|MUX1|G10|Y[0]~1_combout\);

-- Location: LCCOMB_X14_Y71_N16
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

-- Location: LCCOMB_X14_Y71_N14
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (!\inst3|inst9|IMEM~0_combout\ & ((\inst3|inst|PCOUT\(5)) # (!\inst3|inst9|IMEM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst9|IMEM~1_combout\,
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst9|IMEM~0_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: FF_X14_Y71_N17
\inst4|inst1|REGI2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst1|REGI2|Q[1]~1_combout\,
	ena => \inst|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(1));

-- Location: LCCOMB_X13_Y71_N2
\inst4|inst1|MUX1|G10|Y[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G10|Y[3]~0_combout\ = (\inst3|inst9|IMEM~0_combout\ & ((\inst3|inst|PCOUT\(1)) # ((!\inst3|inst|PCOUT\(5) & !\inst3|inst9|IMEM~5_combout\)))) # (!\inst3|inst9|IMEM~0_combout\ & (((\inst3|inst|PCOUT\(5)) # 
-- (\inst3|inst9|IMEM~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(1),
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst3|inst9|IMEM~5_combout\,
	datad => \inst3|inst9|IMEM~0_combout\,
	combout => \inst4|inst1|MUX1|G10|Y[3]~0_combout\);

-- Location: LCCOMB_X13_Y71_N20
\inst1|DMEM~513\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~513_combout\ = (!\inst4|inst1|MUX1|G10|Y[3]~0_combout\ & ((\inst4|inst1|REGI2|Q\(4)) # ((\inst4|inst1|REGI2|Q\(1) & \inst4|inst1|REGI2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(1),
	datab => \inst4|inst1|REGI2|Q\(4),
	datac => \inst4|inst1|REGI2|Q\(2),
	datad => \inst4|inst1|MUX1|G10|Y[3]~0_combout\,
	combout => \inst1|DMEM~513_combout\);

-- Location: LCCOMB_X14_Y71_N22
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

-- Location: FF_X14_Y71_N23
\inst4|inst1|REGI2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst1|REGI2|Q[4]~0_combout\,
	ena => \inst|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(4));

-- Location: LCCOMB_X14_Y71_N4
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

-- Location: FF_X14_Y71_N31
\inst4|inst1|REGI2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|DMEM~514_combout\,
	sload => VCC,
	ena => \inst|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(2));

-- Location: LCCOMB_X16_Y71_N2
\inst1|DMEM~512\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~512_combout\ = (\inst4|inst1|MUX1|G10|Y[3]~0_combout\) # ((!\inst4|inst1|REGI2|Q\(2) & (!\inst4|inst1|REGI2|Q\(1) & !\inst4|inst1|REGI2|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(2),
	datab => \inst4|inst1|REGI2|Q\(1),
	datac => \inst4|inst1|REGI2|Q\(4),
	datad => \inst4|inst1|MUX1|G10|Y[3]~0_combout\,
	combout => \inst1|DMEM~512_combout\);

-- Location: LCCOMB_X16_Y71_N8
\inst1|DMEM~515\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~515_combout\ = (\inst4|inst1|REGI2|Q\(4)) # ((\inst4|inst1|MUX1|G10|Y[3]~0_combout\) # ((!\inst4|inst1|REGI2|Q\(2) & !\inst4|inst1|REGI2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(2),
	datab => \inst4|inst1|REGI2|Q\(1),
	datac => \inst4|inst1|REGI2|Q\(4),
	datad => \inst4|inst1|MUX1|G10|Y[3]~0_combout\,
	combout => \inst1|DMEM~515_combout\);

-- Location: LCCOMB_X13_Y71_N14
\inst1|DMEM~516\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~516_combout\ = (!\inst4|inst1|MUX1|G10|Y[3]~0_combout\ & ((\inst4|inst1|REGI2|Q\(4)) # (\inst4|inst1|REGI2|Q\(1) $ (\inst4|inst1|REGI2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(1),
	datab => \inst4|inst1|REGI2|Q\(4),
	datac => \inst4|inst1|REGI2|Q\(2),
	datad => \inst4|inst1|MUX1|G10|Y[3]~0_combout\,
	combout => \inst1|DMEM~516_combout\);

-- Location: LCCOMB_X14_Y71_N6
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

-- Location: LCCOMB_X14_Y71_N20
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

-- Location: FF_X14_Y71_N21
\inst4|inst1|REGI2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst1|REGI2|Q[7]~2_combout\,
	ena => \inst|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(7));

-- Location: LCCOMB_X16_Y71_N30
\inst4|inst1|MUX2|G10|Y[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G10|Y[3]~0_combout\ = (!\inst3|inst|PCOUT\(5) & (!\inst3|inst9|IMEM~9_combout\ & (\inst4|inst1|REGI2|Q\(7) & !\inst3|inst9|IMEM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(5),
	datab => \inst3|inst9|IMEM~9_combout\,
	datac => \inst4|inst1|REGI2|Q\(7),
	datad => \inst3|inst9|IMEM~7_combout\,
	combout => \inst4|inst1|MUX2|G10|Y[3]~0_combout\);

-- Location: FF_X14_Y71_N7
\inst4|inst1|REGI2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|DMEM~517_combout\,
	ena => \inst|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(6));

-- Location: LCCOMB_X16_Y71_N0
\inst4|inst1|MUX2|G10|Y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G10|Y[2]~1_combout\ = (!\inst3|inst|PCOUT\(5) & (\inst4|inst1|REGI2|Q\(6) & (!\inst3|inst9|IMEM~9_combout\ & !\inst3|inst9|IMEM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(5),
	datab => \inst4|inst1|REGI2|Q\(6),
	datac => \inst3|inst9|IMEM~9_combout\,
	datad => \inst3|inst9|IMEM~7_combout\,
	combout => \inst4|inst1|MUX2|G10|Y[2]~1_combout\);

-- Location: FF_X16_Y71_N3
\inst4|inst1|REGI2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|DMEM~512_combout\,
	ena => \inst|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(5));

-- Location: LCCOMB_X16_Y71_N10
\inst4|inst1|MUX2|G10|Y[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G10|Y[1]~2_combout\ = (!\inst3|inst|PCOUT\(5) & (!\inst3|inst9|IMEM~7_combout\ & (!\inst3|inst9|IMEM~9_combout\ & \inst4|inst1|REGI2|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(5),
	datab => \inst3|inst9|IMEM~7_combout\,
	datac => \inst3|inst9|IMEM~9_combout\,
	datad => \inst4|inst1|REGI2|Q\(5),
	combout => \inst4|inst1|MUX2|G10|Y[1]~2_combout\);

-- Location: LCCOMB_X16_Y71_N20
\inst4|inst1|MUX2|G10|Y[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G10|Y[0]~3_combout\ = (!\inst3|inst|PCOUT\(5) & (!\inst3|inst9|IMEM~9_combout\ & (\inst4|inst1|REGI2|Q\(4) & !\inst3|inst9|IMEM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(5),
	datab => \inst3|inst9|IMEM~9_combout\,
	datac => \inst4|inst1|REGI2|Q\(4),
	datad => \inst3|inst9|IMEM~7_combout\,
	combout => \inst4|inst1|MUX2|G10|Y[0]~3_combout\);

-- Location: LCCOMB_X16_Y71_N6
\inst4|inst1|MUX2|G9|Y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G9|Y[2]~0_combout\ = (\inst4|inst1|REGI2|Q\(2) & (!\inst3|inst9|IMEM~9_combout\ & (!\inst3|inst|PCOUT\(5) & !\inst3|inst9|IMEM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(2),
	datab => \inst3|inst9|IMEM~9_combout\,
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst9|IMEM~7_combout\,
	combout => \inst4|inst1|MUX2|G9|Y[2]~0_combout\);

-- Location: LCCOMB_X16_Y71_N24
\inst4|inst1|MUX2|G9|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G9|Y[1]~1_combout\ = (!\inst3|inst|PCOUT\(5) & (!\inst3|inst9|IMEM~7_combout\ & (!\inst3|inst9|IMEM~9_combout\ & \inst4|inst1|REGI2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(5),
	datab => \inst3|inst9|IMEM~7_combout\,
	datac => \inst3|inst9|IMEM~9_combout\,
	datad => \inst4|inst1|REGI2|Q\(1),
	combout => \inst4|inst1|MUX2|G9|Y[1]~1_combout\);

-- Location: LCCOMB_X12_Y71_N6
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

-- Location: LCCOMB_X12_Y71_N12
\inst3|inst7|OUTMUX[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[6]~14_combout\ = (\inst|Mux5~0_combout\ & (((\inst3|inst9|IMEM~12_combout\)))) # (!\inst|Mux5~0_combout\ & (\inst3|inst1|A1|A2|c4Buff~1_combout\ $ (((!\inst3|inst|PCOUT\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|A1|A2|c4Buff~1_combout\,
	datab => \inst3|inst9|IMEM~12_combout\,
	datac => \inst3|inst|PCOUT\(6),
	datad => \inst|Mux5~0_combout\,
	combout => \inst3|inst7|OUTMUX[6]~14_combout\);

-- Location: FF_X12_Y71_N13
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

-- Location: LCCOMB_X12_Y71_N30
\inst3|inst7|OUTMUX[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[7]~13_combout\ = (!\inst|Mux5~0_combout\ & (\inst3|inst|PCOUT\(7) $ (((!\inst3|inst1|A1|A2|c4Buff~1_combout\ & \inst3|inst|PCOUT\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|A1|A2|c4Buff~1_combout\,
	datab => \inst3|inst|PCOUT\(6),
	datac => \inst3|inst|PCOUT\(7),
	datad => \inst|Mux5~0_combout\,
	combout => \inst3|inst7|OUTMUX[7]~13_combout\);

-- Location: FF_X12_Y71_N31
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

-- Location: LCCOMB_X12_Y71_N24
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

-- Location: LCCOMB_X12_Y71_N8
\inst3|inst7|OUTMUX[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[8]~12_combout\ = (\inst|Mux5~0_combout\ & (((\inst3|inst9|IMEM~10_combout\)))) # (!\inst|Mux5~0_combout\ & (\inst3|inst1|A1|A2|c4Buff~0_combout\ $ ((!\inst3|inst|PCOUT\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|A1|A2|c4Buff~0_combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst3|inst|PCOUT\(8),
	datad => \inst3|inst9|IMEM~10_combout\,
	combout => \inst3|inst7|OUTMUX[8]~12_combout\);

-- Location: FF_X12_Y71_N9
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

-- Location: LCCOMB_X12_Y71_N0
\inst3|inst1|A1|A3|R[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A3|R\(1) = \inst3|inst|PCOUT\(9) $ (((\inst3|inst1|A1|A2|c4Buff~0_combout\) # (!\inst3|inst|PCOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(8),
	datac => \inst3|inst|PCOUT\(9),
	datad => \inst3|inst1|A1|A2|c4Buff~0_combout\,
	combout => \inst3|inst1|A1|A3|R\(1));

-- Location: LCCOMB_X12_Y71_N14
\inst3|inst7|OUTMUX[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[9]~11_combout\ = (\inst|Mux5~0_combout\ & (\inst3|inst9|IMEM~7_combout\ & (!\inst3|inst|PCOUT\(5)))) # (!\inst|Mux5~0_combout\ & (((!\inst3|inst1|A1|A3|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~7_combout\,
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst|Mux5~0_combout\,
	datad => \inst3|inst1|A1|A3|R\(1),
	combout => \inst3|inst7|OUTMUX[9]~11_combout\);

-- Location: FF_X12_Y71_N15
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

-- Location: LCCOMB_X12_Y71_N10
\inst3|inst1|A1|A3|R[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A3|R\(2) = \inst3|inst|PCOUT\(10) $ ((((\inst3|inst1|A1|A2|c4Buff~0_combout\) # (!\inst3|inst|PCOUT\(9))) # (!\inst3|inst|PCOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(8),
	datab => \inst3|inst|PCOUT\(10),
	datac => \inst3|inst|PCOUT\(9),
	datad => \inst3|inst1|A1|A2|c4Buff~0_combout\,
	combout => \inst3|inst1|A1|A3|R\(2));

-- Location: LCCOMB_X12_Y71_N28
\inst3|inst7|OUTMUX[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[10]~15_combout\ = (\inst|Mux5~0_combout\ & (!\inst3|inst9|IMEM~5_combout\ & (!\inst3|inst|PCOUT\(5)))) # (!\inst|Mux5~0_combout\ & (((!\inst3|inst1|A1|A3|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~5_combout\,
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst|Mux5~0_combout\,
	datad => \inst3|inst1|A1|A3|R\(2),
	combout => \inst3|inst7|OUTMUX[10]~15_combout\);

-- Location: FF_X12_Y71_N29
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

-- Location: LCCOMB_X12_Y71_N26
\inst3|inst7|OUTMUX[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[11]~7_combout\ = (\inst3|inst|PCOUT\(6) & (\inst3|inst|PCOUT\(9) & (\inst3|inst|PCOUT\(7) & \inst3|inst|PCOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(6),
	datab => \inst3|inst|PCOUT\(9),
	datac => \inst3|inst|PCOUT\(7),
	datad => \inst3|inst|PCOUT\(5),
	combout => \inst3|inst7|OUTMUX[11]~7_combout\);

-- Location: LCCOMB_X12_Y71_N16
\inst3|inst7|OUTMUX[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[11]~8_combout\ = (\inst3|inst|PCOUT\(8) & (\inst3|inst|PCOUT\(10) & (\inst3|inst7|OUTMUX[11]~7_combout\ & !\inst3|inst1|A1|A2|s4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(8),
	datab => \inst3|inst|PCOUT\(10),
	datac => \inst3|inst7|OUTMUX[11]~7_combout\,
	datad => \inst3|inst1|A1|A2|s4~0_combout\,
	combout => \inst3|inst7|OUTMUX[11]~8_combout\);

-- Location: LCCOMB_X12_Y71_N2
\inst3|inst7|OUTMUX[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[11]~10_combout\ = (!\inst|Mux5~0_combout\ & (\inst3|inst7|OUTMUX[11]~8_combout\ $ (\inst3|inst|PCOUT\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst7|OUTMUX[11]~8_combout\,
	datac => \inst3|inst|PCOUT\(11),
	datad => \inst|Mux5~0_combout\,
	combout => \inst3|inst7|OUTMUX[11]~10_combout\);

-- Location: FF_X12_Y71_N3
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

-- Location: LCCOMB_X12_Y71_N4
\inst3|inst7|OUTMUX[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[12]~9_combout\ = (!\inst|Mux5~0_combout\ & (\inst3|inst|PCOUT\(12) $ (((\inst3|inst|PCOUT\(11) & \inst3|inst7|OUTMUX[11]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(11),
	datab => \inst3|inst7|OUTMUX[11]~8_combout\,
	datac => \inst3|inst|PCOUT\(12),
	datad => \inst|Mux5~0_combout\,
	combout => \inst3|inst7|OUTMUX[12]~9_combout\);

-- Location: FF_X12_Y71_N5
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

-- Location: LCCOMB_X12_Y71_N22
\inst3|inst|PCOUT[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|PCOUT[13]~2_combout\ = \inst3|inst|PCOUT\(13) $ (((\inst3|inst|PCOUT\(11) & (\inst3|inst|PCOUT\(12) & \inst3|inst7|OUTMUX[11]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(11),
	datab => \inst3|inst|PCOUT\(12),
	datac => \inst3|inst|PCOUT\(13),
	datad => \inst3|inst7|OUTMUX[11]~8_combout\,
	combout => \inst3|inst|PCOUT[13]~2_combout\);

-- Location: FF_X12_Y71_N23
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

-- Location: LCCOMB_X12_Y71_N18
\inst3|inst1|A1|A4|s4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A4|s4~0_combout\ = (((!\inst3|inst7|OUTMUX[11]~8_combout\) # (!\inst3|inst|PCOUT\(11))) # (!\inst3|inst|PCOUT\(12))) # (!\inst3|inst|PCOUT\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(13),
	datab => \inst3|inst|PCOUT\(12),
	datac => \inst3|inst|PCOUT\(11),
	datad => \inst3|inst7|OUTMUX[11]~8_combout\,
	combout => \inst3|inst1|A1|A4|s4~0_combout\);

-- Location: LCCOMB_X12_Y71_N20
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

-- Location: FF_X12_Y71_N21
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

-- Location: LCCOMB_X11_Y71_N0
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

-- Location: FF_X11_Y71_N1
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

-- Location: LCCOMB_X16_Y71_N14
\inst4|inst1|MUX1|G2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G2|Equal1~0_combout\ = (!\inst3|inst9|IMEM~5_combout\ & (!\inst3|inst|PCOUT\(1) & (!\inst3|inst|PCOUT\(5) & \inst3|inst9|IMEM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~5_combout\,
	datab => \inst3|inst|PCOUT\(1),
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst3|inst9|IMEM~0_combout\,
	combout => \inst4|inst1|MUX1|G2|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y71_N28
\inst4|inst1|MUX1|G10|Y[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G10|Y[3]~2_combout\ = (\inst4|inst1|REGI2|Q\(7) & (!\inst3|inst9|IMEM~3_combout\ & (\inst3|inst9|IMEM~4_combout\ $ (!\inst3|inst9|IMEM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~4_combout\,
	datab => \inst3|inst9|IMEM~6_combout\,
	datac => \inst4|inst1|REGI2|Q\(7),
	datad => \inst3|inst9|IMEM~3_combout\,
	combout => \inst4|inst1|MUX1|G10|Y[3]~2_combout\);

-- Location: LCCOMB_X16_Y71_N22
\inst4|inst1|MUX1|G10|Y[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G10|Y[2]~3_combout\ = (!\inst3|inst9|IMEM~3_combout\ & (\inst4|inst1|REGI2|Q\(6) & (\inst3|inst9|IMEM~4_combout\ $ (!\inst3|inst9|IMEM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~4_combout\,
	datab => \inst3|inst9|IMEM~6_combout\,
	datac => \inst3|inst9|IMEM~3_combout\,
	datad => \inst4|inst1|REGI2|Q\(6),
	combout => \inst4|inst1|MUX1|G10|Y[2]~3_combout\);

-- Location: LCCOMB_X16_Y71_N16
\inst4|inst1|MUX1|G10|Y[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G10|Y[1]~4_combout\ = (!\inst3|inst9|IMEM~3_combout\ & (\inst4|inst1|REGI2|Q\(5) & (\inst3|inst9|IMEM~4_combout\ $ (!\inst3|inst9|IMEM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~4_combout\,
	datab => \inst3|inst9|IMEM~6_combout\,
	datac => \inst3|inst9|IMEM~3_combout\,
	datad => \inst4|inst1|REGI2|Q\(5),
	combout => \inst4|inst1|MUX1|G10|Y[1]~4_combout\);

-- Location: LCCOMB_X16_Y71_N18
\inst4|inst1|MUX1|G9|Y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G9|Y[2]~0_combout\ = (!\inst3|inst9|IMEM~3_combout\ & (\inst4|inst1|REGI2|Q\(2) & (\inst3|inst9|IMEM~4_combout\ $ (!\inst3|inst9|IMEM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~4_combout\,
	datab => \inst3|inst9|IMEM~6_combout\,
	datac => \inst3|inst9|IMEM~3_combout\,
	datad => \inst4|inst1|REGI2|Q\(2),
	combout => \inst4|inst1|MUX1|G9|Y[2]~0_combout\);

-- Location: LCCOMB_X16_Y71_N12
\inst4|inst1|MUX1|G9|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G9|Y[1]~1_combout\ = (!\inst3|inst9|IMEM~3_combout\ & (\inst4|inst1|REGI2|Q\(1) & (\inst3|inst9|IMEM~4_combout\ $ (!\inst3|inst9|IMEM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~4_combout\,
	datab => \inst3|inst9|IMEM~6_combout\,
	datac => \inst3|inst9|IMEM~3_combout\,
	datad => \inst4|inst1|REGI2|Q\(1),
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

ww_ALU_SEL(2) <= \ALU_SEL[2]~output_o\;

ww_ALU_SEL(1) <= \ALU_SEL[1]~output_o\;

ww_ALU_SEL(0) <= \ALU_SEL[0]~output_o\;

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


