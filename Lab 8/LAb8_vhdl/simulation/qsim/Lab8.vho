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

-- DATE "04/24/2023 10:46:59"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CONTROL IS
    PORT (
	INSTRUCT : IN std_logic_vector(15 DOWNTO 0);
	ZERO : IN std_logic;
	ALUMUXSEL : OUT std_logic;
	PCSEL1 : OUT std_logic;
	PCSEL2 : OUT std_logic;
	RFMUXSEL : OUT std_logic;
	MEMW : OUT std_logic;
	REGWE : OUT std_logic;
	MEMR : OUT std_logic;
	ALU_SEL : OUT std_logic_vector(2 DOWNTO 0)
	);
END CONTROL;

-- Design Ports Information
-- INSTRUCT[0]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[3]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[4]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[7]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[8]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[9]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[11]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[12]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[13]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[14]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCT[15]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUMUXSEL	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCSEL1	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCSEL2	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RFMUXSEL	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMW	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGWE	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMR	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[1]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZERO	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CONTROL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_INSTRUCT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ZERO : std_logic;
SIGNAL ww_ALUMUXSEL : std_logic;
SIGNAL ww_PCSEL1 : std_logic;
SIGNAL ww_PCSEL2 : std_logic;
SIGNAL ww_RFMUXSEL : std_logic;
SIGNAL ww_MEMW : std_logic;
SIGNAL ww_REGWE : std_logic;
SIGNAL ww_MEMR : std_logic;
SIGNAL ww_ALU_SEL : std_logic_vector(2 DOWNTO 0);
SIGNAL \INSTRUCT[0]~input_o\ : std_logic;
SIGNAL \INSTRUCT[1]~input_o\ : std_logic;
SIGNAL \INSTRUCT[2]~input_o\ : std_logic;
SIGNAL \INSTRUCT[3]~input_o\ : std_logic;
SIGNAL \INSTRUCT[4]~input_o\ : std_logic;
SIGNAL \INSTRUCT[5]~input_o\ : std_logic;
SIGNAL \INSTRUCT[6]~input_o\ : std_logic;
SIGNAL \INSTRUCT[7]~input_o\ : std_logic;
SIGNAL \INSTRUCT[8]~input_o\ : std_logic;
SIGNAL \INSTRUCT[9]~input_o\ : std_logic;
SIGNAL \INSTRUCT[10]~input_o\ : std_logic;
SIGNAL \INSTRUCT[11]~input_o\ : std_logic;
SIGNAL \INSTRUCT[12]~input_o\ : std_logic;
SIGNAL \INSTRUCT[13]~input_o\ : std_logic;
SIGNAL \INSTRUCT[14]~input_o\ : std_logic;
SIGNAL \INSTRUCT[15]~input_o\ : std_logic;
SIGNAL \ALUMUXSEL~output_o\ : std_logic;
SIGNAL \PCSEL1~output_o\ : std_logic;
SIGNAL \PCSEL2~output_o\ : std_logic;
SIGNAL \RFMUXSEL~output_o\ : std_logic;
SIGNAL \MEMW~output_o\ : std_logic;
SIGNAL \REGWE~output_o\ : std_logic;
SIGNAL \MEMR~output_o\ : std_logic;
SIGNAL \ALU_SEL[0]~output_o\ : std_logic;
SIGNAL \ALU_SEL[1]~output_o\ : std_logic;
SIGNAL \ALU_SEL[2]~output_o\ : std_logic;
SIGNAL \ZERO~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_INSTRUCT <= INSTRUCT;
ww_ZERO <= ZERO;
ALUMUXSEL <= ww_ALUMUXSEL;
PCSEL1 <= ww_PCSEL1;
PCSEL2 <= ww_PCSEL2;
RFMUXSEL <= ww_RFMUXSEL;
MEMW <= ww_MEMW;
REGWE <= ww_REGWE;
MEMR <= ww_MEMR;
ALU_SEL <= ww_ALU_SEL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N23
\ALUMUXSEL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUMUXSEL~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\PCSEL1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PCSEL1~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\PCSEL2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PCSEL2~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\RFMUXSEL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RFMUXSEL~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\MEMW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MEMW~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\REGWE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \REGWE~output_o\);

-- Location: IOOBUF_X20_Y0_N23
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

-- Location: IOOBUF_X1_Y73_N23
\ALU_SEL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ZERO~input_o\,
	devoe => ww_devoe,
	o => \ALU_SEL[0]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\ALU_SEL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ZERO~input_o\,
	devoe => ww_devoe,
	o => \ALU_SEL[1]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\ALU_SEL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ZERO~input_o\,
	devoe => ww_devoe,
	o => \ALU_SEL[2]~output_o\);

-- Location: IOIBUF_X1_Y73_N1
\ZERO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ZERO,
	o => \ZERO~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\INSTRUCT[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(0),
	o => \INSTRUCT[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\INSTRUCT[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(1),
	o => \INSTRUCT[1]~input_o\);

-- Location: IOIBUF_X0_Y69_N8
\INSTRUCT[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(2),
	o => \INSTRUCT[2]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\INSTRUCT[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(3),
	o => \INSTRUCT[3]~input_o\);

-- Location: IOIBUF_X115_Y19_N8
\INSTRUCT[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(4),
	o => \INSTRUCT[4]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\INSTRUCT[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(5),
	o => \INSTRUCT[5]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\INSTRUCT[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(6),
	o => \INSTRUCT[6]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\INSTRUCT[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(7),
	o => \INSTRUCT[7]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\INSTRUCT[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(8),
	o => \INSTRUCT[8]~input_o\);

-- Location: IOIBUF_X107_Y0_N1
\INSTRUCT[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(9),
	o => \INSTRUCT[9]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\INSTRUCT[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(10),
	o => \INSTRUCT[10]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\INSTRUCT[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(11),
	o => \INSTRUCT[11]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\INSTRUCT[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(12),
	o => \INSTRUCT[12]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\INSTRUCT[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(13),
	o => \INSTRUCT[13]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\INSTRUCT[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(14),
	o => \INSTRUCT[14]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\INSTRUCT[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCT(15),
	o => \INSTRUCT[15]~input_o\);

ww_ALUMUXSEL <= \ALUMUXSEL~output_o\;

ww_PCSEL1 <= \PCSEL1~output_o\;

ww_PCSEL2 <= \PCSEL2~output_o\;

ww_RFMUXSEL <= \RFMUXSEL~output_o\;

ww_MEMW <= \MEMW~output_o\;

ww_REGWE <= \REGWE~output_o\;

ww_MEMR <= \MEMR~output_o\;

ww_ALU_SEL(0) <= \ALU_SEL[0]~output_o\;

ww_ALU_SEL(1) <= \ALU_SEL[1]~output_o\;

ww_ALU_SEL(2) <= \ALU_SEL[2]~output_o\;
END structure;


