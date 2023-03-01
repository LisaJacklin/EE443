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

-- DATE "02/28/2023 17:13:41"

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

ENTITY 	REG8x16 IS
    PORT (
	ADD_R1 : IN std_logic_vector(2 DOWNTO 0);
	ADD_R2 : IN std_logic_vector(2 DOWNTO 0);
	ADD_W : IN std_logic_vector(2 DOWNTO 0);
	DIN : BUFFER std_logic_vector(15 DOWNTO 0);
	EN : IN std_logic;
	CLK : IN std_logic;
	DOUT1 : OUT std_logic_vector(15 DOWNTO 0);
	DOUT2 : OUT std_logic_vector(15 DOWNTO 0)
	);
END REG8x16;

-- Design Ports Information
-- DIN[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[4]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[6]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[7]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[8]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[9]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[10]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[11]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[12]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[13]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[14]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[15]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[6]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[10]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[11]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[12]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[13]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[14]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[15]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[7]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[8]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[9]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[10]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[11]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[12]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[13]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[14]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[15]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R1[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R2[0]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R1[1]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R2[1]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R1[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R2[2]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_W[2]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_W[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_W[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF REG8x16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ADD_R1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ADD_R2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ADD_W : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_DIN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_EN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_DOUT1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DOUT2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \EN~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADD_R1[0]~input_o\ : std_logic;
SIGNAL \ADD_R2[0]~input_o\ : std_logic;
SIGNAL \ADD_R1[1]~input_o\ : std_logic;
SIGNAL \ADD_R2[1]~input_o\ : std_logic;
SIGNAL \DIN[0]~output_o\ : std_logic;
SIGNAL \DIN[1]~output_o\ : std_logic;
SIGNAL \DIN[2]~output_o\ : std_logic;
SIGNAL \DIN[3]~output_o\ : std_logic;
SIGNAL \DIN[4]~output_o\ : std_logic;
SIGNAL \DIN[5]~output_o\ : std_logic;
SIGNAL \DIN[6]~output_o\ : std_logic;
SIGNAL \DIN[7]~output_o\ : std_logic;
SIGNAL \DIN[8]~output_o\ : std_logic;
SIGNAL \DIN[9]~output_o\ : std_logic;
SIGNAL \DIN[10]~output_o\ : std_logic;
SIGNAL \DIN[11]~output_o\ : std_logic;
SIGNAL \DIN[12]~output_o\ : std_logic;
SIGNAL \DIN[13]~output_o\ : std_logic;
SIGNAL \DIN[14]~output_o\ : std_logic;
SIGNAL \DIN[15]~output_o\ : std_logic;
SIGNAL \DOUT1[0]~output_o\ : std_logic;
SIGNAL \DOUT1[1]~output_o\ : std_logic;
SIGNAL \DOUT1[2]~output_o\ : std_logic;
SIGNAL \DOUT1[3]~output_o\ : std_logic;
SIGNAL \DOUT1[4]~output_o\ : std_logic;
SIGNAL \DOUT1[5]~output_o\ : std_logic;
SIGNAL \DOUT1[6]~output_o\ : std_logic;
SIGNAL \DOUT1[7]~output_o\ : std_logic;
SIGNAL \DOUT1[8]~output_o\ : std_logic;
SIGNAL \DOUT1[9]~output_o\ : std_logic;
SIGNAL \DOUT1[10]~output_o\ : std_logic;
SIGNAL \DOUT1[11]~output_o\ : std_logic;
SIGNAL \DOUT1[12]~output_o\ : std_logic;
SIGNAL \DOUT1[13]~output_o\ : std_logic;
SIGNAL \DOUT1[14]~output_o\ : std_logic;
SIGNAL \DOUT1[15]~output_o\ : std_logic;
SIGNAL \DOUT2[0]~output_o\ : std_logic;
SIGNAL \DOUT2[1]~output_o\ : std_logic;
SIGNAL \DOUT2[2]~output_o\ : std_logic;
SIGNAL \DOUT2[3]~output_o\ : std_logic;
SIGNAL \DOUT2[4]~output_o\ : std_logic;
SIGNAL \DOUT2[5]~output_o\ : std_logic;
SIGNAL \DOUT2[6]~output_o\ : std_logic;
SIGNAL \DOUT2[7]~output_o\ : std_logic;
SIGNAL \DOUT2[8]~output_o\ : std_logic;
SIGNAL \DOUT2[9]~output_o\ : std_logic;
SIGNAL \DOUT2[10]~output_o\ : std_logic;
SIGNAL \DOUT2[11]~output_o\ : std_logic;
SIGNAL \DOUT2[12]~output_o\ : std_logic;
SIGNAL \DOUT2[13]~output_o\ : std_logic;
SIGNAL \DOUT2[14]~output_o\ : std_logic;
SIGNAL \DOUT2[15]~output_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \EN~inputclkctrl_outclk\ : std_logic;
SIGNAL \ADD_W[1]~input_o\ : std_logic;
SIGNAL \ADD_W[2]~input_o\ : std_logic;
SIGNAL \ADD_W[0]~input_o\ : std_logic;
SIGNAL \DECO|Q[0]~0_combout\ : std_logic;
SIGNAL \DIN[0]~reg0_q\ : std_logic;
SIGNAL \DECO|Q[1]~1_combout\ : std_logic;
SIGNAL \DIN[1]~reg0_q\ : std_logic;
SIGNAL \DECO|Q[2]~2_combout\ : std_logic;
SIGNAL \DIN[2]~reg0_q\ : std_logic;
SIGNAL \DECO|Q[0]~3_combout\ : std_logic;
SIGNAL \DIN[3]~reg0_q\ : std_logic;
SIGNAL \ADD_R1[2]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \MUX1|G9|Y[0]~0_combout\ : std_logic;
SIGNAL \MUX1|G9|Y[1]~1_combout\ : std_logic;
SIGNAL \MUX1|G9|Y[2]~2_combout\ : std_logic;
SIGNAL \MUX1|G9|Y[3]~3_combout\ : std_logic;
SIGNAL \ADD_R2[2]~input_o\ : std_logic;
SIGNAL \MUX2|G9|Y[0]~0_combout\ : std_logic;
SIGNAL \MUX2|G9|Y[1]~1_combout\ : std_logic;
SIGNAL \MUX2|G9|Y[2]~2_combout\ : std_logic;
SIGNAL \MUX2|G9|Y[3]~3_combout\ : std_logic;
SIGNAL \REGI1|Q\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ADD_R1 <= ADD_R1;
ww_ADD_R2 <= ADD_R2;
ww_ADD_W <= ADD_W;
DIN <= ww_DIN;
ww_EN <= EN;
ww_CLK <= CLK;
DOUT1 <= ww_DOUT1;
DOUT2 <= ww_DOUT2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\EN~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \EN~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y30_N2
\DIN[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[0]~reg0_q\,
	devoe => ww_devoe,
	o => \DIN[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\DIN[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[1]~reg0_q\,
	devoe => ww_devoe,
	o => \DIN[1]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\DIN[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[2]~reg0_q\,
	devoe => ww_devoe,
	o => \DIN[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\DIN[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[3]~reg0_q\,
	devoe => ww_devoe,
	o => \DIN[3]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\DIN[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIN[4]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\DIN[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIN[5]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\DIN[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIN[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\DIN[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIN[7]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\DIN[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIN[8]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\DIN[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIN[9]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\DIN[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIN[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\DIN[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIN[11]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\DIN[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIN[12]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\DIN[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIN[13]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\DIN[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIN[14]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\DIN[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIN[15]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\DOUT1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|G9|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => \DOUT1[0]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\DOUT1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|G9|Y[1]~1_combout\,
	devoe => ww_devoe,
	o => \DOUT1[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\DOUT1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|G9|Y[2]~2_combout\,
	devoe => ww_devoe,
	o => \DOUT1[2]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\DOUT1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|G9|Y[3]~3_combout\,
	devoe => ww_devoe,
	o => \DOUT1[3]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\DOUT1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT1[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\DOUT1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT1[5]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\DOUT1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT1[6]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\DOUT1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT1[7]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\DOUT1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT1[8]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\DOUT1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT1[9]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\DOUT1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT1[10]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\DOUT1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT1[11]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\DOUT1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT1[12]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\DOUT1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT1[13]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\DOUT1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT1[14]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\DOUT1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT1[15]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\DOUT2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX2|G9|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => \DOUT2[0]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\DOUT2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX2|G9|Y[1]~1_combout\,
	devoe => ww_devoe,
	o => \DOUT2[1]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\DOUT2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX2|G9|Y[2]~2_combout\,
	devoe => ww_devoe,
	o => \DOUT2[2]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\DOUT2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX2|G9|Y[3]~3_combout\,
	devoe => ww_devoe,
	o => \DOUT2[3]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\DOUT2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT2[4]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\DOUT2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT2[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\DOUT2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT2[6]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\DOUT2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT2[7]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\DOUT2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT2[8]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\DOUT2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT2[9]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\DOUT2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT2[10]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\DOUT2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT2[11]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\DOUT2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT2[12]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\DOUT2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT2[13]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\DOUT2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT2[14]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\DOUT2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT2[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: CLKCTRL_G4
\EN~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \EN~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \EN~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y35_N8
\ADD_W[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_W(1),
	o => \ADD_W[1]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\ADD_W[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_W(2),
	o => \ADD_W[2]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\ADD_W[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_W(0),
	o => \ADD_W[0]~input_o\);

-- Location: LCCOMB_X1_Y32_N4
\DECO|Q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECO|Q[0]~0_combout\ = (\ADD_W[2]~input_o\ & ((\ADD_W[0]~input_o\) # (!\ADD_W[1]~input_o\))) # (!\ADD_W[2]~input_o\ & ((!\ADD_W[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_W[1]~input_o\,
	datac => \ADD_W[2]~input_o\,
	datad => \ADD_W[0]~input_o\,
	combout => \DECO|Q[0]~0_combout\);

-- Location: FF_X1_Y32_N5
\DIN[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EN~inputclkctrl_outclk\,
	d => \DECO|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIN[0]~reg0_q\);

-- Location: LCCOMB_X1_Y32_N22
\DECO|Q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECO|Q[1]~1_combout\ = (\ADD_W[1]~input_o\ & (!\ADD_W[2]~input_o\ & !\ADD_W[0]~input_o\)) # (!\ADD_W[1]~input_o\ & ((\ADD_W[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_W[1]~input_o\,
	datac => \ADD_W[2]~input_o\,
	datad => \ADD_W[0]~input_o\,
	combout => \DECO|Q[1]~1_combout\);

-- Location: FF_X1_Y32_N23
\DIN[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EN~inputclkctrl_outclk\,
	d => \DECO|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIN[1]~reg0_q\);

-- Location: LCCOMB_X1_Y32_N8
\DECO|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECO|Q[2]~2_combout\ = (\ADD_W[1]~input_o\ & (!\ADD_W[2]~input_o\ & \ADD_W[0]~input_o\)) # (!\ADD_W[1]~input_o\ & (\ADD_W[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_W[1]~input_o\,
	datac => \ADD_W[2]~input_o\,
	datad => \ADD_W[0]~input_o\,
	combout => \DECO|Q[2]~2_combout\);

-- Location: FF_X1_Y32_N9
\DIN[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EN~inputclkctrl_outclk\,
	d => \DECO|Q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIN[2]~reg0_q\);

-- Location: LCCOMB_X1_Y32_N14
\DECO|Q[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECO|Q[0]~3_combout\ = (\ADD_W[1]~input_o\ & \ADD_W[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_W[1]~input_o\,
	datac => \ADD_W[2]~input_o\,
	combout => \DECO|Q[0]~3_combout\);

-- Location: FF_X1_Y32_N15
\DIN[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EN~inputclkctrl_outclk\,
	d => \DECO|Q[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIN[3]~reg0_q\);

-- Location: IOIBUF_X0_Y35_N1
\ADD_R1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R1(2),
	o => \ADD_R1[2]~input_o\);

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

-- Location: FF_X1_Y32_N17
\REGI1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~reg0_q\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGI1|Q\(0));

-- Location: LCCOMB_X1_Y32_N30
\MUX1|G9|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX1|G9|Y[0]~0_combout\ = (!\ADD_R1[2]~input_o\ & \REGI1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADD_R1[2]~input_o\,
	datad => \REGI1|Q\(0),
	combout => \MUX1|G9|Y[0]~0_combout\);

-- Location: FF_X1_Y32_N21
\REGI1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~reg0_q\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGI1|Q\(1));

-- Location: LCCOMB_X1_Y32_N26
\MUX1|G9|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX1|G9|Y[1]~1_combout\ = (!\ADD_R1[2]~input_o\ & \REGI1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADD_R1[2]~input_o\,
	datad => \REGI1|Q\(1),
	combout => \MUX1|G9|Y[1]~1_combout\);

-- Location: FF_X1_Y32_N25
\REGI1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~reg0_q\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGI1|Q\(2));

-- Location: LCCOMB_X1_Y32_N10
\MUX1|G9|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX1|G9|Y[2]~2_combout\ = (!\ADD_R1[2]~input_o\ & \REGI1|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADD_R1[2]~input_o\,
	datad => \REGI1|Q\(2),
	combout => \MUX1|G9|Y[2]~2_combout\);

-- Location: FF_X1_Y32_N13
\REGI1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~reg0_q\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGI1|Q\(3));

-- Location: LCCOMB_X1_Y32_N18
\MUX1|G9|Y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX1|G9|Y[3]~3_combout\ = (!\ADD_R1[2]~input_o\ & \REGI1|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADD_R1[2]~input_o\,
	datad => \REGI1|Q\(3),
	combout => \MUX1|G9|Y[3]~3_combout\);

-- Location: IOIBUF_X0_Y34_N22
\ADD_R2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R2(2),
	o => \ADD_R2[2]~input_o\);

-- Location: LCCOMB_X1_Y32_N16
\MUX2|G9|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX2|G9|Y[0]~0_combout\ = (\REGI1|Q\(0) & !\ADD_R2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGI1|Q\(0),
	datad => \ADD_R2[2]~input_o\,
	combout => \MUX2|G9|Y[0]~0_combout\);

-- Location: LCCOMB_X1_Y32_N20
\MUX2|G9|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX2|G9|Y[1]~1_combout\ = (\REGI1|Q\(1) & !\ADD_R2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGI1|Q\(1),
	datad => \ADD_R2[2]~input_o\,
	combout => \MUX2|G9|Y[1]~1_combout\);

-- Location: LCCOMB_X1_Y32_N24
\MUX2|G9|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX2|G9|Y[2]~2_combout\ = (\REGI1|Q\(2) & !\ADD_R2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGI1|Q\(2),
	datad => \ADD_R2[2]~input_o\,
	combout => \MUX2|G9|Y[2]~2_combout\);

-- Location: LCCOMB_X1_Y32_N12
\MUX2|G9|Y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX2|G9|Y[3]~3_combout\ = (\REGI1|Q\(3) & !\ADD_R2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGI1|Q\(3),
	datad => \ADD_R2[2]~input_o\,
	combout => \MUX2|G9|Y[3]~3_combout\);

-- Location: IOIBUF_X115_Y37_N8
\ADD_R1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R1(0),
	o => \ADD_R1[0]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\ADD_R2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R2(0),
	o => \ADD_R2[0]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\ADD_R1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R1(1),
	o => \ADD_R1[1]~input_o\);

-- Location: IOIBUF_X9_Y73_N1
\ADD_R2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R2(1),
	o => \ADD_R2[1]~input_o\);

ww_DIN(0) <= \DIN[0]~output_o\;

ww_DIN(1) <= \DIN[1]~output_o\;

ww_DIN(2) <= \DIN[2]~output_o\;

ww_DIN(3) <= \DIN[3]~output_o\;

ww_DIN(4) <= \DIN[4]~output_o\;

ww_DIN(5) <= \DIN[5]~output_o\;

ww_DIN(6) <= \DIN[6]~output_o\;

ww_DIN(7) <= \DIN[7]~output_o\;

ww_DIN(8) <= \DIN[8]~output_o\;

ww_DIN(9) <= \DIN[9]~output_o\;

ww_DIN(10) <= \DIN[10]~output_o\;

ww_DIN(11) <= \DIN[11]~output_o\;

ww_DIN(12) <= \DIN[12]~output_o\;

ww_DIN(13) <= \DIN[13]~output_o\;

ww_DIN(14) <= \DIN[14]~output_o\;

ww_DIN(15) <= \DIN[15]~output_o\;

ww_DOUT1(0) <= \DOUT1[0]~output_o\;

ww_DOUT1(1) <= \DOUT1[1]~output_o\;

ww_DOUT1(2) <= \DOUT1[2]~output_o\;

ww_DOUT1(3) <= \DOUT1[3]~output_o\;

ww_DOUT1(4) <= \DOUT1[4]~output_o\;

ww_DOUT1(5) <= \DOUT1[5]~output_o\;

ww_DOUT1(6) <= \DOUT1[6]~output_o\;

ww_DOUT1(7) <= \DOUT1[7]~output_o\;

ww_DOUT1(8) <= \DOUT1[8]~output_o\;

ww_DOUT1(9) <= \DOUT1[9]~output_o\;

ww_DOUT1(10) <= \DOUT1[10]~output_o\;

ww_DOUT1(11) <= \DOUT1[11]~output_o\;

ww_DOUT1(12) <= \DOUT1[12]~output_o\;

ww_DOUT1(13) <= \DOUT1[13]~output_o\;

ww_DOUT1(14) <= \DOUT1[14]~output_o\;

ww_DOUT1(15) <= \DOUT1[15]~output_o\;

ww_DOUT2(0) <= \DOUT2[0]~output_o\;

ww_DOUT2(1) <= \DOUT2[1]~output_o\;

ww_DOUT2(2) <= \DOUT2[2]~output_o\;

ww_DOUT2(3) <= \DOUT2[3]~output_o\;

ww_DOUT2(4) <= \DOUT2[4]~output_o\;

ww_DOUT2(5) <= \DOUT2[5]~output_o\;

ww_DOUT2(6) <= \DOUT2[6]~output_o\;

ww_DOUT2(7) <= \DOUT2[7]~output_o\;

ww_DOUT2(8) <= \DOUT2[8]~output_o\;

ww_DOUT2(9) <= \DOUT2[9]~output_o\;

ww_DOUT2(10) <= \DOUT2[10]~output_o\;

ww_DOUT2(11) <= \DOUT2[11]~output_o\;

ww_DOUT2(12) <= \DOUT2[12]~output_o\;

ww_DOUT2(13) <= \DOUT2[13]~output_o\;

ww_DOUT2(14) <= \DOUT2[14]~output_o\;

ww_DOUT2(15) <= \DOUT2[15]~output_o\;
END structure;


