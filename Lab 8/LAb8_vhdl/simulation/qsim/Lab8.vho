-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "04/23/2023 11:14:26"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	INS_MEM IS
    PORT (
	ADDR : IN std_logic_vector(15 DOWNTO 0);
	DOUT : OUT std_logic_vector(15 DOWNTO 0)
	);
END INS_MEM;

-- Design Ports Information
-- ADDR[0]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[1]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[7]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[8]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[9]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[10]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[11]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[12]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[13]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[14]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[15]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[5]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[6]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[8]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[9]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[10]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[11]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[12]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[13]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[14]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[15]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[2]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[4]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[5]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF INS_MEM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ADDR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \ADDR[0]~input_o\ : std_logic;
SIGNAL \ADDR[1]~input_o\ : std_logic;
SIGNAL \ADDR[7]~input_o\ : std_logic;
SIGNAL \ADDR[8]~input_o\ : std_logic;
SIGNAL \ADDR[9]~input_o\ : std_logic;
SIGNAL \ADDR[10]~input_o\ : std_logic;
SIGNAL \ADDR[11]~input_o\ : std_logic;
SIGNAL \ADDR[12]~input_o\ : std_logic;
SIGNAL \ADDR[13]~input_o\ : std_logic;
SIGNAL \ADDR[14]~input_o\ : std_logic;
SIGNAL \ADDR[15]~input_o\ : std_logic;
SIGNAL \DOUT[0]~output_o\ : std_logic;
SIGNAL \DOUT[1]~output_o\ : std_logic;
SIGNAL \DOUT[2]~output_o\ : std_logic;
SIGNAL \DOUT[3]~output_o\ : std_logic;
SIGNAL \DOUT[4]~output_o\ : std_logic;
SIGNAL \DOUT[5]~output_o\ : std_logic;
SIGNAL \DOUT[6]~output_o\ : std_logic;
SIGNAL \DOUT[7]~output_o\ : std_logic;
SIGNAL \DOUT[8]~output_o\ : std_logic;
SIGNAL \DOUT[9]~output_o\ : std_logic;
SIGNAL \DOUT[10]~output_o\ : std_logic;
SIGNAL \DOUT[11]~output_o\ : std_logic;
SIGNAL \DOUT[12]~output_o\ : std_logic;
SIGNAL \DOUT[13]~output_o\ : std_logic;
SIGNAL \DOUT[14]~output_o\ : std_logic;
SIGNAL \DOUT[15]~output_o\ : std_logic;
SIGNAL \ADDR[2]~input_o\ : std_logic;
SIGNAL \ADDR[3]~input_o\ : std_logic;
SIGNAL \IMEM~0_combout\ : std_logic;
SIGNAL \ADDR[4]~input_o\ : std_logic;
SIGNAL \IMEM~1_combout\ : std_logic;
SIGNAL \ADDR[5]~input_o\ : std_logic;
SIGNAL \IMEM~2_combout\ : std_logic;
SIGNAL \ADDR[6]~input_o\ : std_logic;
SIGNAL \IMEM~3_combout\ : std_logic;
SIGNAL \IMEM~4_combout\ : std_logic;
SIGNAL \IMEM~5_combout\ : std_logic;
SIGNAL \IMEM~6_combout\ : std_logic;
SIGNAL \IMEM~7_combout\ : std_logic;
SIGNAL \IMEM~8_combout\ : std_logic;
SIGNAL \IMEM~9_combout\ : std_logic;
SIGNAL \IMEM~10_combout\ : std_logic;
SIGNAL \IMEM~11_combout\ : std_logic;
SIGNAL \IMEM~12_combout\ : std_logic;
SIGNAL \IMEM~13_combout\ : std_logic;
SIGNAL \ALT_INV_ADDR[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_IMEM~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ADDR <= ADDR;
DOUT <= ww_DOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ADDR[2]~input_o\ <= NOT \ADDR[2]~input_o\;
\ALT_INV_IMEM~8_combout\ <= NOT \IMEM~8_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X81_Y73_N16
\DOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DOUT[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\DOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ADDR[2]~input_o\,
	devoe => ww_devoe,
	o => \DOUT[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\DOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\DOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM~1_combout\,
	devoe => ww_devoe,
	o => \DOUT[3]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\DOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM~2_combout\,
	devoe => ww_devoe,
	o => \DOUT[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\DOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM~4_combout\,
	devoe => ww_devoe,
	o => \DOUT[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\DOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM~6_combout\,
	devoe => ww_devoe,
	o => \DOUT[6]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\DOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_IMEM~8_combout\,
	devoe => ww_devoe,
	o => \DOUT[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\DOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM~10_combout\,
	devoe => ww_devoe,
	o => \DOUT[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\DOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM~11_combout\,
	devoe => ww_devoe,
	o => \DOUT[9]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\DOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM~8_combout\,
	devoe => ww_devoe,
	o => \DOUT[10]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\DOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM~12_combout\,
	devoe => ww_devoe,
	o => \DOUT[11]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\DOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMEM~13_combout\,
	devoe => ww_devoe,
	o => \DOUT[12]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\DOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADDR[4]~input_o\,
	devoe => ww_devoe,
	o => \DOUT[13]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\DOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADDR[5]~input_o\,
	devoe => ww_devoe,
	o => \DOUT[14]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\DOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADDR[6]~input_o\,
	devoe => ww_devoe,
	o => \DOUT[15]~output_o\);

-- Location: IOIBUF_X49_Y0_N8
\ADDR[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(2),
	o => \ADDR[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\ADDR[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(3),
	o => \ADDR[3]~input_o\);

-- Location: LCCOMB_X54_Y1_N16
\IMEM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMEM~0_combout\ = \ADDR[2]~input_o\ $ (\ADDR[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datad => \ADDR[3]~input_o\,
	combout => \IMEM~0_combout\);

-- Location: IOIBUF_X60_Y0_N15
\ADDR[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(4),
	o => \ADDR[4]~input_o\);

-- Location: LCCOMB_X54_Y1_N18
\IMEM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMEM~1_combout\ = \ADDR[4]~input_o\ $ (((\ADDR[2]~input_o\ & \ADDR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datac => \ADDR[4]~input_o\,
	datad => \ADDR[3]~input_o\,
	combout => \IMEM~1_combout\);

-- Location: IOIBUF_X56_Y0_N15
\ADDR[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(5),
	o => \ADDR[5]~input_o\);

-- Location: LCCOMB_X54_Y1_N12
\IMEM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMEM~2_combout\ = \ADDR[5]~input_o\ $ (((\ADDR[2]~input_o\ & (\ADDR[4]~input_o\ & \ADDR[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \ADDR[5]~input_o\,
	datac => \ADDR[4]~input_o\,
	datad => \ADDR[3]~input_o\,
	combout => \IMEM~2_combout\);

-- Location: IOIBUF_X52_Y0_N15
\ADDR[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(6),
	o => \ADDR[6]~input_o\);

-- Location: LCCOMB_X54_Y1_N22
\IMEM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMEM~3_combout\ = (\ADDR[2]~input_o\ & (\ADDR[5]~input_o\ & (\ADDR[4]~input_o\ & \ADDR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \ADDR[5]~input_o\,
	datac => \ADDR[4]~input_o\,
	datad => \ADDR[3]~input_o\,
	combout => \IMEM~3_combout\);

-- Location: LCCOMB_X54_Y1_N0
\IMEM~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMEM~4_combout\ = \ADDR[6]~input_o\ $ (\IMEM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[6]~input_o\,
	datac => \IMEM~3_combout\,
	combout => \IMEM~4_combout\);

-- Location: LCCOMB_X54_Y1_N10
\IMEM~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMEM~5_combout\ = (!\ADDR[5]~input_o\ & !\ADDR[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADDR[5]~input_o\,
	datad => \ADDR[6]~input_o\,
	combout => \IMEM~5_combout\);

-- Location: LCCOMB_X54_Y1_N4
\IMEM~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMEM~6_combout\ = (\ADDR[3]~input_o\ & (\ADDR[2]~input_o\ & (\ADDR[4]~input_o\ & \IMEM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[2]~input_o\,
	datac => \ADDR[4]~input_o\,
	datad => \IMEM~5_combout\,
	combout => \IMEM~6_combout\);

-- Location: LCCOMB_X54_Y1_N14
\IMEM~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMEM~7_combout\ = (\ADDR[2]~input_o\ & (!\ADDR[3]~input_o\ & ((\ADDR[5]~input_o\) # (!\ADDR[4]~input_o\)))) # (!\ADDR[2]~input_o\ & (((\ADDR[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \ADDR[5]~input_o\,
	datac => \ADDR[4]~input_o\,
	datad => \ADDR[3]~input_o\,
	combout => \IMEM~7_combout\);

-- Location: LCCOMB_X54_Y1_N8
\IMEM~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMEM~8_combout\ = (\ADDR[6]~input_o\ & (\ADDR[2]~input_o\ $ (((\ADDR[3]~input_o\))))) # (!\ADDR[6]~input_o\ & (((\IMEM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[6]~input_o\,
	datab => \ADDR[2]~input_o\,
	datac => \IMEM~7_combout\,
	datad => \ADDR[3]~input_o\,
	combout => \IMEM~8_combout\);

-- Location: LCCOMB_X54_Y1_N2
\IMEM~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMEM~9_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[6]~input_o\) # ((\ADDR[5]~input_o\) # (!\ADDR[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[6]~input_o\,
	datab => \ADDR[5]~input_o\,
	datac => \ADDR[4]~input_o\,
	datad => \ADDR[3]~input_o\,
	combout => \IMEM~9_combout\);

-- Location: LCCOMB_X54_Y1_N28
\IMEM~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMEM~10_combout\ = (\ADDR[2]~input_o\) # (\IMEM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datad => \IMEM~9_combout\,
	combout => \IMEM~10_combout\);

-- Location: LCCOMB_X54_Y1_N6
\IMEM~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMEM~11_combout\ = (\ADDR[3]~input_o\) # ((!\ADDR[2]~input_o\ & (!\ADDR[4]~input_o\ & \IMEM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[2]~input_o\,
	datac => \ADDR[4]~input_o\,
	datad => \IMEM~5_combout\,
	combout => \IMEM~11_combout\);

-- Location: LCCOMB_X54_Y1_N24
\IMEM~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMEM~12_combout\ = (\ADDR[2]~input_o\) # ((\ADDR[3]~input_o\ & (\ADDR[4]~input_o\ & \IMEM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[2]~input_o\,
	datac => \ADDR[4]~input_o\,
	datad => \IMEM~5_combout\,
	combout => \IMEM~12_combout\);

-- Location: LCCOMB_X54_Y1_N26
\IMEM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \IMEM~13_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[2]~input_o\) # ((!\IMEM~5_combout\) # (!\ADDR[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[2]~input_o\,
	datac => \ADDR[4]~input_o\,
	datad => \IMEM~5_combout\,
	combout => \IMEM~13_combout\);

-- Location: IOIBUF_X115_Y69_N15
\ADDR[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(0),
	o => \ADDR[0]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\ADDR[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(1),
	o => \ADDR[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\ADDR[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(7),
	o => \ADDR[7]~input_o\);

-- Location: IOIBUF_X0_Y57_N15
\ADDR[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(8),
	o => \ADDR[8]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\ADDR[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(9),
	o => \ADDR[9]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\ADDR[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(10),
	o => \ADDR[10]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\ADDR[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(11),
	o => \ADDR[11]~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\ADDR[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(12),
	o => \ADDR[12]~input_o\);

-- Location: IOIBUF_X107_Y0_N1
\ADDR[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(13),
	o => \ADDR[13]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\ADDR[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(14),
	o => \ADDR[14]~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\ADDR[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(15),
	o => \ADDR[15]~input_o\);

ww_DOUT(0) <= \DOUT[0]~output_o\;

ww_DOUT(1) <= \DOUT[1]~output_o\;

ww_DOUT(2) <= \DOUT[2]~output_o\;

ww_DOUT(3) <= \DOUT[3]~output_o\;

ww_DOUT(4) <= \DOUT[4]~output_o\;

ww_DOUT(5) <= \DOUT[5]~output_o\;

ww_DOUT(6) <= \DOUT[6]~output_o\;

ww_DOUT(7) <= \DOUT[7]~output_o\;

ww_DOUT(8) <= \DOUT[8]~output_o\;

ww_DOUT(9) <= \DOUT[9]~output_o\;

ww_DOUT(10) <= \DOUT[10]~output_o\;

ww_DOUT(11) <= \DOUT[11]~output_o\;

ww_DOUT(12) <= \DOUT[12]~output_o\;

ww_DOUT(13) <= \DOUT[13]~output_o\;

ww_DOUT(14) <= \DOUT[14]~output_o\;

ww_DOUT(15) <= \DOUT[15]~output_o\;
END structure;


