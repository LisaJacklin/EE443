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

-- DATE "04/27/2023 16:57:34"

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

ENTITY 	Level2 IS
    PORT (
	IMM_EXT : OUT std_logic_vector(15 DOWNTO 0);
	INS : OUT std_logic_vector(15 DOWNTO 0);
	pcout : OUT std_logic_vector(15 DOWNTO 0);
	PC_SEL1 : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	PC_SEL0 : IN std_logic
	);
END Level2;

-- Design Ports Information
-- IMM_EXT[15]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[14]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[13]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[12]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[11]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[10]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[9]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[8]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[7]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[6]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[4]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[3]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[0]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[15]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[14]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[13]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[12]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[11]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[10]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[9]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[8]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[6]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[4]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[15]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[14]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[13]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[12]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[11]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[10]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[9]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[8]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[7]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[5]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[3]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[2]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[1]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcout[0]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_SEL1	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_SEL0	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Level2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IMM_EXT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_INS : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pcout : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PC_SEL1 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_PC_SEL0 : std_logic;
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \pcout[15]~output_o\ : std_logic;
SIGNAL \pcout[14]~output_o\ : std_logic;
SIGNAL \pcout[13]~output_o\ : std_logic;
SIGNAL \pcout[12]~output_o\ : std_logic;
SIGNAL \pcout[11]~output_o\ : std_logic;
SIGNAL \pcout[10]~output_o\ : std_logic;
SIGNAL \pcout[9]~output_o\ : std_logic;
SIGNAL \pcout[8]~output_o\ : std_logic;
SIGNAL \pcout[7]~output_o\ : std_logic;
SIGNAL \pcout[6]~output_o\ : std_logic;
SIGNAL \pcout[5]~output_o\ : std_logic;
SIGNAL \pcout[4]~output_o\ : std_logic;
SIGNAL \pcout[3]~output_o\ : std_logic;
SIGNAL \pcout[2]~output_o\ : std_logic;
SIGNAL \pcout[1]~output_o\ : std_logic;
SIGNAL \pcout[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC_SEL1~input_o\ : std_logic;
SIGNAL \inst7|OUTMUX[1]~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|A1|A1|R[2]~0_combout\ : std_logic;
SIGNAL \PC_SEL0~input_o\ : std_logic;
SIGNAL \inst9|IMEM~0_combout\ : std_logic;
SIGNAL \inst1|A1|A1|R[3]~1_combout\ : std_logic;
SIGNAL \inst9|IMEM~2_combout\ : std_logic;
SIGNAL \inst9|IMEM~3_combout\ : std_logic;
SIGNAL \inst4|A1|R[3]~2_combout\ : std_logic;
SIGNAL \inst|PCOUT[3]~1_combout\ : std_logic;
SIGNAL \inst1|A1|A2|R[1]~1_combout\ : std_logic;
SIGNAL \inst4|A1|c4Buff~0_combout\ : std_logic;
SIGNAL \inst7|OUTMUX[5]~1_combout\ : std_logic;
SIGNAL \inst9|IMEM~4_combout\ : std_logic;
SIGNAL \inst|PCOUT[2]~0_combout\ : std_logic;
SIGNAL \inst1|A1|A2|R[0]~0_combout\ : std_logic;
SIGNAL \inst|PCOUT[4]~2_combout\ : std_logic;
SIGNAL \inst9|IMEM~1_combout\ : std_logic;
SIGNAL \inst9|IMEM~5_combout\ : std_logic;
SIGNAL \inst9|IMEM~6_combout\ : std_logic;
SIGNAL \inst9|IMEM~7_combout\ : std_logic;
SIGNAL \inst9|IMEM~8_combout\ : std_logic;
SIGNAL \inst9|IMEM~9_combout\ : std_logic;
SIGNAL \inst9|IMEM~10_combout\ : std_logic;
SIGNAL \inst9|IMEM~11_combout\ : std_logic;
SIGNAL \inst9|IMEM~12_combout\ : std_logic;
SIGNAL \inst9|IMEM~13_combout\ : std_logic;
SIGNAL \inst9|IMEM~14_combout\ : std_logic;
SIGNAL \inst1|A1|A2|c4Buff~0_combout\ : std_logic;
SIGNAL \inst7|OUTMUX[6]~5_combout\ : std_logic;
SIGNAL \inst7|OUTMUX[7]~4_combout\ : std_logic;
SIGNAL \inst|PCOUT[8]~7_combout\ : std_logic;
SIGNAL \inst1|A1|A3|c4Buff~0_combout\ : std_logic;
SIGNAL \inst1|A1|A3|c4Buff~1_combout\ : std_logic;
SIGNAL \inst|PCOUT[9]~6_combout\ : std_logic;
SIGNAL \inst|PCOUT[10]~5_combout\ : std_logic;
SIGNAL \inst|PCOUT[11]~4_combout\ : std_logic;
SIGNAL \inst1|A1|A3|c4Buff~2_combout\ : std_logic;
SIGNAL \inst|PCOUT[12]~3_combout\ : std_logic;
SIGNAL \inst7|OUTMUX[15]~2_combout\ : std_logic;
SIGNAL \inst7|OUTMUX[15]~3_combout\ : std_logic;
SIGNAL \inst1|A1|A4|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|PCOUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|A2|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|A1|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|A1|A3|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_PC_SEL1~input_o\ : std_logic;
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

IMM_EXT <= ww_IMM_EXT;
INS <= ww_INS;
pcout <= ww_pcout;
ww_PC_SEL1 <= PC_SEL1;
ww_CLK <= CLK;
ww_RST <= RST;
ww_PC_SEL0 <= PC_SEL0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_PC_SEL1~input_o\ <= NOT \PC_SEL1~input_o\;
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X35_Y0_N16
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

-- Location: IOOBUF_X87_Y73_N16
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

-- Location: IOOBUF_X83_Y73_N16
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

-- Location: IOOBUF_X102_Y73_N2
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

-- Location: IOOBUF_X98_Y73_N23
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

-- Location: IOOBUF_X60_Y0_N16
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

-- Location: IOOBUF_X72_Y0_N9
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

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X7_Y0_N16
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

-- Location: IOOBUF_X100_Y0_N16
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

-- Location: IOOBUF_X111_Y73_N2
\IMM_EXT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IMM_EXT[5]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\IMM_EXT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IMM_EXT[4]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\IMM_EXT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|IMEM~1_combout\,
	devoe => ww_devoe,
	o => \IMM_EXT[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\IMM_EXT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|IMEM~3_combout\,
	devoe => ww_devoe,
	o => \IMM_EXT[2]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\IMM_EXT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|IMEM~4_combout\,
	devoe => ww_devoe,
	o => \IMM_EXT[1]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
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

-- Location: IOOBUF_X3_Y73_N9
\INS[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|IMEM~5_combout\,
	devoe => ww_devoe,
	o => \INS[15]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\INS[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|IMEM~7_combout\,
	devoe => ww_devoe,
	o => \INS[14]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\INS[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|IMEM~5_combout\,
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
	i => \inst9|IMEM~5_combout\,
	devoe => ww_devoe,
	o => \INS[12]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\INS[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|IMEM~8_combout\,
	devoe => ww_devoe,
	o => \INS[11]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\INS[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|IMEM~3_combout\,
	devoe => ww_devoe,
	o => \INS[10]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\INS[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|IMEM~10_combout\,
	devoe => ww_devoe,
	o => \INS[9]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\INS[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|IMEM~12_combout\,
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
	i => \inst9|IMEM~14_combout\,
	devoe => ww_devoe,
	o => \INS[7]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
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

-- Location: IOOBUF_X0_Y55_N9
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

-- Location: IOOBUF_X105_Y0_N2
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

-- Location: IOOBUF_X1_Y73_N23
\INS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|IMEM~1_combout\,
	devoe => ww_devoe,
	o => \INS[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\INS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|IMEM~3_combout\,
	devoe => ww_devoe,
	o => \INS[2]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\INS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|IMEM~4_combout\,
	devoe => ww_devoe,
	o => \INS[1]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
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

-- Location: IOOBUF_X3_Y73_N2
\pcout[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(15),
	devoe => ww_devoe,
	o => \pcout[15]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\pcout[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(14),
	devoe => ww_devoe,
	o => \pcout[14]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\pcout[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(13),
	devoe => ww_devoe,
	o => \pcout[13]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\pcout[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(12),
	devoe => ww_devoe,
	o => \pcout[12]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\pcout[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(11),
	devoe => ww_devoe,
	o => \pcout[11]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\pcout[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(10),
	devoe => ww_devoe,
	o => \pcout[10]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\pcout[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(9),
	devoe => ww_devoe,
	o => \pcout[9]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\pcout[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(8),
	devoe => ww_devoe,
	o => \pcout[8]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\pcout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(7),
	devoe => ww_devoe,
	o => \pcout[7]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\pcout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(6),
	devoe => ww_devoe,
	o => \pcout[6]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\pcout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(5),
	devoe => ww_devoe,
	o => \pcout[5]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\pcout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(4),
	devoe => ww_devoe,
	o => \pcout[4]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\pcout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(3),
	devoe => ww_devoe,
	o => \pcout[3]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\pcout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(2),
	devoe => ww_devoe,
	o => \pcout[2]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\pcout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PCOUT\(1),
	devoe => ww_devoe,
	o => \pcout[1]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\pcout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pcout[0]~output_o\);

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

-- Location: IOIBUF_X16_Y73_N1
\PC_SEL1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_SEL1,
	o => \PC_SEL1~input_o\);

-- Location: LCCOMB_X12_Y72_N16
\inst7|OUTMUX[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUTMUX[1]~0_combout\ = (!\inst|PCOUT\(1) & \PC_SEL1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PCOUT\(1),
	datad => \PC_SEL1~input_o\,
	combout => \inst7|OUTMUX[1]~0_combout\);

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

-- Location: FF_X12_Y72_N17
\inst|PCOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|OUTMUX[1]~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(1));

-- Location: LCCOMB_X12_Y72_N26
\inst1|A1|A1|R[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A1|R[2]~0_combout\ = \inst|PCOUT\(2) $ (\inst|PCOUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PCOUT\(2),
	datad => \inst|PCOUT\(1),
	combout => \inst1|A1|A1|R[2]~0_combout\);

-- Location: IOIBUF_X16_Y73_N8
\PC_SEL0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_SEL0,
	o => \PC_SEL0~input_o\);

-- Location: LCCOMB_X12_Y72_N22
\inst9|IMEM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~0_combout\ = (\inst|PCOUT\(2) & \inst|PCOUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PCOUT\(2),
	datad => \inst|PCOUT\(1),
	combout => \inst9|IMEM~0_combout\);

-- Location: LCCOMB_X12_Y72_N20
\inst1|A1|A1|R[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A1|R[3]~1_combout\ = \inst|PCOUT\(3) $ (((\inst|PCOUT\(1) & \inst|PCOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PCOUT\(1),
	datac => \inst|PCOUT\(2),
	datad => \inst|PCOUT\(3),
	combout => \inst1|A1|A1|R[3]~1_combout\);

-- Location: LCCOMB_X13_Y72_N0
\inst9|IMEM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~2_combout\ = (!\inst|PCOUT\(4) & (!\inst|PCOUT\(3) & (\inst|PCOUT\(2) $ (\inst|PCOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(2),
	datab => \inst|PCOUT\(4),
	datac => \inst|PCOUT\(1),
	datad => \inst|PCOUT\(3),
	combout => \inst9|IMEM~2_combout\);

-- Location: LCCOMB_X13_Y72_N6
\inst9|IMEM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~3_combout\ = (!\inst|PCOUT\(5) & \inst9|IMEM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PCOUT\(5),
	datad => \inst9|IMEM~2_combout\,
	combout => \inst9|IMEM~3_combout\);

-- Location: LCCOMB_X14_Y72_N2
\inst4|A1|R[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|A1|R[3]~2_combout\ = \inst9|IMEM~3_combout\ $ (\inst1|A1|A1|R[3]~1_combout\ $ (((\inst|PCOUT\(2) & \inst9|IMEM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(2),
	datab => \inst9|IMEM~3_combout\,
	datac => \inst1|A1|A1|R[3]~1_combout\,
	datad => \inst9|IMEM~4_combout\,
	combout => \inst4|A1|R[3]~2_combout\);

-- Location: LCCOMB_X14_Y72_N4
\inst|PCOUT[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCOUT[3]~1_combout\ = (\PC_SEL0~input_o\ & ((\inst4|A1|R[3]~2_combout\))) # (!\PC_SEL0~input_o\ & (\inst1|A1|A1|R[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|A1|A1|R[3]~1_combout\,
	datab => \PC_SEL0~input_o\,
	datad => \inst4|A1|R[3]~2_combout\,
	combout => \inst|PCOUT[3]~1_combout\);

-- Location: FF_X14_Y72_N5
\inst|PCOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|PCOUT[3]~1_combout\,
	asdata => \inst9|IMEM~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \ALT_INV_PC_SEL1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(3));

-- Location: LCCOMB_X12_Y72_N0
\inst1|A1|A2|R[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A2|R[1]~1_combout\ = \inst|PCOUT\(5) $ ((((!\inst|PCOUT\(3)) # (!\inst9|IMEM~0_combout\)) # (!\inst|PCOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(4),
	datab => \inst|PCOUT\(5),
	datac => \inst9|IMEM~0_combout\,
	datad => \inst|PCOUT\(3),
	combout => \inst1|A1|A2|R[1]~1_combout\);

-- Location: LCCOMB_X12_Y72_N10
\inst4|A1|c4Buff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|A1|c4Buff~0_combout\ = (\inst1|A1|A1|R[3]~1_combout\ & (!\inst9|IMEM~3_combout\ & ((!\inst1|A1|A1|R[2]~0_combout\) # (!\inst9|IMEM~4_combout\)))) # (!\inst1|A1|A1|R[3]~1_combout\ & (((!\inst9|IMEM~3_combout\) # (!\inst1|A1|A1|R[2]~0_combout\)) # 
-- (!\inst9|IMEM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|IMEM~4_combout\,
	datab => \inst1|A1|A1|R[3]~1_combout\,
	datac => \inst1|A1|A1|R[2]~0_combout\,
	datad => \inst9|IMEM~3_combout\,
	combout => \inst4|A1|c4Buff~0_combout\);

-- Location: LCCOMB_X12_Y72_N2
\inst4|A2|R[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|A2|R\(1) = \inst1|A1|A2|R[1]~1_combout\ $ (((\inst4|A1|c4Buff~0_combout\) # ((\inst1|A1|A2|R[0]~0_combout\ & !\inst9|IMEM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|A1|A2|R[0]~0_combout\,
	datab => \inst1|A1|A2|R[1]~1_combout\,
	datac => \inst9|IMEM~1_combout\,
	datad => \inst4|A1|c4Buff~0_combout\,
	combout => \inst4|A2|R\(1));

-- Location: LCCOMB_X12_Y72_N24
\inst7|OUTMUX[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUTMUX[5]~1_combout\ = (\PC_SEL1~input_o\ & ((\PC_SEL0~input_o\ & ((\inst4|A2|R\(1)))) # (!\PC_SEL0~input_o\ & (!\inst1|A1|A2|R[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_SEL0~input_o\,
	datab => \PC_SEL1~input_o\,
	datac => \inst1|A1|A2|R[1]~1_combout\,
	datad => \inst4|A2|R\(1),
	combout => \inst7|OUTMUX[5]~1_combout\);

-- Location: FF_X12_Y72_N25
\inst|PCOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|OUTMUX[5]~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(5));

-- Location: LCCOMB_X12_Y72_N12
\inst9|IMEM~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~4_combout\ = (!\inst|PCOUT\(4) & (!\inst|PCOUT\(1) & (!\inst|PCOUT\(5) & !\inst|PCOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(4),
	datab => \inst|PCOUT\(1),
	datac => \inst|PCOUT\(5),
	datad => \inst|PCOUT\(3),
	combout => \inst9|IMEM~4_combout\);

-- Location: LCCOMB_X12_Y72_N30
\inst4|A1|R[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|A1|R\(2) = \inst|PCOUT\(2) $ (\inst|PCOUT\(1) $ (\inst9|IMEM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(2),
	datab => \inst|PCOUT\(1),
	datad => \inst9|IMEM~4_combout\,
	combout => \inst4|A1|R\(2));

-- Location: LCCOMB_X12_Y72_N8
\inst|PCOUT[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCOUT[2]~0_combout\ = (\PC_SEL0~input_o\ & ((\inst4|A1|R\(2)))) # (!\PC_SEL0~input_o\ & (\inst1|A1|A1|R[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|A1|A1|R[2]~0_combout\,
	datab => \PC_SEL0~input_o\,
	datad => \inst4|A1|R\(2),
	combout => \inst|PCOUT[2]~0_combout\);

-- Location: FF_X12_Y72_N9
\inst|PCOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|PCOUT[2]~0_combout\,
	asdata => \inst9|IMEM~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \ALT_INV_PC_SEL1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(2));

-- Location: LCCOMB_X11_Y72_N14
\inst1|A1|A2|R[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A2|R[0]~0_combout\ = \inst|PCOUT\(4) $ ((((!\inst|PCOUT\(3)) # (!\inst|PCOUT\(2))) # (!\inst|PCOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(4),
	datab => \inst|PCOUT\(1),
	datac => \inst|PCOUT\(2),
	datad => \inst|PCOUT\(3),
	combout => \inst1|A1|A2|R[0]~0_combout\);

-- Location: LCCOMB_X12_Y72_N28
\inst4|A2|R[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|A2|R\(0) = \inst1|A1|A2|R[0]~0_combout\ $ (\inst9|IMEM~1_combout\ $ (\inst4|A1|c4Buff~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|A1|A2|R[0]~0_combout\,
	datac => \inst9|IMEM~1_combout\,
	datad => \inst4|A1|c4Buff~0_combout\,
	combout => \inst4|A2|R\(0));

-- Location: LCCOMB_X12_Y72_N6
\inst|PCOUT[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCOUT[4]~2_combout\ = (\PC_SEL0~input_o\ & ((\inst4|A2|R\(0)))) # (!\PC_SEL0~input_o\ & (!\inst1|A1|A2|R[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|A1|A2|R[0]~0_combout\,
	datab => \PC_SEL0~input_o\,
	datad => \inst4|A2|R\(0),
	combout => \inst|PCOUT[4]~2_combout\);

-- Location: FF_X12_Y72_N7
\inst|PCOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|PCOUT[4]~2_combout\,
	asdata => \inst9|IMEM~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \ALT_INV_PC_SEL1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(4));

-- Location: LCCOMB_X12_Y72_N14
\inst9|IMEM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~1_combout\ = (!\inst|PCOUT\(4) & (!\inst|PCOUT\(5) & (\inst9|IMEM~0_combout\ & !\inst|PCOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(4),
	datab => \inst|PCOUT\(5),
	datac => \inst9|IMEM~0_combout\,
	datad => \inst|PCOUT\(3),
	combout => \inst9|IMEM~1_combout\);

-- Location: LCCOMB_X11_Y72_N12
\inst9|IMEM~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~5_combout\ = (!\inst|PCOUT\(4) & (!\inst|PCOUT\(3) & (!\inst|PCOUT\(5) & \inst|PCOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(4),
	datab => \inst|PCOUT\(3),
	datac => \inst|PCOUT\(5),
	datad => \inst|PCOUT\(2),
	combout => \inst9|IMEM~5_combout\);

-- Location: LCCOMB_X14_Y72_N16
\inst9|IMEM~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~6_combout\ = (!\inst|PCOUT\(4) & ((\inst|PCOUT\(1) & (!\inst|PCOUT\(3) & \inst|PCOUT\(2))) # (!\inst|PCOUT\(1) & (\inst|PCOUT\(3) & !\inst|PCOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(1),
	datab => \inst|PCOUT\(3),
	datac => \inst|PCOUT\(2),
	datad => \inst|PCOUT\(4),
	combout => \inst9|IMEM~6_combout\);

-- Location: LCCOMB_X14_Y72_N14
\inst9|IMEM~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~7_combout\ = (!\inst|PCOUT\(5) & \inst9|IMEM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PCOUT\(5),
	datad => \inst9|IMEM~6_combout\,
	combout => \inst9|IMEM~7_combout\);

-- Location: LCCOMB_X14_Y72_N28
\inst9|IMEM~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~8_combout\ = (\inst|PCOUT\(1) & (!\inst|PCOUT\(3) & (!\inst|PCOUT\(5) & !\inst|PCOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(1),
	datab => \inst|PCOUT\(3),
	datac => \inst|PCOUT\(5),
	datad => \inst|PCOUT\(4),
	combout => \inst9|IMEM~8_combout\);

-- Location: LCCOMB_X14_Y72_N30
\inst9|IMEM~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~9_combout\ = (\inst|PCOUT\(3)) # ((\inst|PCOUT\(4)) # ((\inst|PCOUT\(1) & !\inst|PCOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(1),
	datab => \inst|PCOUT\(3),
	datac => \inst|PCOUT\(2),
	datad => \inst|PCOUT\(4),
	combout => \inst9|IMEM~9_combout\);

-- Location: LCCOMB_X14_Y72_N12
\inst9|IMEM~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~10_combout\ = (!\inst|PCOUT\(5) & !\inst9|IMEM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(5),
	datac => \inst9|IMEM~9_combout\,
	combout => \inst9|IMEM~10_combout\);

-- Location: LCCOMB_X14_Y72_N18
\inst9|IMEM~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~11_combout\ = (!\inst|PCOUT\(3) & (!\inst|PCOUT\(4) & ((\inst|PCOUT\(2)) # (\inst|PCOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(2),
	datab => \inst|PCOUT\(3),
	datac => \inst|PCOUT\(4),
	datad => \inst|PCOUT\(1),
	combout => \inst9|IMEM~11_combout\);

-- Location: LCCOMB_X14_Y72_N8
\inst9|IMEM~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~12_combout\ = (!\inst|PCOUT\(5) & \inst9|IMEM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PCOUT\(5),
	datad => \inst9|IMEM~11_combout\,
	combout => \inst9|IMEM~12_combout\);

-- Location: LCCOMB_X12_Y72_N18
\inst9|IMEM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~13_combout\ = (\inst|PCOUT\(4)) # ((\inst|PCOUT\(3)) # (\inst|PCOUT\(1) $ (\inst|PCOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(4),
	datab => \inst|PCOUT\(1),
	datac => \inst|PCOUT\(2),
	datad => \inst|PCOUT\(3),
	combout => \inst9|IMEM~13_combout\);

-- Location: LCCOMB_X12_Y72_N4
\inst9|IMEM~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|IMEM~14_combout\ = (!\inst|PCOUT\(5) & !\inst9|IMEM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PCOUT\(5),
	datad => \inst9|IMEM~13_combout\,
	combout => \inst9|IMEM~14_combout\);

-- Location: LCCOMB_X13_Y72_N28
\inst1|A1|A2|c4Buff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A2|c4Buff~0_combout\ = (((!\inst9|IMEM~0_combout\) # (!\inst|PCOUT\(4))) # (!\inst|PCOUT\(5))) # (!\inst|PCOUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(3),
	datab => \inst|PCOUT\(5),
	datac => \inst|PCOUT\(4),
	datad => \inst9|IMEM~0_combout\,
	combout => \inst1|A1|A2|c4Buff~0_combout\);

-- Location: LCCOMB_X13_Y72_N12
\inst7|OUTMUX[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUTMUX[6]~5_combout\ = (\PC_SEL1~input_o\ & (\inst1|A1|A2|c4Buff~0_combout\ $ (!\inst|PCOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|A1|A2|c4Buff~0_combout\,
	datac => \inst|PCOUT\(6),
	datad => \PC_SEL1~input_o\,
	combout => \inst7|OUTMUX[6]~5_combout\);

-- Location: FF_X13_Y72_N13
\inst|PCOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|OUTMUX[6]~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(6));

-- Location: LCCOMB_X13_Y72_N22
\inst7|OUTMUX[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUTMUX[7]~4_combout\ = (\PC_SEL1~input_o\ & (\inst|PCOUT\(7) $ (((\inst|PCOUT\(6) & !\inst1|A1|A2|c4Buff~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(6),
	datab => \PC_SEL1~input_o\,
	datac => \inst|PCOUT\(7),
	datad => \inst1|A1|A2|c4Buff~0_combout\,
	combout => \inst7|OUTMUX[7]~4_combout\);

-- Location: FF_X13_Y72_N23
\inst|PCOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|OUTMUX[7]~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(7));

-- Location: LCCOMB_X13_Y72_N18
\inst1|A1|A3|R[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A3|R\(0) = \inst|PCOUT\(8) $ ((((\inst1|A1|A2|c4Buff~0_combout\) # (!\inst|PCOUT\(6))) # (!\inst|PCOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(8),
	datab => \inst|PCOUT\(7),
	datac => \inst|PCOUT\(6),
	datad => \inst1|A1|A2|c4Buff~0_combout\,
	combout => \inst1|A1|A3|R\(0));

-- Location: LCCOMB_X13_Y72_N30
\inst|PCOUT[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCOUT[8]~7_combout\ = !\inst1|A1|A3|R\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|A1|A3|R\(0),
	combout => \inst|PCOUT[8]~7_combout\);

-- Location: FF_X13_Y72_N31
\inst|PCOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|PCOUT[8]~7_combout\,
	asdata => \inst9|IMEM~14_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \ALT_INV_PC_SEL1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(8));

-- Location: LCCOMB_X13_Y72_N26
\inst1|A1|A3|c4Buff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A3|c4Buff~0_combout\ = (((!\inst|PCOUT\(3)) # (!\inst|PCOUT\(4))) # (!\inst|PCOUT\(5))) # (!\inst|PCOUT\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(6),
	datab => \inst|PCOUT\(5),
	datac => \inst|PCOUT\(4),
	datad => \inst|PCOUT\(3),
	combout => \inst1|A1|A3|c4Buff~0_combout\);

-- Location: LCCOMB_X13_Y72_N16
\inst1|A1|A3|c4Buff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A3|c4Buff~1_combout\ = (((\inst1|A1|A3|c4Buff~0_combout\) # (!\inst9|IMEM~0_combout\)) # (!\inst|PCOUT\(8))) # (!\inst|PCOUT\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(7),
	datab => \inst|PCOUT\(8),
	datac => \inst1|A1|A3|c4Buff~0_combout\,
	datad => \inst9|IMEM~0_combout\,
	combout => \inst1|A1|A3|c4Buff~1_combout\);

-- Location: LCCOMB_X14_Y72_N0
\inst1|A1|A3|R[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A3|R\(1) = \inst1|A1|A3|c4Buff~1_combout\ $ (\inst|PCOUT\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|A1|A3|c4Buff~1_combout\,
	datad => \inst|PCOUT\(9),
	combout => \inst1|A1|A3|R\(1));

-- Location: LCCOMB_X14_Y72_N22
\inst|PCOUT[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCOUT[9]~6_combout\ = !\inst1|A1|A3|R\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|A1|A3|R\(1),
	combout => \inst|PCOUT[9]~6_combout\);

-- Location: FF_X14_Y72_N23
\inst|PCOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|PCOUT[9]~6_combout\,
	asdata => \inst9|IMEM~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \ALT_INV_PC_SEL1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(9));

-- Location: LCCOMB_X14_Y72_N6
\inst1|A1|A3|R[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A3|R\(2) = \inst|PCOUT\(10) $ (((\inst1|A1|A3|c4Buff~1_combout\) # (!\inst|PCOUT\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(9),
	datac => \inst1|A1|A3|c4Buff~1_combout\,
	datad => \inst|PCOUT\(10),
	combout => \inst1|A1|A3|R\(2));

-- Location: LCCOMB_X14_Y72_N20
\inst|PCOUT[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCOUT[10]~5_combout\ = !\inst1|A1|A3|R\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|A1|A3|R\(2),
	combout => \inst|PCOUT[10]~5_combout\);

-- Location: FF_X14_Y72_N21
\inst|PCOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|PCOUT[10]~5_combout\,
	asdata => \inst9|IMEM~10_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \ALT_INV_PC_SEL1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(10));

-- Location: LCCOMB_X14_Y72_N24
\inst1|A1|A3|R[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A3|R\(3) = \inst|PCOUT\(11) $ ((((\inst1|A1|A3|c4Buff~1_combout\) # (!\inst|PCOUT\(9))) # (!\inst|PCOUT\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(11),
	datab => \inst|PCOUT\(10),
	datac => \inst1|A1|A3|c4Buff~1_combout\,
	datad => \inst|PCOUT\(9),
	combout => \inst1|A1|A3|R\(3));

-- Location: LCCOMB_X14_Y72_N26
\inst|PCOUT[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCOUT[11]~4_combout\ = !\inst1|A1|A3|R\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|A1|A3|R\(3),
	combout => \inst|PCOUT[11]~4_combout\);

-- Location: FF_X14_Y72_N27
\inst|PCOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|PCOUT[11]~4_combout\,
	asdata => \inst9|IMEM~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \ALT_INV_PC_SEL1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(11));

-- Location: LCCOMB_X13_Y72_N2
\inst1|A1|A3|c4Buff~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A3|c4Buff~2_combout\ = (((\inst1|A1|A3|c4Buff~1_combout\) # (!\inst|PCOUT\(10))) # (!\inst|PCOUT\(9))) # (!\inst|PCOUT\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(11),
	datab => \inst|PCOUT\(9),
	datac => \inst|PCOUT\(10),
	datad => \inst1|A1|A3|c4Buff~1_combout\,
	combout => \inst1|A1|A3|c4Buff~2_combout\);

-- Location: LCCOMB_X13_Y72_N10
\inst1|A1|A4|R[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A4|R\(0) = \inst|PCOUT\(12) $ (\inst1|A1|A3|c4Buff~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PCOUT\(12),
	datad => \inst1|A1|A3|c4Buff~2_combout\,
	combout => \inst1|A1|A4|R\(0));

-- Location: LCCOMB_X13_Y72_N8
\inst|PCOUT[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCOUT[12]~3_combout\ = !\inst1|A1|A4|R\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|A1|A4|R\(0),
	combout => \inst|PCOUT[12]~3_combout\);

-- Location: FF_X13_Y72_N9
\inst|PCOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|PCOUT[12]~3_combout\,
	asdata => \inst9|IMEM~8_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => \ALT_INV_PC_SEL1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(12));

-- Location: LCCOMB_X13_Y72_N4
\inst1|A1|A4|R[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A4|R\(1) = \inst|PCOUT\(13) $ (((\inst|PCOUT\(12) & !\inst1|A1|A3|c4Buff~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PCOUT\(12),
	datac => \inst|PCOUT\(13),
	datad => \inst1|A1|A3|c4Buff~2_combout\,
	combout => \inst1|A1|A4|R\(1));

-- Location: FF_X13_Y72_N5
\inst|PCOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|A1|A4|R\(1),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(13));

-- Location: LCCOMB_X13_Y72_N14
\inst1|A1|A4|R[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|A1|A4|R\(2) = \inst|PCOUT\(14) $ (((\inst|PCOUT\(12) & (\inst|PCOUT\(13) & !\inst1|A1|A3|c4Buff~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(12),
	datab => \inst|PCOUT\(13),
	datac => \inst|PCOUT\(14),
	datad => \inst1|A1|A3|c4Buff~2_combout\,
	combout => \inst1|A1|A4|R\(2));

-- Location: FF_X13_Y72_N15
\inst|PCOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|A1|A4|R\(2),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(14));

-- Location: LCCOMB_X13_Y72_N20
\inst7|OUTMUX[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUTMUX[15]~2_combout\ = (\inst|PCOUT\(12) & (\inst|PCOUT\(13) & (\inst|PCOUT\(14) & !\inst1|A1|A3|c4Buff~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCOUT\(12),
	datab => \inst|PCOUT\(13),
	datac => \inst|PCOUT\(14),
	datad => \inst1|A1|A3|c4Buff~2_combout\,
	combout => \inst7|OUTMUX[15]~2_combout\);

-- Location: LCCOMB_X13_Y72_N24
\inst7|OUTMUX[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUTMUX[15]~3_combout\ = \inst|PCOUT\(15) $ (\inst7|OUTMUX[15]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PCOUT\(15),
	datad => \inst7|OUTMUX[15]~2_combout\,
	combout => \inst7|OUTMUX[15]~3_combout\);

-- Location: FF_X13_Y72_N25
\inst|PCOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|OUTMUX[15]~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCOUT\(15));

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

ww_pcout(15) <= \pcout[15]~output_o\;

ww_pcout(14) <= \pcout[14]~output_o\;

ww_pcout(13) <= \pcout[13]~output_o\;

ww_pcout(12) <= \pcout[12]~output_o\;

ww_pcout(11) <= \pcout[11]~output_o\;

ww_pcout(10) <= \pcout[10]~output_o\;

ww_pcout(9) <= \pcout[9]~output_o\;

ww_pcout(8) <= \pcout[8]~output_o\;

ww_pcout(7) <= \pcout[7]~output_o\;

ww_pcout(6) <= \pcout[6]~output_o\;

ww_pcout(5) <= \pcout[5]~output_o\;

ww_pcout(4) <= \pcout[4]~output_o\;

ww_pcout(3) <= \pcout[3]~output_o\;

ww_pcout(2) <= \pcout[2]~output_o\;

ww_pcout(1) <= \pcout[1]~output_o\;

ww_pcout(0) <= \pcout[0]~output_o\;
END structure;


