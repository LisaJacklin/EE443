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

-- DATE "04/26/2023 12:39:55"

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
	PCOUT : OUT std_logic_vector(15 DOWNTO 0)
	);
END topLev;

-- Design Ports Information
-- Z	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[15]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[14]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[13]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[12]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[11]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[10]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[9]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[8]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[7]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[4]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[2]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[2]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[15]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[14]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[13]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[12]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[11]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[10]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[9]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[8]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[7]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[6]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[5]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[4]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[3]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[2]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[1]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[0]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[15]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[14]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[13]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[12]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[11]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[10]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[9]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[8]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[7]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[6]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[5]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[4]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[2]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[1]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[0]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[15]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[14]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[13]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[12]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[11]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[10]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[9]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[8]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[7]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[6]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[4]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[3]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[1]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[1]~16_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[3]~2_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[2]~4_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[4]~3_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~0_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~1_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~2_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~3_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~4_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~5_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~6_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~7_combout\ : std_logic;
SIGNAL \inst3|inst9|IMEM~8_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX1|G9|Y[1]~0_combout\ : std_logic;
SIGNAL \inst1|DMEM~514_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|DMEM~513_combout\ : std_logic;
SIGNAL \inst4|inst1|REGI2|Q[4]~1_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX1|G10|Y[0]~0_combout\ : std_logic;
SIGNAL \inst4|inst1|REGI2|Q[1]~0_combout\ : std_logic;
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
SIGNAL \inst3|inst7|OUTMUX[5]~15_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[6]~14_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[7]~17_combout\ : std_logic;
SIGNAL \inst3|inst1|A1|A2|OVERFLOW~0_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[8]~13_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[9]~11_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[9]~12_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[10]~10_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[11]~5_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[11]~6_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[11]~9_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[12]~7_combout\ : std_logic;
SIGNAL \inst3|inst7|OUTMUX[12]~8_combout\ : std_logic;
SIGNAL \inst3|inst1|A1|A4|s4~0_combout\ : std_logic;
SIGNAL \inst3|inst|PCOUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst1|A1|A2|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst1|A1|A4|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst1|REGI2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst1|A1|A2|s4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst1|A1|A3|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|ALT_INV_DMEM~516_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_DMEM~515_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_DMEM~513_combout\ : std_logic;
SIGNAL \inst4|inst1|MUX1|G10|ALT_INV_Y[0]~0_combout\ : std_logic;
SIGNAL \inst3|inst9|ALT_INV_IMEM~8_combout\ : std_logic;
SIGNAL \inst3|inst9|ALT_INV_IMEM~6_combout\ : std_logic;
SIGNAL \inst3|inst9|ALT_INV_IMEM~5_combout\ : std_logic;
SIGNAL \inst3|inst9|ALT_INV_IMEM~2_combout\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
\inst1|ALT_INV_DMEM~516_combout\ <= NOT \inst1|DMEM~516_combout\;
\inst1|ALT_INV_DMEM~515_combout\ <= NOT \inst1|DMEM~515_combout\;
\inst1|ALT_INV_DMEM~513_combout\ <= NOT \inst1|DMEM~513_combout\;
\inst4|inst1|MUX1|G10|ALT_INV_Y[0]~0_combout\ <= NOT \inst4|inst1|MUX1|G10|Y[0]~0_combout\;
\inst3|inst9|ALT_INV_IMEM~8_combout\ <= NOT \inst3|inst9|IMEM~8_combout\;
\inst3|inst9|ALT_INV_IMEM~6_combout\ <= NOT \inst3|inst9|IMEM~6_combout\;
\inst3|inst9|ALT_INV_IMEM~5_combout\ <= NOT \inst3|inst9|IMEM~5_combout\;
\inst3|inst9|ALT_INV_IMEM~2_combout\ <= NOT \inst3|inst9|IMEM~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y11_N2
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

-- Location: IOOBUF_X91_Y73_N16
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

