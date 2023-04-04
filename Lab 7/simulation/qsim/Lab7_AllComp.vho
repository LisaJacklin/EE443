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

-- DATE "04/04/2023 15:35:57"

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

ENTITY 	PCJMP IS
    PORT (
	PCOLD : IN std_logic_vector(2 DOWNTO 0);
	INS : IN std_logic_vector(11 DOWNTO 0);
	PCOUT : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END PCJMP;

-- Design Ports Information
-- PCOUT[0]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[1]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[2]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[4]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[5]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[6]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[7]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[8]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[9]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[10]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[11]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[12]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[13]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[14]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[15]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[1]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[3]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[4]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[5]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[6]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[7]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[9]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[10]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS[11]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOLD[0]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOLD[1]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOLD[2]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PCJMP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PCOLD : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_INS : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_PCOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \PCOUT[0]~output_o\ : std_logic;
SIGNAL \PCOUT[1]~output_o\ : std_logic;
SIGNAL \PCOUT[2]~output_o\ : std_logic;
SIGNAL \PCOUT[3]~output_o\ : std_logic;
SIGNAL \PCOUT[4]~output_o\ : std_logic;
SIGNAL \PCOUT[5]~output_o\ : std_logic;
SIGNAL \PCOUT[6]~output_o\ : std_logic;
SIGNAL \PCOUT[7]~output_o\ : std_logic;
SIGNAL \PCOUT[8]~output_o\ : std_logic;
SIGNAL \PCOUT[9]~output_o\ : std_logic;
SIGNAL \PCOUT[10]~output_o\ : std_logic;
SIGNAL \PCOUT[11]~output_o\ : std_logic;
SIGNAL \PCOUT[12]~output_o\ : std_logic;
SIGNAL \PCOUT[13]~output_o\ : std_logic;
SIGNAL \PCOUT[14]~output_o\ : std_logic;
SIGNAL \PCOUT[15]~output_o\ : std_logic;
SIGNAL \INS[0]~input_o\ : std_logic;
SIGNAL \INS[1]~input_o\ : std_logic;
SIGNAL \INS[2]~input_o\ : std_logic;
SIGNAL \INS[3]~input_o\ : std_logic;
SIGNAL \INS[4]~input_o\ : std_logic;
SIGNAL \INS[5]~input_o\ : std_logic;
SIGNAL \INS[6]~input_o\ : std_logic;
SIGNAL \INS[7]~input_o\ : std_logic;
SIGNAL \INS[8]~input_o\ : std_logic;
SIGNAL \INS[9]~input_o\ : std_logic;
SIGNAL \INS[10]~input_o\ : std_logic;
SIGNAL \INS[11]~input_o\ : std_logic;
SIGNAL \PCOLD[0]~input_o\ : std_logic;
SIGNAL \PCOLD[1]~input_o\ : std_logic;
SIGNAL \PCOLD[2]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_PCOLD <= PCOLD;
ww_INS <= INS;
PCOUT <= ww_PCOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y14_N9
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

-- Location: IOOBUF_X18_Y0_N23
\PCOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INS[0]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\PCOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INS[1]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[2]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\PCOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INS[2]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\PCOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INS[3]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\PCOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INS[4]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\PCOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INS[5]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\PCOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INS[6]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[7]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\PCOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INS[7]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[8]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\PCOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INS[8]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[9]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\PCOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INS[9]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\PCOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INS[10]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[11]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\PCOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INS[11]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[12]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\PCOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCOLD[0]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[13]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\PCOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCOLD[1]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\PCOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCOLD[2]~input_o\,
	devoe => ww_devoe,
	o => \PCOUT[15]~output_o\);

-- Location: IOIBUF_X18_Y0_N15
\INS[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(0),
	o => \INS[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\INS[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(1),
	o => \INS[1]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\INS[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(2),
	o => \INS[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\INS[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(3),
	o => \INS[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\INS[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(4),
	o => \INS[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\INS[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(5),
	o => \INS[5]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\INS[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(6),
	o => \INS[6]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\INS[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(7),
	o => \INS[7]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\INS[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(8),
	o => \INS[8]~input_o\);

-- Location: IOIBUF_X100_Y73_N15
\INS[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(9),
	o => \INS[9]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\INS[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(10),
	o => \INS[10]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\INS[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS(11),
	o => \INS[11]~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\PCOLD[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCOLD(0),
	o => \PCOLD[0]~input_o\);

-- Location: IOIBUF_X0_Y67_N15
\PCOLD[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCOLD(1),
	o => \PCOLD[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\PCOLD[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCOLD(2),
	o => \PCOLD[2]~input_o\);

ww_PCOUT(0) <= \PCOUT[0]~output_o\;

ww_PCOUT(1) <= \PCOUT[1]~output_o\;

ww_PCOUT(2) <= \PCOUT[2]~output_o\;

ww_PCOUT(3) <= \PCOUT[3]~output_o\;

ww_PCOUT(4) <= \PCOUT[4]~output_o\;

ww_PCOUT(5) <= \PCOUT[5]~output_o\;

ww_PCOUT(6) <= \PCOUT[6]~output_o\;

ww_PCOUT(7) <= \PCOUT[7]~output_o\;

ww_PCOUT(8) <= \PCOUT[8]~output_o\;

ww_PCOUT(9) <= \PCOUT[9]~output_o\;

ww_PCOUT(10) <= \PCOUT[10]~output_o\;

ww_PCOUT(11) <= \PCOUT[11]~output_o\;

ww_PCOUT(12) <= \PCOUT[12]~output_o\;

ww_PCOUT(13) <= \PCOUT[13]~output_o\;

ww_PCOUT(14) <= \PCOUT[14]~output_o\;

ww_PCOUT(15) <= \PCOUT[15]~output_o\;
END structure;


