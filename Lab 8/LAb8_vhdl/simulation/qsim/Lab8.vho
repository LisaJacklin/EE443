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

-- DATE "04/18/2023 17:20:34"

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

ENTITY 	Level3 IS
    PORT (
	ZERO : OUT std_logic;
	REG_WE : IN std_logic;
	CLK : IN std_logic;
	INS : IN std_logic_vector(15 DOWNTO 0);
	RFMUX_SEL : IN std_logic;
	RDDAT : IN std_logic_vector(15 DOWNTO 0);
	ALUMUX_SEL : IN std_logic;
	RTDAT : OUT std_logic_vector(15 DOWNTO 0);
	IMM_EXT : IN std_logic_vector(15 DOWNTO 0);
	ALU_SEL : IN std_logic_vector(2 DOWNTO 0);
	ALU_RES : OUT std_logic_vector(15 DOWNTO 0)
	);
END Level3;

-- Design Ports Information
-- ZERO	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[15]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[14]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[13]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[12]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[5]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[4]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RFMUX_SEL	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[15]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[14]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[13]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[12]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[11]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[10]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[9]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[8]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUMUX_SEL	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[15]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[14]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[13]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[12]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[11]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[10]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[9]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[8]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[7]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[6]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[5]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[4]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[3]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[2]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[1]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RTDAT[0]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[15]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[13]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[12]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[11]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[10]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[9]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[8]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[5]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[2]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[1]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IMM_EXT[0]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[0]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[15]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[14]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[13]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[12]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[11]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[10]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[9]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[8]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[7]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[4]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[3]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[1]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RES[0]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[7]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[8]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[10]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[9]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[11]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[7]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_WE	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[6]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[5]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[4]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[3]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[2]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDDAT[0]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Level3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ZERO : std_logic;
SIGNAL ww_REG_WE : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_INS : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RFMUX_SEL : std_logic;
SIGNAL ww_RDDAT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ALUMUX_SEL : std_logic;
SIGNAL ww_RTDAT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IMM_EXT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ALU_SEL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ALU_RES : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INS[15]~input_o\ : std_logic;
SIGNAL \INS[14]~input_o\ : std_logic;
SIGNAL \INS[13]~input_o\ : std_logic;
SIGNAL \INS[12]~input_o\ : std_logic;
SIGNAL \INS[5]~input_o\ : std_logic;
SIGNAL \INS[4]~input_o\ : std_logic;
SIGNAL \INS[3]~input_o\ : std_logic;
SIGNAL \INS[2]~input_o\ : std_logic;
SIGNAL \INS[1]~input_o\ : std_logic;
SIGNAL \INS[0]~input_o\ : std_logic;
SIGNAL \RFMUX_SEL~input_o\ : std_logic;
SIGNAL \RDDAT[15]~input_o\ : std_logic;
SIGNAL \RDDAT[14]~input_o\ : std_logic;
SIGNAL \RDDAT[13]~input_o\ : std_logic;
SIGNAL \RDDAT[12]~input_o\ : std_logic;
SIGNAL \RDDAT[11]~input_o\ : std_logic;
SIGNAL \RDDAT[10]~input_o\ : std_logic;
SIGNAL \RDDAT[9]~input_o\ : std_logic;
SIGNAL \RDDAT[8]~input_o\ : std_logic;
SIGNAL \ALUMUX_SEL~input_o\ : std_logic;
SIGNAL \IMM_EXT[15]~input_o\ : std_logic;
SIGNAL \IMM_EXT[14]~input_o\ : std_logic;
SIGNAL \IMM_EXT[13]~input_o\ : std_logic;
SIGNAL \IMM_EXT[12]~input_o\ : std_logic;
SIGNAL \IMM_EXT[11]~input_o\ : std_logic;
SIGNAL \IMM_EXT[10]~input_o\ : std_logic;
SIGNAL \IMM_EXT[9]~input_o\ : std_logic;
SIGNAL \IMM_EXT[8]~input_o\ : std_logic;
SIGNAL \IMM_EXT[7]~input_o\ : std_logic;
SIGNAL \IMM_EXT[6]~input_o\ : std_logic;
SIGNAL \IMM_EXT[5]~input_o\ : std_logic;
SIGNAL \IMM_EXT[4]~input_o\ : std_logic;
SIGNAL \IMM_EXT[3]~input_o\ : std_logic;
SIGNAL \IMM_EXT[2]~input_o\ : std_logic;
SIGNAL \IMM_EXT[1]~input_o\ : std_logic;
SIGNAL \IMM_EXT[0]~input_o\ : std_logic;
SIGNAL \ALU_SEL[2]~input_o\ : std_logic;
SIGNAL \ALU_SEL[1]~input_o\ : std_logic;
SIGNAL \ALU_SEL[0]~input_o\ : std_logic;
SIGNAL \ZERO~output_o\ : std_logic;
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
SIGNAL \ALU_RES[15]~output_o\ : std_logic;
SIGNAL \ALU_RES[14]~output_o\ : std_logic;
SIGNAL \ALU_RES[13]~output_o\ : std_logic;
SIGNAL \ALU_RES[12]~output_o\ : std_logic;
SIGNAL \ALU_RES[11]~output_o\ : std_logic;
SIGNAL \ALU_RES[10]~output_o\ : std_logic;
SIGNAL \ALU_RES[9]~output_o\ : std_logic;
SIGNAL \ALU_RES[8]~output_o\ : std_logic;
SIGNAL \ALU_RES[7]~output_o\ : std_logic;
SIGNAL \ALU_RES[6]~output_o\ : std_logic;
SIGNAL \ALU_RES[5]~output_o\ : std_logic;
SIGNAL \ALU_RES[4]~output_o\ : std_logic;
SIGNAL \ALU_RES[3]~output_o\ : std_logic;
SIGNAL \ALU_RES[2]~output_o\ : std_logic;
SIGNAL \ALU_RES[1]~output_o\ : std_logic;
SIGNAL \ALU_RES[0]~output_o\ : std_logic;
SIGNAL \INS[7]~input_o\ : std_logic;
SIGNAL \INS[6]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RDDAT[7]~input_o\ : std_logic;
SIGNAL \REG_WE~input_o\ : std_logic;
SIGNAL \INS[8]~input_o\ : std_logic;
SIGNAL \inst1|MUX2|G10|Y[3]~0_combout\ : std_logic;
SIGNAL \RDDAT[6]~input_o\ : std_logic;
SIGNAL \inst1|MUX2|G10|Y[2]~1_combout\ : std_logic;
SIGNAL \RDDAT[5]~input_o\ : std_logic;
SIGNAL \inst1|MUX2|G10|Y[1]~2_combout\ : std_logic;
SIGNAL \RDDAT[4]~input_o\ : std_logic;
SIGNAL \inst1|MUX2|G10|Y[0]~3_combout\ : std_logic;
SIGNAL \RDDAT[3]~input_o\ : std_logic;
SIGNAL \inst1|MUX2|G9|Y[3]~0_combout\ : std_logic;
SIGNAL \RDDAT[2]~input_o\ : std_logic;
SIGNAL \inst1|MUX2|G9|Y[2]~1_combout\ : std_logic;
SIGNAL \RDDAT[1]~input_o\ : std_logic;
SIGNAL \inst1|MUX2|G9|Y[1]~2_combout\ : std_logic;
SIGNAL \RDDAT[0]~input_o\ : std_logic;
SIGNAL \inst1|MUX2|G9|Y[0]~3_combout\ : std_logic;
SIGNAL \INS[10]~input_o\ : std_logic;
SIGNAL \INS[9]~input_o\ : std_logic;
SIGNAL \INS[11]~input_o\ : std_logic;
SIGNAL \inst1|MUX1|G10|Y[3]~0_combout\ : std_logic;
SIGNAL \inst1|MUX1|G10|Y[2]~1_combout\ : std_logic;
SIGNAL \inst1|MUX1|G10|Y[1]~2_combout\ : std_logic;
SIGNAL \inst1|MUX1|G10|Y[0]~3_combout\ : std_logic;
SIGNAL \inst1|MUX1|G9|Y[3]~0_combout\ : std_logic;
SIGNAL \inst1|MUX1|G9|Y[2]~1_combout\ : std_logic;
SIGNAL \inst1|MUX1|G9|Y[1]~2_combout\ : std_logic;
SIGNAL \inst1|MUX1|G9|Y[0]~3_combout\ : std_logic;
SIGNAL \inst1|REGI2|Q\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ZERO <= ww_ZERO;
ww_REG_WE <= REG_WE;
ww_CLK <= CLK;
ww_INS <= INS;
ww_RFMUX_SEL <= RFMUX_SEL;
ww_RDDAT <= RDDAT;
ww_ALUMUX_SEL <= ALUMUX_SEL;
RTDAT <= ww_RTDAT;
ww_IMM_EXT <= IMM_EXT;
ww_ALU_SEL <= ALU_SEL;
ALU_RES <= ww_ALU_RES;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y22_N23
\ZERO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ZERO~output_o\);