-- Location: IOOBUF_X115_Y69_N2
\INS[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~1_combout\,
	devoe => ww_devoe,
	o => \INS[14]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\INS[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INS[13]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\INS[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|ALT_INV_IMEM~2_combout\,
	devoe => ww_devoe,
	o => \INS[12]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
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

-- Location: IOOBUF_X98_Y73_N23
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

-- Location: IOOBUF_X115_Y64_N2
\INS[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|ALT_INV_IMEM~5_combout\,
	devoe => ww_devoe,
	o => \INS[9]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\INS[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|ALT_INV_IMEM~2_combout\,
	devoe => ww_devoe,
	o => \INS[8]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\INS[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|ALT_INV_IMEM~6_combout\,
	devoe => ww_devoe,
	o => \INS[7]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
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

-- Location: IOOBUF_X69_Y0_N9
\INS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INS[5]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\INS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INS[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\INS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~7_combout\,
	devoe => ww_devoe,
	o => \INS[3]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\INS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|IMEM~4_combout\,
	devoe => ww_devoe,
	o => \INS[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\INS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst9|ALT_INV_IMEM~8_combout\,
	devoe => ww_devoe,
	o => \INS[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
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

-- Location: IOOBUF_X96_Y73_N23
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

-- Location: IOOBUF_X96_Y73_N16
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

-- Location: IOOBUF_X54_Y73_N2
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

-- Location: IOOBUF_X100_Y73_N16
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

-- Location: IOOBUF_X115_Y59_N23
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

-- Location: IOOBUF_X0_Y13_N9
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

-- Location: IOOBUF_X115_Y63_N2
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

-- Location: IOOBUF_X56_Y0_N9
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

-- Location: IOOBUF_X94_Y73_N2
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

-- Location: IOOBUF_X115_Y61_N23
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

-- Location: IOOBUF_X94_Y73_N9
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

-- Location: IOOBUF_X115_Y65_N16
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

-- Location: IOOBUF_X115_Y66_N23
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

-- Location: IOOBUF_X100_Y73_N23
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

-- Location: IOOBUF_X115_Y59_N16
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

-- Location: IOOBUF_X67_Y0_N9
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

-- Location: IOOBUF_X115_Y61_N16
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

-- Location: IOOBUF_X115_Y65_N23
\MEMOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|MUX1|G10|ALT_INV_Y[0]~0_combout\,
	devoe => ww_devoe,
	o => \MEMOUT[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
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

-- Location: IOOBUF_X45_Y0_N23
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

-- Location: IOOBUF_X52_Y73_N16
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

-- Location: IOOBUF_X115_Y4_N16
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X115_Y46_N9
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

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X60_Y73_N9
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X107_Y73_N9
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

-- Location: IOOBUF_X107_Y73_N2
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

-- Location: IOOBUF_X102_Y73_N9
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

-- Location: IOOBUF_X115_Y64_N9
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

-- Location: IOOBUF_X0_Y42_N2
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

-- Location: IOOBUF_X105_Y73_N2
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

-- Location: IOOBUF_X115_Y66_N16
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X105_Y73_N9
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

-- Location: IOOBUF_X111_Y73_N9
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

-- Location: IOOBUF_X111_Y73_N2
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

-- Location: IOOBUF_X109_Y73_N9
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

-- Location: IOOBUF_X109_Y73_N2
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

-- Location: IOOBUF_X115_Y62_N9
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

-- Location: IOOBUF_X115_Y63_N9
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

-- Location: IOOBUF_X115_Y62_N23
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

-- Location: IOOBUF_X113_Y73_N9
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

-- Location: IOOBUF_X113_Y73_N2
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

-- Location: IOOBUF_X115_Y62_N16
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

-- Location: IOOBUF_X115_Y68_N16
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

-- Location: IOOBUF_X115_Y68_N23
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

-- Location: IOOBUF_X115_Y67_N16
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

-- Location: IOOBUF_X115_Y69_N16
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

-- Location: LCCOMB_X110_Y69_N8
\inst3|inst7|OUTMUX[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[1]~16_combout\ = (!\inst3|inst|PCOUT\(1) & (\inst3|inst|PCOUT\(4) $ (((!\inst3|inst|PCOUT\(2) & !\inst3|inst|PCOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(4),
	datab => \inst3|inst|PCOUT\(2),
	datac => \inst3|inst|PCOUT\(1),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst3|inst7|OUTMUX[1]~16_combout\);

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

-- Location: FF_X110_Y69_N9
\inst3|inst|PCOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[1]~16_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(1));

-- Location: LCCOMB_X110_Y69_N20
\inst3|inst7|OUTMUX[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[3]~2_combout\ = \inst3|inst|PCOUT\(3) $ (((\inst3|inst|PCOUT\(2) & ((\inst3|inst|PCOUT\(1)) # (!\inst3|inst|PCOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(4),
	datab => \inst3|inst|PCOUT\(1),
	datac => \inst3|inst|PCOUT\(3),
	datad => \inst3|inst|PCOUT\(2),
	combout => \inst3|inst7|OUTMUX[3]~2_combout\);

-- Location: FF_X110_Y69_N21
\inst3|inst|PCOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[3]~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(3));

-- Location: LCCOMB_X111_Y69_N4
\inst3|inst7|OUTMUX[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[2]~4_combout\ = (\inst3|inst|PCOUT\(4) & ((\inst3|inst|PCOUT\(2) & ((!\inst3|inst|PCOUT\(1)))) # (!\inst3|inst|PCOUT\(2) & (\inst3|inst|PCOUT\(3) & \inst3|inst|PCOUT\(1))))) # (!\inst3|inst|PCOUT\(4) & (!\inst3|inst|PCOUT\(2) & 
-- ((\inst3|inst|PCOUT\(3)) # (\inst3|inst|PCOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datab => \inst3|inst|PCOUT\(4),
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst|PCOUT\(1),
	combout => \inst3|inst7|OUTMUX[2]~4_combout\);

-- Location: FF_X111_Y69_N5
\inst3|inst|PCOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[2]~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(2));

-- Location: LCCOMB_X110_Y69_N26
\inst3|inst7|OUTMUX[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[4]~3_combout\ = (\inst3|inst|PCOUT\(2) & ((\inst3|inst|PCOUT\(3)) # ((!\inst3|inst|PCOUT\(1) & \inst3|inst|PCOUT\(4))))) # (!\inst3|inst|PCOUT\(2) & (((\inst3|inst|PCOUT\(4) & \inst3|inst|PCOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(2),
	datab => \inst3|inst|PCOUT\(1),
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst3|inst7|OUTMUX[4]~3_combout\);

-- Location: FF_X110_Y69_N27
\inst3|inst|PCOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[4]~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(4));

-- Location: LCCOMB_X108_Y69_N24
\inst3|inst9|IMEM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~0_combout\ = (!\inst3|inst|PCOUT\(4) & \inst3|inst|PCOUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(4),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst3|inst9|IMEM~0_combout\);

-- Location: LCCOMB_X114_Y69_N4
\inst3|inst9|IMEM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~1_combout\ = (\inst3|inst|PCOUT\(3) & ((!\inst3|inst|PCOUT\(4)))) # (!\inst3|inst|PCOUT\(3) & (!\inst3|inst|PCOUT\(2) & \inst3|inst|PCOUT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst|PCOUT\(4),
	combout => \inst3|inst9|IMEM~1_combout\);

-- Location: LCCOMB_X114_Y69_N14
\inst3|inst9|IMEM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~2_combout\ = (\inst3|inst|PCOUT\(4)) # ((!\inst3|inst|PCOUT\(3) & !\inst3|inst|PCOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst|PCOUT\(4),
	combout => \inst3|inst9|IMEM~2_combout\);

-- Location: LCCOMB_X108_Y69_N22
\inst3|inst9|IMEM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~3_combout\ = (\inst3|inst|PCOUT\(2) & !\inst3|inst|PCOUT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst|PCOUT\(4),
	combout => \inst3|inst9|IMEM~3_combout\);

-- Location: LCCOMB_X109_Y69_N12
\inst3|inst9|IMEM~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~4_combout\ = (!\inst3|inst|PCOUT\(4) & (\inst3|inst|PCOUT\(2) $ (\inst3|inst|PCOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(2),
	datac => \inst3|inst|PCOUT\(3),
	datad => \inst3|inst|PCOUT\(4),
	combout => \inst3|inst9|IMEM~4_combout\);

-- Location: LCCOMB_X114_Y69_N8
\inst3|inst9|IMEM~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~5_combout\ = (\inst3|inst|PCOUT\(4)) # ((!\inst3|inst|PCOUT\(3) & \inst3|inst|PCOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst|PCOUT\(4),
	combout => \inst3|inst9|IMEM~5_combout\);

-- Location: LCCOMB_X111_Y69_N14
\inst3|inst9|IMEM~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~6_combout\ = (\inst3|inst|PCOUT\(4)) # (\inst3|inst|PCOUT\(2) $ (\inst3|inst|PCOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(2),
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst3|inst9|IMEM~6_combout\);

-- Location: LCCOMB_X108_Y69_N12
\inst3|inst9|IMEM~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~7_combout\ = (!\inst3|inst|PCOUT\(4) & (\inst3|inst|PCOUT\(2) & \inst3|inst|PCOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(4),
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst3|inst9|IMEM~7_combout\);

-- Location: LCCOMB_X108_Y69_N10
\inst3|inst9|IMEM~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|IMEM~8_combout\ = (\inst3|inst|PCOUT\(2)) # (\inst3|inst|PCOUT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst|PCOUT\(4),
	combout => \inst3|inst9|IMEM~8_combout\);

-- Location: LCCOMB_X108_Y69_N0
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst3|inst|PCOUT\(4) & (!\inst3|inst|PCOUT\(2) & !\inst3|inst|PCOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(4),
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y69_N24
\inst4|inst1|MUX1|G9|Y[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G9|Y[1]~0_combout\ = (!\inst3|inst|PCOUT\(4) & !\inst3|inst|PCOUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst3|inst|PCOUT\(2),
	combout => \inst4|inst1|MUX1|G9|Y[1]~0_combout\);

-- Location: LCCOMB_X111_Y69_N8
\inst1|DMEM~514\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~514_combout\ = (\inst4|inst1|MUX1|G9|Y[1]~0_combout\ & (!\inst4|inst1|MUX1|G10|Y[0]~0_combout\ & (\inst4|inst1|REGI2|Q\(1) $ (\inst4|inst1|REGI2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(1),
	datab => \inst4|inst1|MUX1|G9|Y[1]~0_combout\,
	datac => \inst4|inst1|REGI2|Q\(2),
	datad => \inst4|inst1|MUX1|G10|Y[0]~0_combout\,
	combout => \inst1|DMEM~514_combout\);

-- Location: LCCOMB_X111_Y69_N22
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = \inst3|inst|PCOUT\(4) $ (((!\inst3|inst|PCOUT\(2) & !\inst3|inst|PCOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(2),
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst|Mux1~0_combout\);

-- Location: FF_X111_Y69_N9
\inst4|inst1|REGI2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|DMEM~514_combout\,
	ena => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(2));

-- Location: LCCOMB_X111_Y69_N20
\inst1|DMEM~513\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~513_combout\ = (\inst4|inst1|MUX1|G10|Y[0]~0_combout\) # ((\inst4|inst1|REGI2|Q\(1) & (\inst4|inst1|MUX1|G9|Y[1]~0_combout\ & \inst4|inst1|REGI2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(1),
	datab => \inst4|inst1|MUX1|G9|Y[1]~0_combout\,
	datac => \inst4|inst1|REGI2|Q\(2),
	datad => \inst4|inst1|MUX1|G10|Y[0]~0_combout\,
	combout => \inst1|DMEM~513_combout\);

-- Location: LCCOMB_X111_Y69_N18
\inst4|inst1|REGI2|Q[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|REGI2|Q[4]~1_combout\ = !\inst1|DMEM~513_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|DMEM~513_combout\,
	combout => \inst4|inst1|REGI2|Q[4]~1_combout\);

-- Location: FF_X111_Y69_N19
\inst4|inst1|REGI2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst1|REGI2|Q[4]~1_combout\,
	ena => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(4));

-- Location: LCCOMB_X111_Y69_N16
\inst4|inst1|MUX1|G10|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX1|G10|Y[0]~0_combout\ = (!\inst3|inst|PCOUT\(2) & (!\inst3|inst|PCOUT\(4) & \inst4|inst1|REGI2|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(2),
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst4|inst1|REGI2|Q\(4),
	combout => \inst4|inst1|MUX1|G10|Y[0]~0_combout\);

-- Location: LCCOMB_X111_Y69_N30
\inst4|inst1|REGI2|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|REGI2|Q[1]~0_combout\ = !\inst4|inst1|MUX1|G10|Y[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst1|MUX1|G10|Y[0]~0_combout\,
	combout => \inst4|inst1|REGI2|Q[1]~0_combout\);

-- Location: FF_X111_Y69_N31
\inst4|inst1|REGI2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst1|REGI2|Q[1]~0_combout\,
	ena => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(1));

-- Location: LCCOMB_X111_Y69_N10
\inst1|DMEM~512\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~512_combout\ = (!\inst4|inst1|MUX1|G10|Y[0]~0_combout\ & (((!\inst4|inst1|REGI2|Q\(1) & !\inst4|inst1|REGI2|Q\(2))) # (!\inst4|inst1|MUX1|G9|Y[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(1),
	datab => \inst4|inst1|MUX1|G9|Y[1]~0_combout\,
	datac => \inst4|inst1|REGI2|Q\(2),
	datad => \inst4|inst1|MUX1|G10|Y[0]~0_combout\,
	combout => \inst1|DMEM~512_combout\);

-- Location: LCCOMB_X111_Y69_N26
\inst1|DMEM~515\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~515_combout\ = ((\inst4|inst1|MUX1|G10|Y[0]~0_combout\) # ((!\inst4|inst1|REGI2|Q\(2) & !\inst4|inst1|REGI2|Q\(1)))) # (!\inst4|inst1|MUX1|G9|Y[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(2),
	datab => \inst4|inst1|MUX1|G9|Y[1]~0_combout\,
	datac => \inst4|inst1|MUX1|G10|Y[0]~0_combout\,
	datad => \inst4|inst1|REGI2|Q\(1),
	combout => \inst1|DMEM~515_combout\);

-- Location: LCCOMB_X111_Y69_N28
\inst1|DMEM~516\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~516_combout\ = (\inst4|inst1|MUX1|G10|Y[0]~0_combout\) # ((\inst4|inst1|MUX1|G9|Y[1]~0_combout\ & (\inst4|inst1|REGI2|Q\(1) $ (\inst4|inst1|REGI2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(1),
	datab => \inst4|inst1|MUX1|G9|Y[1]~0_combout\,
	datac => \inst4|inst1|REGI2|Q\(2),
	datad => \inst4|inst1|MUX1|G10|Y[0]~0_combout\,
	combout => \inst1|DMEM~516_combout\);

-- Location: LCCOMB_X111_Y69_N2
\inst1|DMEM~517\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DMEM~517_combout\ = (\inst4|inst1|REGI2|Q\(1) & (\inst4|inst1|MUX1|G9|Y[1]~0_combout\ & (\inst4|inst1|REGI2|Q\(2) & !\inst4|inst1|MUX1|G10|Y[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(1),
	datab => \inst4|inst1|MUX1|G9|Y[1]~0_combout\,
	datac => \inst4|inst1|REGI2|Q\(2),
	datad => \inst4|inst1|MUX1|G10|Y[0]~0_combout\,
	combout => \inst1|DMEM~517_combout\);

-- Location: LCCOMB_X111_Y69_N12
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

-- Location: FF_X111_Y69_N13
\inst4|inst1|REGI2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst1|REGI2|Q[7]~2_combout\,
	ena => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(7));

-- Location: LCCOMB_X108_Y69_N2
\inst4|inst1|MUX2|G10|Y[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G10|Y[3]~0_combout\ = (!\inst3|inst|PCOUT\(2) & (\inst4|inst1|REGI2|Q\(7) & (!\inst3|inst|PCOUT\(4) & !\inst3|inst|PCOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(2),
	datab => \inst4|inst1|REGI2|Q\(7),
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst4|inst1|MUX2|G10|Y[3]~0_combout\);

-- Location: FF_X111_Y69_N3
\inst4|inst1|REGI2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|DMEM~517_combout\,
	ena => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(6));

-- Location: LCCOMB_X108_Y69_N4
\inst4|inst1|MUX2|G10|Y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G10|Y[2]~1_combout\ = (!\inst3|inst|PCOUT\(3) & (!\inst3|inst|PCOUT\(4) & (!\inst3|inst|PCOUT\(2) & \inst4|inst1|REGI2|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datab => \inst3|inst|PCOUT\(4),
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst4|inst1|REGI2|Q\(6),
	combout => \inst4|inst1|MUX2|G10|Y[2]~1_combout\);

-- Location: FF_X111_Y69_N11
\inst4|inst1|REGI2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|DMEM~512_combout\,
	ena => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|REGI2|Q\(5));

-- Location: LCCOMB_X108_Y69_N6
\inst4|inst1|MUX2|G10|Y[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G10|Y[1]~2_combout\ = (!\inst3|inst|PCOUT\(2) & (\inst4|inst1|REGI2|Q\(5) & (!\inst3|inst|PCOUT\(4) & !\inst3|inst|PCOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(2),
	datab => \inst4|inst1|REGI2|Q\(5),
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst4|inst1|MUX2|G10|Y[1]~2_combout\);

-- Location: LCCOMB_X111_Y69_N6
\inst4|inst1|MUX2|G10|Y[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G10|Y[0]~3_combout\ = (!\inst3|inst|PCOUT\(3) & (!\inst3|inst|PCOUT\(2) & (!\inst3|inst|PCOUT\(4) & \inst4|inst1|REGI2|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datab => \inst3|inst|PCOUT\(2),
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst4|inst1|REGI2|Q\(4),
	combout => \inst4|inst1|MUX2|G10|Y[0]~3_combout\);

-- Location: LCCOMB_X108_Y69_N20
\inst4|inst1|MUX2|G9|Y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G9|Y[2]~0_combout\ = (!\inst3|inst|PCOUT\(2) & (\inst4|inst1|REGI2|Q\(2) & (!\inst3|inst|PCOUT\(4) & !\inst3|inst|PCOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(2),
	datab => \inst4|inst1|REGI2|Q\(2),
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst3|inst|PCOUT\(3),
	combout => \inst4|inst1|MUX2|G9|Y[2]~0_combout\);

-- Location: LCCOMB_X111_Y69_N0
\inst4|inst1|MUX2|G9|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|MUX2|G9|Y[1]~1_combout\ = (\inst4|inst1|REGI2|Q\(1) & (!\inst3|inst|PCOUT\(3) & (!\inst3|inst|PCOUT\(4) & !\inst3|inst|PCOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|REGI2|Q\(1),
	datab => \inst3|inst|PCOUT\(3),
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst3|inst|PCOUT\(2),
	combout => \inst4|inst1|MUX2|G9|Y[1]~1_combout\);

-- Location: LCCOMB_X110_Y69_N22
\inst3|inst1|A1|A2|s4[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A2|s4\(1) = ((\inst3|inst|PCOUT\(3)) # ((!\inst3|inst|PCOUT\(2)) # (!\inst3|inst|PCOUT\(1)))) # (!\inst3|inst|PCOUT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(4),
	datab => \inst3|inst|PCOUT\(3),
	datac => \inst3|inst|PCOUT\(1),
	datad => \inst3|inst|PCOUT\(2),
	combout => \inst3|inst1|A1|A2|s4\(1));

-- Location: LCCOMB_X110_Y69_N10
\inst3|inst7|OUTMUX[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[5]~15_combout\ = (\inst|Mux1~0_combout\ & (\inst3|inst1|A1|A2|s4\(1) $ (!\inst3|inst|PCOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|A1|A2|s4\(1),
	datac => \inst3|inst|PCOUT\(5),
	datad => \inst|Mux1~0_combout\,
	combout => \inst3|inst7|OUTMUX[5]~15_combout\);

-- Location: FF_X110_Y69_N11
\inst3|inst|PCOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[5]~15_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(5));

-- Location: LCCOMB_X110_Y69_N12
\inst3|inst7|OUTMUX[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[6]~14_combout\ = (\inst|Mux1~0_combout\ & (\inst3|inst|PCOUT\(6) $ (((\inst3|inst|PCOUT\(5) & !\inst3|inst1|A1|A2|s4\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(5),
	datab => \inst3|inst1|A1|A2|s4\(1),
	datac => \inst3|inst|PCOUT\(6),
	datad => \inst|Mux1~0_combout\,
	combout => \inst3|inst7|OUTMUX[6]~14_combout\);

-- Location: FF_X110_Y69_N13
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

-- Location: LCCOMB_X110_Y69_N30
\inst3|inst1|A1|A2|R[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A2|R\(3) = \inst3|inst|PCOUT\(7) $ ((((\inst3|inst1|A1|A2|s4\(1)) # (!\inst3|inst|PCOUT\(5))) # (!\inst3|inst|PCOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(6),
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst3|inst1|A1|A2|s4\(1),
	datad => \inst3|inst|PCOUT\(7),
	combout => \inst3|inst1|A1|A2|R\(3));

-- Location: LCCOMB_X110_Y69_N18
\inst3|inst7|OUTMUX[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[7]~17_combout\ = (!\inst3|inst1|A1|A2|R\(3) & (\inst3|inst|PCOUT\(4) $ (((!\inst3|inst|PCOUT\(3) & !\inst3|inst|PCOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datab => \inst3|inst|PCOUT\(2),
	datac => \inst3|inst1|A1|A2|R\(3),
	datad => \inst3|inst|PCOUT\(4),
	combout => \inst3|inst7|OUTMUX[7]~17_combout\);

-- Location: FF_X110_Y69_N19
\inst3|inst|PCOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[7]~17_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(7));

-- Location: LCCOMB_X110_Y69_N0
\inst3|inst1|A1|A2|OVERFLOW~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A2|OVERFLOW~0_combout\ = (\inst3|inst|PCOUT\(6) & (\inst3|inst|PCOUT\(5) & (!\inst3|inst1|A1|A2|s4\(1) & !\inst3|inst|PCOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(6),
	datab => \inst3|inst|PCOUT\(5),
	datac => \inst3|inst1|A1|A2|s4\(1),
	datad => \inst3|inst|PCOUT\(7),
	combout => \inst3|inst1|A1|A2|OVERFLOW~0_combout\);

-- Location: LCCOMB_X110_Y69_N4
\inst3|inst7|OUTMUX[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[8]~13_combout\ = (\inst|Mux1~0_combout\ & ((\inst3|inst|PCOUT\(8) $ (\inst3|inst1|A1|A2|OVERFLOW~0_combout\)))) # (!\inst|Mux1~0_combout\ & (!\inst3|inst9|IMEM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datab => \inst3|inst9|IMEM~6_combout\,
	datac => \inst3|inst|PCOUT\(8),
	datad => \inst3|inst1|A1|A2|OVERFLOW~0_combout\,
	combout => \inst3|inst7|OUTMUX[8]~13_combout\);

-- Location: FF_X110_Y69_N5
\inst3|inst|PCOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[8]~13_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(8));

-- Location: LCCOMB_X110_Y69_N16
\inst3|inst7|OUTMUX[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[9]~11_combout\ = (\inst|Mux1~0_combout\ & (\inst3|inst|PCOUT\(9) $ (((!\inst3|inst1|A1|A2|OVERFLOW~0_combout\) # (!\inst3|inst|PCOUT\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(9),
	datab => \inst3|inst|PCOUT\(8),
	datac => \inst|Mux1~0_combout\,
	datad => \inst3|inst1|A1|A2|OVERFLOW~0_combout\,
	combout => \inst3|inst7|OUTMUX[9]~11_combout\);

-- Location: LCCOMB_X110_Y69_N14
\inst3|inst7|OUTMUX[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[9]~12_combout\ = (!\inst3|inst7|OUTMUX[9]~11_combout\ & ((\inst3|inst|PCOUT\(3)) # ((\inst3|inst|PCOUT\(2)) # (!\inst3|inst|PCOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datab => \inst3|inst|PCOUT\(2),
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst3|inst7|OUTMUX[9]~11_combout\,
	combout => \inst3|inst7|OUTMUX[9]~12_combout\);

-- Location: FF_X110_Y69_N15
\inst3|inst|PCOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[9]~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(9));

-- Location: LCCOMB_X110_Y69_N6
\inst3|inst1|A1|A3|R[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A3|R\(2) = \inst3|inst|PCOUT\(10) $ ((((!\inst3|inst1|A1|A2|OVERFLOW~0_combout\) # (!\inst3|inst|PCOUT\(8))) # (!\inst3|inst|PCOUT\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(9),
	datab => \inst3|inst|PCOUT\(10),
	datac => \inst3|inst|PCOUT\(8),
	datad => \inst3|inst1|A1|A2|OVERFLOW~0_combout\,
	combout => \inst3|inst1|A1|A3|R\(2));

-- Location: LCCOMB_X110_Y69_N24
\inst3|inst7|OUTMUX[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[10]~10_combout\ = (\inst3|inst|PCOUT\(3) & (((!\inst3|inst1|A1|A3|R\(2)) # (!\inst3|inst|PCOUT\(4))))) # (!\inst3|inst|PCOUT\(3) & (!\inst3|inst1|A1|A3|R\(2) & (\inst3|inst|PCOUT\(2) $ (!\inst3|inst|PCOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(3),
	datab => \inst3|inst|PCOUT\(2),
	datac => \inst3|inst|PCOUT\(4),
	datad => \inst3|inst1|A1|A3|R\(2),
	combout => \inst3|inst7|OUTMUX[10]~10_combout\);

-- Location: FF_X110_Y69_N25
\inst3|inst|PCOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[10]~10_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(10));

-- Location: LCCOMB_X110_Y69_N28
\inst3|inst7|OUTMUX[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[11]~5_combout\ = (\inst3|inst|PCOUT\(6) & (!\inst3|inst|PCOUT\(7) & (\inst3|inst|PCOUT\(8) & \inst3|inst|PCOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(6),
	datab => \inst3|inst|PCOUT\(7),
	datac => \inst3|inst|PCOUT\(8),
	datad => \inst3|inst|PCOUT\(5),
	combout => \inst3|inst7|OUTMUX[11]~5_combout\);

-- Location: LCCOMB_X110_Y69_N2
\inst3|inst7|OUTMUX[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[11]~6_combout\ = (\inst3|inst|PCOUT\(9) & (\inst3|inst|PCOUT\(10) & (!\inst3|inst1|A1|A2|s4\(1) & \inst3|inst7|OUTMUX[11]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(9),
	datab => \inst3|inst|PCOUT\(10),
	datac => \inst3|inst1|A1|A2|s4\(1),
	datad => \inst3|inst7|OUTMUX[11]~5_combout\,
	combout => \inst3|inst7|OUTMUX[11]~6_combout\);

-- Location: LCCOMB_X109_Y69_N6
\inst3|inst7|OUTMUX[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[11]~9_combout\ = (\inst|Mux1~0_combout\ & ((\inst3|inst|PCOUT\(11) $ (\inst3|inst7|OUTMUX[11]~6_combout\)))) # (!\inst|Mux1~0_combout\ & (\inst3|inst9|IMEM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|IMEM~4_combout\,
	datab => \inst|Mux1~0_combout\,
	datac => \inst3|inst|PCOUT\(11),
	datad => \inst3|inst7|OUTMUX[11]~6_combout\,
	combout => \inst3|inst7|OUTMUX[11]~9_combout\);

-- Location: FF_X109_Y69_N7
\inst3|inst|PCOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[11]~9_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(11));

-- Location: LCCOMB_X109_Y69_N18
\inst3|inst7|OUTMUX[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[12]~7_combout\ = (\inst|Mux1~0_combout\ & (\inst3|inst|PCOUT\(12) $ (((!\inst3|inst|PCOUT\(11) & \inst3|inst7|OUTMUX[11]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(11),
	datab => \inst3|inst|PCOUT\(12),
	datac => \inst|Mux1~0_combout\,
	datad => \inst3|inst7|OUTMUX[11]~6_combout\,
	combout => \inst3|inst7|OUTMUX[12]~7_combout\);

-- Location: LCCOMB_X109_Y69_N24
\inst3|inst7|OUTMUX[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst7|OUTMUX[12]~8_combout\ = (\inst3|inst7|OUTMUX[12]~7_combout\) # ((!\inst3|inst|PCOUT\(4) & \inst3|inst|PCOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(4),
	datac => \inst3|inst|PCOUT\(2),
	datad => \inst3|inst7|OUTMUX[12]~7_combout\,
	combout => \inst3|inst7|OUTMUX[12]~8_combout\);

-- Location: FF_X109_Y69_N25
\inst3|inst|PCOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst7|OUTMUX[12]~8_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(12));

-- Location: LCCOMB_X109_Y69_N26
\inst3|inst1|A1|A4|R[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A4|R\(1) = \inst3|inst|PCOUT\(13) $ (((!\inst3|inst|PCOUT\(11) & (\inst3|inst|PCOUT\(12) & \inst3|inst7|OUTMUX[11]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(11),
	datab => \inst3|inst|PCOUT\(12),
	datac => \inst3|inst|PCOUT\(13),
	datad => \inst3|inst7|OUTMUX[11]~6_combout\,
	combout => \inst3|inst1|A1|A4|R\(1));

-- Location: FF_X109_Y69_N27
\inst3|inst|PCOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst1|A1|A4|R\(1),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(13));

-- Location: LCCOMB_X109_Y69_N20
\inst3|inst1|A1|A4|s4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A4|s4~0_combout\ = (\inst3|inst|PCOUT\(11)) # (((!\inst3|inst7|OUTMUX[11]~6_combout\) # (!\inst3|inst|PCOUT\(13))) # (!\inst3|inst|PCOUT\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|PCOUT\(11),
	datab => \inst3|inst|PCOUT\(12),
	datac => \inst3|inst|PCOUT\(13),
	datad => \inst3|inst7|OUTMUX[11]~6_combout\,
	combout => \inst3|inst1|A1|A4|s4~0_combout\);

-- Location: LCCOMB_X109_Y69_N28
\inst3|inst1|A1|A4|R[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A4|R\(2) = \inst3|inst|PCOUT\(14) $ (!\inst3|inst1|A1|A4|s4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|PCOUT\(14),
	datad => \inst3|inst1|A1|A4|s4~0_combout\,
	combout => \inst3|inst1|A1|A4|R\(2));

-- Location: FF_X109_Y69_N29
\inst3|inst|PCOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst1|A1|A4|R\(2),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(14));

-- Location: LCCOMB_X109_Y69_N30
\inst3|inst1|A1|A4|R[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1|A1|A4|R\(3) = \inst3|inst|PCOUT\(15) $ (((\inst3|inst|PCOUT\(14) & !\inst3|inst1|A1|A4|s4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|PCOUT\(14),
	datac => \inst3|inst|PCOUT\(15),
	datad => \inst3|inst1|A1|A4|s4~0_combout\,
	combout => \inst3|inst1|A1|A4|R\(3));

-- Location: FF_X109_Y69_N31
\inst3|inst|PCOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst1|A1|A4|R\(3),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|PCOUT\(15));

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
END structure;


