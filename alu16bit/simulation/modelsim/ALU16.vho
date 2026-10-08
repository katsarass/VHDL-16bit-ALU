-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "05/31/2026 23:01:35"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU16 IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	opcode : IN std_logic_vector(2 DOWNTO 0);
	result : OUT std_logic_vector(15 DOWNTO 0);
	Ovfl : OUT std_logic
	);
END ALU16;

-- Design Ports Information
-- result[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Ovfl : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \ALU_BIT0|mux_result|Mux0~3_combout\ : std_logic;
SIGNAL \ALU_BIT0|mux_result|Mux0~2_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \ALU_BIT0|mux_result|Mux0~4_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \Generate_ALU:1:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \ALU_BIT0|fa|cout~0_combout\ : std_logic;
SIGNAL \ALU_BIT0|fa|cout~1_combout\ : std_logic;
SIGNAL \ControlCircuit|Mux0~0_combout\ : std_logic;
SIGNAL \ControlCircuit|Mux1~0_combout\ : std_logic;
SIGNAL \Generate_ALU:1:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \Generate_ALU:1:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:1:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \Generate_ALU:2:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \Generate_ALU:2:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \ControlCircuit|Mux3~0_combout\ : std_logic;
SIGNAL \Generate_ALU:2:ALU_INST|xor_out~0_combout\ : std_logic;
SIGNAL \Generate_ALU:1:ALU_INST|fa|cout~0_combout\ : std_logic;
SIGNAL \Generate_ALU:2:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \Generate_ALU:2:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \Generate_ALU:3:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \Generate_ALU:3:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:2:ALU_INST|fa|cout~0_combout\ : std_logic;
SIGNAL \Generate_ALU:3:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \Generate_ALU:3:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \Generate_ALU:4:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \Generate_ALU:4:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:4:ALU_INST|xor_out~0_combout\ : std_logic;
SIGNAL \Generate_ALU:3:ALU_INST|fa|cout~0_combout\ : std_logic;
SIGNAL \Generate_ALU:4:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \Generate_ALU:4:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \Generate_ALU:5:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:4:ALU_INST|fa|cout~0_combout\ : std_logic;
SIGNAL \Generate_ALU:5:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \Generate_ALU:5:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:5:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \Generate_ALU:5:ALU_INST|fa|cout~0_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \Generate_ALU:6:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:6:ALU_INST|xor_out~0_combout\ : std_logic;
SIGNAL \Generate_ALU:6:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \Generate_ALU:6:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:6:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \Generate_ALU:7:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \Generate_ALU:7:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:6:ALU_INST|fa|cout~0_combout\ : std_logic;
SIGNAL \Generate_ALU:7:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \Generate_ALU:7:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \Generate_ALU:7:ALU_INST|fa|cout~0_combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \Generate_ALU:8:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \Generate_ALU:8:ALU_INST|xor_out~0_combout\ : std_logic;
SIGNAL \Generate_ALU:8:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \Generate_ALU:8:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:8:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \Generate_ALU:9:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:8:ALU_INST|fa|cout~0_combout\ : std_logic;
SIGNAL \Generate_ALU:9:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \Generate_ALU:9:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:9:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \Generate_ALU:10:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \Generate_ALU:10:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:9:ALU_INST|fa|cout~0_combout\ : std_logic;
SIGNAL \Generate_ALU:10:ALU_INST|xor_out~0_combout\ : std_logic;
SIGNAL \Generate_ALU:10:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \Generate_ALU:10:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \Generate_ALU:11:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \Generate_ALU:11:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:10:ALU_INST|fa|cout~0_combout\ : std_logic;
SIGNAL \Generate_ALU:11:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \Generate_ALU:11:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \Generate_ALU:12:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:12:ALU_INST|xor_out~0_combout\ : std_logic;
SIGNAL \Generate_ALU:11:ALU_INST|fa|cout~0_combout\ : std_logic;
SIGNAL \Generate_ALU:12:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \Generate_ALU:12:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:12:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \Generate_ALU:13:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \Generate_ALU:13:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:12:ALU_INST|fa|cout~0_combout\ : std_logic;
SIGNAL \Generate_ALU:13:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \Generate_ALU:13:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \Generate_ALU:14:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:14:ALU_INST|xor_out~0_combout\ : std_logic;
SIGNAL \Generate_ALU:13:ALU_INST|fa|cout~0_combout\ : std_logic;
SIGNAL \Generate_ALU:14:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \Generate_ALU:14:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:14:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \Generate_ALU:15:ALU_INST|mux_a|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:14:ALU_INST|fa|cout~0_combout\ : std_logic;
SIGNAL \Generate_ALU:15:ALU_INST|mux_result|Mux0~0_combout\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \Generate_ALU:15:ALU_INST|mux_b|output~0_combout\ : std_logic;
SIGNAL \Generate_ALU:15:ALU_INST|mux_result|Mux0~1_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
ww_opcode <= opcode;
result <= ww_result;
Ovfl <= ww_Ovfl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y17_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X6_Y10_N30
\result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_BIT0|mux_result|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:1:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N16
\result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:2:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:3:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\result[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:4:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\result[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:5:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\result[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:6:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\result[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:7:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\result[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:8:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\result[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:9:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\result[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:10:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\result[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:11:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\result[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:12:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X10_Y19_N9
\result[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:13:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\result[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:14:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\result[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Generate_ALU:15:ALU_INST|mux_result|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\Ovfl~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X6_Y10_N8
\b[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X10_Y15_N1
\opcode[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: IOIBUF_X10_Y15_N8
\opcode[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: IOIBUF_X10_Y15_N15
\opcode[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: LCCOMB_X7_Y9_N0
\ALU_BIT0|mux_result|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_BIT0|mux_result|Mux0~3_combout\ = (\opcode[1]~input_o\ & (\b[0]~input_o\ $ (((!\opcode[2]~input_o\) # (!\opcode[0]~input_o\))))) # (!\opcode[1]~input_o\ & ((\b[0]~input_o\ & ((!\opcode[2]~input_o\))) # (!\b[0]~input_o\ & (\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \ALU_BIT0|mux_result|Mux0~3_combout\);

-- Location: LCCOMB_X7_Y9_N14
\ALU_BIT0|mux_result|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_BIT0|mux_result|Mux0~2_combout\ = (\b[0]~input_o\ & ((\opcode[1]~input_o\ & ((!\opcode[2]~input_o\) # (!\opcode[0]~input_o\))) # (!\opcode[1]~input_o\ & (\opcode[0]~input_o\)))) # (!\b[0]~input_o\ & (!\opcode[1]~input_o\ & ((\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \ALU_BIT0|mux_result|Mux0~2_combout\);

-- Location: IOIBUF_X10_Y18_N22
\a[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X7_Y9_N10
\ALU_BIT0|mux_result|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_BIT0|mux_result|Mux0~4_combout\ = (\a[0]~input_o\ & (\ALU_BIT0|mux_result|Mux0~3_combout\)) # (!\a[0]~input_o\ & ((\ALU_BIT0|mux_result|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_BIT0|mux_result|Mux0~3_combout\,
	datac => \ALU_BIT0|mux_result|Mux0~2_combout\,
	datad => \a[0]~input_o\,
	combout => \ALU_BIT0|mux_result|Mux0~4_combout\);

-- Location: IOIBUF_X3_Y10_N1
\a[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X7_Y9_N26
\Generate_ALU:1:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:1:ALU_INST|mux_a|output~0_combout\ = \a[1]~input_o\ $ (((!\opcode[1]~input_o\ & \opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Generate_ALU:1:ALU_INST|mux_a|output~0_combout\);

-- Location: LCCOMB_X7_Y9_N28
\ALU_BIT0|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_BIT0|fa|cout~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ & ((\opcode[1]~input_o\) # (!\opcode[2]~input_o\)))) # (!\b[0]~input_o\ & ((\opcode[2]~input_o\ & (!\opcode[1]~input_o\ & !\a[0]~input_o\)) # (!\opcode[2]~input_o\ & (\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \ALU_BIT0|fa|cout~0_combout\);

-- Location: LCCOMB_X7_Y9_N6
\ALU_BIT0|fa|cout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_BIT0|fa|cout~1_combout\ = (\ALU_BIT0|fa|cout~0_combout\ & ((\b[0]~input_o\) # ((\opcode[0]~input_o\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \ALU_BIT0|fa|cout~0_combout\,
	combout => \ALU_BIT0|fa|cout~1_combout\);

-- Location: LCCOMB_X10_Y5_N16
\ControlCircuit|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ControlCircuit|Mux0~0_combout\ = ((\opcode[0]~input_o\ & \opcode[2]~input_o\)) # (!\opcode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \ControlCircuit|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y7_N0
\ControlCircuit|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ControlCircuit|Mux1~0_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\)) # (!\opcode[0]~input_o\ & (\opcode[1]~input_o\ & \opcode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[2]~input_o\,
	combout => \ControlCircuit|Mux1~0_combout\);

-- Location: LCCOMB_X7_Y9_N20
\Generate_ALU:1:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:1:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux0~0_combout\ & ((\ControlCircuit|Mux1~0_combout\))) # (!\ControlCircuit|Mux0~0_combout\ & (\ALU_BIT0|fa|cout~1_combout\ & !\ControlCircuit|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_BIT0|fa|cout~1_combout\,
	datab => \ControlCircuit|Mux0~0_combout\,
	datac => \ControlCircuit|Mux1~0_combout\,
	combout => \Generate_ALU:1:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: IOIBUF_X1_Y10_N29
\b[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X7_Y9_N24
\Generate_ALU:1:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:1:ALU_INST|mux_b|output~0_combout\ = \b[1]~input_o\ $ (((\opcode[1]~input_o\ & (\opcode[0]~input_o\ & !\opcode[2]~input_o\)) # (!\opcode[1]~input_o\ & ((\opcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Generate_ALU:1:ALU_INST|mux_b|output~0_combout\);

-- Location: LCCOMB_X7_Y9_N30
\Generate_ALU:1:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:1:ALU_INST|mux_result|Mux0~1_combout\ = (\ControlCircuit|Mux0~0_combout\ & ((\Generate_ALU:1:ALU_INST|mux_a|output~0_combout\ & ((\Generate_ALU:1:ALU_INST|mux_result|Mux0~0_combout\) # (\Generate_ALU:1:ALU_INST|mux_b|output~0_combout\))) # 
-- (!\Generate_ALU:1:ALU_INST|mux_a|output~0_combout\ & (\Generate_ALU:1:ALU_INST|mux_result|Mux0~0_combout\ & \Generate_ALU:1:ALU_INST|mux_b|output~0_combout\)))) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:1:ALU_INST|mux_a|output~0_combout\ $ 
-- (\Generate_ALU:1:ALU_INST|mux_result|Mux0~0_combout\ $ (\Generate_ALU:1:ALU_INST|mux_b|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:1:ALU_INST|mux_a|output~0_combout\,
	datab => \Generate_ALU:1:ALU_INST|mux_result|Mux0~0_combout\,
	datac => \ControlCircuit|Mux0~0_combout\,
	datad => \Generate_ALU:1:ALU_INST|mux_b|output~0_combout\,
	combout => \Generate_ALU:1:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: IOIBUF_X1_Y10_N1
\b[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X7_Y9_N8
\Generate_ALU:2:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:2:ALU_INST|mux_b|output~0_combout\ = \b[2]~input_o\ $ (((\opcode[1]~input_o\ & (\opcode[0]~input_o\ & !\opcode[2]~input_o\)) # (!\opcode[1]~input_o\ & ((\opcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Generate_ALU:2:ALU_INST|mux_b|output~0_combout\);

-- Location: IOIBUF_X6_Y10_N1
\a[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X7_Y9_N18
\Generate_ALU:2:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:2:ALU_INST|mux_a|output~0_combout\ = \a[2]~input_o\ $ (((!\opcode[1]~input_o\ & \opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Generate_ALU:2:ALU_INST|mux_a|output~0_combout\);

-- Location: LCCOMB_X10_Y6_N16
\ControlCircuit|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ControlCircuit|Mux3~0_combout\ = (\opcode[2]~input_o\ & (!\opcode[1]~input_o\)) # (!\opcode[2]~input_o\ & (\opcode[1]~input_o\ & \opcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \ControlCircuit|Mux3~0_combout\);

-- Location: LCCOMB_X7_Y9_N22
\Generate_ALU:2:ALU_INST|xor_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:2:ALU_INST|xor_out~0_combout\ = \b[2]~input_o\ $ (\Generate_ALU:2:ALU_INST|mux_a|output~0_combout\ $ (\ControlCircuit|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Generate_ALU:2:ALU_INST|mux_a|output~0_combout\,
	datac => \ControlCircuit|Mux3~0_combout\,
	combout => \Generate_ALU:2:ALU_INST|xor_out~0_combout\);

-- Location: LCCOMB_X7_Y9_N12
\Generate_ALU:1:ALU_INST|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:1:ALU_INST|fa|cout~0_combout\ = (\Generate_ALU:1:ALU_INST|mux_a|output~0_combout\ & ((\ALU_BIT0|fa|cout~1_combout\) # (\b[1]~input_o\ $ (\ControlCircuit|Mux3~0_combout\)))) # (!\Generate_ALU:1:ALU_INST|mux_a|output~0_combout\ & 
-- (\ALU_BIT0|fa|cout~1_combout\ & (\b[1]~input_o\ $ (\ControlCircuit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:1:ALU_INST|mux_a|output~0_combout\,
	datab => \b[1]~input_o\,
	datac => \ControlCircuit|Mux3~0_combout\,
	datad => \ALU_BIT0|fa|cout~1_combout\,
	combout => \Generate_ALU:1:ALU_INST|fa|cout~0_combout\);

-- Location: LCCOMB_X7_Y9_N16
\Generate_ALU:2:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:2:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux0~0_combout\ & (((\ControlCircuit|Mux1~0_combout\)))) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:2:ALU_INST|xor_out~0_combout\ $ (((!\ControlCircuit|Mux1~0_combout\ & 
-- \Generate_ALU:1:ALU_INST|fa|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:2:ALU_INST|xor_out~0_combout\,
	datab => \ControlCircuit|Mux1~0_combout\,
	datac => \ControlCircuit|Mux0~0_combout\,
	datad => \Generate_ALU:1:ALU_INST|fa|cout~0_combout\,
	combout => \Generate_ALU:2:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: LCCOMB_X7_Y9_N2
\Generate_ALU:2:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:2:ALU_INST|mux_result|Mux0~1_combout\ = (\Generate_ALU:2:ALU_INST|mux_b|output~0_combout\ & ((\Generate_ALU:2:ALU_INST|mux_result|Mux0~0_combout\) # ((\Generate_ALU:2:ALU_INST|mux_a|output~0_combout\ & \ControlCircuit|Mux0~0_combout\)))) # 
-- (!\Generate_ALU:2:ALU_INST|mux_b|output~0_combout\ & (\Generate_ALU:2:ALU_INST|mux_result|Mux0~0_combout\ & ((\Generate_ALU:2:ALU_INST|mux_a|output~0_combout\) # (!\ControlCircuit|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:2:ALU_INST|mux_b|output~0_combout\,
	datab => \Generate_ALU:2:ALU_INST|mux_a|output~0_combout\,
	datac => \ControlCircuit|Mux0~0_combout\,
	datad => \Generate_ALU:2:ALU_INST|mux_result|Mux0~0_combout\,
	combout => \Generate_ALU:2:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: IOIBUF_X0_Y5_N8
\b[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X10_Y5_N10
\Generate_ALU:3:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:3:ALU_INST|mux_b|output~0_combout\ = \b[3]~input_o\ $ (((\opcode[1]~input_o\ & (\opcode[0]~input_o\ & !\opcode[2]~input_o\)) # (!\opcode[1]~input_o\ & ((\opcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \b[3]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Generate_ALU:3:ALU_INST|mux_b|output~0_combout\);

-- Location: IOIBUF_X11_Y0_N22
\a[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X10_Y5_N20
\Generate_ALU:3:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:3:ALU_INST|mux_a|output~0_combout\ = \a[3]~input_o\ $ (((\opcode[2]~input_o\ & !\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[2]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Generate_ALU:3:ALU_INST|mux_a|output~0_combout\);

-- Location: LCCOMB_X7_Y9_N4
\Generate_ALU:2:ALU_INST|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:2:ALU_INST|fa|cout~0_combout\ = (\Generate_ALU:2:ALU_INST|mux_a|output~0_combout\ & ((\Generate_ALU:1:ALU_INST|fa|cout~0_combout\) # (\b[2]~input_o\ $ (\ControlCircuit|Mux3~0_combout\)))) # (!\Generate_ALU:2:ALU_INST|mux_a|output~0_combout\ 
-- & (\Generate_ALU:1:ALU_INST|fa|cout~0_combout\ & (\b[2]~input_o\ $ (\ControlCircuit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Generate_ALU:2:ALU_INST|mux_a|output~0_combout\,
	datac => \ControlCircuit|Mux3~0_combout\,
	datad => \Generate_ALU:1:ALU_INST|fa|cout~0_combout\,
	combout => \Generate_ALU:2:ALU_INST|fa|cout~0_combout\);

-- Location: LCCOMB_X10_Y5_N30
\Generate_ALU:3:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:3:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux1~0_combout\ & ((\ControlCircuit|Mux0~0_combout\))) # (!\ControlCircuit|Mux1~0_combout\ & (\Generate_ALU:2:ALU_INST|fa|cout~0_combout\ & !\ControlCircuit|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlCircuit|Mux1~0_combout\,
	datac => \Generate_ALU:2:ALU_INST|fa|cout~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:3:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: LCCOMB_X10_Y5_N24
\Generate_ALU:3:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:3:ALU_INST|mux_result|Mux0~1_combout\ = (\ControlCircuit|Mux0~0_combout\ & ((\Generate_ALU:3:ALU_INST|mux_b|output~0_combout\ & ((\Generate_ALU:3:ALU_INST|mux_a|output~0_combout\) # (\Generate_ALU:3:ALU_INST|mux_result|Mux0~0_combout\))) # 
-- (!\Generate_ALU:3:ALU_INST|mux_b|output~0_combout\ & (\Generate_ALU:3:ALU_INST|mux_a|output~0_combout\ & \Generate_ALU:3:ALU_INST|mux_result|Mux0~0_combout\)))) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:3:ALU_INST|mux_b|output~0_combout\ $ 
-- (\Generate_ALU:3:ALU_INST|mux_a|output~0_combout\ $ (\Generate_ALU:3:ALU_INST|mux_result|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:3:ALU_INST|mux_b|output~0_combout\,
	datab => \Generate_ALU:3:ALU_INST|mux_a|output~0_combout\,
	datac => \Generate_ALU:3:ALU_INST|mux_result|Mux0~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:3:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: IOIBUF_X11_Y0_N29
\b[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X10_Y5_N18
\Generate_ALU:4:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:4:ALU_INST|mux_b|output~0_combout\ = \b[4]~input_o\ $ (((\opcode[2]~input_o\ & ((!\opcode[1]~input_o\))) # (!\opcode[2]~input_o\ & (\opcode[0]~input_o\ & \opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \b[4]~input_o\,
	combout => \Generate_ALU:4:ALU_INST|mux_b|output~0_combout\);

-- Location: IOIBUF_X10_Y15_N22
\a[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X9_Y7_N10
\Generate_ALU:4:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:4:ALU_INST|mux_a|output~0_combout\ = \a[4]~input_o\ $ (((!\opcode[1]~input_o\ & \opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \a[4]~input_o\,
	combout => \Generate_ALU:4:ALU_INST|mux_a|output~0_combout\);

-- Location: LCCOMB_X10_Y5_N14
\Generate_ALU:4:ALU_INST|xor_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:4:ALU_INST|xor_out~0_combout\ = \Generate_ALU:4:ALU_INST|mux_a|output~0_combout\ $ (\ControlCircuit|Mux3~0_combout\ $ (\b[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Generate_ALU:4:ALU_INST|mux_a|output~0_combout\,
	datac => \ControlCircuit|Mux3~0_combout\,
	datad => \b[4]~input_o\,
	combout => \Generate_ALU:4:ALU_INST|xor_out~0_combout\);

-- Location: LCCOMB_X10_Y5_N4
\Generate_ALU:3:ALU_INST|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:3:ALU_INST|fa|cout~0_combout\ = (\Generate_ALU:2:ALU_INST|fa|cout~0_combout\ & ((\Generate_ALU:3:ALU_INST|mux_a|output~0_combout\) # (\b[3]~input_o\ $ (\ControlCircuit|Mux3~0_combout\)))) # (!\Generate_ALU:2:ALU_INST|fa|cout~0_combout\ & 
-- (\Generate_ALU:3:ALU_INST|mux_a|output~0_combout\ & (\b[3]~input_o\ $ (\ControlCircuit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Generate_ALU:2:ALU_INST|fa|cout~0_combout\,
	datac => \ControlCircuit|Mux3~0_combout\,
	datad => \Generate_ALU:3:ALU_INST|mux_a|output~0_combout\,
	combout => \Generate_ALU:3:ALU_INST|fa|cout~0_combout\);

-- Location: LCCOMB_X10_Y5_N8
\Generate_ALU:4:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:4:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux0~0_combout\ & (\ControlCircuit|Mux1~0_combout\)) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:4:ALU_INST|xor_out~0_combout\ $ (((!\ControlCircuit|Mux1~0_combout\ & 
-- \Generate_ALU:3:ALU_INST|fa|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlCircuit|Mux1~0_combout\,
	datab => \Generate_ALU:4:ALU_INST|xor_out~0_combout\,
	datac => \Generate_ALU:3:ALU_INST|fa|cout~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:4:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: LCCOMB_X10_Y5_N26
\Generate_ALU:4:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:4:ALU_INST|mux_result|Mux0~1_combout\ = (\ControlCircuit|Mux0~0_combout\ & ((\Generate_ALU:4:ALU_INST|mux_b|output~0_combout\ & ((\Generate_ALU:4:ALU_INST|mux_result|Mux0~0_combout\) # (\Generate_ALU:4:ALU_INST|mux_a|output~0_combout\))) # 
-- (!\Generate_ALU:4:ALU_INST|mux_b|output~0_combout\ & (\Generate_ALU:4:ALU_INST|mux_result|Mux0~0_combout\ & \Generate_ALU:4:ALU_INST|mux_a|output~0_combout\)))) # (!\ControlCircuit|Mux0~0_combout\ & 
-- (((\Generate_ALU:4:ALU_INST|mux_result|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlCircuit|Mux0~0_combout\,
	datab => \Generate_ALU:4:ALU_INST|mux_b|output~0_combout\,
	datac => \Generate_ALU:4:ALU_INST|mux_result|Mux0~0_combout\,
	datad => \Generate_ALU:4:ALU_INST|mux_a|output~0_combout\,
	combout => \Generate_ALU:4:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: IOIBUF_X9_Y0_N15
\b[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X10_Y5_N12
\Generate_ALU:5:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:5:ALU_INST|mux_b|output~0_combout\ = \b[5]~input_o\ $ (((\opcode[1]~input_o\ & (!\opcode[2]~input_o\ & \opcode[0]~input_o\)) # (!\opcode[1]~input_o\ & (\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \b[5]~input_o\,
	combout => \Generate_ALU:5:ALU_INST|mux_b|output~0_combout\);

-- Location: LCCOMB_X10_Y5_N0
\Generate_ALU:4:ALU_INST|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:4:ALU_INST|fa|cout~0_combout\ = (\Generate_ALU:4:ALU_INST|mux_a|output~0_combout\ & ((\Generate_ALU:3:ALU_INST|fa|cout~0_combout\) # (\ControlCircuit|Mux3~0_combout\ $ (\b[4]~input_o\)))) # (!\Generate_ALU:4:ALU_INST|mux_a|output~0_combout\ 
-- & (\Generate_ALU:3:ALU_INST|fa|cout~0_combout\ & (\ControlCircuit|Mux3~0_combout\ $ (\b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlCircuit|Mux3~0_combout\,
	datab => \Generate_ALU:4:ALU_INST|mux_a|output~0_combout\,
	datac => \Generate_ALU:3:ALU_INST|fa|cout~0_combout\,
	datad => \b[4]~input_o\,
	combout => \Generate_ALU:4:ALU_INST|fa|cout~0_combout\);

-- Location: LCCOMB_X10_Y5_N2
\Generate_ALU:5:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:5:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux1~0_combout\ & ((\ControlCircuit|Mux0~0_combout\))) # (!\ControlCircuit|Mux1~0_combout\ & (\Generate_ALU:4:ALU_INST|fa|cout~0_combout\ & !\ControlCircuit|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlCircuit|Mux1~0_combout\,
	datab => \Generate_ALU:4:ALU_INST|fa|cout~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:5:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: IOIBUF_X11_Y0_N15
\a[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X10_Y5_N6
\Generate_ALU:5:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:5:ALU_INST|mux_a|output~0_combout\ = \a[5]~input_o\ $ (((\opcode[2]~input_o\ & !\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[1]~input_o\,
	combout => \Generate_ALU:5:ALU_INST|mux_a|output~0_combout\);

-- Location: LCCOMB_X10_Y5_N28
\Generate_ALU:5:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:5:ALU_INST|mux_result|Mux0~1_combout\ = (\ControlCircuit|Mux0~0_combout\ & ((\Generate_ALU:5:ALU_INST|mux_b|output~0_combout\ & ((\Generate_ALU:5:ALU_INST|mux_result|Mux0~0_combout\) # (\Generate_ALU:5:ALU_INST|mux_a|output~0_combout\))) # 
-- (!\Generate_ALU:5:ALU_INST|mux_b|output~0_combout\ & (\Generate_ALU:5:ALU_INST|mux_result|Mux0~0_combout\ & \Generate_ALU:5:ALU_INST|mux_a|output~0_combout\)))) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:5:ALU_INST|mux_b|output~0_combout\ $ 
-- (\Generate_ALU:5:ALU_INST|mux_result|Mux0~0_combout\ $ (\Generate_ALU:5:ALU_INST|mux_a|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:5:ALU_INST|mux_b|output~0_combout\,
	datab => \Generate_ALU:5:ALU_INST|mux_result|Mux0~0_combout\,
	datac => \Generate_ALU:5:ALU_INST|mux_a|output~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:5:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: LCCOMB_X10_Y5_N22
\Generate_ALU:5:ALU_INST|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:5:ALU_INST|fa|cout~0_combout\ = (\Generate_ALU:5:ALU_INST|mux_a|output~0_combout\ & ((\Generate_ALU:4:ALU_INST|fa|cout~0_combout\) # (\ControlCircuit|Mux3~0_combout\ $ (\b[5]~input_o\)))) # (!\Generate_ALU:5:ALU_INST|mux_a|output~0_combout\ 
-- & (\Generate_ALU:4:ALU_INST|fa|cout~0_combout\ & (\ControlCircuit|Mux3~0_combout\ $ (\b[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:5:ALU_INST|mux_a|output~0_combout\,
	datab => \Generate_ALU:4:ALU_INST|fa|cout~0_combout\,
	datac => \ControlCircuit|Mux3~0_combout\,
	datad => \b[5]~input_o\,
	combout => \Generate_ALU:5:ALU_INST|fa|cout~0_combout\);

-- Location: IOIBUF_X1_Y10_N15
\b[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X6_Y10_N22
\a[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X9_Y9_N26
\Generate_ALU:6:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:6:ALU_INST|mux_a|output~0_combout\ = \a[6]~input_o\ $ (((!\opcode[1]~input_o\ & \opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Generate_ALU:6:ALU_INST|mux_a|output~0_combout\);

-- Location: LCCOMB_X9_Y9_N4
\Generate_ALU:6:ALU_INST|xor_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:6:ALU_INST|xor_out~0_combout\ = \b[6]~input_o\ $ (\Generate_ALU:6:ALU_INST|mux_a|output~0_combout\ $ (\ControlCircuit|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datac => \Generate_ALU:6:ALU_INST|mux_a|output~0_combout\,
	datad => \ControlCircuit|Mux3~0_combout\,
	combout => \Generate_ALU:6:ALU_INST|xor_out~0_combout\);

-- Location: LCCOMB_X9_Y9_N6
\Generate_ALU:6:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:6:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux0~0_combout\ & (\ControlCircuit|Mux1~0_combout\)) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:6:ALU_INST|xor_out~0_combout\ $ (((!\ControlCircuit|Mux1~0_combout\ & 
-- \Generate_ALU:5:ALU_INST|fa|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlCircuit|Mux1~0_combout\,
	datab => \Generate_ALU:5:ALU_INST|fa|cout~0_combout\,
	datac => \Generate_ALU:6:ALU_INST|xor_out~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:6:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y9_N24
\Generate_ALU:6:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:6:ALU_INST|mux_b|output~0_combout\ = \b[6]~input_o\ $ (((\opcode[1]~input_o\ & (\opcode[0]~input_o\ & !\opcode[2]~input_o\)) # (!\opcode[1]~input_o\ & ((\opcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Generate_ALU:6:ALU_INST|mux_b|output~0_combout\);

-- Location: LCCOMB_X9_Y9_N16
\Generate_ALU:6:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:6:ALU_INST|mux_result|Mux0~1_combout\ = (\Generate_ALU:6:ALU_INST|mux_result|Mux0~0_combout\ & ((\Generate_ALU:6:ALU_INST|mux_b|output~0_combout\) # ((\Generate_ALU:6:ALU_INST|mux_a|output~0_combout\) # (!\ControlCircuit|Mux0~0_combout\)))) 
-- # (!\Generate_ALU:6:ALU_INST|mux_result|Mux0~0_combout\ & (\Generate_ALU:6:ALU_INST|mux_b|output~0_combout\ & (\Generate_ALU:6:ALU_INST|mux_a|output~0_combout\ & \ControlCircuit|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:6:ALU_INST|mux_result|Mux0~0_combout\,
	datab => \Generate_ALU:6:ALU_INST|mux_b|output~0_combout\,
	datac => \Generate_ALU:6:ALU_INST|mux_a|output~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:6:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: IOIBUF_X10_Y18_N8
\b[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X9_Y9_N10
\Generate_ALU:7:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:7:ALU_INST|mux_b|output~0_combout\ = \b[7]~input_o\ $ (((\opcode[1]~input_o\ & (\opcode[0]~input_o\ & !\opcode[2]~input_o\)) # (!\opcode[1]~input_o\ & ((\opcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \b[7]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Generate_ALU:7:ALU_INST|mux_b|output~0_combout\);

-- Location: IOIBUF_X3_Y10_N8
\a[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X9_Y9_N28
\Generate_ALU:7:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:7:ALU_INST|mux_a|output~0_combout\ = \a[7]~input_o\ $ (((!\opcode[1]~input_o\ & \opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[7]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Generate_ALU:7:ALU_INST|mux_a|output~0_combout\);

-- Location: LCCOMB_X9_Y9_N22
\Generate_ALU:6:ALU_INST|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:6:ALU_INST|fa|cout~0_combout\ = (\Generate_ALU:5:ALU_INST|fa|cout~0_combout\ & ((\Generate_ALU:6:ALU_INST|mux_a|output~0_combout\) # (\b[6]~input_o\ $ (\ControlCircuit|Mux3~0_combout\)))) # (!\Generate_ALU:5:ALU_INST|fa|cout~0_combout\ & 
-- (\Generate_ALU:6:ALU_INST|mux_a|output~0_combout\ & (\b[6]~input_o\ $ (\ControlCircuit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \Generate_ALU:5:ALU_INST|fa|cout~0_combout\,
	datac => \Generate_ALU:6:ALU_INST|mux_a|output~0_combout\,
	datad => \ControlCircuit|Mux3~0_combout\,
	combout => \Generate_ALU:6:ALU_INST|fa|cout~0_combout\);

-- Location: LCCOMB_X9_Y9_N8
\Generate_ALU:7:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:7:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux1~0_combout\ & ((\ControlCircuit|Mux0~0_combout\))) # (!\ControlCircuit|Mux1~0_combout\ & (\Generate_ALU:6:ALU_INST|fa|cout~0_combout\ & !\ControlCircuit|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlCircuit|Mux1~0_combout\,
	datac => \Generate_ALU:6:ALU_INST|fa|cout~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:7:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y9_N18
\Generate_ALU:7:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:7:ALU_INST|mux_result|Mux0~1_combout\ = (\ControlCircuit|Mux0~0_combout\ & ((\Generate_ALU:7:ALU_INST|mux_b|output~0_combout\ & ((\Generate_ALU:7:ALU_INST|mux_a|output~0_combout\) # (\Generate_ALU:7:ALU_INST|mux_result|Mux0~0_combout\))) # 
-- (!\Generate_ALU:7:ALU_INST|mux_b|output~0_combout\ & (\Generate_ALU:7:ALU_INST|mux_a|output~0_combout\ & \Generate_ALU:7:ALU_INST|mux_result|Mux0~0_combout\)))) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:7:ALU_INST|mux_b|output~0_combout\ $ 
-- (\Generate_ALU:7:ALU_INST|mux_a|output~0_combout\ $ (\Generate_ALU:7:ALU_INST|mux_result|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:7:ALU_INST|mux_b|output~0_combout\,
	datab => \Generate_ALU:7:ALU_INST|mux_a|output~0_combout\,
	datac => \Generate_ALU:7:ALU_INST|mux_result|Mux0~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:7:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: LCCOMB_X9_Y9_N12
\Generate_ALU:7:ALU_INST|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:7:ALU_INST|fa|cout~0_combout\ = (\Generate_ALU:6:ALU_INST|fa|cout~0_combout\ & ((\Generate_ALU:7:ALU_INST|mux_a|output~0_combout\) # (\b[7]~input_o\ $ (\ControlCircuit|Mux3~0_combout\)))) # (!\Generate_ALU:6:ALU_INST|fa|cout~0_combout\ & 
-- (\Generate_ALU:7:ALU_INST|mux_a|output~0_combout\ & (\b[7]~input_o\ $ (\ControlCircuit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:6:ALU_INST|fa|cout~0_combout\,
	datab => \Generate_ALU:7:ALU_INST|mux_a|output~0_combout\,
	datac => \b[7]~input_o\,
	datad => \ControlCircuit|Mux3~0_combout\,
	combout => \Generate_ALU:7:ALU_INST|fa|cout~0_combout\);

-- Location: IOIBUF_X0_Y4_N8
\a[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X7_Y4_N18
\Generate_ALU:8:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:8:ALU_INST|mux_a|output~0_combout\ = \a[8]~input_o\ $ (((!\opcode[1]~input_o\ & \opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \a[8]~input_o\,
	combout => \Generate_ALU:8:ALU_INST|mux_a|output~0_combout\);

-- Location: IOIBUF_X6_Y0_N8
\b[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: LCCOMB_X7_Y4_N28
\Generate_ALU:8:ALU_INST|xor_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:8:ALU_INST|xor_out~0_combout\ = \Generate_ALU:8:ALU_INST|mux_a|output~0_combout\ $ (\b[8]~input_o\ $ (\ControlCircuit|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Generate_ALU:8:ALU_INST|mux_a|output~0_combout\,
	datac => \b[8]~input_o\,
	datad => \ControlCircuit|Mux3~0_combout\,
	combout => \Generate_ALU:8:ALU_INST|xor_out~0_combout\);

-- Location: LCCOMB_X7_Y4_N6
\Generate_ALU:8:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:8:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux0~0_combout\ & (((\ControlCircuit|Mux1~0_combout\)))) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:8:ALU_INST|xor_out~0_combout\ $ 
-- (((\Generate_ALU:7:ALU_INST|fa|cout~0_combout\ & !\ControlCircuit|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:7:ALU_INST|fa|cout~0_combout\,
	datab => \Generate_ALU:8:ALU_INST|xor_out~0_combout\,
	datac => \ControlCircuit|Mux1~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:8:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: LCCOMB_X7_Y4_N24
\Generate_ALU:8:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:8:ALU_INST|mux_b|output~0_combout\ = \b[8]~input_o\ $ (((\opcode[1]~input_o\ & (!\opcode[2]~input_o\ & \opcode[0]~input_o\)) # (!\opcode[1]~input_o\ & (\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \b[8]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Generate_ALU:8:ALU_INST|mux_b|output~0_combout\);

-- Location: LCCOMB_X7_Y4_N16
\Generate_ALU:8:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:8:ALU_INST|mux_result|Mux0~1_combout\ = (\Generate_ALU:8:ALU_INST|mux_result|Mux0~0_combout\ & ((\Generate_ALU:8:ALU_INST|mux_b|output~0_combout\) # ((\Generate_ALU:8:ALU_INST|mux_a|output~0_combout\) # (!\ControlCircuit|Mux0~0_combout\)))) 
-- # (!\Generate_ALU:8:ALU_INST|mux_result|Mux0~0_combout\ & (\Generate_ALU:8:ALU_INST|mux_b|output~0_combout\ & (\Generate_ALU:8:ALU_INST|mux_a|output~0_combout\ & \ControlCircuit|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:8:ALU_INST|mux_result|Mux0~0_combout\,
	datab => \Generate_ALU:8:ALU_INST|mux_b|output~0_combout\,
	datac => \Generate_ALU:8:ALU_INST|mux_a|output~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:8:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: IOIBUF_X6_Y0_N22
\a[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: LCCOMB_X7_Y4_N12
\Generate_ALU:9:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:9:ALU_INST|mux_a|output~0_combout\ = \a[9]~input_o\ $ (((!\opcode[1]~input_o\ & \opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \a[9]~input_o\,
	combout => \Generate_ALU:9:ALU_INST|mux_a|output~0_combout\);

-- Location: LCCOMB_X7_Y4_N14
\Generate_ALU:8:ALU_INST|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:8:ALU_INST|fa|cout~0_combout\ = (\Generate_ALU:7:ALU_INST|fa|cout~0_combout\ & ((\Generate_ALU:8:ALU_INST|mux_a|output~0_combout\) # (\b[8]~input_o\ $ (\ControlCircuit|Mux3~0_combout\)))) # (!\Generate_ALU:7:ALU_INST|fa|cout~0_combout\ & 
-- (\Generate_ALU:8:ALU_INST|mux_a|output~0_combout\ & (\b[8]~input_o\ $ (\ControlCircuit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:7:ALU_INST|fa|cout~0_combout\,
	datab => \Generate_ALU:8:ALU_INST|mux_a|output~0_combout\,
	datac => \b[8]~input_o\,
	datad => \ControlCircuit|Mux3~0_combout\,
	combout => \Generate_ALU:8:ALU_INST|fa|cout~0_combout\);

-- Location: LCCOMB_X7_Y4_N8
\Generate_ALU:9:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:9:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux1~0_combout\ & ((\ControlCircuit|Mux0~0_combout\))) # (!\ControlCircuit|Mux1~0_combout\ & (\Generate_ALU:8:ALU_INST|fa|cout~0_combout\ & !\ControlCircuit|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlCircuit|Mux1~0_combout\,
	datac => \Generate_ALU:8:ALU_INST|fa|cout~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:9:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: IOIBUF_X3_Y10_N29
\b[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: LCCOMB_X7_Y4_N26
\Generate_ALU:9:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:9:ALU_INST|mux_b|output~0_combout\ = \b[9]~input_o\ $ (((\opcode[1]~input_o\ & (!\opcode[2]~input_o\ & \opcode[0]~input_o\)) # (!\opcode[1]~input_o\ & (\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \b[9]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Generate_ALU:9:ALU_INST|mux_b|output~0_combout\);

-- Location: LCCOMB_X7_Y4_N10
\Generate_ALU:9:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:9:ALU_INST|mux_result|Mux0~1_combout\ = (\ControlCircuit|Mux0~0_combout\ & ((\Generate_ALU:9:ALU_INST|mux_a|output~0_combout\ & ((\Generate_ALU:9:ALU_INST|mux_result|Mux0~0_combout\) # (\Generate_ALU:9:ALU_INST|mux_b|output~0_combout\))) # 
-- (!\Generate_ALU:9:ALU_INST|mux_a|output~0_combout\ & (\Generate_ALU:9:ALU_INST|mux_result|Mux0~0_combout\ & \Generate_ALU:9:ALU_INST|mux_b|output~0_combout\)))) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:9:ALU_INST|mux_a|output~0_combout\ $ 
-- (\Generate_ALU:9:ALU_INST|mux_result|Mux0~0_combout\ $ (\Generate_ALU:9:ALU_INST|mux_b|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:9:ALU_INST|mux_a|output~0_combout\,
	datab => \Generate_ALU:9:ALU_INST|mux_result|Mux0~0_combout\,
	datac => \Generate_ALU:9:ALU_INST|mux_b|output~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:9:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: IOIBUF_X9_Y0_N8
\a[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X7_Y4_N4
\Generate_ALU:10:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:10:ALU_INST|mux_a|output~0_combout\ = \a[10]~input_o\ $ (((!\opcode[1]~input_o\ & \opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \a[10]~input_o\,
	combout => \Generate_ALU:10:ALU_INST|mux_a|output~0_combout\);

-- Location: IOIBUF_X0_Y7_N15
\b[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: LCCOMB_X7_Y7_N0
\Generate_ALU:10:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:10:ALU_INST|mux_b|output~0_combout\ = \b[10]~input_o\ $ (((\opcode[2]~input_o\ & (!\opcode[1]~input_o\)) # (!\opcode[2]~input_o\ & (\opcode[1]~input_o\ & \opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \b[10]~input_o\,
	combout => \Generate_ALU:10:ALU_INST|mux_b|output~0_combout\);

-- Location: LCCOMB_X7_Y4_N22
\Generate_ALU:9:ALU_INST|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:9:ALU_INST|fa|cout~0_combout\ = (\Generate_ALU:9:ALU_INST|mux_a|output~0_combout\ & ((\Generate_ALU:8:ALU_INST|fa|cout~0_combout\) # (\b[9]~input_o\ $ (\ControlCircuit|Mux3~0_combout\)))) # (!\Generate_ALU:9:ALU_INST|mux_a|output~0_combout\ 
-- & (\Generate_ALU:8:ALU_INST|fa|cout~0_combout\ & (\b[9]~input_o\ $ (\ControlCircuit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:9:ALU_INST|mux_a|output~0_combout\,
	datab => \b[9]~input_o\,
	datac => \Generate_ALU:8:ALU_INST|fa|cout~0_combout\,
	datad => \ControlCircuit|Mux3~0_combout\,
	combout => \Generate_ALU:9:ALU_INST|fa|cout~0_combout\);

-- Location: LCCOMB_X7_Y7_N2
\Generate_ALU:10:ALU_INST|xor_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:10:ALU_INST|xor_out~0_combout\ = \b[10]~input_o\ $ (\ControlCircuit|Mux3~0_combout\ $ (\Generate_ALU:10:ALU_INST|mux_a|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[10]~input_o\,
	datac => \ControlCircuit|Mux3~0_combout\,
	datad => \Generate_ALU:10:ALU_INST|mux_a|output~0_combout\,
	combout => \Generate_ALU:10:ALU_INST|xor_out~0_combout\);

-- Location: LCCOMB_X7_Y7_N4
\Generate_ALU:10:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:10:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux0~0_combout\ & (((\ControlCircuit|Mux1~0_combout\)))) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:10:ALU_INST|xor_out~0_combout\ $ 
-- (((\Generate_ALU:9:ALU_INST|fa|cout~0_combout\ & !\ControlCircuit|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:9:ALU_INST|fa|cout~0_combout\,
	datab => \Generate_ALU:10:ALU_INST|xor_out~0_combout\,
	datac => \ControlCircuit|Mux1~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:10:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: LCCOMB_X7_Y7_N14
\Generate_ALU:10:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:10:ALU_INST|mux_result|Mux0~1_combout\ = (\Generate_ALU:10:ALU_INST|mux_a|output~0_combout\ & ((\Generate_ALU:10:ALU_INST|mux_result|Mux0~0_combout\) # ((\Generate_ALU:10:ALU_INST|mux_b|output~0_combout\ & \ControlCircuit|Mux0~0_combout\)))) 
-- # (!\Generate_ALU:10:ALU_INST|mux_a|output~0_combout\ & (\Generate_ALU:10:ALU_INST|mux_result|Mux0~0_combout\ & ((\Generate_ALU:10:ALU_INST|mux_b|output~0_combout\) # (!\ControlCircuit|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:10:ALU_INST|mux_a|output~0_combout\,
	datab => \Generate_ALU:10:ALU_INST|mux_b|output~0_combout\,
	datac => \Generate_ALU:10:ALU_INST|mux_result|Mux0~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:10:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: IOIBUF_X1_Y10_N22
\a[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X7_Y7_N10
\Generate_ALU:11:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:11:ALU_INST|mux_a|output~0_combout\ = \a[11]~input_o\ $ (((\opcode[2]~input_o\ & !\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \a[11]~input_o\,
	combout => \Generate_ALU:11:ALU_INST|mux_a|output~0_combout\);

-- Location: IOIBUF_X0_Y3_N22
\b[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: LCCOMB_X7_Y7_N8
\Generate_ALU:11:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:11:ALU_INST|mux_b|output~0_combout\ = \b[11]~input_o\ $ (((\opcode[2]~input_o\ & ((!\opcode[1]~input_o\))) # (!\opcode[2]~input_o\ & (\opcode[0]~input_o\ & \opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[11]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Generate_ALU:11:ALU_INST|mux_b|output~0_combout\);

-- Location: LCCOMB_X7_Y7_N20
\Generate_ALU:10:ALU_INST|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:10:ALU_INST|fa|cout~0_combout\ = (\Generate_ALU:10:ALU_INST|mux_a|output~0_combout\ & ((\Generate_ALU:9:ALU_INST|fa|cout~0_combout\) # (\b[10]~input_o\ $ (\ControlCircuit|Mux3~0_combout\)))) # 
-- (!\Generate_ALU:10:ALU_INST|mux_a|output~0_combout\ & (\Generate_ALU:9:ALU_INST|fa|cout~0_combout\ & (\b[10]~input_o\ $ (\ControlCircuit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:10:ALU_INST|mux_a|output~0_combout\,
	datab => \b[10]~input_o\,
	datac => \ControlCircuit|Mux3~0_combout\,
	datad => \Generate_ALU:9:ALU_INST|fa|cout~0_combout\,
	combout => \Generate_ALU:10:ALU_INST|fa|cout~0_combout\);

-- Location: LCCOMB_X7_Y7_N6
\Generate_ALU:11:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:11:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux1~0_combout\ & ((\ControlCircuit|Mux0~0_combout\))) # (!\ControlCircuit|Mux1~0_combout\ & (\Generate_ALU:10:ALU_INST|fa|cout~0_combout\ & !\ControlCircuit|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Generate_ALU:10:ALU_INST|fa|cout~0_combout\,
	datac => \ControlCircuit|Mux1~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:11:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: LCCOMB_X7_Y7_N24
\Generate_ALU:11:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:11:ALU_INST|mux_result|Mux0~1_combout\ = (\ControlCircuit|Mux0~0_combout\ & ((\Generate_ALU:11:ALU_INST|mux_a|output~0_combout\ & ((\Generate_ALU:11:ALU_INST|mux_b|output~0_combout\) # (\Generate_ALU:11:ALU_INST|mux_result|Mux0~0_combout\))) 
-- # (!\Generate_ALU:11:ALU_INST|mux_a|output~0_combout\ & (\Generate_ALU:11:ALU_INST|mux_b|output~0_combout\ & \Generate_ALU:11:ALU_INST|mux_result|Mux0~0_combout\)))) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:11:ALU_INST|mux_a|output~0_combout\ 
-- $ (\Generate_ALU:11:ALU_INST|mux_b|output~0_combout\ $ (\Generate_ALU:11:ALU_INST|mux_result|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:11:ALU_INST|mux_a|output~0_combout\,
	datab => \ControlCircuit|Mux0~0_combout\,
	datac => \Generate_ALU:11:ALU_INST|mux_b|output~0_combout\,
	datad => \Generate_ALU:11:ALU_INST|mux_result|Mux0~0_combout\,
	combout => \Generate_ALU:11:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: IOIBUF_X3_Y0_N8
\b[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\a[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X7_Y7_N28
\Generate_ALU:12:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:12:ALU_INST|mux_a|output~0_combout\ = \a[12]~input_o\ $ (((\opcode[2]~input_o\ & !\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \a[12]~input_o\,
	combout => \Generate_ALU:12:ALU_INST|mux_a|output~0_combout\);

-- Location: LCCOMB_X7_Y7_N16
\Generate_ALU:12:ALU_INST|xor_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:12:ALU_INST|xor_out~0_combout\ = \b[12]~input_o\ $ (\ControlCircuit|Mux3~0_combout\ $ (\Generate_ALU:12:ALU_INST|mux_a|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datac => \ControlCircuit|Mux3~0_combout\,
	datad => \Generate_ALU:12:ALU_INST|mux_a|output~0_combout\,
	combout => \Generate_ALU:12:ALU_INST|xor_out~0_combout\);

-- Location: LCCOMB_X7_Y7_N30
\Generate_ALU:11:ALU_INST|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:11:ALU_INST|fa|cout~0_combout\ = (\Generate_ALU:10:ALU_INST|fa|cout~0_combout\ & ((\Generate_ALU:11:ALU_INST|mux_a|output~0_combout\) # (\b[11]~input_o\ $ (\ControlCircuit|Mux3~0_combout\)))) # (!\Generate_ALU:10:ALU_INST|fa|cout~0_combout\ 
-- & (\Generate_ALU:11:ALU_INST|mux_a|output~0_combout\ & (\b[11]~input_o\ $ (\ControlCircuit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[11]~input_o\,
	datab => \Generate_ALU:10:ALU_INST|fa|cout~0_combout\,
	datac => \ControlCircuit|Mux3~0_combout\,
	datad => \Generate_ALU:11:ALU_INST|mux_a|output~0_combout\,
	combout => \Generate_ALU:11:ALU_INST|fa|cout~0_combout\);

-- Location: LCCOMB_X7_Y7_N18
\Generate_ALU:12:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:12:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux0~0_combout\ & (\ControlCircuit|Mux1~0_combout\)) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:12:ALU_INST|xor_out~0_combout\ $ (((!\ControlCircuit|Mux1~0_combout\ & 
-- \Generate_ALU:11:ALU_INST|fa|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlCircuit|Mux1~0_combout\,
	datab => \Generate_ALU:12:ALU_INST|xor_out~0_combout\,
	datac => \Generate_ALU:11:ALU_INST|fa|cout~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:12:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: LCCOMB_X7_Y7_N26
\Generate_ALU:12:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:12:ALU_INST|mux_b|output~0_combout\ = \b[12]~input_o\ $ (((\opcode[2]~input_o\ & ((!\opcode[1]~input_o\))) # (!\opcode[2]~input_o\ & (\opcode[0]~input_o\ & \opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \b[12]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Generate_ALU:12:ALU_INST|mux_b|output~0_combout\);

-- Location: LCCOMB_X7_Y7_N12
\Generate_ALU:12:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:12:ALU_INST|mux_result|Mux0~1_combout\ = (\Generate_ALU:12:ALU_INST|mux_result|Mux0~0_combout\ & ((\Generate_ALU:12:ALU_INST|mux_a|output~0_combout\) # ((\Generate_ALU:12:ALU_INST|mux_b|output~0_combout\) # 
-- (!\ControlCircuit|Mux0~0_combout\)))) # (!\Generate_ALU:12:ALU_INST|mux_result|Mux0~0_combout\ & (\Generate_ALU:12:ALU_INST|mux_a|output~0_combout\ & (\Generate_ALU:12:ALU_INST|mux_b|output~0_combout\ & \ControlCircuit|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:12:ALU_INST|mux_result|Mux0~0_combout\,
	datab => \Generate_ALU:12:ALU_INST|mux_a|output~0_combout\,
	datac => \Generate_ALU:12:ALU_INST|mux_b|output~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:12:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: IOIBUF_X10_Y16_N1
\a[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X11_Y16_N26
\Generate_ALU:13:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:13:ALU_INST|mux_a|output~0_combout\ = \a[13]~input_o\ $ (((\opcode[2]~input_o\ & !\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[2]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \a[13]~input_o\,
	combout => \Generate_ALU:13:ALU_INST|mux_a|output~0_combout\);

-- Location: IOIBUF_X10_Y17_N8
\b[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: LCCOMB_X11_Y16_N16
\Generate_ALU:13:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:13:ALU_INST|mux_b|output~0_combout\ = \b[13]~input_o\ $ (((\opcode[1]~input_o\ & (\opcode[0]~input_o\ & !\opcode[2]~input_o\)) # (!\opcode[1]~input_o\ & ((\opcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \b[13]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Generate_ALU:13:ALU_INST|mux_b|output~0_combout\);

-- Location: LCCOMB_X7_Y7_N22
\Generate_ALU:12:ALU_INST|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:12:ALU_INST|fa|cout~0_combout\ = (\Generate_ALU:11:ALU_INST|fa|cout~0_combout\ & ((\Generate_ALU:12:ALU_INST|mux_a|output~0_combout\) # (\b[12]~input_o\ $ (\ControlCircuit|Mux3~0_combout\)))) # (!\Generate_ALU:11:ALU_INST|fa|cout~0_combout\ 
-- & (\Generate_ALU:12:ALU_INST|mux_a|output~0_combout\ & (\b[12]~input_o\ $ (\ControlCircuit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \ControlCircuit|Mux3~0_combout\,
	datac => \Generate_ALU:11:ALU_INST|fa|cout~0_combout\,
	datad => \Generate_ALU:12:ALU_INST|mux_a|output~0_combout\,
	combout => \Generate_ALU:12:ALU_INST|fa|cout~0_combout\);

-- Location: LCCOMB_X11_Y16_N28
\Generate_ALU:13:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:13:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux1~0_combout\ & ((\ControlCircuit|Mux0~0_combout\))) # (!\ControlCircuit|Mux1~0_combout\ & (\Generate_ALU:12:ALU_INST|fa|cout~0_combout\ & !\ControlCircuit|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:12:ALU_INST|fa|cout~0_combout\,
	datab => \ControlCircuit|Mux1~0_combout\,
	datac => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:13:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y16_N14
\Generate_ALU:13:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:13:ALU_INST|mux_result|Mux0~1_combout\ = (\ControlCircuit|Mux0~0_combout\ & ((\Generate_ALU:13:ALU_INST|mux_a|output~0_combout\ & ((\Generate_ALU:13:ALU_INST|mux_b|output~0_combout\) # (\Generate_ALU:13:ALU_INST|mux_result|Mux0~0_combout\))) 
-- # (!\Generate_ALU:13:ALU_INST|mux_a|output~0_combout\ & (\Generate_ALU:13:ALU_INST|mux_b|output~0_combout\ & \Generate_ALU:13:ALU_INST|mux_result|Mux0~0_combout\)))) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:13:ALU_INST|mux_a|output~0_combout\ 
-- $ (\Generate_ALU:13:ALU_INST|mux_b|output~0_combout\ $ (\Generate_ALU:13:ALU_INST|mux_result|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:13:ALU_INST|mux_a|output~0_combout\,
	datab => \Generate_ALU:13:ALU_INST|mux_b|output~0_combout\,
	datac => \ControlCircuit|Mux0~0_combout\,
	datad => \Generate_ALU:13:ALU_INST|mux_result|Mux0~0_combout\,
	combout => \Generate_ALU:13:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: IOIBUF_X10_Y20_N15
\b[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: IOIBUF_X10_Y18_N1
\a[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X11_Y16_N2
\Generate_ALU:14:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:14:ALU_INST|mux_a|output~0_combout\ = \a[14]~input_o\ $ (((\opcode[2]~input_o\ & !\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[1]~input_o\,
	combout => \Generate_ALU:14:ALU_INST|mux_a|output~0_combout\);

-- Location: LCCOMB_X11_Y16_N30
\Generate_ALU:14:ALU_INST|xor_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:14:ALU_INST|xor_out~0_combout\ = \b[14]~input_o\ $ (\ControlCircuit|Mux3~0_combout\ $ (\Generate_ALU:14:ALU_INST|mux_a|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[14]~input_o\,
	datac => \ControlCircuit|Mux3~0_combout\,
	datad => \Generate_ALU:14:ALU_INST|mux_a|output~0_combout\,
	combout => \Generate_ALU:14:ALU_INST|xor_out~0_combout\);

-- Location: LCCOMB_X11_Y16_N4
\Generate_ALU:13:ALU_INST|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:13:ALU_INST|fa|cout~0_combout\ = (\Generate_ALU:13:ALU_INST|mux_a|output~0_combout\ & ((\Generate_ALU:12:ALU_INST|fa|cout~0_combout\) # (\ControlCircuit|Mux3~0_combout\ $ (\b[13]~input_o\)))) # 
-- (!\Generate_ALU:13:ALU_INST|mux_a|output~0_combout\ & (\Generate_ALU:12:ALU_INST|fa|cout~0_combout\ & (\ControlCircuit|Mux3~0_combout\ $ (\b[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlCircuit|Mux3~0_combout\,
	datab => \b[13]~input_o\,
	datac => \Generate_ALU:13:ALU_INST|mux_a|output~0_combout\,
	datad => \Generate_ALU:12:ALU_INST|fa|cout~0_combout\,
	combout => \Generate_ALU:13:ALU_INST|fa|cout~0_combout\);

-- Location: LCCOMB_X11_Y16_N8
\Generate_ALU:14:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:14:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux0~0_combout\ & (((\ControlCircuit|Mux1~0_combout\)))) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:14:ALU_INST|xor_out~0_combout\ $ (((!\ControlCircuit|Mux1~0_combout\ & 
-- \Generate_ALU:13:ALU_INST|fa|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:14:ALU_INST|xor_out~0_combout\,
	datab => \ControlCircuit|Mux1~0_combout\,
	datac => \Generate_ALU:13:ALU_INST|fa|cout~0_combout\,
	datad => \ControlCircuit|Mux0~0_combout\,
	combout => \Generate_ALU:14:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y16_N24
\Generate_ALU:14:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:14:ALU_INST|mux_b|output~0_combout\ = \b[14]~input_o\ $ (((\opcode[1]~input_o\ & (\opcode[0]~input_o\ & !\opcode[2]~input_o\)) # (!\opcode[1]~input_o\ & ((\opcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[14]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Generate_ALU:14:ALU_INST|mux_b|output~0_combout\);

-- Location: LCCOMB_X11_Y16_N10
\Generate_ALU:14:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:14:ALU_INST|mux_result|Mux0~1_combout\ = (\Generate_ALU:14:ALU_INST|mux_result|Mux0~0_combout\ & ((\Generate_ALU:14:ALU_INST|mux_a|output~0_combout\) # ((\Generate_ALU:14:ALU_INST|mux_b|output~0_combout\) # 
-- (!\ControlCircuit|Mux0~0_combout\)))) # (!\Generate_ALU:14:ALU_INST|mux_result|Mux0~0_combout\ & (\Generate_ALU:14:ALU_INST|mux_a|output~0_combout\ & (\ControlCircuit|Mux0~0_combout\ & \Generate_ALU:14:ALU_INST|mux_b|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:14:ALU_INST|mux_result|Mux0~0_combout\,
	datab => \Generate_ALU:14:ALU_INST|mux_a|output~0_combout\,
	datac => \ControlCircuit|Mux0~0_combout\,
	datad => \Generate_ALU:14:ALU_INST|mux_b|output~0_combout\,
	combout => \Generate_ALU:14:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: IOIBUF_X10_Y16_N8
\a[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X11_Y16_N6
\Generate_ALU:15:ALU_INST|mux_a|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:15:ALU_INST|mux_a|output~0_combout\ = \a[15]~input_o\ $ (((\opcode[2]~input_o\ & !\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[2]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \a[15]~input_o\,
	combout => \Generate_ALU:15:ALU_INST|mux_a|output~0_combout\);

-- Location: LCCOMB_X11_Y16_N0
\Generate_ALU:14:ALU_INST|fa|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:14:ALU_INST|fa|cout~0_combout\ = (\Generate_ALU:14:ALU_INST|mux_a|output~0_combout\ & ((\Generate_ALU:13:ALU_INST|fa|cout~0_combout\) # (\ControlCircuit|Mux3~0_combout\ $ (\b[14]~input_o\)))) # 
-- (!\Generate_ALU:14:ALU_INST|mux_a|output~0_combout\ & (\Generate_ALU:13:ALU_INST|fa|cout~0_combout\ & (\ControlCircuit|Mux3~0_combout\ $ (\b[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlCircuit|Mux3~0_combout\,
	datab => \Generate_ALU:14:ALU_INST|mux_a|output~0_combout\,
	datac => \Generate_ALU:13:ALU_INST|fa|cout~0_combout\,
	datad => \b[14]~input_o\,
	combout => \Generate_ALU:14:ALU_INST|fa|cout~0_combout\);

-- Location: LCCOMB_X11_Y16_N18
\Generate_ALU:15:ALU_INST|mux_result|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:15:ALU_INST|mux_result|Mux0~0_combout\ = (\ControlCircuit|Mux1~0_combout\ & (\ControlCircuit|Mux0~0_combout\)) # (!\ControlCircuit|Mux1~0_combout\ & (!\ControlCircuit|Mux0~0_combout\ & \Generate_ALU:14:ALU_INST|fa|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlCircuit|Mux1~0_combout\,
	datac => \ControlCircuit|Mux0~0_combout\,
	datad => \Generate_ALU:14:ALU_INST|fa|cout~0_combout\,
	combout => \Generate_ALU:15:ALU_INST|mux_result|Mux0~0_combout\);

-- Location: IOIBUF_X10_Y19_N1
\b[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: LCCOMB_X11_Y16_N20
\Generate_ALU:15:ALU_INST|mux_b|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:15:ALU_INST|mux_b|output~0_combout\ = \b[15]~input_o\ $ (((\opcode[1]~input_o\ & (\opcode[0]~input_o\ & !\opcode[2]~input_o\)) # (!\opcode[1]~input_o\ & ((\opcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \b[15]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Generate_ALU:15:ALU_INST|mux_b|output~0_combout\);

-- Location: LCCOMB_X11_Y16_N12
\Generate_ALU:15:ALU_INST|mux_result|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Generate_ALU:15:ALU_INST|mux_result|Mux0~1_combout\ = (\ControlCircuit|Mux0~0_combout\ & ((\Generate_ALU:15:ALU_INST|mux_a|output~0_combout\ & ((\Generate_ALU:15:ALU_INST|mux_result|Mux0~0_combout\) # (\Generate_ALU:15:ALU_INST|mux_b|output~0_combout\))) 
-- # (!\Generate_ALU:15:ALU_INST|mux_a|output~0_combout\ & (\Generate_ALU:15:ALU_INST|mux_result|Mux0~0_combout\ & \Generate_ALU:15:ALU_INST|mux_b|output~0_combout\)))) # (!\ControlCircuit|Mux0~0_combout\ & (\Generate_ALU:15:ALU_INST|mux_a|output~0_combout\ 
-- $ (\Generate_ALU:15:ALU_INST|mux_result|Mux0~0_combout\ $ (\Generate_ALU:15:ALU_INST|mux_b|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Generate_ALU:15:ALU_INST|mux_a|output~0_combout\,
	datab => \Generate_ALU:15:ALU_INST|mux_result|Mux0~0_combout\,
	datac => \ControlCircuit|Mux0~0_combout\,
	datad => \Generate_ALU:15:ALU_INST|mux_b|output~0_combout\,
	combout => \Generate_ALU:15:ALU_INST|mux_result|Mux0~1_combout\);

-- Location: LCCOMB_X11_Y16_N22
\Ovfl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\Generate_ALU:14:ALU_INST|fa|cout~0_combout\ & (!\Generate_ALU:15:ALU_INST|mux_a|output~0_combout\ & (\ControlCircuit|Mux3~0_combout\ $ (!\b[15]~input_o\)))) # (!\Generate_ALU:14:ALU_INST|fa|cout~0_combout\ & 
-- (\Generate_ALU:15:ALU_INST|mux_a|output~0_combout\ & (\ControlCircuit|Mux3~0_combout\ $ (\b[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlCircuit|Mux3~0_combout\,
	datab => \Generate_ALU:14:ALU_INST|fa|cout~0_combout\,
	datac => \b[15]~input_o\,
	datad => \Generate_ALU:15:ALU_INST|mux_a|output~0_combout\,
	combout => \Ovfl~0_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


