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

-- DATE "04/25/2023 18:00:33"

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

ENTITY 	ADD4 IS
    PORT (
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	CIN : IN std_logic;
	SUM : OUT std_logic_vector(3 DOWNTO 0);
	COUT : OUT std_logic
	);
END ADD4;

-- Design Ports Information
-- SUM[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[2]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[3]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ADD4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CIN : std_logic;
SIGNAL ww_SUM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_COUT : std_logic;
SIGNAL \SUM[0]~output_o\ : std_logic;
SIGNAL \SUM[1]~output_o\ : std_logic;
SIGNAL \SUM[2]~output_o\ : std_logic;
SIGNAL \SUM[3]~output_o\ : std_logic;
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \SUM~0_combout\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \S2~0_combout\ : std_logic;
SIGNAL \SUM~1_combout\ : std_logic;
SIGNAL \SUM~2_combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \C3~0_combout\ : std_logic;
SIGNAL \SUM~3_combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \C3~1_combout\ : std_logic;
SIGNAL \COUT~0_combout\ : std_logic;
SIGNAL \ALT_INV_SUM~3_combout\ : std_logic;
SIGNAL \ALT_INV_SUM~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_X <= X;
ww_Y <= Y;
ww_CIN <= CIN;
SUM <= ww_SUM;
COUT <= ww_COUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SUM~3_combout\ <= NOT \SUM~3_combout\;
\ALT_INV_SUM~0_combout\ <= NOT \SUM~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y25_N16
\SUM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SUM~0_combout\,
	devoe => ww_devoe,
	o => \SUM[0]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\SUM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUM~1_combout\,
	devoe => ww_devoe,
	o => \SUM[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\SUM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SUM~2_combout\,
	devoe => ww_devoe,
	o => \SUM[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\SUM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SUM~3_combout\,
	devoe => ww_devoe,
	o => \SUM[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\COUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUT~0_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOIBUF_X0_Y20_N15
\X[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\CIN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIN,
	o => \CIN~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\Y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: LCCOMB_X1_Y24_N0
\SUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUM~0_combout\ = \X[0]~input_o\ $ (\CIN~input_o\ $ (\Y[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[0]~input_o\,
	datac => \CIN~input_o\,
	datad => \Y[0]~input_o\,
	combout => \SUM~0_combout\);

-- Location: IOIBUF_X0_Y24_N8
\X[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\Y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: LCCOMB_X1_Y24_N10
\S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S2~0_combout\ = (!\X[1]~input_o\ & !\Y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[1]~input_o\,
	datad => \Y[1]~input_o\,
	combout => \S2~0_combout\);

-- Location: LCCOMB_X1_Y24_N20
\SUM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUM~1_combout\ = (\Y[0]~input_o\ & ((\X[0]~input_o\ & ((\S2~0_combout\))) # (!\X[0]~input_o\ & (!\CIN~input_o\ & !\S2~0_combout\)))) # (!\Y[0]~input_o\ & (\X[0]~input_o\ $ (((\CIN~input_o\) # (\S2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[0]~input_o\,
	datac => \CIN~input_o\,
	datad => \S2~0_combout\,
	combout => \SUM~1_combout\);

-- Location: LCCOMB_X1_Y24_N22
\SUM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUM~2_combout\ = (\S2~0_combout\ & ((\Y[0]~input_o\ & (!\X[0]~input_o\ & \CIN~input_o\)) # (!\Y[0]~input_o\ & ((\CIN~input_o\) # (!\X[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[0]~input_o\,
	datac => \CIN~input_o\,
	datad => \S2~0_combout\,
	combout => \SUM~2_combout\);

-- Location: IOIBUF_X0_Y23_N22
\X[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\Y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N24
\C3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C3~0_combout\ = (!\Y[0]~input_o\ & (!\X[1]~input_o\ & (\CIN~input_o\ & !\Y[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[1]~input_o\,
	datac => \CIN~input_o\,
	datad => \Y[1]~input_o\,
	combout => \C3~0_combout\);

-- Location: LCCOMB_X1_Y24_N26
\SUM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUM~3_combout\ = (\X[2]~input_o\ & (((!\Y[2]~input_o\)))) # (!\X[2]~input_o\ & ((\Y[2]~input_o\) # ((!\X[0]~input_o\ & \C3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[0]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \C3~0_combout\,
	combout => \SUM~3_combout\);

-- Location: IOIBUF_X0_Y24_N15
\X[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\Y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N12
\C3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C3~1_combout\ = (!\Y[2]~input_o\ & (!\X[0]~input_o\ & !\X[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \X[0]~input_o\,
	datad => \X[2]~input_o\,
	combout => \C3~1_combout\);

-- Location: LCCOMB_X1_Y24_N30
\COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUT~0_combout\ = (\X[3]~input_o\) # ((\Y[3]~input_o\) # ((\C3~0_combout\ & \C3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \C3~0_combout\,
	datac => \Y[3]~input_o\,
	datad => \C3~1_combout\,
	combout => \COUT~0_combout\);

ww_SUM(0) <= \SUM[0]~output_o\;

ww_SUM(1) <= \SUM[1]~output_o\;

ww_SUM(2) <= \SUM[2]~output_o\;

ww_SUM(3) <= \SUM[3]~output_o\;

ww_COUT <= \COUT~output_o\;
END structure;