-- Location: IOOBUF_X100_Y73_N16
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X87_Y73_N23
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

-- Location: IOOBUF_X0_Y26_N16
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

-- Location: IOOBUF_X115_Y6_N16
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

-- Location: IOOBUF_X13_Y73_N16
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

-- Location: IOOBUF_X18_Y73_N16
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

-- Location: IOOBUF_X33_Y0_N2
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

-- Location: IOOBUF_X13_Y0_N23
\RTDAT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX2|G10|Y[3]~0_combout\,
	devoe => ww_devoe,
	o => \RTDAT[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\RTDAT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX2|G10|Y[2]~1_combout\,
	devoe => ww_devoe,
	o => \RTDAT[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\RTDAT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX2|G10|Y[1]~2_combout\,
	devoe => ww_devoe,
	o => \RTDAT[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\RTDAT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX2|G10|Y[0]~3_combout\,
	devoe => ww_devoe,
	o => \RTDAT[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\RTDAT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX2|G9|Y[3]~0_combout\,
	devoe => ww_devoe,
	o => \RTDAT[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\RTDAT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX2|G9|Y[2]~1_combout\,
	devoe => ww_devoe,
	o => \RTDAT[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\RTDAT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX2|G9|Y[1]~2_combout\,
	devoe => ww_devoe,
	o => \RTDAT[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\RTDAT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX2|G9|Y[0]~3_combout\,
	devoe => ww_devoe,
	o => \RTDAT[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\ALU_RES[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RES[15]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\ALU_RES[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RES[14]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\ALU_RES[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RES[13]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\ALU_RES[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RES[12]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\ALU_RES[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RES[11]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\ALU_RES[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RES[10]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\ALU_RES[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RES[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\ALU_RES[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RES[8]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\ALU_RES[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX1|G10|Y[3]~0_combout\,
	devoe => ww_devoe,
	o => \ALU_RES[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\ALU_RES[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX1|G10|Y[2]~1_combout\,
	devoe => ww_devoe,
	o => \ALU_RES[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\ALU_RES[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX1|G10|Y[1]~2_combout\,
	devoe => ww_devoe,
	o => \ALU_RES[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\ALU_RES[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX1|G10|Y[0]~3_combout\,
	devoe => ww_devoe,
	o => \ALU_RES[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\ALU_RES[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX1|G9|Y[3]~0_combout\,
	devoe => ww_devoe,
	o => \ALU_RES[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\ALU_RES[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX1|G9|Y[2]~1_combout\,
	devoe => ww_devoe,
	o => \ALU_RES[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\ALU_RES[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX1|G9|Y[1]~2_combout\,
	devoe => ww_devoe,
	o => \ALU_RES[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\ALU_RES[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MUX1|G9|Y[0]~3_combout\,
	devoe => ww_devoe,
	o => \ALU_RES[0]~output_o\);

-- Location: IOIBUF_X7_Y0_N22
\INS[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(7),
	o => \INS[7]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\INS[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(6),
	o => \INS[6]~input_o\);

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

-- Location: IOIBUF_X7_Y0_N15
\RDDAT[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(7),
	o => \RDDAT[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\REG_WE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_WE,
	o => \REG_WE~input_o\);

-- Location: FF_X10_Y1_N9
\inst1|REGI2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RDDAT[7]~input_o\,
	sload => VCC,
	ena => \REG_WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|REGI2|Q\(7));

-- Location: IOIBUF_X9_Y0_N15
\INS[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(8),
	o => \INS[8]~input_o\);

-- Location: LCCOMB_X10_Y1_N18
\inst1|MUX2|G10|Y[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX2|G10|Y[3]~0_combout\ = (\inst1|REGI2|Q\(7) & (!\INS[8]~input_o\ & ((\INS[7]~input_o\) # (\INS[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[7]~input_o\,
	datab => \INS[6]~input_o\,
	datac => \inst1|REGI2|Q\(7),
	datad => \INS[8]~input_o\,
	combout => \inst1|MUX2|G10|Y[3]~0_combout\);

-- Location: IOIBUF_X11_Y0_N8
\RDDAT[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(6),
	o => \RDDAT[6]~input_o\);

-- Location: FF_X10_Y1_N21
\inst1|REGI2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RDDAT[6]~input_o\,
	sload => VCC,
	ena => \REG_WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|REGI2|Q\(6));

-- Location: LCCOMB_X10_Y1_N6
\inst1|MUX2|G10|Y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX2|G10|Y[2]~1_combout\ = (!\INS[8]~input_o\ & (\inst1|REGI2|Q\(6) & ((\INS[6]~input_o\) # (\INS[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[8]~input_o\,
	datab => \INS[6]~input_o\,
	datac => \INS[7]~input_o\,
	datad => \inst1|REGI2|Q\(6),
	combout => \inst1|MUX2|G10|Y[2]~1_combout\);

-- Location: IOIBUF_X18_Y0_N1
\RDDAT[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(5),
	o => \RDDAT[5]~input_o\);

-- Location: FF_X10_Y1_N1
\inst1|REGI2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RDDAT[5]~input_o\,
	sload => VCC,
	ena => \REG_WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|REGI2|Q\(5));

-- Location: LCCOMB_X10_Y1_N10
\inst1|MUX2|G10|Y[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX2|G10|Y[1]~2_combout\ = (!\INS[8]~input_o\ & (\inst1|REGI2|Q\(5) & ((\INS[6]~input_o\) # (\INS[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[8]~input_o\,
	datab => \INS[6]~input_o\,
	datac => \INS[7]~input_o\,
	datad => \inst1|REGI2|Q\(5),
	combout => \inst1|MUX2|G10|Y[1]~2_combout\);

-- Location: IOIBUF_X20_Y0_N1
\RDDAT[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(4),
	o => \RDDAT[4]~input_o\);

-- Location: FF_X10_Y1_N5
\inst1|REGI2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RDDAT[4]~input_o\,
	sload => VCC,
	ena => \REG_WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|REGI2|Q\(4));

-- Location: LCCOMB_X10_Y1_N30
\inst1|MUX2|G10|Y[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX2|G10|Y[0]~3_combout\ = (!\INS[8]~input_o\ & (\inst1|REGI2|Q\(4) & ((\INS[6]~input_o\) # (\INS[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[8]~input_o\,
	datab => \INS[6]~input_o\,
	datac => \INS[7]~input_o\,
	datad => \inst1|REGI2|Q\(4),
	combout => \inst1|MUX2|G10|Y[0]~3_combout\);

-- Location: IOIBUF_X11_Y0_N15
\RDDAT[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(3),
	o => \RDDAT[3]~input_o\);

-- Location: FF_X10_Y1_N25
\inst1|REGI2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RDDAT[3]~input_o\,
	sload => VCC,
	ena => \REG_WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|REGI2|Q\(3));

-- Location: LCCOMB_X10_Y1_N26
\inst1|MUX2|G9|Y[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX2|G9|Y[3]~0_combout\ = (!\INS[8]~input_o\ & (\inst1|REGI2|Q\(3) & ((\INS[6]~input_o\) # (\INS[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[8]~input_o\,
	datab => \INS[6]~input_o\,
	datac => \INS[7]~input_o\,
	datad => \inst1|REGI2|Q\(3),
	combout => \inst1|MUX2|G9|Y[3]~0_combout\);

-- Location: IOIBUF_X11_Y0_N22
\RDDAT[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(2),
	o => \RDDAT[2]~input_o\);

-- Location: FF_X10_Y1_N29
\inst1|REGI2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RDDAT[2]~input_o\,
	sload => VCC,
	ena => \REG_WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|REGI2|Q\(2));

-- Location: LCCOMB_X10_Y1_N22
\inst1|MUX2|G9|Y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX2|G9|Y[2]~1_combout\ = (!\INS[8]~input_o\ & (\inst1|REGI2|Q\(2) & ((\INS[6]~input_o\) # (\INS[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[8]~input_o\,
	datab => \INS[6]~input_o\,
	datac => \INS[7]~input_o\,
	datad => \inst1|REGI2|Q\(2),
	combout => \inst1|MUX2|G9|Y[2]~1_combout\);

-- Location: IOIBUF_X18_Y0_N8
\RDDAT[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(1),
	o => \RDDAT[1]~input_o\);

-- Location: FF_X10_Y1_N17
\inst1|REGI2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RDDAT[1]~input_o\,
	sload => VCC,
	ena => \REG_WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|REGI2|Q\(1));

-- Location: LCCOMB_X10_Y1_N2
\inst1|MUX2|G9|Y[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX2|G9|Y[1]~2_combout\ = (!\INS[8]~input_o\ & (\inst1|REGI2|Q\(1) & ((\INS[6]~input_o\) # (\INS[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[8]~input_o\,
	datab => \INS[6]~input_o\,
	datac => \INS[7]~input_o\,
	datad => \inst1|REGI2|Q\(1),
	combout => \inst1|MUX2|G9|Y[1]~2_combout\);

-- Location: IOIBUF_X16_Y0_N8
\RDDAT[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(0),
	o => \RDDAT[0]~input_o\);

-- Location: FF_X10_Y1_N13
\inst1|REGI2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RDDAT[0]~input_o\,
	sload => VCC,
	ena => \REG_WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|REGI2|Q\(0));

-- Location: LCCOMB_X10_Y1_N14
\inst1|MUX2|G9|Y[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX2|G9|Y[0]~3_combout\ = (!\INS[8]~input_o\ & (\inst1|REGI2|Q\(0) & ((\INS[6]~input_o\) # (\INS[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[8]~input_o\,
	datab => \INS[6]~input_o\,
	datac => \INS[7]~input_o\,
	datad => \inst1|REGI2|Q\(0),
	combout => \inst1|MUX2|G9|Y[0]~3_combout\);

-- Location: IOIBUF_X20_Y0_N8
\INS[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(10),
	o => \INS[10]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\INS[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(9),
	o => \INS[9]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\INS[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(11),
	o => \INS[11]~input_o\);

-- Location: LCCOMB_X10_Y1_N8
\inst1|MUX1|G10|Y[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX1|G10|Y[3]~0_combout\ = (\inst1|REGI2|Q\(7) & (!\INS[11]~input_o\ & ((\INS[10]~input_o\) # (\INS[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[10]~input_o\,
	datab => \INS[9]~input_o\,
	datac => \inst1|REGI2|Q\(7),
	datad => \INS[11]~input_o\,
	combout => \inst1|MUX1|G10|Y[3]~0_combout\);

-- Location: LCCOMB_X10_Y1_N20
\inst1|MUX1|G10|Y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX1|G10|Y[2]~1_combout\ = (\inst1|REGI2|Q\(6) & (!\INS[11]~input_o\ & ((\INS[10]~input_o\) # (\INS[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[10]~input_o\,
	datab => \INS[9]~input_o\,
	datac => \inst1|REGI2|Q\(6),
	datad => \INS[11]~input_o\,
	combout => \inst1|MUX1|G10|Y[2]~1_combout\);

-- Location: LCCOMB_X10_Y1_N0
\inst1|MUX1|G10|Y[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX1|G10|Y[1]~2_combout\ = (\inst1|REGI2|Q\(5) & (!\INS[11]~input_o\ & ((\INS[10]~input_o\) # (\INS[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[10]~input_o\,
	datab => \INS[9]~input_o\,
	datac => \inst1|REGI2|Q\(5),
	datad => \INS[11]~input_o\,
	combout => \inst1|MUX1|G10|Y[1]~2_combout\);

-- Location: LCCOMB_X10_Y1_N4
\inst1|MUX1|G10|Y[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX1|G10|Y[0]~3_combout\ = (\inst1|REGI2|Q\(4) & (!\INS[11]~input_o\ & ((\INS[10]~input_o\) # (\INS[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[10]~input_o\,
	datab => \INS[9]~input_o\,
	datac => \inst1|REGI2|Q\(4),
	datad => \INS[11]~input_o\,
	combout => \inst1|MUX1|G10|Y[0]~3_combout\);

-- Location: LCCOMB_X10_Y1_N24
\inst1|MUX1|G9|Y[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX1|G9|Y[3]~0_combout\ = (\inst1|REGI2|Q\(3) & (!\INS[11]~input_o\ & ((\INS[10]~input_o\) # (\INS[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[10]~input_o\,
	datab => \INS[9]~input_o\,
	datac => \inst1|REGI2|Q\(3),
	datad => \INS[11]~input_o\,
	combout => \inst1|MUX1|G9|Y[3]~0_combout\);

-- Location: LCCOMB_X10_Y1_N28
\inst1|MUX1|G9|Y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX1|G9|Y[2]~1_combout\ = (\inst1|REGI2|Q\(2) & (!\INS[11]~input_o\ & ((\INS[10]~input_o\) # (\INS[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[10]~input_o\,
	datab => \INS[9]~input_o\,
	datac => \inst1|REGI2|Q\(2),
	datad => \INS[11]~input_o\,
	combout => \inst1|MUX1|G9|Y[2]~1_combout\);

-- Location: LCCOMB_X10_Y1_N16
\inst1|MUX1|G9|Y[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX1|G9|Y[1]~2_combout\ = (\inst1|REGI2|Q\(1) & (!\INS[11]~input_o\ & ((\INS[10]~input_o\) # (\INS[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[10]~input_o\,
	datab => \INS[9]~input_o\,
	datac => \inst1|REGI2|Q\(1),
	datad => \INS[11]~input_o\,
	combout => \inst1|MUX1|G9|Y[1]~2_combout\);

-- Location: LCCOMB_X10_Y1_N12
\inst1|MUX1|G9|Y[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MUX1|G9|Y[0]~3_combout\ = (\inst1|REGI2|Q\(0) & (!\INS[11]~input_o\ & ((\INS[10]~input_o\) # (\INS[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS[10]~input_o\,
	datab => \INS[9]~input_o\,
	datac => \inst1|REGI2|Q\(0),
	datad => \INS[11]~input_o\,
	combout => \inst1|MUX1|G9|Y[0]~3_combout\);

-- Location: IOIBUF_X115_Y37_N8
\INS[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(15),
	o => \INS[15]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\INS[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(14),
	o => \INS[14]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\INS[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(13),
	o => \INS[13]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\INS[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(12),
	o => \INS[12]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\INS[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(5),
	o => \INS[5]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\INS[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(4),
	o => \INS[4]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\INS[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(3),
	o => \INS[3]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\INS[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(2),
	o => \INS[2]~input_o\);

-- Location: IOIBUF_X0_Y61_N22
\INS[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(1),
	o => \INS[1]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\INS[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(0),
	o => \INS[0]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\RFMUX_SEL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RFMUX_SEL,
	o => \RFMUX_SEL~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\RDDAT[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(15),
	o => \RDDAT[15]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\RDDAT[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(14),
	o => \RDDAT[14]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\RDDAT[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(13),
	o => \RDDAT[13]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\RDDAT[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(12),
	o => \RDDAT[12]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\RDDAT[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(11),
	o => \RDDAT[11]~input_o\);

-- Location: IOIBUF_X109_Y0_N8
\RDDAT[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(10),
	o => \RDDAT[10]~input_o\);

-- Location: IOIBUF_X115_Y12_N1
\RDDAT[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(9),
	o => \RDDAT[9]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\RDDAT[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RDDAT(8),
	o => \RDDAT[8]~input_o\);

-- Location: IOIBUF_X115_Y63_N8
\ALUMUX_SEL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUMUX_SEL,
	o => \ALUMUX_SEL~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\IMM_EXT[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(15),
	o => \IMM_EXT[15]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\IMM_EXT[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(14),
	o => \IMM_EXT[14]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\IMM_EXT[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(13),
	o => \IMM_EXT[13]~input_o\);

-- Location: IOIBUF_X0_Y53_N1
\IMM_EXT[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(12),
	o => \IMM_EXT[12]~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\IMM_EXT[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(11),
	o => \IMM_EXT[11]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\IMM_EXT[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(10),
	o => \IMM_EXT[10]~input_o\);

-- Location: IOIBUF_X115_Y61_N15
\IMM_EXT[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(9),
	o => \IMM_EXT[9]~input_o\);

-- Location: IOIBUF_X111_Y73_N8
\IMM_EXT[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(8),
	o => \IMM_EXT[8]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\IMM_EXT[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(7),
	o => \IMM_EXT[7]~input_o\);

-- Location: IOIBUF_X115_Y17_N8
\IMM_EXT[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(6),
	o => \IMM_EXT[6]~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\IMM_EXT[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(5),
	o => \IMM_EXT[5]~input_o\);

-- Location: IOIBUF_X96_Y0_N22
\IMM_EXT[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(4),
	o => \IMM_EXT[4]~input_o\);

-- Location: IOIBUF_X105_Y0_N22
\IMM_EXT[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(3),
	o => \IMM_EXT[3]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\IMM_EXT[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(2),
	o => \IMM_EXT[2]~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\IMM_EXT[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(1),
	o => \IMM_EXT[1]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\IMM_EXT[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IMM_EXT(0),
	o => \IMM_EXT[0]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\ALU_SEL[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_SEL(2),
	o => \ALU_SEL[2]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\ALU_SEL[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_SEL(1),
	o => \ALU_SEL[1]~input_o\);

-- Location: IOIBUF_X100_Y0_N1
\ALU_SEL[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_SEL(0),
	o => \ALU_SEL[0]~input_o\);

ww_ZERO <= \ZERO~output_o\;

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

ww_ALU_RES(15) <= \ALU_RES[15]~output_o\;

ww_ALU_RES(14) <= \ALU_RES[14]~output_o\;

ww_ALU_RES(13) <= \ALU_RES[13]~output_o\;

ww_ALU_RES(12) <= \ALU_RES[12]~output_o\;

ww_ALU_RES(11) <= \ALU_RES[11]~output_o\;

ww_ALU_RES(10) <= \ALU_RES[10]~output_o\;

ww_ALU_RES(9) <= \ALU_RES[9]~output_o\;

ww_ALU_RES(8) <= \ALU_RES[8]~output_o\;

ww_ALU_RES(7) <= \ALU_RES[7]~output_o\;

ww_ALU_RES(6) <= \ALU_RES[6]~output_o\;

ww_ALU_RES(5) <= \ALU_RES[5]~output_o\;

ww_ALU_RES(4) <= \ALU_RES[4]~output_o\;

ww_ALU_RES(3) <= \ALU_RES[3]~output_o\;

ww_ALU_RES(2) <= \ALU_RES[2]~output_o\;

ww_ALU_RES(1) <= \ALU_RES[1]~output_o\;

ww_ALU_RES(0) <= \ALU_RES[0]~output_o\;
END structure;


