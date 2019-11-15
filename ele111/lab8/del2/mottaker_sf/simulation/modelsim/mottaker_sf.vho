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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/14/2019 09:20:38"

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

ENTITY 	mottaker_sf IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	GPIO : BUFFER std_logic_vector(35 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0)
	);
END mottaker_sf;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[0]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[3]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[4]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[8]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[9]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[10]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[11]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[12]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[13]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[14]	=>  Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[15]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[16]	=>  Location: PIN_AF25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[17]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[18]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[19]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[20]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[21]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[22]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[23]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[24]	=>  Location: PIN_AH25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[25]	=>  Location: PIN_AE25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[26]	=>  Location: PIN_AG22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[27]	=>  Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[28]	=>  Location: PIN_AH22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[29]	=>  Location: PIN_AF26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[30]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[31]	=>  Location: PIN_AG23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[32]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[33]	=>  Location: PIN_AH26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[34]	=>  Location: PIN_AH23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[35]	=>  Location: PIN_AG26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[1]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[5]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[7]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mottaker_sf IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_GPIO : std_logic_vector(35 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \GPIO[0]~input_o\ : std_logic;
SIGNAL \GPIO[2]~input_o\ : std_logic;
SIGNAL \GPIO[3]~input_o\ : std_logic;
SIGNAL \GPIO[4]~input_o\ : std_logic;
SIGNAL \GPIO[6]~input_o\ : std_logic;
SIGNAL \GPIO[8]~input_o\ : std_logic;
SIGNAL \GPIO[9]~input_o\ : std_logic;
SIGNAL \GPIO[10]~input_o\ : std_logic;
SIGNAL \GPIO[11]~input_o\ : std_logic;
SIGNAL \GPIO[12]~input_o\ : std_logic;
SIGNAL \GPIO[13]~input_o\ : std_logic;
SIGNAL \GPIO[14]~input_o\ : std_logic;
SIGNAL \GPIO[15]~input_o\ : std_logic;
SIGNAL \GPIO[16]~input_o\ : std_logic;
SIGNAL \GPIO[17]~input_o\ : std_logic;
SIGNAL \GPIO[18]~input_o\ : std_logic;
SIGNAL \GPIO[19]~input_o\ : std_logic;
SIGNAL \GPIO[20]~input_o\ : std_logic;
SIGNAL \GPIO[21]~input_o\ : std_logic;
SIGNAL \GPIO[22]~input_o\ : std_logic;
SIGNAL \GPIO[23]~input_o\ : std_logic;
SIGNAL \GPIO[24]~input_o\ : std_logic;
SIGNAL \GPIO[25]~input_o\ : std_logic;
SIGNAL \GPIO[26]~input_o\ : std_logic;
SIGNAL \GPIO[27]~input_o\ : std_logic;
SIGNAL \GPIO[28]~input_o\ : std_logic;
SIGNAL \GPIO[29]~input_o\ : std_logic;
SIGNAL \GPIO[30]~input_o\ : std_logic;
SIGNAL \GPIO[31]~input_o\ : std_logic;
SIGNAL \GPIO[32]~input_o\ : std_logic;
SIGNAL \GPIO[33]~input_o\ : std_logic;
SIGNAL \GPIO[34]~input_o\ : std_logic;
SIGNAL \GPIO[35]~input_o\ : std_logic;
SIGNAL \GPIO[0]~output_o\ : std_logic;
SIGNAL \GPIO[2]~output_o\ : std_logic;
SIGNAL \GPIO[3]~output_o\ : std_logic;
SIGNAL \GPIO[4]~output_o\ : std_logic;
SIGNAL \GPIO[6]~output_o\ : std_logic;
SIGNAL \GPIO[8]~output_o\ : std_logic;
SIGNAL \GPIO[9]~output_o\ : std_logic;
SIGNAL \GPIO[10]~output_o\ : std_logic;
SIGNAL \GPIO[11]~output_o\ : std_logic;
SIGNAL \GPIO[12]~output_o\ : std_logic;
SIGNAL \GPIO[13]~output_o\ : std_logic;
SIGNAL \GPIO[14]~output_o\ : std_logic;
SIGNAL \GPIO[15]~output_o\ : std_logic;
SIGNAL \GPIO[16]~output_o\ : std_logic;
SIGNAL \GPIO[17]~output_o\ : std_logic;
SIGNAL \GPIO[18]~output_o\ : std_logic;
SIGNAL \GPIO[19]~output_o\ : std_logic;
SIGNAL \GPIO[20]~output_o\ : std_logic;
SIGNAL \GPIO[21]~output_o\ : std_logic;
SIGNAL \GPIO[22]~output_o\ : std_logic;
SIGNAL \GPIO[23]~output_o\ : std_logic;
SIGNAL \GPIO[24]~output_o\ : std_logic;
SIGNAL \GPIO[25]~output_o\ : std_logic;
SIGNAL \GPIO[26]~output_o\ : std_logic;
SIGNAL \GPIO[27]~output_o\ : std_logic;
SIGNAL \GPIO[28]~output_o\ : std_logic;
SIGNAL \GPIO[29]~output_o\ : std_logic;
SIGNAL \GPIO[30]~output_o\ : std_logic;
SIGNAL \GPIO[31]~output_o\ : std_logic;
SIGNAL \GPIO[32]~output_o\ : std_logic;
SIGNAL \GPIO[33]~output_o\ : std_logic;
SIGNAL \GPIO[34]~output_o\ : std_logic;
SIGNAL \GPIO[35]~output_o\ : std_logic;
SIGNAL \GPIO[1]~output_o\ : std_logic;
SIGNAL \GPIO[5]~output_o\ : std_logic;
SIGNAL \GPIO[7]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \GPIO[5]~input_o\ : std_logic;
SIGNAL \GPIO[7]~input_o\ : std_logic;
SIGNAL \din_q~0_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state.s_error~q\ : std_logic;
SIGNAL \state~29_combout\ : std_logic;
SIGNAL \state.s_idle~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \error_signal~0_combout\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state.s_offload~q\ : std_logic;
SIGNAL \state~26_combout\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state~27_combout\ : std_logic;
SIGNAL \state~28_combout\ : std_logic;
SIGNAL \state.s_wait_for_sender~q\ : std_logic;
SIGNAL \start_teller~0_combout\ : std_logic;
SIGNAL \start_teller~q\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \baud_gen|Mux2~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux4~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux5~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux6~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux7~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux9~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux3~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux11~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux12~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~15\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~27_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~29_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~30_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~31_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~32_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~33_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\ : std_logic;
SIGNAL \baud_gen|Mux3~1_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~34_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~35_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~36_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~37_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~38_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~39_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~40_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~41_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~42_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~11\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~13\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~15\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~17\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~19\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~43_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~44_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~45_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~46_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~47_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~48_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~49_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~50_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~51_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~52_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~13\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~15\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~17\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~19\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~21\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~53_combout\ : std_logic;
SIGNAL \baud_gen|Mux1~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~54_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~55_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~56_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~57_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~58_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~59_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~60_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~61_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~24_combout\ : std_logic;
SIGNAL \baud_gen|Mux0~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~11\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~13\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~15\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~17\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~19\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~21\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~23\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ : std_logic;
SIGNAL \baud_gen|teller[0]~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|selnose[324]~10_combout\ : std_logic;
SIGNAL \baud_gen|teller[9]~47\ : std_logic;
SIGNAL \baud_gen|teller[10]~58_combout\ : std_logic;
SIGNAL \baud_gen|teller[10]~59\ : std_logic;
SIGNAL \baud_gen|teller[11]~60_combout\ : std_logic;
SIGNAL \baud_gen|teller[11]~61\ : std_logic;
SIGNAL \baud_gen|teller[12]~62_combout\ : std_logic;
SIGNAL \baud_gen|teller[12]~63\ : std_logic;
SIGNAL \baud_gen|teller[13]~64_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~62_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~63_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~64_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~65_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~66_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~67_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~68_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~69_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~70_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~71_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~72_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~73_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~9\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~11\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~13\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~15\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~17\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~19\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~21\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~23\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~25\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~74_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~75_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~76_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~77_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~78_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~79_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~80_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~81_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~82_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~83_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~84_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~85_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~86_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~87_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~88_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~89_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~90_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~91_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~92_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~93_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~94_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~95_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~96_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~97_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~98_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~99_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~100_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~101_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~5\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~7\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~9\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~11\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~13\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~15\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~17\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~19\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~21\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~23\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~25\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~27\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~29\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~31\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~102_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~30_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~103_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~104_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~3\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~5\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~7\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~9\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~11\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~13\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~15\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~17\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~19\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~21\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~23\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~25\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~27\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~29\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~31\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~33_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~196_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~30_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~130_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~131_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~132_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~118_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~119_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~120_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~121_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~122_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~123_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~124_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~125_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~126_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~127_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~128_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~129_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~195_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~3\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~5\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~7\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~9\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~11\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~13\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~15\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~17\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~19\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~21\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~23\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~25\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~27\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~29\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~31\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~33_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ : std_logic;
SIGNAL \baud_gen|teller~50_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~197_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~1\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~3\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~5\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~7\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~9\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~11\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~13\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~15\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~17\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~19\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~21\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~23\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~198_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~30_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~146_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~147_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~25\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~27\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~29\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~31_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~34_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~1_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~3\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~5\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~7\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~9\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~11\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~13\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~15\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~17\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~19\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~21\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~23\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~25\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~27\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~199_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~149_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~29\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~31\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~33_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~3\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~5\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~7\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~9\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~11\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~13\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~15\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~17\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~19\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~21\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~23\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~25\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~27\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~29\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~30_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~30_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~163_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~200_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~31\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~33_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~177_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~203_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[522]~178_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[521]~179_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[520]~180_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[519]~181_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[518]~182_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[517]~183_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[516]~184_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[515]~185_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[514]~186_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[513]~187_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[512]~188_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[511]~189_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[510]~190_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[509]~191_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[508]~204_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~1_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~3_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~5_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~7_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~9_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~11_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~13_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~15_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~17_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~19_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~21_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~23_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~25_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~27_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~29_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~31_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~33_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_17~34_combout\ : std_logic;
SIGNAL \baud_gen|teller~49_combout\ : std_logic;
SIGNAL \baud_gen|teller~51_combout\ : std_logic;
SIGNAL \baud_gen|teller~90_combout\ : std_logic;
SIGNAL \baud_gen|teller~52_combout\ : std_logic;
SIGNAL \baud_gen|teller~54_combout\ : std_logic;
SIGNAL \baud_gen|teller~53_combout\ : std_logic;
SIGNAL \baud_gen|teller~55_combout\ : std_logic;
SIGNAL \baud_gen|teller~48_combout\ : std_logic;
SIGNAL \baud_gen|teller[13]~65\ : std_logic;
SIGNAL \baud_gen|teller[14]~66_combout\ : std_logic;
SIGNAL \baud_gen|teller[14]~67\ : std_logic;
SIGNAL \baud_gen|teller[15]~68_combout\ : std_logic;
SIGNAL \baud_gen|teller[15]~69\ : std_logic;
SIGNAL \baud_gen|teller[16]~70_combout\ : std_logic;
SIGNAL \baud_gen|teller[16]~71\ : std_logic;
SIGNAL \baud_gen|teller[17]~72_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~1_combout\ : std_logic;
SIGNAL \baud_gen|teller[17]~73\ : std_logic;
SIGNAL \baud_gen|teller[18]~74_combout\ : std_logic;
SIGNAL \baud_gen|teller[18]~75\ : std_logic;
SIGNAL \baud_gen|teller[19]~76_combout\ : std_logic;
SIGNAL \baud_gen|teller[19]~77\ : std_logic;
SIGNAL \baud_gen|teller[20]~78_combout\ : std_logic;
SIGNAL \baud_gen|teller[20]~79\ : std_logic;
SIGNAL \baud_gen|teller[21]~80_combout\ : std_logic;
SIGNAL \baud_gen|teller[21]~81\ : std_logic;
SIGNAL \baud_gen|teller[22]~82_combout\ : std_logic;
SIGNAL \baud_gen|teller[22]~83\ : std_logic;
SIGNAL \baud_gen|teller[23]~84_combout\ : std_logic;
SIGNAL \baud_gen|teller[23]~85\ : std_logic;
SIGNAL \baud_gen|teller[24]~86_combout\ : std_logic;
SIGNAL \baud_gen|teller[24]~87\ : std_logic;
SIGNAL \baud_gen|teller[25]~88_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~3_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~2_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~4_combout\ : std_logic;
SIGNAL \baud_gen|teller~56_combout\ : std_logic;
SIGNAL \baud_gen|teller[11]~57_combout\ : std_logic;
SIGNAL \baud_gen|teller[0]~29\ : std_logic;
SIGNAL \baud_gen|teller[1]~30_combout\ : std_logic;
SIGNAL \baud_gen|teller[1]~31\ : std_logic;
SIGNAL \baud_gen|teller[2]~32_combout\ : std_logic;
SIGNAL \baud_gen|teller[2]~33\ : std_logic;
SIGNAL \baud_gen|teller[3]~34_combout\ : std_logic;
SIGNAL \baud_gen|teller[3]~35\ : std_logic;
SIGNAL \baud_gen|teller[4]~36_combout\ : std_logic;
SIGNAL \baud_gen|teller[4]~37\ : std_logic;
SIGNAL \baud_gen|teller[5]~38_combout\ : std_logic;
SIGNAL \baud_gen|teller[5]~39\ : std_logic;
SIGNAL \baud_gen|teller[6]~40_combout\ : std_logic;
SIGNAL \baud_gen|teller[6]~41\ : std_logic;
SIGNAL \baud_gen|teller[7]~42_combout\ : std_logic;
SIGNAL \baud_gen|teller[7]~43\ : std_logic;
SIGNAL \baud_gen|teller[8]~44_combout\ : std_logic;
SIGNAL \baud_gen|teller[8]~45\ : std_logic;
SIGNAL \baud_gen|teller[9]~46_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~0_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~5_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|selnose[351]~9_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~10_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~8_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~9_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~7_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~11_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~12_combout\ : std_logic;
SIGNAL \baud_gen|baud_enable_m~0_combout\ : std_logic;
SIGNAL \baud_gen|baud_enable_m~q\ : std_logic;
SIGNAL \din_qq~1_combout\ : std_logic;
SIGNAL \din_q~q\ : std_logic;
SIGNAL \din_qq~0_combout\ : std_logic;
SIGNAL \din_qq~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \state.s_shift_in~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \data_reg[0]~feeder_combout\ : std_logic;
SIGNAL \data_reg[0]~0_combout\ : std_logic;
SIGNAL \data_reg[1]~feeder_combout\ : std_logic;
SIGNAL \data_reg[2]~feeder_combout\ : std_logic;
SIGNAL \data_reg[3]~feeder_combout\ : std_logic;
SIGNAL \data_reg[6]~feeder_combout\ : std_logic;
SIGNAL \data_reg[7]~feeder_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \error_signal~q\ : std_logic;
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \vippe_a~feeder_combout\ : std_logic;
SIGNAL \vippe_a~q\ : std_logic;
SIGNAL \vippe_b~feeder_combout\ : std_logic;
SIGNAL \vippe_b~q\ : std_logic;
SIGNAL \mottatt_blink~feeder_combout\ : std_logic;
SIGNAL \mottatt_blink~q\ : std_logic;
SIGNAL data_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \baud_gen|teller\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut\ : std_logic_vector(545 DOWNTO 0);
SIGNAL shiftreg : std_logic_vector(9 DOWNTO 0);
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(701 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
GPIO <= ww_GPIO;
LEDR <= ww_LEDR;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y0_N2
\GPIO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[0]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\GPIO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[2]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\GPIO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[3]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\GPIO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[4]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\GPIO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[6]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\GPIO[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[8]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\GPIO[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[9]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\GPIO[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[10]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\GPIO[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[11]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\GPIO[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[12]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\GPIO[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[13]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\GPIO[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[14]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\GPIO[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[15]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\GPIO[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[16]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\GPIO[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[17]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\GPIO[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[18]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\GPIO[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[19]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\GPIO[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[20]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\GPIO[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[21]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\GPIO[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[22]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\GPIO[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[23]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\GPIO[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[24]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\GPIO[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[25]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\GPIO[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[26]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\GPIO[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[27]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\GPIO[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[28]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\GPIO[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[29]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\GPIO[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[30]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\GPIO[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[31]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\GPIO[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[32]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\GPIO[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[33]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\GPIO[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[34]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\GPIO[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[35]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\GPIO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[1]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\GPIO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[5]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\GPIO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \error_signal~q\,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mottatt_blink~q\,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X96_Y0_N15
\GPIO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(5),
	o => \GPIO[5]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\GPIO[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(7),
	o => \GPIO[7]~input_o\);

-- Location: LCCOMB_X82_Y23_N12
\din_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \din_q~0_combout\ = (\GPIO[5]~input_o\ & \GPIO[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO[5]~input_o\,
	datac => \GPIO[7]~input_o\,
	combout => \din_q~0_combout\);

-- Location: LCCOMB_X82_Y27_N28
\state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (!\state.s_offload~q\ & \GPIO[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_offload~q\,
	datad => \GPIO[5]~input_o\,
	combout => \state~21_combout\);

-- Location: LCCOMB_X82_Y27_N18
\state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (\din_qq~q\ & (!\state.s_wait_for_sender~q\)) # (!\din_qq~q\ & ((\state.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din_qq~q\,
	datac => \state.s_wait_for_sender~q\,
	datad => \state.s_idle~q\,
	combout => \state~23_combout\);

-- Location: LCCOMB_X82_Y27_N10
\state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (\state.s_shift_in~q\ & ((shiftreg(9)) # (!shiftreg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(9),
	datac => shiftreg(0),
	datad => \state.s_shift_in~q\,
	combout => \state~19_combout\);

-- Location: LCCOMB_X82_Y27_N4
\state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (\state.s_wait_for_sender~q\ & (\din_qq~q\)) # (!\state.s_wait_for_sender~q\ & (!\din_qq~q\ & !\state.s_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_wait_for_sender~q\,
	datac => \din_qq~q\,
	datad => \state.s_idle~q\,
	combout => \state~15_combout\);

-- Location: LCCOMB_X82_Y27_N22
\state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (\state.s_error~q\) # (((\state.s_shift_in~q\ & shiftreg(9))) # (!\baud_gen|baud_enable_m~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_shift_in~q\,
	datab => shiftreg(9),
	datac => \state.s_error~q\,
	datad => \baud_gen|baud_enable_m~q\,
	combout => \state~16_combout\);

-- Location: LCCOMB_X82_Y27_N0
\state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (\GPIO[5]~input_o\ & ((\state~15_combout\) # (\state~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO[5]~input_o\,
	datab => \state~15_combout\,
	datac => \state~16_combout\,
	combout => \state~17_combout\);

-- Location: LCCOMB_X82_Y27_N26
\state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (\GPIO[5]~input_o\ & ((\state.s_error~q\) # ((\state~19_combout\ & !\state~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~19_combout\,
	datab => \state~17_combout\,
	datac => \state.s_error~q\,
	datad => \GPIO[5]~input_o\,
	combout => \state~20_combout\);

-- Location: FF_X82_Y27_N27
\state.s_error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_error~q\);

-- Location: LCCOMB_X82_Y27_N2
\state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~29_combout\ = ((\state~23_combout\ & (!\state.s_error~q\ & \baud_gen|baud_enable_m~q\))) # (!\GPIO[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO[5]~input_o\,
	datab => \state~23_combout\,
	datac => \state.s_error~q\,
	datad => \baud_gen|baud_enable_m~q\,
	combout => \state~29_combout\);

-- Location: FF_X82_Y27_N29
\state.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \state~21_combout\,
	ena => \state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_idle~q\);

-- Location: LCCOMB_X81_Y27_N0
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.s_shift_in~q\ & (shiftreg(1))) # (!\state.s_shift_in~q\ & (((\state.s_idle~q\ & shiftreg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(1),
	datab => \state.s_idle~q\,
	datac => shiftreg(0),
	datad => \state.s_shift_in~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X81_Y27_N24
\error_signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error_signal~0_combout\ = (\GPIO[5]~input_o\ & \baud_gen|baud_enable_m~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GPIO[5]~input_o\,
	datad => \baud_gen|baud_enable_m~q\,
	combout => \error_signal~0_combout\);

-- Location: FF_X81_Y27_N1
\shiftreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \error_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(0));

-- Location: LCCOMB_X82_Y27_N12
\state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (\state.s_shift_in~q\ & (\GPIO[5]~input_o\ & (shiftreg(0) & !shiftreg(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_shift_in~q\,
	datab => \GPIO[5]~input_o\,
	datac => shiftreg(0),
	datad => shiftreg(9),
	combout => \state~14_combout\);

-- Location: LCCOMB_X82_Y27_N16
\state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (\state~17_combout\ & ((\state.s_offload~q\))) # (!\state~17_combout\ & (\state~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~14_combout\,
	datac => \state.s_offload~q\,
	datad => \state~17_combout\,
	combout => \state~18_combout\);

-- Location: FF_X82_Y27_N17
\state.s_offload\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_offload~q\);

-- Location: LCCOMB_X82_Y27_N30
\state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~26_combout\ = (!\state.s_wait_for_sender~q\ & (!\state.s_offload~q\ & !\state.s_shift_in~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_wait_for_sender~q\,
	datac => \state.s_offload~q\,
	datad => \state.s_shift_in~q\,
	combout => \state~26_combout\);

-- Location: LCCOMB_X82_Y27_N20
\state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (!\state.s_error~q\ & \baud_gen|baud_enable_m~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_error~q\,
	datad => \baud_gen|baud_enable_m~q\,
	combout => \state~22_combout\);

-- Location: LCCOMB_X82_Y27_N24
\state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~27_combout\ = ((\din_qq~q\ & ((\state.s_wait_for_sender~q\))) # (!\din_qq~q\ & (!\state.s_idle~q\))) # (!\state~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_idle~q\,
	datab => \state.s_wait_for_sender~q\,
	datac => \din_qq~q\,
	datad => \state~22_combout\,
	combout => \state~27_combout\);

-- Location: LCCOMB_X82_Y27_N14
\state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~28_combout\ = (\GPIO[5]~input_o\ & ((\state~27_combout\ & ((\state.s_wait_for_sender~q\))) # (!\state~27_combout\ & (\state~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~26_combout\,
	datab => \state~27_combout\,
	datac => \state.s_wait_for_sender~q\,
	datad => \GPIO[5]~input_o\,
	combout => \state~28_combout\);

-- Location: FF_X82_Y27_N15
\state.s_wait_for_sender\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_wait_for_sender~q\);

-- Location: LCCOMB_X81_Y27_N8
\start_teller~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \start_teller~0_combout\ = (!\din_qq~q\ & \state.s_wait_for_sender~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din_qq~q\,
	datac => \state.s_wait_for_sender~q\,
	combout => \start_teller~0_combout\);

-- Location: FF_X81_Y27_N9
start_teller : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \start_teller~0_combout\,
	ena => \error_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_teller~q\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X84_Y23_N24
\baud_gen|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux2~0_combout\ = (\SW[14]~input_o\ & (!\SW[16]~input_o\ & \SW[15]~input_o\)) # (!\SW[14]~input_o\ & (\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \baud_gen|Mux2~0_combout\);

-- Location: LCCOMB_X82_Y24_N28
\baud_gen|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux4~0_combout\ = (\SW[15]~input_o\) # ((!\SW[16]~input_o\ & !\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \baud_gen|Mux4~0_combout\);

-- Location: LCCOMB_X82_Y25_N6
\baud_gen|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux5~0_combout\ = (!\SW[15]~input_o\ & (!\SW[14]~input_o\ & !\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Mux5~0_combout\);

-- Location: LCCOMB_X84_Y23_N4
\baud_gen|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux6~0_combout\ = (!\SW[14]~input_o\ & (!\SW[16]~input_o\ & \SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \baud_gen|Mux6~0_combout\);

-- Location: LCCOMB_X84_Y23_N6
\baud_gen|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux7~0_combout\ = ((\SW[16]~input_o\ & \SW[15]~input_o\)) # (!\SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \baud_gen|Mux7~0_combout\);

-- Location: LCCOMB_X84_Y23_N12
\baud_gen|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux9~0_combout\ = \SW[16]~input_o\ $ (((\SW[14]~input_o\) # (\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \baud_gen|Mux9~0_combout\);

-- Location: LCCOMB_X82_Y23_N28
\baud_gen|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux3~0_combout\ = (\SW[14]~input_o\ & (\SW[16]~input_o\ & \SW[15]~input_o\)) # (!\SW[14]~input_o\ & ((\SW[16]~input_o\) # (\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	combout => \baud_gen|Mux3~0_combout\);

-- Location: LCCOMB_X82_Y23_N14
\baud_gen|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux11~0_combout\ = (\SW[14]~input_o\ & ((\SW[15]~input_o\))) # (!\SW[14]~input_o\ & (!\SW[16]~input_o\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	combout => \baud_gen|Mux11~0_combout\);

-- Location: LCCOMB_X84_Y23_N30
\baud_gen|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux12~0_combout\ = (\SW[14]~input_o\ & (!\SW[16]~input_o\ & \SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \baud_gen|Mux12~0_combout\);

-- Location: LCCOMB_X80_Y25_N4
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\ = \baud_gen|Mux12~0_combout\ $ (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\ = CARRY(!\baud_gen|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\);

-- Location: LCCOMB_X80_Y25_N6
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2_combout\ = (\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\)) # (!\baud_gen|Mux11~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\ & VCC))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\ = CARRY((\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\);

-- Location: LCCOMB_X80_Y25_N8
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\ = (\baud_gen|Mux3~0_combout\ & ((GND) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\))) # (!\baud_gen|Mux3~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\ $ (GND)))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\ = CARRY((\baud_gen|Mux3~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\);

-- Location: LCCOMB_X80_Y25_N10
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\ = (\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\)) # (!\baud_gen|Mux9~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\ & VCC))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\ = CARRY((\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\);

-- Location: LCCOMB_X80_Y25_N12
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8_combout\ = (\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\ $ (GND))) # (!\baud_gen|Mux4~0_combout\ & ((GND) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\)))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\ = CARRY((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\) # (!\baud_gen|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\);

-- Location: LCCOMB_X80_Y25_N14
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\ = (\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\ & VCC)) # (!\baud_gen|Mux7~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\ = CARRY((!\baud_gen|Mux7~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\);

-- Location: LCCOMB_X80_Y25_N16
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\ = (\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\ & VCC)) # (!\baud_gen|Mux6~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\ $ (GND)))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\ = CARRY((!\baud_gen|Mux6~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux6~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\);

-- Location: LCCOMB_X80_Y25_N18
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14_combout\ = (\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\)) # (!\baud_gen|Mux5~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\ & VCC))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~15\ = CARRY((\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~15\);

-- Location: LCCOMB_X80_Y25_N20
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\ = \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\);

-- Location: LCCOMB_X80_Y25_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~26_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\)) # 
-- (!\baud_gen|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~26_combout\);

-- Location: LCCOMB_X80_Y25_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~27_combout\ = (\baud_gen|Mux5~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~27_combout\);

-- Location: LCCOMB_X81_Y24_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~28_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # 
-- (!\baud_gen|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datac => \baud_gen|Mux5~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~28_combout\);

-- Location: LCCOMB_X80_Y25_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~29_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # 
-- (!\baud_gen|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datad => \baud_gen|Mux5~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~29_combout\);

-- Location: LCCOMB_X81_Y24_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~30_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\)) # 
-- (!\baud_gen|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~30_combout\);

-- Location: LCCOMB_X80_Y25_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~31_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\) # 
-- (!\baud_gen|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\,
	datad => \baud_gen|Mux5~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~31_combout\);

-- Location: LCCOMB_X80_Y25_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~32_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # 
-- (!\baud_gen|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datad => \baud_gen|Mux5~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~32_combout\);

-- Location: LCCOMB_X81_Y24_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~33_combout\ = (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\ & (\baud_gen|Mux5~0_combout\ & 
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datac => \baud_gen|Mux5~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~33_combout\);

-- Location: LCCOMB_X81_Y24_N4
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~18_combout\ = !\baud_gen|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \baud_gen|Mux12~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~18_combout\);

-- Location: LCCOMB_X81_Y24_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[256]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut\(256) = ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~18_combout\)) # 
-- (!\baud_gen|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~18_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(256));

-- Location: LCCOMB_X80_Y24_N4
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\ = CARRY(!\baud_gen|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\);

-- Location: LCCOMB_X80_Y24_N6
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\ = (\baud_gen|Mux12~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(256) & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut\(256) & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\) # (GND))))) # 
-- (!\baud_gen|Mux12~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(256) & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut\(256) & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\ = CARRY((\baud_gen|Mux12~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut\(256)))) # (!\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut\(256) & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux12~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(256),
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\);

-- Location: LCCOMB_X80_Y24_N8
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~33_combout\ $ (\baud_gen|Mux11~0_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~33_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\) # 
-- (!\baud_gen|Mux11~0_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~33_combout\ & (!\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~33_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\);

-- Location: LCCOMB_X80_Y24_N10
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~32_combout\ & ((\baud_gen|Mux3~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\ & VCC)) # (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~32_combout\ & ((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\)) # (!\baud_gen|Mux3~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~32_combout\ & (!\baud_gen|Mux3~0_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~32_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\) # 
-- (!\baud_gen|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~32_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\);

-- Location: LCCOMB_X80_Y24_N12
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~31_combout\ $ (\baud_gen|Mux9~0_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~31_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\) # 
-- (!\baud_gen|Mux9~0_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~31_combout\ & (!\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~31_combout\,
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\);

-- Location: LCCOMB_X80_Y24_N14
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~30_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~30_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\) # (GND))))) # 
-- (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~30_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~30_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\ = CARRY((\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~30_combout\))) # (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~30_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~30_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\);

-- Location: LCCOMB_X80_Y24_N16
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\ = ((\baud_gen|Mux7~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~29_combout\ $ 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~29_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\))) # (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~29_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~29_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\);

-- Location: LCCOMB_X80_Y24_N18
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~28_combout\ & ((\baud_gen|Mux6~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\)) # (!\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\ & VCC)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~28_combout\ & ((\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\) # (GND))) # (!\baud_gen|Mux6~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~28_combout\ & (\baud_gen|Mux6~0_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~28_combout\ & ((\baud_gen|Mux6~0_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~28_combout\,
	datab => \baud_gen|Mux6~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\);

-- Location: LCCOMB_X80_Y24_N20
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~27_combout\ $ (\baud_gen|Mux5~0_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~27_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\) # 
-- (!\baud_gen|Mux5~0_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~27_combout\ & (!\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~27_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\);

-- Location: LCCOMB_X80_Y24_N22
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~26_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~26_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\)))) # 
-- (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~26_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~26_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\ = CARRY((\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~26_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\)) # (!\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~26_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\);

-- Location: LCCOMB_X82_Y24_N26
\baud_gen|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux3~1_combout\ = (!\SW[15]~input_o\ & !\SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	combout => \baud_gen|Mux3~1_combout\);

-- Location: LCCOMB_X80_Y24_N24
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ = \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\);

-- Location: LCCOMB_X80_Y24_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~34_combout\ = (\baud_gen|Mux3~1_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~26_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\)))) 
-- # (!\baud_gen|Mux3~1_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~26_combout\,
	datac => \baud_gen|Mux3~1_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~34_combout\);

-- Location: LCCOMB_X80_Y24_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~35_combout\ = (\baud_gen|Mux3~1_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~27_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\))))) 
-- # (!\baud_gen|Mux3~1_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~27_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\,
	datac => \baud_gen|Mux3~1_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~35_combout\);

-- Location: LCCOMB_X81_Y24_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~36_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~28_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baud_gen|Mux3~1_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\)) # (!\baud_gen|Mux3~1_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~28_combout\,
	datad => \baud_gen|Mux3~1_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~36_combout\);

-- Location: LCCOMB_X80_Y24_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~37_combout\ = (\baud_gen|Mux3~1_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~29_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\)))) 
-- # (!\baud_gen|Mux3~1_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~1_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~29_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~37_combout\);

-- Location: LCCOMB_X81_Y24_N16
\baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~38_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~30_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baud_gen|Mux3~1_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\)) # (!\baud_gen|Mux3~1_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~30_combout\,
	datad => \baud_gen|Mux3~1_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~38_combout\);

-- Location: LCCOMB_X80_Y24_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~39_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~31_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baud_gen|Mux3~1_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\))) # (!\baud_gen|Mux3~1_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~31_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \baud_gen|Mux3~1_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~39_combout\);

-- Location: LCCOMB_X80_Y24_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~40_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~32_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baud_gen|Mux3~1_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\)) # (!\baud_gen|Mux3~1_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \baud_gen|Mux3~1_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~40_combout\);

-- Location: LCCOMB_X81_Y24_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~41_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~33_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baud_gen|Mux3~1_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\)) # (!\baud_gen|Mux3~1_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~33_combout\,
	datad => \baud_gen|Mux3~1_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~41_combout\);

-- Location: LCCOMB_X81_Y24_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~42_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(256))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baud_gen|Mux3~1_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\))) # (!\baud_gen|Mux3~1_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(256)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(256),
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\,
	datad => \baud_gen|Mux3~1_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~42_combout\);

-- Location: LCCOMB_X84_Y24_N4
\baud_gen|Div0|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~0_combout\ = \baud_gen|Mux12~0_combout\ $ (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~1\ = CARRY(!\baud_gen|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X84_Y24_N6
\baud_gen|Div0|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~42_combout\ & ((\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~1\)) # 
-- (!\baud_gen|Mux11~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~1\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~42_combout\ & ((\baud_gen|Mux11~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_5~1\) # (GND))) # (!\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~1\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~3\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~42_combout\ & (\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~1\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~42_combout\ & ((\baud_gen|Mux11~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~42_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~1\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X84_Y24_N8
\baud_gen|Div0|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~4_combout\ = ((\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~41_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_5~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~5\ = CARRY((\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~41_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_5~3\))) # 
-- (!\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~41_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~41_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X84_Y24_N10
\baud_gen|Div0|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~40_combout\ & ((\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~5\)) # 
-- (!\baud_gen|Mux9~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~5\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~40_combout\ & ((\baud_gen|Mux9~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_5~5\) # (GND))) # (!\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~5\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~7\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~40_combout\ & (\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~5\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~40_combout\ & ((\baud_gen|Mux9~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_5~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~40_combout\,
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X84_Y24_N12
\baud_gen|Div0|auto_generated|divider|divider|op_5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~8_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~39_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_5~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~9\ = CARRY((\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~39_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~7\)) # (!\baud_gen|Mux4~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~39_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_5~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~39_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X84_Y24_N14
\baud_gen|Div0|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~10_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~38_combout\ & ((\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~9\ & VCC)) # 
-- (!\baud_gen|Mux7~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~9\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~38_combout\ & ((\baud_gen|Mux7~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~9\)) 
-- # (!\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~9\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~11\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~38_combout\ & (!\baud_gen|Mux7~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~38_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_5~9\) # (!\baud_gen|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~38_combout\,
	datab => \baud_gen|Mux7~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~11\);

-- Location: LCCOMB_X84_Y24_N16
\baud_gen|Div0|auto_generated|divider|divider|op_5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~12_combout\ = ((\baud_gen|Mux6~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~37_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_5~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~13\ = CARRY((\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~37_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~11\)) # (!\baud_gen|Mux6~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~37_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_5~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~37_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~13\);

-- Location: LCCOMB_X84_Y24_N18
\baud_gen|Div0|auto_generated|divider|divider|op_5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~14_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~36_combout\ & ((\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~13\)) # 
-- (!\baud_gen|Mux5~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~13\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~36_combout\ & ((\baud_gen|Mux5~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_5~13\) # (GND))) # (!\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~15\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~36_combout\ & (\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~36_combout\ & ((\baud_gen|Mux5~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_5~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~36_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~15\);

-- Location: LCCOMB_X84_Y24_N20
\baud_gen|Div0|auto_generated|divider|divider|op_5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~16_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~35_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_5~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~17\ = CARRY((\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~35_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_5~15\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~35_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~35_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~17\);

-- Location: LCCOMB_X84_Y24_N22
\baud_gen|Div0|auto_generated|divider|divider|op_5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~18_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~34_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~17\) # (GND))))) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~34_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_5~17\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~34_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~17\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~19\ = CARRY((\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_5~17\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~34_combout\))) # 
-- (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~34_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~34_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~19\);

-- Location: LCCOMB_X84_Y24_N24
\baud_gen|Div0|auto_generated|divider|divider|op_5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~20_combout\ = \baud_gen|Div0|auto_generated|divider|divider|op_5~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~20_combout\);

-- Location: LCCOMB_X82_Y24_N20
\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_5~20_combout\) # ((\SW[16]~input_o\) # ((\SW[15]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_5~20_combout\,
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\);

-- Location: LCCOMB_X83_Y24_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~43_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~34_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_5~18_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~43_combout\);

-- Location: LCCOMB_X84_Y24_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~44_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~35_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~35_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_5~16_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~44_combout\);

-- Location: LCCOMB_X81_Y24_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~45_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~36_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~36_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~45_combout\);

-- Location: LCCOMB_X84_Y24_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~46_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~37_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~37_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_5~12_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~46_combout\);

-- Location: LCCOMB_X81_Y24_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~47_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~38_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~38_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~47_combout\);

-- Location: LCCOMB_X84_Y24_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~48_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~39_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~39_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_5~8_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~48_combout\);

-- Location: LCCOMB_X84_Y24_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~49_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~40_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~40_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_5~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~49_combout\);

-- Location: LCCOMB_X81_Y24_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~50_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~41_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~41_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_5~4_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~50_combout\);

-- Location: LCCOMB_X81_Y24_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~51_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~42_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~42_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_5~2_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~51_combout\);

-- Location: LCCOMB_X85_Y25_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~52_combout\ = (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & \baud_gen|Div0|auto_generated|divider|divider|op_5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_5~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~52_combout\);

-- Location: LCCOMB_X82_Y25_N8
\baud_gen|Div0|auto_generated|divider|divider|op_5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~22_combout\ = !\baud_gen|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \baud_gen|Mux12~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~22_combout\);

-- Location: LCCOMB_X85_Y25_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[298]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut\(298) = (\baud_gen|Div0|auto_generated|divider|divider|op_5~22_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_5~22_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(298));

-- Location: LCCOMB_X85_Y24_N8
\baud_gen|Div0|auto_generated|divider|divider|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~0_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(298) & ((GND) # (!\baud_gen|Mux12~0_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut\(298) & 
-- (\baud_gen|Mux12~0_combout\ $ (GND)))
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~1\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(298)) # (!\baud_gen|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(298),
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X85_Y24_N10
\baud_gen|Div0|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~52_combout\ & ((\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~1\)) # 
-- (!\baud_gen|Mux11~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_6~1\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~52_combout\ & ((\baud_gen|Mux11~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_6~1\) # (GND))) # (!\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~1\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~3\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~52_combout\ & (\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~1\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~52_combout\ & ((\baud_gen|Mux11~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~52_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~1\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X85_Y24_N12
\baud_gen|Div0|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~4_combout\ = ((\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~51_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_6~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~5\ = CARRY((\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~51_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~3\))) # 
-- (!\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~51_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~51_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X85_Y24_N14
\baud_gen|Div0|auto_generated|divider|divider|op_6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~6_combout\ = (\baud_gen|Mux9~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~50_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~5\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~50_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~5\) # (GND))))) # (!\baud_gen|Mux9~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~50_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_6~5\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~50_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~5\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~7\ = CARRY((\baud_gen|Mux9~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_6~5\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~50_combout\))) # 
-- (!\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~50_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux9~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~50_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X85_Y24_N16
\baud_gen|Div0|auto_generated|divider|divider|op_6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~8_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~49_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_6~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~9\ = CARRY((\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~49_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~7\)) # (!\baud_gen|Mux4~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~49_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~49_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X85_Y24_N18
\baud_gen|Div0|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~10_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~48_combout\ & ((\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_6~9\ & VCC)) # 
-- (!\baud_gen|Mux7~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~9\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~48_combout\ & ((\baud_gen|Mux7~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~9\)) 
-- # (!\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~9\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~11\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~48_combout\ & (!\baud_gen|Mux7~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~48_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_6~9\) # (!\baud_gen|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~48_combout\,
	datab => \baud_gen|Mux7~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X85_Y24_N20
\baud_gen|Div0|auto_generated|divider|divider|op_6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~12_combout\ = ((\baud_gen|Mux6~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~47_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_6~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~13\ = CARRY((\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~47_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~11\)) # (!\baud_gen|Mux6~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~47_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~47_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~13\);

-- Location: LCCOMB_X85_Y24_N22
\baud_gen|Div0|auto_generated|divider|divider|op_6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~14_combout\ = (\baud_gen|Mux5~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~46_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~46_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~13\) # (GND))))) # (!\baud_gen|Mux5~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~46_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_6~13\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~46_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~15\ = CARRY((\baud_gen|Mux5~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_6~13\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~46_combout\))) # 
-- (!\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~46_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~46_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~15\);

-- Location: LCCOMB_X85_Y24_N24
\baud_gen|Div0|auto_generated|divider|divider|op_6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~16_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~45_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_6~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~17\ = CARRY((\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~45_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~15\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~45_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~45_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~17\);

-- Location: LCCOMB_X85_Y24_N26
\baud_gen|Div0|auto_generated|divider|divider|op_6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~18_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~44_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~44_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~17\) # (GND))))) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~44_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_6~17\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~44_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~17\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~19\ = CARRY((\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_6~17\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~44_combout\))) # 
-- (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~44_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~44_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~19\);

-- Location: LCCOMB_X85_Y24_N28
\baud_gen|Div0|auto_generated|divider|divider|op_6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~20_combout\ = ((\baud_gen|Mux2~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~43_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_6~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~21\ = CARRY((\baud_gen|Mux2~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~43_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~19\)) # (!\baud_gen|Mux2~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~43_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux2~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~43_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~21\);

-- Location: LCCOMB_X85_Y24_N30
\baud_gen|Div0|auto_generated|divider|divider|op_6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ = !\baud_gen|Div0|auto_generated|divider|divider|op_6~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\);

-- Location: LCCOMB_X82_Y24_N18
\baud_gen|Div0|auto_generated|divider|divider|selnose[405]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|selnose\(405) = (\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\) # ((\SW[16]~input_o\ & ((\SW[14]~input_o\) # (\SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405));

-- Location: LCCOMB_X85_Y25_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~53_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~43_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~43_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~20_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~53_combout\);

-- Location: LCCOMB_X84_Y23_N28
\baud_gen|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux1~0_combout\ = ((!\SW[14]~input_o\ & !\SW[15]~input_o\)) # (!\SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \baud_gen|Mux1~0_combout\);

-- Location: LCCOMB_X85_Y25_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~54_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~44_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~44_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~54_combout\);

-- Location: LCCOMB_X81_Y24_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~55_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~45_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~45_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_6~16_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~55_combout\);

-- Location: LCCOMB_X85_Y24_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~56_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~46_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (\baud_gen|Div0|auto_generated|divider|divider|op_6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_6~14_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~46_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~56_combout\);

-- Location: LCCOMB_X85_Y24_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~57_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~47_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~47_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~57_combout\);

-- Location: LCCOMB_X84_Y24_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~58_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~48_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~48_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~58_combout\);

-- Location: LCCOMB_X85_Y24_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~59_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~49_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~49_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_6~8_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~59_combout\);

-- Location: LCCOMB_X85_Y25_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~60_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~50_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~50_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~60_combout\);

-- Location: LCCOMB_X85_Y24_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~61_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~51_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (\baud_gen|Div0|auto_generated|divider|divider|op_6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_6~4_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~51_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~61_combout\);

-- Location: LCCOMB_X85_Y25_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_5~0_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (((\baud_gen|Div0|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_5~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~2_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\);

-- Location: LCCOMB_X85_Y25_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & ((\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\) # 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_5~22_combout\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (((\baud_gen|Div0|auto_generated|divider|divider|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_5~22_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\);

-- Location: LCCOMB_X82_Y24_N22
\baud_gen|Div0|auto_generated|divider|divider|op_6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~24_combout\ = !\baud_gen|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \baud_gen|Mux12~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~24_combout\);

-- Location: LCCOMB_X84_Y23_N14
\baud_gen|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux0~0_combout\ = (\SW[14]~input_o\ & (\SW[16]~input_o\ & \SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \baud_gen|Mux0~0_combout\);

-- Location: LCCOMB_X82_Y24_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[319]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut\(319) = (\baud_gen|Div0|auto_generated|divider|divider|op_6~24_combout\) # (((\baud_gen|Mux0~0_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\)) # 
-- (!\baud_gen|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_6~24_combout\,
	datab => \baud_gen|Mux1~0_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(319));

-- Location: LCCOMB_X84_Y25_N2
\baud_gen|Div0|auto_generated|divider|divider|op_7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~0_combout\ = (\baud_gen|Mux12~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(319) $ (VCC))) # (!\baud_gen|Mux12~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(319)) # (GND)))
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~1\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(319)) # (!\baud_gen|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux12~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(319),
	datad => VCC,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~0_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X84_Y25_N4
\baud_gen|Div0|auto_generated|divider|divider|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~2_combout\ = (\baud_gen|Mux11~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~1\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_7~1\) # (GND))))) # (!\baud_gen|Mux11~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~1\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~1\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~3\ = CARRY((\baud_gen|Mux11~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_7~1\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\))) # 
-- (!\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux11~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~1\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X84_Y25_N6
\baud_gen|Div0|auto_generated|divider|divider|op_7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~4_combout\ = ((\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_7~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~5\ = CARRY((\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~3\))) # 
-- (!\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X84_Y25_N8
\baud_gen|Div0|auto_generated|divider|divider|op_7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~6_combout\ = (\baud_gen|Mux9~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~61_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~5\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~61_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_7~5\) # (GND))))) # (!\baud_gen|Mux9~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~61_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~5\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~61_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~5\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~7\ = CARRY((\baud_gen|Mux9~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_7~5\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~61_combout\))) # 
-- (!\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~61_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux9~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~61_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X84_Y25_N10
\baud_gen|Div0|auto_generated|divider|divider|op_7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~8_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~60_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_7~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~9\ = CARRY((\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~60_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~7\)) # (!\baud_gen|Mux4~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~60_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~60_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X84_Y25_N12
\baud_gen|Div0|auto_generated|divider|divider|op_7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~10_combout\ = (\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~59_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_7~9\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~59_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~9\)))) # (!\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~59_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_7~9\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~59_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_7~9\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~11\ = CARRY((\baud_gen|Mux7~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~59_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~9\)) # (!\baud_gen|Mux7~0_combout\ 
-- & ((!\baud_gen|Div0|auto_generated|divider|divider|op_7~9\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~59_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X84_Y25_N14
\baud_gen|Div0|auto_generated|divider|divider|op_7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~12_combout\ = ((\baud_gen|Mux6~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~58_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_7~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~13\ = CARRY((\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~58_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~11\)) # (!\baud_gen|Mux6~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~58_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~58_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~13\);

-- Location: LCCOMB_X84_Y25_N16
\baud_gen|Div0|auto_generated|divider|divider|op_7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~14_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~57_combout\ & ((\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~13\)) # 
-- (!\baud_gen|Mux5~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_7~13\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~57_combout\ & ((\baud_gen|Mux5~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~13\) # (GND))) # (!\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~15\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~57_combout\ & (\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~57_combout\ & ((\baud_gen|Mux5~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~57_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~15\);

-- Location: LCCOMB_X84_Y25_N18
\baud_gen|Div0|auto_generated|divider|divider|op_7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~16_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~56_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_7~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~17\ = CARRY((\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~56_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~15\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~56_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~56_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~17\);

-- Location: LCCOMB_X84_Y25_N20
\baud_gen|Div0|auto_generated|divider|divider|op_7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~18_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~55_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~55_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_7~17\) # (GND))))) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~55_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~17\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~55_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~17\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~19\ = CARRY((\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_7~17\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~55_combout\))) # 
-- (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~55_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~55_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~19\);

-- Location: LCCOMB_X84_Y25_N22
\baud_gen|Div0|auto_generated|divider|divider|op_7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~20_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~54_combout\ $ (\baud_gen|Mux2~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_7~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~21\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~54_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_7~19\) # (!\baud_gen|Mux2~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~54_combout\ & (!\baud_gen|Mux2~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~54_combout\,
	datab => \baud_gen|Mux2~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~21\);

-- Location: LCCOMB_X84_Y25_N24
\baud_gen|Div0|auto_generated|divider|divider|op_7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~22_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~53_combout\ & ((\baud_gen|Mux1~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_7~21\ & VCC)) # 
-- (!\baud_gen|Mux1~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~21\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~53_combout\ & ((\baud_gen|Mux1~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_7~21\)) # (!\baud_gen|Mux1~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_7~21\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~23\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~53_combout\ & (!\baud_gen|Mux1~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~53_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_7~21\) # (!\baud_gen|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~53_combout\,
	datab => \baud_gen|Mux1~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~23\);

-- Location: LCCOMB_X84_Y25_N26
\baud_gen|Div0|auto_generated|divider|divider|op_7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ = \baud_gen|Div0|auto_generated|divider|divider|op_7~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\);

-- Location: LCCOMB_X82_Y23_N20
\baud_gen|Div0|auto_generated|divider|divider|selnose[432]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|selnose\(432) = (\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\) # ((\SW[14]~input_o\ & (\SW[15]~input_o\ & \SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|selnose\(432));

-- Location: LCCOMB_X80_Y23_N6
\baud_gen|teller[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[0]~28_combout\ = \baud_gen|teller\(0) $ (VCC)
-- \baud_gen|teller[0]~29\ = CARRY(\baud_gen|teller\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(0),
	datad => VCC,
	combout => \baud_gen|teller[0]~28_combout\,
	cout => \baud_gen|teller[0]~29\);

-- Location: LCCOMB_X82_Y23_N16
\baud_gen|Div0|auto_generated|divider|divider|selnose[324]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|selnose[324]~10_combout\ = (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\ & (!\SW[15]~input_o\ & (!\SW[16]~input_o\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|selnose[324]~10_combout\);

-- Location: LCCOMB_X80_Y23_N24
\baud_gen|teller[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[9]~46_combout\ = (\baud_gen|teller\(9) & (!\baud_gen|teller[8]~45\)) # (!\baud_gen|teller\(9) & ((\baud_gen|teller[8]~45\) # (GND)))
-- \baud_gen|teller[9]~47\ = CARRY((!\baud_gen|teller[8]~45\) # (!\baud_gen|teller\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(9),
	datad => VCC,
	cin => \baud_gen|teller[8]~45\,
	combout => \baud_gen|teller[9]~46_combout\,
	cout => \baud_gen|teller[9]~47\);

-- Location: LCCOMB_X80_Y23_N26
\baud_gen|teller[10]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[10]~58_combout\ = (\baud_gen|teller\(10) & (\baud_gen|teller[9]~47\ $ (GND))) # (!\baud_gen|teller\(10) & (!\baud_gen|teller[9]~47\ & VCC))
-- \baud_gen|teller[10]~59\ = CARRY((\baud_gen|teller\(10) & !\baud_gen|teller[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(10),
	datad => VCC,
	cin => \baud_gen|teller[9]~47\,
	combout => \baud_gen|teller[10]~58_combout\,
	cout => \baud_gen|teller[10]~59\);

-- Location: FF_X80_Y23_N27
\baud_gen|teller[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[10]~58_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(10));

-- Location: LCCOMB_X80_Y23_N28
\baud_gen|teller[11]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[11]~60_combout\ = (\baud_gen|teller\(11) & (!\baud_gen|teller[10]~59\)) # (!\baud_gen|teller\(11) & ((\baud_gen|teller[10]~59\) # (GND)))
-- \baud_gen|teller[11]~61\ = CARRY((!\baud_gen|teller[10]~59\) # (!\baud_gen|teller\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(11),
	datad => VCC,
	cin => \baud_gen|teller[10]~59\,
	combout => \baud_gen|teller[11]~60_combout\,
	cout => \baud_gen|teller[11]~61\);

-- Location: FF_X80_Y23_N29
\baud_gen|teller[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[11]~60_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(11));

-- Location: LCCOMB_X80_Y23_N30
\baud_gen|teller[12]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[12]~62_combout\ = (\baud_gen|teller\(12) & (\baud_gen|teller[11]~61\ $ (GND))) # (!\baud_gen|teller\(12) & (!\baud_gen|teller[11]~61\ & VCC))
-- \baud_gen|teller[12]~63\ = CARRY((\baud_gen|teller\(12) & !\baud_gen|teller[11]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(12),
	datad => VCC,
	cin => \baud_gen|teller[11]~61\,
	combout => \baud_gen|teller[12]~62_combout\,
	cout => \baud_gen|teller[12]~63\);

-- Location: FF_X80_Y23_N31
\baud_gen|teller[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[12]~62_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(12));

-- Location: LCCOMB_X80_Y22_N0
\baud_gen|teller[13]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[13]~64_combout\ = (\baud_gen|teller\(13) & (!\baud_gen|teller[12]~63\)) # (!\baud_gen|teller\(13) & ((\baud_gen|teller[12]~63\) # (GND)))
-- \baud_gen|teller[13]~65\ = CARRY((!\baud_gen|teller[12]~63\) # (!\baud_gen|teller\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(13),
	datad => VCC,
	cin => \baud_gen|teller[12]~63\,
	combout => \baud_gen|teller[13]~64_combout\,
	cout => \baud_gen|teller[13]~65\);

-- Location: FF_X80_Y22_N1
\baud_gen|teller[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[13]~64_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(13));

-- Location: LCCOMB_X85_Y25_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~62_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~53_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~53_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~53_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~22_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~62_combout\);

-- Location: LCCOMB_X85_Y25_N16
\baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~63_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~54_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~54_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~54_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~63_combout\);

-- Location: LCCOMB_X84_Y25_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~64_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~55_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~55_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_7~18_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~55_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~64_combout\);

-- Location: LCCOMB_X85_Y25_N14
\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~65_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~56_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~56_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_7~16_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~56_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~65_combout\);

-- Location: LCCOMB_X84_Y25_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~66_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~57_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~57_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~57_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~14_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~66_combout\);

-- Location: LCCOMB_X84_Y25_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~67_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~58_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~58_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~58_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~12_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~67_combout\);

-- Location: LCCOMB_X85_Y25_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~68_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~59_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~59_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~59_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~10_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~68_combout\);

-- Location: LCCOMB_X85_Y25_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~69_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~60_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~60_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_7~8_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~60_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~69_combout\);

-- Location: LCCOMB_X85_Y25_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~70_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~61_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~61_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~61_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~70_combout\);

-- Location: LCCOMB_X85_Y25_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~71_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_7~4_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~71_combout\);

-- Location: LCCOMB_X85_Y25_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~72_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_7~2_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\,
	datad => \baud_gen|Mux0~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~72_combout\);

-- Location: LCCOMB_X87_Y25_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~73_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(319))))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(319)))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_7~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(319),
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~73_combout\);

-- Location: LCCOMB_X87_Y25_N16
\baud_gen|Div0|auto_generated|divider|divider|op_7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~26_combout\ = !\baud_gen|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baud_gen|Mux12~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~26_combout\);

-- Location: LCCOMB_X87_Y25_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[340]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut\(340) = (\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\) # ((\baud_gen|Mux0~0_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|op_7~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(340));

-- Location: LCCOMB_X86_Y25_N4
\baud_gen|Div0|auto_generated|divider|divider|op_8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~0_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(340) & ((GND) # (!\baud_gen|Mux12~0_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut\(340) & 
-- (\baud_gen|Mux12~0_combout\ $ (GND)))
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~1\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(340)) # (!\baud_gen|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(340),
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~0_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X86_Y25_N6
\baud_gen|Div0|auto_generated|divider|divider|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~2_combout\ = (\baud_gen|Mux11~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~73_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~1\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~73_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_8~1\) # (GND))))) # (!\baud_gen|Mux11~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~73_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_8~1\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~73_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~1\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~3\ = CARRY((\baud_gen|Mux11~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_8~1\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~73_combout\))) # 
-- (!\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~73_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux11~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~73_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~1\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X86_Y25_N8
\baud_gen|Div0|auto_generated|divider|divider|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~4_combout\ = ((\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~72_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_8~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~5\ = CARRY((\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~72_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~3\))) # 
-- (!\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~72_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~72_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X86_Y25_N10
\baud_gen|Div0|auto_generated|divider|divider|op_8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~71_combout\ & ((\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~5\)) # 
-- (!\baud_gen|Mux9~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_8~5\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~71_combout\ & ((\baud_gen|Mux9~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~5\) # (GND))) # (!\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~5\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~7\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~71_combout\ & (\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~5\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~71_combout\ & ((\baud_gen|Mux9~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~71_combout\,
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X86_Y25_N12
\baud_gen|Div0|auto_generated|divider|divider|op_8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~8_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~70_combout\ $ (\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_8~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~9\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~70_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_8~7\) # (!\baud_gen|Mux4~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~70_combout\ & (!\baud_gen|Mux4~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~70_combout\,
	datab => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X86_Y25_N14
\baud_gen|Div0|auto_generated|divider|divider|op_8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~10_combout\ = (\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~69_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_8~9\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~69_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~9\)))) # (!\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~69_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~9\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~69_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_8~9\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~11\ = CARRY((\baud_gen|Mux7~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~69_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~9\)) # (!\baud_gen|Mux7~0_combout\ 
-- & ((!\baud_gen|Div0|auto_generated|divider|divider|op_8~9\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~69_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~11\);

-- Location: LCCOMB_X86_Y25_N16
\baud_gen|Div0|auto_generated|divider|divider|op_8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~12_combout\ = ((\baud_gen|Mux6~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~68_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_8~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~13\ = CARRY((\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~68_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~11\)) # (!\baud_gen|Mux6~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~68_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~68_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~13\);

-- Location: LCCOMB_X86_Y25_N18
\baud_gen|Div0|auto_generated|divider|divider|op_8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~14_combout\ = (\baud_gen|Mux5~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~67_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~67_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_8~13\) # (GND))))) # (!\baud_gen|Mux5~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~67_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_8~13\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~67_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~15\ = CARRY((\baud_gen|Mux5~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_8~13\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~67_combout\))) # 
-- (!\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~67_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~67_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~15\);

-- Location: LCCOMB_X86_Y25_N20
\baud_gen|Div0|auto_generated|divider|divider|op_8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~16_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~66_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_8~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~17\ = CARRY((\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~66_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~15\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~66_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~66_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~17\);

-- Location: LCCOMB_X86_Y25_N22
\baud_gen|Div0|auto_generated|divider|divider|op_8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~18_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~65_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~65_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_8~17\) # (GND))))) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~65_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_8~17\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~65_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~17\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~19\ = CARRY((\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_8~17\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~65_combout\))) # 
-- (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~65_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~65_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~19\);

-- Location: LCCOMB_X86_Y25_N24
\baud_gen|Div0|auto_generated|divider|divider|op_8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~20_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~64_combout\ $ (\baud_gen|Mux2~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_8~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~21\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~64_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_8~19\) # (!\baud_gen|Mux2~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~64_combout\ & (!\baud_gen|Mux2~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~64_combout\,
	datab => \baud_gen|Mux2~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~21\);

-- Location: LCCOMB_X86_Y25_N26
\baud_gen|Div0|auto_generated|divider|divider|op_8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~22_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~63_combout\ & ((\baud_gen|Mux1~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_8~21\ & VCC)) # 
-- (!\baud_gen|Mux1~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~21\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~63_combout\ & ((\baud_gen|Mux1~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~21\)) # (!\baud_gen|Mux1~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_8~21\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~23\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~63_combout\ & (!\baud_gen|Mux1~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~63_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_8~21\) # (!\baud_gen|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~63_combout\,
	datab => \baud_gen|Mux1~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~23\);

-- Location: LCCOMB_X86_Y25_N28
\baud_gen|Div0|auto_generated|divider|divider|op_8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~24_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~62_combout\ $ (\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_8~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~25\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~62_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_8~23\) # (!\baud_gen|Mux0~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~62_combout\ & (!\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~62_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~25\);

-- Location: LCCOMB_X86_Y25_N30
\baud_gen|Div0|auto_generated|divider|divider|op_8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ = !\baud_gen|Div0|auto_generated|divider|divider|op_8~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~25\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\);

-- Location: LCCOMB_X87_Y25_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~74_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~62_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~62_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_8~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_8~24_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~62_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~74_combout\);

-- Location: LCCOMB_X87_Y25_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~75_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~63_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~63_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~63_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~22_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~75_combout\);

-- Location: LCCOMB_X87_Y25_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~76_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~64_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~64_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~64_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~20_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~76_combout\);

-- Location: LCCOMB_X87_Y25_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~77_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~65_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~65_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~65_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~77_combout\);

-- Location: LCCOMB_X87_Y25_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~78_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~66_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~66_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~66_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~16_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~78_combout\);

-- Location: LCCOMB_X87_Y25_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~79_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~67_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~67_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~67_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~14_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~79_combout\);

-- Location: LCCOMB_X86_Y25_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~80_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~68_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~68_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~68_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~12_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~80_combout\);

-- Location: LCCOMB_X87_Y25_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~81_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~69_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~69_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~69_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~10_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~81_combout\);

-- Location: LCCOMB_X86_Y25_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~82_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~70_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~70_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~70_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~82_combout\);

-- Location: LCCOMB_X87_Y25_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~83_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~71_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~71_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~71_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~83_combout\);

-- Location: LCCOMB_X85_Y25_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~84_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~72_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~72_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_8~4_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~72_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~84_combout\);

-- Location: LCCOMB_X87_Y25_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~85_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~73_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~73_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_8~2_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~73_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~85_combout\);

-- Location: LCCOMB_X87_Y25_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~86_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(340))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(340))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(340),
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~86_combout\);

-- Location: LCCOMB_X87_Y24_N20
\baud_gen|Div0|auto_generated|divider|divider|op_8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~28_combout\ = !\baud_gen|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \baud_gen|Mux12~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~28_combout\);

-- Location: LCCOMB_X87_Y24_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[361]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut\(361) = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\) # ((\baud_gen|Mux0~0_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|op_8~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(361));

-- Location: LCCOMB_X86_Y24_N0
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\ = CARRY(!\baud_gen|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\);

-- Location: LCCOMB_X86_Y24_N2
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(361) & ((\baud_gen|Mux12~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\)) # (!\baud_gen|Mux12~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\ & VCC)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut\(361) & ((\baud_gen|Mux12~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\) # (GND))) # (!\baud_gen|Mux12~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(361) & (\baud_gen|Mux12~0_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut\(361) & ((\baud_gen|Mux12~0_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(361),
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\);

-- Location: LCCOMB_X86_Y24_N4
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~86_combout\ $ (\baud_gen|Mux11~0_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~86_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\) # 
-- (!\baud_gen|Mux11~0_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~86_combout\ & (!\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~86_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\);

-- Location: LCCOMB_X86_Y24_N6
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~85_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~85_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\)))) # 
-- (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~85_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~85_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\ = CARRY((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~85_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\)) # (!\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~85_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\);

-- Location: LCCOMB_X86_Y24_N8
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\ = ((\baud_gen|Mux9~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~84_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\ = CARRY((\baud_gen|Mux9~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~84_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\)) # (!\baud_gen|Mux9~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~84_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux9~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~84_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\);

-- Location: LCCOMB_X86_Y24_N10
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~83_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~83_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\) # (GND))))) # 
-- (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~83_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~83_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\ = CARRY((\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~83_combout\))) # (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~83_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~83_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\);

-- Location: LCCOMB_X86_Y24_N12
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\ = ((\baud_gen|Mux7~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~82_combout\ $ 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~82_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\))) # (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~82_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~82_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\);

-- Location: LCCOMB_X86_Y24_N14
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\ = (\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~81_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~81_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\) # (GND))))) # 
-- (!\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~81_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~81_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\ = CARRY((\baud_gen|Mux6~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~81_combout\))) # (!\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~81_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~81_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\);

-- Location: LCCOMB_X86_Y24_N16
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~80_combout\ $ (\baud_gen|Mux5~0_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~80_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\) # 
-- (!\baud_gen|Mux5~0_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~80_combout\ & (!\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~80_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\);

-- Location: LCCOMB_X86_Y24_N18
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~79_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~79_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\)))) # 
-- (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~79_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~79_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\ = CARRY((\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~79_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\)) # (!\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~79_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\);

-- Location: LCCOMB_X86_Y24_N20
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\ = ((\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~78_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\ = CARRY((\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~78_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\)) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~78_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~78_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\);

-- Location: LCCOMB_X86_Y24_N22
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~77_combout\ & ((\baud_gen|Mux2~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\)) # (!\baud_gen|Mux2~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\ & VCC)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~77_combout\ & ((\baud_gen|Mux2~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\) # (GND))) # (!\baud_gen|Mux2~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~77_combout\ & (\baud_gen|Mux2~0_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~77_combout\ & ((\baud_gen|Mux2~0_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~77_combout\,
	datab => \baud_gen|Mux2~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\);

-- Location: LCCOMB_X86_Y24_N24
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~76_combout\ $ (\baud_gen|Mux1~0_combout\ $ 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~76_combout\ & ((\baud_gen|Mux1~0_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~76_combout\ & (\baud_gen|Mux1~0_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~76_combout\,
	datab => \baud_gen|Mux1~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\);

-- Location: LCCOMB_X86_Y24_N26
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\ = (\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~75_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~75_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\) # (GND))))) # 
-- (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~75_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~75_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~75_combout\))) # (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~75_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~75_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\);

-- Location: LCCOMB_X86_Y24_N28
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\ = ((\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~74_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\ = CARRY((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~74_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\)) # (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~74_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~74_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\);

-- Location: LCCOMB_X86_Y24_N30
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ = !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\);

-- Location: LCCOMB_X87_Y24_N16
\baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~87_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~74_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~74_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~74_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~87_combout\);

-- Location: LCCOMB_X87_Y24_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~88_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~75_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~75_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~75_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~88_combout\);

-- Location: LCCOMB_X87_Y24_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~89_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~76_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~76_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~76_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~89_combout\);

-- Location: LCCOMB_X87_Y24_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~90_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~77_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~77_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~77_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~90_combout\);

-- Location: LCCOMB_X87_Y24_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~91_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~78_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~78_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~78_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~91_combout\);

-- Location: LCCOMB_X87_Y24_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~92_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~79_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~79_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~79_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~92_combout\);

-- Location: LCCOMB_X87_Y24_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~93_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~80_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~80_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~80_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~93_combout\);

-- Location: LCCOMB_X87_Y24_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~94_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~81_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~81_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~81_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~94_combout\);

-- Location: LCCOMB_X87_Y24_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~95_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~82_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~82_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~82_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~95_combout\);

-- Location: LCCOMB_X87_Y24_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~96_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~83_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~83_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~83_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~96_combout\);

-- Location: LCCOMB_X87_Y24_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~97_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~84_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~84_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~84_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~97_combout\);

-- Location: LCCOMB_X87_Y24_N14
\baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~98_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~85_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~85_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~85_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~98_combout\);

-- Location: LCCOMB_X87_Y24_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~99_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~86_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~86_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~86_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~99_combout\);

-- Location: LCCOMB_X87_Y24_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~100_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(361))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(361)))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(361),
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~100_combout\);

-- Location: LCCOMB_X87_Y21_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~101_combout\ = (!\baud_gen|Mux0~0_combout\ & (\baud_gen|Mux12~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Mux12~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~101_combout\);

-- Location: LCCOMB_X87_Y21_N16
\baud_gen|Div0|auto_generated|divider|divider|op_10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\ = CARRY(!\baud_gen|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\);

-- Location: LCCOMB_X87_Y21_N18
\baud_gen|Div0|auto_generated|divider|divider|op_10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~101_combout\ & ((\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\)) # 
-- (!\baud_gen|Mux12~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~101_combout\ & ((\baud_gen|Mux12~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\) # (GND))) # (!\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~3\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~101_combout\ & (\baud_gen|Mux12~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~101_combout\ & ((\baud_gen|Mux12~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~101_combout\,
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X87_Y21_N20
\baud_gen|Div0|auto_generated|divider|divider|op_10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~4_combout\ = ((\baud_gen|Mux11~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~100_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_10~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~5\ = CARRY((\baud_gen|Mux11~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~100_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~3\)) # 
-- (!\baud_gen|Mux11~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~100_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux11~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~100_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~5\);

-- Location: LCCOMB_X87_Y21_N22
\baud_gen|Div0|auto_generated|divider|divider|op_10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~6_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~99_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~5\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~99_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~5\)))) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~99_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~5\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~99_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~5\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~7\ = CARRY((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~99_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~5\)) # (!\baud_gen|Mux3~0_combout\ 
-- & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~5\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~99_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~7\);

-- Location: LCCOMB_X87_Y21_N24
\baud_gen|Div0|auto_generated|divider|divider|op_10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~8_combout\ = ((\baud_gen|Mux9~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~98_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_10~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~9\ = CARRY((\baud_gen|Mux9~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~98_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~7\)) # (!\baud_gen|Mux9~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~98_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux9~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~98_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~9\);

-- Location: LCCOMB_X87_Y21_N26
\baud_gen|Div0|auto_generated|divider|divider|op_10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~10_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~97_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~97_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~9\) # (GND))))) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~97_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_10~9\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~97_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~9\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~11\ = CARRY((\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~9\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~97_combout\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~97_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~97_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~11\);

-- Location: LCCOMB_X87_Y21_N28
\baud_gen|Div0|auto_generated|divider|divider|op_10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~12_combout\ = ((\baud_gen|Mux7~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~96_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_10~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~13\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~96_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~11\))) # 
-- (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~96_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~96_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~13\);

-- Location: LCCOMB_X87_Y21_N30
\baud_gen|Div0|auto_generated|divider|divider|op_10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~14_combout\ = (\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~95_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~95_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~13\) # (GND))))) # (!\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~95_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_10~13\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~95_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~15\ = CARRY((\baud_gen|Mux6~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~13\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~95_combout\))) # 
-- (!\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~95_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~95_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~15\);

-- Location: LCCOMB_X87_Y20_N0
\baud_gen|Div0|auto_generated|divider|divider|op_10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~16_combout\ = ((\baud_gen|Mux5~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~94_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_10~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~17\ = CARRY((\baud_gen|Mux5~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~94_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~15\)) # 
-- (!\baud_gen|Mux5~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~94_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~94_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~17\);

-- Location: LCCOMB_X87_Y20_N2
\baud_gen|Div0|auto_generated|divider|divider|op_10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~18_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~93_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~17\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~93_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~17\)))) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~93_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~17\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~93_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~17\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~19\ = CARRY((\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~93_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~17\)) # 
-- (!\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~17\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~93_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~19\);

-- Location: LCCOMB_X87_Y20_N4
\baud_gen|Div0|auto_generated|divider|divider|op_10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~20_combout\ = ((\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~92_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_10~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~21\ = CARRY((\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~92_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~19\)) # 
-- (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~92_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~92_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~21\);

-- Location: LCCOMB_X87_Y20_N6
\baud_gen|Div0|auto_generated|divider|divider|op_10~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~22_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~91_combout\ & ((\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~21\)) # 
-- (!\baud_gen|Mux2~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~21\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~91_combout\ & ((\baud_gen|Mux2~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_10~21\) # (GND))) # (!\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~21\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~23\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~91_combout\ & (\baud_gen|Mux2~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~91_combout\ & ((\baud_gen|Mux2~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~91_combout\,
	datab => \baud_gen|Mux2~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~23\);

-- Location: LCCOMB_X87_Y20_N8
\baud_gen|Div0|auto_generated|divider|divider|op_10~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~24_combout\ = ((\baud_gen|Mux1~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~90_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_10~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~25\ = CARRY((\baud_gen|Mux1~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~90_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~23\))) # 
-- (!\baud_gen|Mux1~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~90_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux1~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~90_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~25\);

-- Location: LCCOMB_X87_Y20_N10
\baud_gen|Div0|auto_generated|divider|divider|op_10~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~26_combout\ = (\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~89_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~25\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~89_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~25\) # (GND))))) # (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~89_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_10~25\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~89_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~25\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~27\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~25\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~89_combout\))) # 
-- (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~89_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~89_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~25\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~26_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~27\);

-- Location: LCCOMB_X87_Y20_N12
\baud_gen|Div0|auto_generated|divider|divider|op_10~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~28_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~88_combout\ $ (\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_10~27\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~29\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~88_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~27\) # (!\baud_gen|Mux0~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~88_combout\ & (!\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~88_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~27\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~28_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~29\);

-- Location: LCCOMB_X87_Y20_N14
\baud_gen|Div0|auto_generated|divider|divider|op_10~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~30_combout\ = (\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~87_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~29\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~87_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~29\) # (GND))))) # (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~87_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_10~29\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~87_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~29\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~31\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~29\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~87_combout\))) # 
-- (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~87_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~87_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~29\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~30_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~31\);

-- Location: LCCOMB_X87_Y20_N16
\baud_gen|Div0|auto_generated|divider|divider|op_10~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ = \baud_gen|Div0|auto_generated|divider|divider|op_10~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~31\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\);

-- Location: LCCOMB_X87_Y20_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~102_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & \baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~87_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~102_combout\);

-- Location: LCCOMB_X87_Y20_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~103_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~30_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~30_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~103_combout\);

-- Location: LCCOMB_X86_Y22_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~104_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~88_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~88_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~104_combout\);

-- Location: LCCOMB_X86_Y20_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~89_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~89_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\);

-- Location: LCCOMB_X87_Y20_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~90_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~90_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~24_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\);

-- Location: LCCOMB_X87_Y20_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~91_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~22_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~91_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\);

-- Location: LCCOMB_X87_Y20_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~92_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~92_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\);

-- Location: LCCOMB_X87_Y20_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~93_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~93_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~18_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\);

-- Location: LCCOMB_X87_Y20_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~94_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~16_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~94_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\);

-- Location: LCCOMB_X87_Y21_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~95_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~14_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~95_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\);

-- Location: LCCOMB_X87_Y21_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~96_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~12_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~96_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\);

-- Location: LCCOMB_X87_Y21_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~97_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~10_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~97_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\);

-- Location: LCCOMB_X87_Y21_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~98_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~98_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~8_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\);

-- Location: LCCOMB_X87_Y21_N14
\baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~99_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~6_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~99_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\);

-- Location: LCCOMB_X87_Y21_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~100_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~100_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~4_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\);

-- Location: LCCOMB_X87_Y21_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~101_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~101_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~2_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\);

-- Location: LCCOMB_X84_Y23_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\ = (\SW[15]~input_o\ & (\SW[14]~input_o\ & (!\SW[16]~input_o\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\);

-- Location: LCCOMB_X86_Y21_N14
\baud_gen|Div0|auto_generated|divider|divider|op_12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\ = CARRY(!\baud_gen|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\);

-- Location: LCCOMB_X86_Y21_N16
\baud_gen|Div0|auto_generated|divider|divider|op_12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\ & ((\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\)) # 
-- (!\baud_gen|Mux12~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\ & ((\baud_gen|Mux12~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\) # (GND))) # (!\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~3\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\ & (\baud_gen|Mux12~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\ & ((\baud_gen|Mux12~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\,
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X86_Y21_N18
\baud_gen|Div0|auto_generated|divider|divider|op_12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~4_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\ $ (\baud_gen|Mux11~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_12~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~5\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~3\) # (!\baud_gen|Mux11~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\ & (!\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~5\);

-- Location: LCCOMB_X86_Y21_N20
\baud_gen|Div0|auto_generated|divider|divider|op_12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~6_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~5\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~5\)))) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~5\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~5\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~7\ = CARRY((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~5\)) # 
-- (!\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~5\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~7\);

-- Location: LCCOMB_X86_Y21_N22
\baud_gen|Div0|auto_generated|divider|divider|op_12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~8_combout\ = ((\baud_gen|Mux9~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_12~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~9\ = CARRY((\baud_gen|Mux9~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~7\)) # (!\baud_gen|Mux9~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_12~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux9~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~9\);

-- Location: LCCOMB_X86_Y21_N24
\baud_gen|Div0|auto_generated|divider|divider|op_12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~10_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~9\) # (GND))))) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_12~9\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~9\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~11\ = CARRY((\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~9\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~11\);

-- Location: LCCOMB_X86_Y21_N26
\baud_gen|Div0|auto_generated|divider|divider|op_12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~12_combout\ = ((\baud_gen|Mux7~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_12~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~13\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_12~11\))) # 
-- (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~13\);

-- Location: LCCOMB_X86_Y21_N28
\baud_gen|Div0|auto_generated|divider|divider|op_12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~14_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\ & ((\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~13\)) # 
-- (!\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~13\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\ & ((\baud_gen|Mux6~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_12~13\) # (GND))) # (!\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~15\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\ & (\baud_gen|Mux6~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\ & ((\baud_gen|Mux6~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_12~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\,
	datab => \baud_gen|Mux6~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~15\);

-- Location: LCCOMB_X86_Y21_N30
\baud_gen|Div0|auto_generated|divider|divider|op_12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~16_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\ $ (\baud_gen|Mux5~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_12~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~17\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~15\) # (!\baud_gen|Mux5~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\ & (!\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~17\);

-- Location: LCCOMB_X86_Y20_N0
\baud_gen|Div0|auto_generated|divider|divider|op_12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~18_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~17\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~17\)))) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~17\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~17\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~19\ = CARRY((\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~17\)) # 
-- (!\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~17\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~19\);

-- Location: LCCOMB_X86_Y20_N2
\baud_gen|Div0|auto_generated|divider|divider|op_12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~20_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\ $ (\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_12~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~21\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~19\) # (!\baud_gen|Mux3~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\ & (!\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~21\);

-- Location: LCCOMB_X86_Y20_N4
\baud_gen|Div0|auto_generated|divider|divider|op_12~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~22_combout\ = (\baud_gen|Mux2~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~21\) # (GND))))) # (!\baud_gen|Mux2~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_12~21\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~21\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~23\ = CARRY((\baud_gen|Mux2~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~21\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\))) # 
-- (!\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux2~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~23\);

-- Location: LCCOMB_X86_Y20_N6
\baud_gen|Div0|auto_generated|divider|divider|op_12~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~24_combout\ = ((\baud_gen|Mux1~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_12~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~25\ = CARRY((\baud_gen|Mux1~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_12~23\))) # 
-- (!\baud_gen|Mux1~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux1~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~25\);

-- Location: LCCOMB_X86_Y20_N8
\baud_gen|Div0|auto_generated|divider|divider|op_12~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~26_combout\ = (\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~25\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~25\) # (GND))))) # (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_12~25\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~25\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~27\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~25\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\))) # 
-- (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~25\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~26_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~27\);

-- Location: LCCOMB_X86_Y20_N10
\baud_gen|Div0|auto_generated|divider|divider|op_12~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~28_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\ $ (\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_12~27\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~29\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~27\) # (!\baud_gen|Mux0~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\ & (!\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~27\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~28_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~29\);

-- Location: LCCOMB_X86_Y20_N12
\baud_gen|Div0|auto_generated|divider|divider|op_12~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~30_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~104_combout\ & ((\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~29\)) # 
-- (!\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~29\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~104_combout\ & ((\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_12~29\) # (GND))) # (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~29\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~31\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~104_combout\ & (\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~29\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~104_combout\ & ((\baud_gen|Mux0~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_12~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~104_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~29\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~30_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~31\);

-- Location: LCCOMB_X86_Y20_N14
\baud_gen|Div0|auto_generated|divider|divider|op_12~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~33_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~102_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~103_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~102_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~103_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~31\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~33_cout\);

-- Location: LCCOMB_X86_Y20_N16
\baud_gen|Div0|auto_generated|divider|divider|op_12~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ = !\baud_gen|Div0|auto_generated|divider|divider|op_12~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~33_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\);

-- Location: LCCOMB_X86_Y22_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~196_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~88_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~88_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~196_combout\);

-- Location: LCCOMB_X86_Y22_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~130_combout\ = (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & \baud_gen|Div0|auto_generated|divider|divider|op_12~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~30_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~130_combout\);

-- Location: LCCOMB_X86_Y20_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~131_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~131_combout\);

-- Location: LCCOMB_X86_Y20_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~132_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~132_combout\);

-- Location: LCCOMB_X86_Y20_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~118_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~24_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~118_combout\);

-- Location: LCCOMB_X86_Y20_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~119_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~22_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~119_combout\);

-- Location: LCCOMB_X86_Y20_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~120_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~20_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~120_combout\);

-- Location: LCCOMB_X86_Y20_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~121_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~18_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~121_combout\);

-- Location: LCCOMB_X86_Y22_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~122_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~122_combout\);

-- Location: LCCOMB_X86_Y21_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~123_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~123_combout\);

-- Location: LCCOMB_X86_Y21_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~124_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~12_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~124_combout\);

-- Location: LCCOMB_X86_Y21_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~125_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~10_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~125_combout\);

-- Location: LCCOMB_X86_Y21_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~126_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~126_combout\);

-- Location: LCCOMB_X86_Y21_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~127_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~6_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~127_combout\);

-- Location: LCCOMB_X86_Y21_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~128_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~4_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~128_combout\);

-- Location: LCCOMB_X86_Y21_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~129_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~2_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~129_combout\);

-- Location: LCCOMB_X84_Y23_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~195_combout\ = (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\SW[14]~input_o\ & (!\SW[16]~input_o\ & \SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datab => \SW[14]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~195_combout\);

-- Location: LCCOMB_X85_Y21_N14
\baud_gen|Div0|auto_generated|divider|divider|op_13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\ = CARRY(!\baud_gen|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\);

-- Location: LCCOMB_X85_Y21_N16
\baud_gen|Div0|auto_generated|divider|divider|op_13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~195_combout\ & ((\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\)) # 
-- (!\baud_gen|Mux12~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~195_combout\ & ((\baud_gen|Mux12~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\) # (GND))) # (!\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~3\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~195_combout\ & (\baud_gen|Mux12~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~195_combout\ & ((\baud_gen|Mux12~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~195_combout\,
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~3\);

-- Location: LCCOMB_X85_Y21_N18
\baud_gen|Div0|auto_generated|divider|divider|op_13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~4_combout\ = ((\baud_gen|Mux11~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~129_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_13~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~5\ = CARRY((\baud_gen|Mux11~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~129_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~3\)) # 
-- (!\baud_gen|Mux11~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~129_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux11~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~129_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~5\);

-- Location: LCCOMB_X85_Y21_N20
\baud_gen|Div0|auto_generated|divider|divider|op_13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~128_combout\ & ((\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~5\ & VCC)) # 
-- (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~5\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~128_combout\ & ((\baud_gen|Mux3~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~5\)) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~5\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~7\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~128_combout\ & (!\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~5\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~128_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~5\) # (!\baud_gen|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~128_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~7\);

-- Location: LCCOMB_X85_Y21_N22
\baud_gen|Div0|auto_generated|divider|divider|op_13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~8_combout\ = ((\baud_gen|Mux9~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~127_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_13~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~9\ = CARRY((\baud_gen|Mux9~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~127_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~7\)) # (!\baud_gen|Mux9~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~127_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux9~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~127_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~9\);

-- Location: LCCOMB_X85_Y21_N24
\baud_gen|Div0|auto_generated|divider|divider|op_13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~10_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~126_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~126_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~9\) # (GND))))) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~126_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_13~9\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~126_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~9\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~11\ = CARRY((\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~9\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~126_combout\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~126_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~126_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~11\);

-- Location: LCCOMB_X85_Y21_N26
\baud_gen|Div0|auto_generated|divider|divider|op_13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~12_combout\ = ((\baud_gen|Mux7~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~125_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_13~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~13\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~125_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~11\))) # 
-- (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~125_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~125_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~13\);

-- Location: LCCOMB_X85_Y21_N28
\baud_gen|Div0|auto_generated|divider|divider|op_13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~14_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~124_combout\ & ((\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~13\)) # 
-- (!\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~13\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~124_combout\ & ((\baud_gen|Mux6~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_13~13\) # (GND))) # (!\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~15\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~124_combout\ & (\baud_gen|Mux6~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~124_combout\ & ((\baud_gen|Mux6~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~124_combout\,
	datab => \baud_gen|Mux6~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~15\);

-- Location: LCCOMB_X85_Y21_N30
\baud_gen|Div0|auto_generated|divider|divider|op_13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~16_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~123_combout\ $ (\baud_gen|Mux5~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_13~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~17\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~123_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~15\) # (!\baud_gen|Mux5~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~123_combout\ & (!\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~123_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~17\);

-- Location: LCCOMB_X85_Y20_N0
\baud_gen|Div0|auto_generated|divider|divider|op_13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~18_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~122_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~17\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~122_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~17\)))) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~122_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~17\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~122_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~17\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~19\ = CARRY((\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~122_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~17\)) # 
-- (!\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~17\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~122_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~19\);

-- Location: LCCOMB_X85_Y20_N2
\baud_gen|Div0|auto_generated|divider|divider|op_13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~20_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~121_combout\ $ (\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_13~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~21\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~121_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~19\) # (!\baud_gen|Mux3~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~121_combout\ & (!\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~121_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~21\);

-- Location: LCCOMB_X85_Y20_N4
\baud_gen|Div0|auto_generated|divider|divider|op_13~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~22_combout\ = (\baud_gen|Mux2~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~120_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~120_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~21\) # (GND))))) # (!\baud_gen|Mux2~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~120_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_13~21\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~120_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~21\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~23\ = CARRY((\baud_gen|Mux2~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~21\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~120_combout\))) # 
-- (!\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~120_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux2~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~120_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~23\);

-- Location: LCCOMB_X85_Y20_N6
\baud_gen|Div0|auto_generated|divider|divider|op_13~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~24_combout\ = ((\baud_gen|Mux1~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~119_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_13~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~25\ = CARRY((\baud_gen|Mux1~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~119_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~23\))) # 
-- (!\baud_gen|Mux1~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~119_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux1~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~119_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~25\);

-- Location: LCCOMB_X85_Y20_N8
\baud_gen|Div0|auto_generated|divider|divider|op_13~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~26_combout\ = (\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~118_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~25\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~118_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~25\) # (GND))))) # (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~118_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_13~25\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~118_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~25\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~27\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~25\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~118_combout\))) # 
-- (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~118_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~118_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~25\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~26_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~27\);

-- Location: LCCOMB_X85_Y20_N10
\baud_gen|Div0|auto_generated|divider|divider|op_13~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~28_combout\ = ((\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~132_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_13~27\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~29\ = CARRY((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~132_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~27\)) # 
-- (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~132_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~132_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~27\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~28_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~29\);

-- Location: LCCOMB_X85_Y20_N12
\baud_gen|Div0|auto_generated|divider|divider|op_13~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~30_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~131_combout\ & ((\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~29\)) # 
-- (!\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~29\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~131_combout\ & ((\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_13~29\) # (GND))) # (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~29\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~31\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~131_combout\ & (\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~29\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~131_combout\ & ((\baud_gen|Mux0~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~131_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~29\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~30_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~31\);

-- Location: LCCOMB_X85_Y20_N14
\baud_gen|Div0|auto_generated|divider|divider|op_13~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~33_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~196_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~130_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~196_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~130_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~31\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~33_cout\);

-- Location: LCCOMB_X85_Y20_N16
\baud_gen|Div0|auto_generated|divider|divider|op_13~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ = !\baud_gen|Div0|auto_generated|divider|divider|op_13~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~33_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\);

-- Location: LCCOMB_X80_Y23_N0
\baud_gen|teller~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller~50_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|teller\(5)) # (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ $ (!\baud_gen|teller\(4))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ $ (!\baud_gen|teller\(4))) # (!\baud_gen|teller\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baud_gen|teller\(4),
	datad => \baud_gen|teller\(5),
	combout => \baud_gen|teller~50_combout\);

-- Location: LCCOMB_X85_Y20_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~119_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~24_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~119_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\);

-- Location: LCCOMB_X85_Y20_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~120_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~22_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~120_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\);

-- Location: LCCOMB_X85_Y20_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~121_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~20_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~121_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\);

-- Location: LCCOMB_X85_Y20_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~122_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~122_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\);

-- Location: LCCOMB_X85_Y21_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~123_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~16_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~123_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\);

-- Location: LCCOMB_X85_Y21_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~124_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~14_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~124_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139_combout\);

-- Location: LCCOMB_X85_Y21_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~125_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~125_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~12_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\);

-- Location: LCCOMB_X85_Y21_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~126_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~10_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~126_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\);

-- Location: LCCOMB_X85_Y21_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~127_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~127_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~8_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\);

-- Location: LCCOMB_X85_Y21_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~128_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~6_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~128_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\);

-- Location: LCCOMB_X85_Y21_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~129_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~4_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~129_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144_combout\);

-- Location: LCCOMB_X84_Y23_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~195_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~2_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~195_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\);

-- Location: LCCOMB_X84_Y23_N16
\baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~197_combout\ = (\SW[15]~input_o\ & (\SW[14]~input_o\ & (!\SW[16]~input_o\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~197_combout\);

-- Location: LCCOMB_X84_Y21_N16
\baud_gen|Div0|auto_generated|divider|divider|op_14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~0_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~197_combout\ & ((GND) # (!\baud_gen|Mux12~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~197_combout\ & (\baud_gen|Mux12~0_combout\ $ (GND)))
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~1\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~197_combout\) # (!\baud_gen|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~197_combout\,
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~0_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~1\);

-- Location: LCCOMB_X84_Y21_N18
\baud_gen|Div0|auto_generated|divider|divider|op_14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~2_combout\ = (\baud_gen|Mux11~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~1\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~1\) # (GND))))) # (!\baud_gen|Mux11~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_14~1\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~1\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~3\ = CARRY((\baud_gen|Mux11~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_14~1\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\))) # 
-- (!\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux11~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~1\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~3\);

-- Location: LCCOMB_X84_Y21_N20
\baud_gen|Div0|auto_generated|divider|divider|op_14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~4_combout\ = ((\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_14~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~5\ = CARRY((\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_14~3\))) # 
-- (!\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~5\);

-- Location: LCCOMB_X84_Y21_N22
\baud_gen|Div0|auto_generated|divider|divider|op_14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~6_combout\ = (\baud_gen|Mux9~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~5\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~5\) # (GND))))) # (!\baud_gen|Mux9~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_14~5\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~5\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~7\ = CARRY((\baud_gen|Mux9~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_14~5\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\))) # 
-- (!\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux9~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~7\);

-- Location: LCCOMB_X84_Y21_N24
\baud_gen|Div0|auto_generated|divider|divider|op_14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~8_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_14~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~9\ = CARRY((\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~7\)) # (!\baud_gen|Mux4~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_14~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~9\);

-- Location: LCCOMB_X84_Y21_N26
\baud_gen|Div0|auto_generated|divider|divider|op_14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~10_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\ & ((\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~9\ & VCC)) # 
-- (!\baud_gen|Mux7~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~9\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\ & ((\baud_gen|Mux7~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~9\)) # (!\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~9\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~11\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\ & (!\baud_gen|Mux7~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_14~9\) # (!\baud_gen|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\,
	datab => \baud_gen|Mux7~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~11\);

-- Location: LCCOMB_X84_Y21_N28
\baud_gen|Div0|auto_generated|divider|divider|op_14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~12_combout\ = ((\baud_gen|Mux6~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_14~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~13\ = CARRY((\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~11\)) # 
-- (!\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_14~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~13\);

-- Location: LCCOMB_X84_Y21_N30
\baud_gen|Div0|auto_generated|divider|divider|op_14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~14_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139_combout\ & ((\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~13\)) # 
-- (!\baud_gen|Mux5~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~13\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139_combout\ & ((\baud_gen|Mux5~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_14~13\) # (GND))) # (!\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~15\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139_combout\ & (\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139_combout\ & ((\baud_gen|Mux5~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_14~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~15\);

-- Location: LCCOMB_X84_Y20_N0
\baud_gen|Div0|auto_generated|divider|divider|op_14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~16_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\ $ (\baud_gen|Mux4~0_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_14~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~17\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\ & ((\baud_gen|Mux4~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_14~15\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\ & (\baud_gen|Mux4~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\,
	datab => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~17\);

-- Location: LCCOMB_X84_Y20_N2
\baud_gen|Div0|auto_generated|divider|divider|op_14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~18_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~17\) # (GND))))) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_14~17\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~17\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~19\ = CARRY((\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_14~17\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\))) # 
-- (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~19\);

-- Location: LCCOMB_X84_Y20_N4
\baud_gen|Div0|auto_generated|divider|divider|op_14~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~20_combout\ = ((\baud_gen|Mux2~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_14~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~21\ = CARRY((\baud_gen|Mux2~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~19\)) # 
-- (!\baud_gen|Mux2~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_14~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux2~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~21\);

-- Location: LCCOMB_X84_Y20_N6
\baud_gen|Div0|auto_generated|divider|divider|op_14~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~22_combout\ = (\baud_gen|Mux1~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~21\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~21\)))) # (!\baud_gen|Mux1~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~21\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~21\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~23\ = CARRY((\baud_gen|Mux1~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~21\)) # 
-- (!\baud_gen|Mux1~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_14~21\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux1~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~23\);

-- Location: LCCOMB_X84_Y20_N8
\baud_gen|Div0|auto_generated|divider|divider|op_14~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~24_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\ $ (\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_14~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~25\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_14~23\) # (!\baud_gen|Mux0~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\ & (!\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~25\);

-- Location: LCCOMB_X82_Y20_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~198_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~198_combout\);

-- Location: LCCOMB_X82_Y20_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~146_combout\ = (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & \baud_gen|Div0|auto_generated|divider|divider|op_13~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~30_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~146_combout\);

-- Location: LCCOMB_X85_Y20_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~147_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~132_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~132_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~147_combout\);

-- Location: LCCOMB_X85_Y20_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~118_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~118_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\);

-- Location: LCCOMB_X84_Y20_N10
\baud_gen|Div0|auto_generated|divider|divider|op_14~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~26_combout\ = (\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~25\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~25\) # (GND))))) # (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_14~25\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~25\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~27\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_14~25\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\))) # 
-- (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~25\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~26_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~27\);

-- Location: LCCOMB_X84_Y20_N12
\baud_gen|Div0|auto_generated|divider|divider|op_14~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~28_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~147_combout\ $ (\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_14~27\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~29\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~147_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_14~27\) # (!\baud_gen|Mux0~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~147_combout\ & (!\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~147_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~27\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~28_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~29\);

-- Location: LCCOMB_X84_Y20_N14
\baud_gen|Div0|auto_generated|divider|divider|op_14~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~31_cout\ = CARRY((!\baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~198_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~146_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|op_14~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~198_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~146_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~29\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~31_cout\);

-- Location: LCCOMB_X84_Y20_N16
\baud_gen|Div0|auto_generated|divider|divider|op_14~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ = \baud_gen|Div0|auto_generated|divider|divider|op_14~31_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~31_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\);

-- Location: LCCOMB_X84_Y20_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~24_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\);

-- Location: LCCOMB_X84_Y20_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~22_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\);

-- Location: LCCOMB_X84_Y20_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_14~20_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\);

-- Location: LCCOMB_X84_Y20_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\);

-- Location: LCCOMB_X84_Y20_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~16_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\);

-- Location: LCCOMB_X84_Y21_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_14~14_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\);

-- Location: LCCOMB_X84_Y21_N14
\baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~12_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\);

-- Location: LCCOMB_X84_Y21_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_14~10_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\);

-- Location: LCCOMB_X84_Y21_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~8_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\);

-- Location: LCCOMB_X84_Y21_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_14~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\);

-- Location: LCCOMB_X84_Y21_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~4_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\);

-- Location: LCCOMB_X84_Y21_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~2_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\);

-- Location: LCCOMB_X84_Y21_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~197_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~197_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\);

-- Location: LCCOMB_X82_Y21_N28
\baud_gen|Div0|auto_generated|divider|divider|op_14~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~34_combout\ = !\baud_gen|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baud_gen|Mux12~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~34_combout\);

-- Location: LCCOMB_X82_Y21_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[466]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut\(466) = (\baud_gen|Div0|auto_generated|divider|divider|op_14~34_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(466));

-- Location: LCCOMB_X83_Y21_N14
\baud_gen|Div0|auto_generated|divider|divider|op_15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~1_cout\ = CARRY(!\baud_gen|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~1_cout\);

-- Location: LCCOMB_X83_Y21_N16
\baud_gen|Div0|auto_generated|divider|divider|op_15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~2_combout\ = (\baud_gen|Mux12~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(466) & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~1_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut\(466) & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~1_cout\) # (GND))))) # (!\baud_gen|Mux12~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(466) & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_15~1_cout\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut\(466) & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~1_cout\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~3\ = CARRY((\baud_gen|Mux12~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_15~1_cout\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut\(466)))) # (!\baud_gen|Mux12~0_combout\ 
-- & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut\(466) & !\baud_gen|Div0|auto_generated|divider|divider|op_15~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux12~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(466),
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~1_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~3\);

-- Location: LCCOMB_X83_Y21_N18
\baud_gen|Div0|auto_generated|divider|divider|op_15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~4_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\ $ (\baud_gen|Mux11~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_15~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~5\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_15~3\) # (!\baud_gen|Mux11~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\ & (!\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~5\);

-- Location: LCCOMB_X83_Y21_N20
\baud_gen|Div0|auto_generated|divider|divider|op_15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~6_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~5\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~5\)))) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~5\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~5\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~7\ = CARRY((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~5\)) # 
-- (!\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_15~5\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~7\);

-- Location: LCCOMB_X83_Y21_N22
\baud_gen|Div0|auto_generated|divider|divider|op_15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~8_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\ $ (\baud_gen|Mux9~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_15~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~9\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_15~7\) # (!\baud_gen|Mux9~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\ & (!\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\,
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~9\);

-- Location: LCCOMB_X83_Y21_N24
\baud_gen|Div0|auto_generated|divider|divider|op_15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~10_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~9\) # (GND))))) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_15~9\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~9\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~11\ = CARRY((\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_15~9\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~11\);

-- Location: LCCOMB_X83_Y21_N26
\baud_gen|Div0|auto_generated|divider|divider|op_15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~12_combout\ = ((\baud_gen|Mux7~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_15~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~13\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~11\))) # 
-- (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~13\);

-- Location: LCCOMB_X83_Y21_N28
\baud_gen|Div0|auto_generated|divider|divider|op_15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~14_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\ & ((\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~13\)) # 
-- (!\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~13\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\ & ((\baud_gen|Mux6~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_15~13\) # (GND))) # (!\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~15\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\ & (\baud_gen|Mux6~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\ & ((\baud_gen|Mux6~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\,
	datab => \baud_gen|Mux6~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~15\);

-- Location: LCCOMB_X83_Y21_N30
\baud_gen|Div0|auto_generated|divider|divider|op_15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~16_combout\ = ((\baud_gen|Mux5~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_15~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~17\ = CARRY((\baud_gen|Mux5~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~15\)) # 
-- (!\baud_gen|Mux5~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~17\);

-- Location: LCCOMB_X83_Y20_N0
\baud_gen|Div0|auto_generated|divider|divider|op_15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~18_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\ & ((\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~17\ & VCC)) # 
-- (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~17\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\ & ((\baud_gen|Mux4~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~17\)) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~17\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~19\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\ & (!\baud_gen|Mux4~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_15~17\) # (!\baud_gen|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\,
	datab => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~19\);

-- Location: LCCOMB_X83_Y20_N2
\baud_gen|Div0|auto_generated|divider|divider|op_15~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~20_combout\ = ((\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_15~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~21\ = CARRY((\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~19\)) # 
-- (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~21\);

-- Location: LCCOMB_X83_Y20_N4
\baud_gen|Div0|auto_generated|divider|divider|op_15~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~22_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\ & ((\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~21\)) # 
-- (!\baud_gen|Mux2~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~21\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\ & ((\baud_gen|Mux2~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_15~21\) # (GND))) # (!\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~21\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~23\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\ & (\baud_gen|Mux2~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\ & ((\baud_gen|Mux2~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\,
	datab => \baud_gen|Mux2~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~23\);

-- Location: LCCOMB_X83_Y20_N6
\baud_gen|Div0|auto_generated|divider|divider|op_15~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~24_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\ $ (\baud_gen|Mux1~0_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_15~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~25\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\ & ((\baud_gen|Mux1~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~23\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\ & (\baud_gen|Mux1~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\,
	datab => \baud_gen|Mux1~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~25\);

-- Location: LCCOMB_X83_Y20_N8
\baud_gen|Div0|auto_generated|divider|divider|op_15~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~26_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\ & ((\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~25\)) # 
-- (!\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~25\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\ & ((\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_15~25\) # (GND))) # (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~25\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~27\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\ & (\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~25\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\ & ((\baud_gen|Mux0~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~25\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~26_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~27\);

-- Location: LCCOMB_X83_Y20_N10
\baud_gen|Div0|auto_generated|divider|divider|op_15~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~28_combout\ = ((\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_15~27\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~29\ = CARRY((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~27\)) # 
-- (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~27\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~28_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~29\);

-- Location: LCCOMB_X85_Y20_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~199_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~132_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~132_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~199_combout\);

-- Location: LCCOMB_X82_Y20_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~149_combout\ = (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & \baud_gen|Div0|auto_generated|divider|divider|op_14~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~28_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~149_combout\);

-- Location: LCCOMB_X84_Y20_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\);

-- Location: LCCOMB_X83_Y20_N12
\baud_gen|Div0|auto_generated|divider|divider|op_15~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~30_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\ & ((\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~29\)) # 
-- (!\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~29\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\ & ((\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_15~29\) # (GND))) # (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~29\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~31\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\ & (\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~29\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\ & ((\baud_gen|Mux0~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~29\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~30_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~31\);

-- Location: LCCOMB_X83_Y20_N14
\baud_gen|Div0|auto_generated|divider|divider|op_15~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~33_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~199_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~149_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~199_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~149_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~31\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~33_cout\);

-- Location: LCCOMB_X83_Y20_N16
\baud_gen|Div0|auto_generated|divider|divider|op_15~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ = !\baud_gen|Div0|auto_generated|divider|divider|op_15~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~33_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\);

-- Location: LCCOMB_X83_Y20_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~28_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\);

-- Location: LCCOMB_X83_Y20_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\);

-- Location: LCCOMB_X83_Y20_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_15~24_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\);

-- Location: LCCOMB_X83_Y20_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~22_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\);

-- Location: LCCOMB_X83_Y20_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~20_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\);

-- Location: LCCOMB_X83_Y20_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~18_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\);

-- Location: LCCOMB_X83_Y21_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~16_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\);

-- Location: LCCOMB_X83_Y21_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~14_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\);

-- Location: LCCOMB_X83_Y21_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~12_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\);

-- Location: LCCOMB_X83_Y21_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~10_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\);

-- Location: LCCOMB_X83_Y21_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~8_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\);

-- Location: LCCOMB_X83_Y21_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~6_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\);

-- Location: LCCOMB_X83_Y21_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~4_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\);

-- Location: LCCOMB_X82_Y21_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\) # 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_14~34_combout\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|op_15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_15~2_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\);

-- Location: LCCOMB_X82_Y25_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\ = (\SW[14]~input_o\ & (\SW[15]~input_o\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & !\SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\);

-- Location: LCCOMB_X83_Y25_N14
\baud_gen|Div0|auto_generated|divider|divider|op_16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\ = CARRY(!\baud_gen|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\);

-- Location: LCCOMB_X83_Y25_N16
\baud_gen|Div0|auto_generated|divider|divider|op_16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\ & ((\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\)) # 
-- (!\baud_gen|Mux12~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\ & ((\baud_gen|Mux12~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\) # (GND))) # (!\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~3\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\ & (\baud_gen|Mux12~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\ & ((\baud_gen|Mux12~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\,
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~3\);

-- Location: LCCOMB_X83_Y25_N18
\baud_gen|Div0|auto_generated|divider|divider|op_16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~4_combout\ = ((\baud_gen|Mux11~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_16~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~5\ = CARRY((\baud_gen|Mux11~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~3\)) # 
-- (!\baud_gen|Mux11~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux11~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~5\);

-- Location: LCCOMB_X83_Y25_N20
\baud_gen|Div0|auto_generated|divider|divider|op_16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~6_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~5\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~5\)))) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~5\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~5\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~7\ = CARRY((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~5\)) # 
-- (!\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_16~5\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~7\);

-- Location: LCCOMB_X83_Y25_N22
\baud_gen|Div0|auto_generated|divider|divider|op_16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~8_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\ $ (\baud_gen|Mux9~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_16~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~9\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_16~7\) # (!\baud_gen|Mux9~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\ & (!\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\,
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~9\);

-- Location: LCCOMB_X83_Y25_N24
\baud_gen|Div0|auto_generated|divider|divider|op_16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~10_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~9\) # (GND))))) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_16~9\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~9\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~11\ = CARRY((\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_16~9\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~11\);

-- Location: LCCOMB_X83_Y25_N26
\baud_gen|Div0|auto_generated|divider|divider|op_16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~12_combout\ = ((\baud_gen|Mux7~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_16~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~13\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~11\))) # 
-- (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~13\);

-- Location: LCCOMB_X83_Y25_N28
\baud_gen|Div0|auto_generated|divider|divider|op_16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~14_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\ & ((\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~13\)) # 
-- (!\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~13\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\ & ((\baud_gen|Mux6~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_16~13\) # (GND))) # (!\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~15\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\ & (\baud_gen|Mux6~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\ & ((\baud_gen|Mux6~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\,
	datab => \baud_gen|Mux6~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~15\);

-- Location: LCCOMB_X83_Y25_N30
\baud_gen|Div0|auto_generated|divider|divider|op_16~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~16_combout\ = ((\baud_gen|Mux5~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_16~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~17\ = CARRY((\baud_gen|Mux5~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~15\)) # 
-- (!\baud_gen|Mux5~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~17\);

-- Location: LCCOMB_X83_Y24_N0
\baud_gen|Div0|auto_generated|divider|divider|op_16~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~18_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~17\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~17\)))) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~17\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~17\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~19\ = CARRY((\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~17\)) # 
-- (!\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_16~17\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~19\);

-- Location: LCCOMB_X83_Y24_N2
\baud_gen|Div0|auto_generated|divider|divider|op_16~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~20_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\ $ (\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_16~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~21\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_16~19\) # (!\baud_gen|Mux3~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\ & (!\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~21\);

-- Location: LCCOMB_X83_Y24_N4
\baud_gen|Div0|auto_generated|divider|divider|op_16~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~22_combout\ = (\baud_gen|Mux2~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~21\) # (GND))))) # (!\baud_gen|Mux2~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_16~21\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~21\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~23\ = CARRY((\baud_gen|Mux2~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_16~21\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\))) # 
-- (!\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux2~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~23\);

-- Location: LCCOMB_X83_Y24_N6
\baud_gen|Div0|auto_generated|divider|divider|op_16~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~24_combout\ = ((\baud_gen|Mux1~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_16~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~25\ = CARRY((\baud_gen|Mux1~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~23\))) # 
-- (!\baud_gen|Mux1~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux1~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~25\);

-- Location: LCCOMB_X83_Y24_N8
\baud_gen|Div0|auto_generated|divider|divider|op_16~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~26_combout\ = (\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~25\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~25\) # (GND))))) # (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_16~25\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~25\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~27\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_16~25\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\))) # 
-- (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~25\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~26_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~27\);

-- Location: LCCOMB_X83_Y24_N10
\baud_gen|Div0|auto_generated|divider|divider|op_16~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~28_combout\ = ((\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_16~27\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~29\ = CARRY((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~27\)) # 
-- (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~27\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~28_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~29\);

-- Location: LCCOMB_X83_Y24_N12
\baud_gen|Div0|auto_generated|divider|divider|op_16~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~30_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\ & ((\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~29\)) # 
-- (!\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~29\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\ & ((\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_16~29\) # (GND))) # (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~29\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~31\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\ & (\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~29\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\ & ((\baud_gen|Mux0~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~29\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~30_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~31\);

-- Location: LCCOMB_X82_Y20_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~163_combout\ = (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & \baud_gen|Div0|auto_generated|divider|divider|op_15~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~30_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~163_combout\);

-- Location: LCCOMB_X84_Y20_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~200_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~200_combout\);

-- Location: LCCOMB_X83_Y24_N14
\baud_gen|Div0|auto_generated|divider|divider|op_16~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~33_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~163_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~200_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~163_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~200_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~31\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~33_cout\);

-- Location: LCCOMB_X83_Y24_N16
\baud_gen|Div0|auto_generated|divider|divider|op_16~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ = !\baud_gen|Div0|auto_generated|divider|divider|op_16~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~33_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\);

-- Location: LCCOMB_X82_Y24_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~177_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~30_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~30_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~177_combout\);

-- Location: LCCOMB_X83_Y20_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~203_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~28_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~203_combout\);

-- Location: LCCOMB_X83_Y24_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[522]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[522]~178_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_16~28_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[522]~178_combout\);

-- Location: LCCOMB_X83_Y24_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[521]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[521]~179_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[521]~179_combout\);

-- Location: LCCOMB_X83_Y24_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[520]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[520]~180_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_16~24_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[520]~180_combout\);

-- Location: LCCOMB_X83_Y24_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[519]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[519]~181_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~22_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[519]~181_combout\);

-- Location: LCCOMB_X83_Y24_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[518]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[518]~182_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~20_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[518]~182_combout\);

-- Location: LCCOMB_X83_Y24_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[517]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[517]~183_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~18_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[517]~183_combout\);

-- Location: LCCOMB_X83_Y25_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[516]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[516]~184_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~16_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[516]~184_combout\);

-- Location: LCCOMB_X83_Y25_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[515]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[515]~185_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~14_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[515]~185_combout\);

-- Location: LCCOMB_X83_Y25_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[514]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[514]~186_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~12_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[514]~186_combout\);

-- Location: LCCOMB_X83_Y25_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[513]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[513]~187_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~10_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[513]~187_combout\);

-- Location: LCCOMB_X83_Y25_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[512]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[512]~188_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~8_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[512]~188_combout\);

-- Location: LCCOMB_X83_Y25_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[511]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[511]~189_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[511]~189_combout\);

-- Location: LCCOMB_X83_Y25_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[510]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[510]~190_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~4_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[510]~190_combout\);

-- Location: LCCOMB_X82_Y25_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[509]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[509]~191_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~2_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[509]~191_combout\);

-- Location: LCCOMB_X82_Y25_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[508]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[508]~204_combout\ = (\SW[14]~input_o\ & (\SW[15]~input_o\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & !\SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[508]~204_combout\);

-- Location: LCCOMB_X82_Y25_N14
\baud_gen|Div0|auto_generated|divider|divider|op_17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~1_cout\ = CARRY(!\baud_gen|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~1_cout\);

-- Location: LCCOMB_X82_Y25_N16
\baud_gen|Div0|auto_generated|divider|divider|op_17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~3_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[508]~204_combout\ & (\baud_gen|Mux12~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~1_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[508]~204_combout\ & ((\baud_gen|Mux12~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_17~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[508]~204_combout\,
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~1_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~3_cout\);

-- Location: LCCOMB_X82_Y25_N18
\baud_gen|Div0|auto_generated|divider|divider|op_17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~5_cout\ = CARRY((\baud_gen|Mux11~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[509]~191_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~3_cout\)) # 
-- (!\baud_gen|Mux11~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[509]~191_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_17~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux11~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[509]~191_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~3_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~5_cout\);

-- Location: LCCOMB_X82_Y25_N20
\baud_gen|Div0|auto_generated|divider|divider|op_17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~7_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[510]~190_combout\ & (!\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~5_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[510]~190_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~5_cout\) # (!\baud_gen|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[510]~190_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~5_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~7_cout\);

-- Location: LCCOMB_X82_Y25_N22
\baud_gen|Div0|auto_generated|divider|divider|op_17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~9_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[511]~189_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~7_cout\) # (!\baud_gen|Mux9~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[511]~189_combout\ & (!\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[511]~189_combout\,
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~7_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~9_cout\);

-- Location: LCCOMB_X82_Y25_N24
\baud_gen|Div0|auto_generated|divider|divider|op_17~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~11_cout\ = CARRY((\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~9_cout\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[512]~188_combout\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[512]~188_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[512]~188_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~9_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~11_cout\);

-- Location: LCCOMB_X82_Y25_N26
\baud_gen|Div0|auto_generated|divider|divider|op_17~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~13_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[513]~187_combout\ & ((\baud_gen|Mux7~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_17~11_cout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[513]~187_combout\ & (\baud_gen|Mux7~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[513]~187_combout\,
	datab => \baud_gen|Mux7~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~11_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~13_cout\);

-- Location: LCCOMB_X82_Y25_N28
\baud_gen|Div0|auto_generated|divider|divider|op_17~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~15_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[514]~186_combout\ & (\baud_gen|Mux6~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~13_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[514]~186_combout\ & ((\baud_gen|Mux6~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_17~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[514]~186_combout\,
	datab => \baud_gen|Mux6~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~13_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~15_cout\);

-- Location: LCCOMB_X82_Y25_N30
\baud_gen|Div0|auto_generated|divider|divider|op_17~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~17_cout\ = CARRY((\baud_gen|Mux5~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[515]~185_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~15_cout\)) # 
-- (!\baud_gen|Mux5~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[515]~185_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_17~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[515]~185_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~15_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~17_cout\);

-- Location: LCCOMB_X82_Y24_N0
\baud_gen|Div0|auto_generated|divider|divider|op_17~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~19_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[516]~184_combout\ & (!\baud_gen|Mux4~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~17_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[516]~184_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~17_cout\) # (!\baud_gen|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[516]~184_combout\,
	datab => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~17_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~19_cout\);

-- Location: LCCOMB_X82_Y24_N2
\baud_gen|Div0|auto_generated|divider|divider|op_17~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~21_cout\ = CARRY((\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[517]~183_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~19_cout\)) # 
-- (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[517]~183_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_17~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[517]~183_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~19_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~21_cout\);

-- Location: LCCOMB_X82_Y24_N4
\baud_gen|Div0|auto_generated|divider|divider|op_17~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~23_cout\ = CARRY((\baud_gen|Mux2~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~21_cout\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[518]~182_combout\))) # 
-- (!\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[518]~182_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux2~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[518]~182_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~21_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~23_cout\);

-- Location: LCCOMB_X82_Y24_N6
\baud_gen|Div0|auto_generated|divider|divider|op_17~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~25_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[519]~181_combout\ & ((\baud_gen|Mux1~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_17~23_cout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[519]~181_combout\ & (\baud_gen|Mux1~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[519]~181_combout\,
	datab => \baud_gen|Mux1~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~23_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~25_cout\);

-- Location: LCCOMB_X82_Y24_N8
\baud_gen|Div0|auto_generated|divider|divider|op_17~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~27_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[520]~180_combout\ & (\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~25_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[520]~180_combout\ & ((\baud_gen|Mux0~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_17~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[520]~180_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~25_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~27_cout\);

-- Location: LCCOMB_X82_Y24_N10
\baud_gen|Div0|auto_generated|divider|divider|op_17~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~29_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[521]~179_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~27_cout\) # (!\baud_gen|Mux0~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[521]~179_combout\ & (!\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[521]~179_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~27_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~29_cout\);

-- Location: LCCOMB_X82_Y24_N12
\baud_gen|Div0|auto_generated|divider|divider|op_17~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~31_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[522]~178_combout\ & (\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~29_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[522]~178_combout\ & ((\baud_gen|Mux0~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_17~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[522]~178_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~29_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~31_cout\);

-- Location: LCCOMB_X82_Y24_N14
\baud_gen|Div0|auto_generated|divider|divider|op_17~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~33_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~177_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~203_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_17~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~177_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~203_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~31_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~33_cout\);

-- Location: LCCOMB_X82_Y24_N16
\baud_gen|Div0|auto_generated|divider|divider|op_17~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~34_combout\ = !\baud_gen|Div0|auto_generated|divider|divider|op_17~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~33_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_17~34_combout\);

-- Location: LCCOMB_X81_Y23_N2
\baud_gen|teller~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller~49_combout\ = (\baud_gen|teller\(1) & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|op_17~34_combout\ $ (!\baud_gen|teller\(0))))) # (!\baud_gen|teller\(1) & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_17~34_combout\ $ (!\baud_gen|teller\(0))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(1),
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_17~34_combout\,
	datac => \baud_gen|teller\(0),
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baud_gen|teller~49_combout\);

-- Location: LCCOMB_X81_Y23_N12
\baud_gen|teller~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller~51_combout\ = (\baud_gen|teller~50_combout\) # ((\baud_gen|teller~49_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|selnose[324]~10_combout\ $ (\baud_gen|teller\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[324]~10_combout\,
	datab => \baud_gen|teller\(13),
	datac => \baud_gen|teller~50_combout\,
	datad => \baud_gen|teller~49_combout\,
	combout => \baud_gen|teller~51_combout\);

-- Location: LCCOMB_X81_Y23_N10
\baud_gen|teller~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller~90_combout\ = \baud_gen|teller\(12) $ (((!\SW[16]~input_o\ & (!\SW[15]~input_o\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datad => \baud_gen|teller\(12),
	combout => \baud_gen|teller~90_combout\);

-- Location: LCCOMB_X84_Y23_N18
\baud_gen|Div0|auto_generated|divider|divider|selnose[459]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|selnose\(459) = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\) # ((\SW[14]~input_o\ & (\SW[16]~input_o\ & \SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \SW[14]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|selnose\(459));

-- Location: LCCOMB_X82_Y23_N26
\baud_gen|Div0|auto_generated|divider|divider|selnose[486]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|selnose\(486) = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\) # ((\SW[14]~input_o\ & (\SW[15]~input_o\ & \SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|selnose\(486));

-- Location: LCCOMB_X81_Y23_N18
\baud_gen|teller~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller~52_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(459) & ((\baud_gen|teller\(8)) # (\baud_gen|Div0|auto_generated|divider|divider|selnose\(486) $ (!\baud_gen|teller\(7))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(459) & ((\baud_gen|Div0|auto_generated|divider|divider|selnose\(486) $ (!\baud_gen|teller\(7))) # (!\baud_gen|teller\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose\(459),
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose\(486),
	datac => \baud_gen|teller\(7),
	datad => \baud_gen|teller\(8),
	combout => \baud_gen|teller~52_combout\);

-- Location: LCCOMB_X81_Y23_N30
\baud_gen|teller~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller~54_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baud_gen|teller\(11)) # (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ $ (!\baud_gen|teller\(6))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ $ (!\baud_gen|teller\(6))) # (!\baud_gen|teller\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|teller\(11),
	datad => \baud_gen|teller\(6),
	combout => \baud_gen|teller~54_combout\);

-- Location: LCCOMB_X81_Y23_N20
\baud_gen|teller~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller~53_combout\ = (\baud_gen|teller\(10) & ((\baud_gen|Div0|auto_generated|divider|divider|selnose\(405)) # (\baud_gen|Div0|auto_generated|divider|divider|selnose\(432) $ (!\baud_gen|teller\(9))))) # (!\baud_gen|teller\(10) & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|selnose\(432) $ (!\baud_gen|teller\(9))) # (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(405))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(10),
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose\(432),
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	datad => \baud_gen|teller\(9),
	combout => \baud_gen|teller~53_combout\);

-- Location: LCCOMB_X81_Y23_N24
\baud_gen|teller~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller~55_combout\ = (\baud_gen|teller~90_combout\) # ((\baud_gen|teller~52_combout\) # ((\baud_gen|teller~54_combout\) # (\baud_gen|teller~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller~90_combout\,
	datab => \baud_gen|teller~52_combout\,
	datac => \baud_gen|teller~54_combout\,
	datad => \baud_gen|teller~53_combout\,
	combout => \baud_gen|teller~55_combout\);

-- Location: LCCOMB_X79_Y23_N16
\baud_gen|teller~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller~48_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|teller\(2)) # (\baud_gen|teller\(3) $ (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|teller\(3) $ (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\)) # (!\baud_gen|teller\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \baud_gen|teller\(3),
	datac => \baud_gen|teller\(2),
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baud_gen|teller~48_combout\);

-- Location: LCCOMB_X80_Y22_N2
\baud_gen|teller[14]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[14]~66_combout\ = (\baud_gen|teller\(14) & (\baud_gen|teller[13]~65\ $ (GND))) # (!\baud_gen|teller\(14) & (!\baud_gen|teller[13]~65\ & VCC))
-- \baud_gen|teller[14]~67\ = CARRY((\baud_gen|teller\(14) & !\baud_gen|teller[13]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(14),
	datad => VCC,
	cin => \baud_gen|teller[13]~65\,
	combout => \baud_gen|teller[14]~66_combout\,
	cout => \baud_gen|teller[14]~67\);

-- Location: FF_X80_Y22_N3
\baud_gen|teller[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[14]~66_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(14));

-- Location: LCCOMB_X80_Y22_N4
\baud_gen|teller[15]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[15]~68_combout\ = (\baud_gen|teller\(15) & (!\baud_gen|teller[14]~67\)) # (!\baud_gen|teller\(15) & ((\baud_gen|teller[14]~67\) # (GND)))
-- \baud_gen|teller[15]~69\ = CARRY((!\baud_gen|teller[14]~67\) # (!\baud_gen|teller\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(15),
	datad => VCC,
	cin => \baud_gen|teller[14]~67\,
	combout => \baud_gen|teller[15]~68_combout\,
	cout => \baud_gen|teller[15]~69\);

-- Location: FF_X80_Y22_N5
\baud_gen|teller[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[15]~68_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(15));

-- Location: LCCOMB_X80_Y22_N6
\baud_gen|teller[16]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[16]~70_combout\ = (\baud_gen|teller\(16) & (\baud_gen|teller[15]~69\ $ (GND))) # (!\baud_gen|teller\(16) & (!\baud_gen|teller[15]~69\ & VCC))
-- \baud_gen|teller[16]~71\ = CARRY((\baud_gen|teller\(16) & !\baud_gen|teller[15]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(16),
	datad => VCC,
	cin => \baud_gen|teller[15]~69\,
	combout => \baud_gen|teller[16]~70_combout\,
	cout => \baud_gen|teller[16]~71\);

-- Location: FF_X80_Y22_N7
\baud_gen|teller[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[16]~70_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(16));

-- Location: LCCOMB_X80_Y22_N8
\baud_gen|teller[17]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[17]~72_combout\ = (\baud_gen|teller\(17) & (!\baud_gen|teller[16]~71\)) # (!\baud_gen|teller\(17) & ((\baud_gen|teller[16]~71\) # (GND)))
-- \baud_gen|teller[17]~73\ = CARRY((!\baud_gen|teller[16]~71\) # (!\baud_gen|teller\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(17),
	datad => VCC,
	cin => \baud_gen|teller[16]~71\,
	combout => \baud_gen|teller[17]~72_combout\,
	cout => \baud_gen|teller[17]~73\);

-- Location: FF_X80_Y22_N9
\baud_gen|teller[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[17]~72_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(17));

-- Location: LCCOMB_X80_Y22_N26
\baud_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~1_combout\ = (!\baud_gen|teller\(16) & (!\baud_gen|teller\(15) & (!\baud_gen|teller\(17) & !\baud_gen|teller\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(16),
	datab => \baud_gen|teller\(15),
	datac => \baud_gen|teller\(17),
	datad => \baud_gen|teller\(14),
	combout => \baud_gen|Equal0~1_combout\);

-- Location: LCCOMB_X80_Y22_N10
\baud_gen|teller[18]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[18]~74_combout\ = (\baud_gen|teller\(18) & (\baud_gen|teller[17]~73\ $ (GND))) # (!\baud_gen|teller\(18) & (!\baud_gen|teller[17]~73\ & VCC))
-- \baud_gen|teller[18]~75\ = CARRY((\baud_gen|teller\(18) & !\baud_gen|teller[17]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(18),
	datad => VCC,
	cin => \baud_gen|teller[17]~73\,
	combout => \baud_gen|teller[18]~74_combout\,
	cout => \baud_gen|teller[18]~75\);

-- Location: FF_X80_Y22_N11
\baud_gen|teller[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[18]~74_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(18));

-- Location: LCCOMB_X80_Y22_N12
\baud_gen|teller[19]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[19]~76_combout\ = (\baud_gen|teller\(19) & (!\baud_gen|teller[18]~75\)) # (!\baud_gen|teller\(19) & ((\baud_gen|teller[18]~75\) # (GND)))
-- \baud_gen|teller[19]~77\ = CARRY((!\baud_gen|teller[18]~75\) # (!\baud_gen|teller\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(19),
	datad => VCC,
	cin => \baud_gen|teller[18]~75\,
	combout => \baud_gen|teller[19]~76_combout\,
	cout => \baud_gen|teller[19]~77\);

-- Location: FF_X80_Y22_N13
\baud_gen|teller[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[19]~76_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(19));

-- Location: LCCOMB_X80_Y22_N14
\baud_gen|teller[20]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[20]~78_combout\ = (\baud_gen|teller\(20) & (\baud_gen|teller[19]~77\ $ (GND))) # (!\baud_gen|teller\(20) & (!\baud_gen|teller[19]~77\ & VCC))
-- \baud_gen|teller[20]~79\ = CARRY((\baud_gen|teller\(20) & !\baud_gen|teller[19]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(20),
	datad => VCC,
	cin => \baud_gen|teller[19]~77\,
	combout => \baud_gen|teller[20]~78_combout\,
	cout => \baud_gen|teller[20]~79\);

-- Location: FF_X80_Y22_N15
\baud_gen|teller[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[20]~78_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(20));

-- Location: LCCOMB_X80_Y22_N16
\baud_gen|teller[21]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[21]~80_combout\ = (\baud_gen|teller\(21) & (!\baud_gen|teller[20]~79\)) # (!\baud_gen|teller\(21) & ((\baud_gen|teller[20]~79\) # (GND)))
-- \baud_gen|teller[21]~81\ = CARRY((!\baud_gen|teller[20]~79\) # (!\baud_gen|teller\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(21),
	datad => VCC,
	cin => \baud_gen|teller[20]~79\,
	combout => \baud_gen|teller[21]~80_combout\,
	cout => \baud_gen|teller[21]~81\);

-- Location: FF_X80_Y22_N17
\baud_gen|teller[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[21]~80_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(21));

-- Location: LCCOMB_X80_Y22_N18
\baud_gen|teller[22]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[22]~82_combout\ = (\baud_gen|teller\(22) & (\baud_gen|teller[21]~81\ $ (GND))) # (!\baud_gen|teller\(22) & (!\baud_gen|teller[21]~81\ & VCC))
-- \baud_gen|teller[22]~83\ = CARRY((\baud_gen|teller\(22) & !\baud_gen|teller[21]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(22),
	datad => VCC,
	cin => \baud_gen|teller[21]~81\,
	combout => \baud_gen|teller[22]~82_combout\,
	cout => \baud_gen|teller[22]~83\);

-- Location: FF_X80_Y22_N19
\baud_gen|teller[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[22]~82_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(22));

-- Location: LCCOMB_X80_Y22_N20
\baud_gen|teller[23]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[23]~84_combout\ = (\baud_gen|teller\(23) & (!\baud_gen|teller[22]~83\)) # (!\baud_gen|teller\(23) & ((\baud_gen|teller[22]~83\) # (GND)))
-- \baud_gen|teller[23]~85\ = CARRY((!\baud_gen|teller[22]~83\) # (!\baud_gen|teller\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(23),
	datad => VCC,
	cin => \baud_gen|teller[22]~83\,
	combout => \baud_gen|teller[23]~84_combout\,
	cout => \baud_gen|teller[23]~85\);

-- Location: FF_X80_Y22_N21
\baud_gen|teller[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[23]~84_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(23));

-- Location: LCCOMB_X80_Y22_N22
\baud_gen|teller[24]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[24]~86_combout\ = (\baud_gen|teller\(24) & (\baud_gen|teller[23]~85\ $ (GND))) # (!\baud_gen|teller\(24) & (!\baud_gen|teller[23]~85\ & VCC))
-- \baud_gen|teller[24]~87\ = CARRY((\baud_gen|teller\(24) & !\baud_gen|teller[23]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(24),
	datad => VCC,
	cin => \baud_gen|teller[23]~85\,
	combout => \baud_gen|teller[24]~86_combout\,
	cout => \baud_gen|teller[24]~87\);

-- Location: FF_X80_Y22_N23
\baud_gen|teller[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[24]~86_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(24));

-- Location: LCCOMB_X80_Y22_N24
\baud_gen|teller[25]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[25]~88_combout\ = \baud_gen|teller\(25) $ (\baud_gen|teller[24]~87\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(25),
	cin => \baud_gen|teller[24]~87\,
	combout => \baud_gen|teller[25]~88_combout\);

-- Location: FF_X80_Y22_N25
\baud_gen|teller[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[25]~88_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(25));

-- Location: LCCOMB_X80_Y22_N30
\baud_gen|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~3_combout\ = (!\baud_gen|teller\(24) & (!\baud_gen|teller\(22) & (!\baud_gen|teller\(23) & !\baud_gen|teller\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(24),
	datab => \baud_gen|teller\(22),
	datac => \baud_gen|teller\(23),
	datad => \baud_gen|teller\(25),
	combout => \baud_gen|Equal0~3_combout\);

-- Location: LCCOMB_X80_Y22_N28
\baud_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~2_combout\ = (!\baud_gen|teller\(19) & (!\baud_gen|teller\(21) & (!\baud_gen|teller\(20) & !\baud_gen|teller\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(19),
	datab => \baud_gen|teller\(21),
	datac => \baud_gen|teller\(20),
	datad => \baud_gen|teller\(18),
	combout => \baud_gen|Equal0~2_combout\);

-- Location: LCCOMB_X81_Y23_N28
\baud_gen|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~4_combout\ = (\baud_gen|Equal0~1_combout\ & (\baud_gen|Equal0~3_combout\ & \baud_gen|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Equal0~1_combout\,
	datac => \baud_gen|Equal0~3_combout\,
	datad => \baud_gen|Equal0~2_combout\,
	combout => \baud_gen|Equal0~4_combout\);

-- Location: LCCOMB_X81_Y23_N22
\baud_gen|teller~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller~56_combout\ = (\baud_gen|teller~51_combout\) # ((\baud_gen|teller~55_combout\) # ((\baud_gen|teller~48_combout\) # (!\baud_gen|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller~51_combout\,
	datab => \baud_gen|teller~55_combout\,
	datac => \baud_gen|teller~48_combout\,
	datad => \baud_gen|Equal0~4_combout\,
	combout => \baud_gen|teller~56_combout\);

-- Location: LCCOMB_X81_Y23_N16
\baud_gen|teller[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[11]~57_combout\ = (\start_teller~q\) # (((!\baud_gen|teller~56_combout\ & !\baud_gen|Equal0~12_combout\)) # (!\GPIO[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_teller~q\,
	datab => \GPIO[5]~input_o\,
	datac => \baud_gen|teller~56_combout\,
	datad => \baud_gen|Equal0~12_combout\,
	combout => \baud_gen|teller[11]~57_combout\);

-- Location: FF_X80_Y23_N7
\baud_gen|teller[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[0]~28_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(0));

-- Location: LCCOMB_X80_Y23_N8
\baud_gen|teller[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[1]~30_combout\ = (\baud_gen|teller\(1) & (!\baud_gen|teller[0]~29\)) # (!\baud_gen|teller\(1) & ((\baud_gen|teller[0]~29\) # (GND)))
-- \baud_gen|teller[1]~31\ = CARRY((!\baud_gen|teller[0]~29\) # (!\baud_gen|teller\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(1),
	datad => VCC,
	cin => \baud_gen|teller[0]~29\,
	combout => \baud_gen|teller[1]~30_combout\,
	cout => \baud_gen|teller[1]~31\);

-- Location: FF_X80_Y23_N9
\baud_gen|teller[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[1]~30_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(1));

-- Location: LCCOMB_X80_Y23_N10
\baud_gen|teller[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[2]~32_combout\ = (\baud_gen|teller\(2) & (\baud_gen|teller[1]~31\ $ (GND))) # (!\baud_gen|teller\(2) & (!\baud_gen|teller[1]~31\ & VCC))
-- \baud_gen|teller[2]~33\ = CARRY((\baud_gen|teller\(2) & !\baud_gen|teller[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(2),
	datad => VCC,
	cin => \baud_gen|teller[1]~31\,
	combout => \baud_gen|teller[2]~32_combout\,
	cout => \baud_gen|teller[2]~33\);

-- Location: FF_X80_Y23_N11
\baud_gen|teller[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[2]~32_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(2));

-- Location: LCCOMB_X80_Y23_N12
\baud_gen|teller[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[3]~34_combout\ = (\baud_gen|teller\(3) & (!\baud_gen|teller[2]~33\)) # (!\baud_gen|teller\(3) & ((\baud_gen|teller[2]~33\) # (GND)))
-- \baud_gen|teller[3]~35\ = CARRY((!\baud_gen|teller[2]~33\) # (!\baud_gen|teller\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(3),
	datad => VCC,
	cin => \baud_gen|teller[2]~33\,
	combout => \baud_gen|teller[3]~34_combout\,
	cout => \baud_gen|teller[3]~35\);

-- Location: FF_X80_Y23_N13
\baud_gen|teller[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[3]~34_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(3));

-- Location: LCCOMB_X80_Y23_N14
\baud_gen|teller[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[4]~36_combout\ = (\baud_gen|teller\(4) & (\baud_gen|teller[3]~35\ $ (GND))) # (!\baud_gen|teller\(4) & (!\baud_gen|teller[3]~35\ & VCC))
-- \baud_gen|teller[4]~37\ = CARRY((\baud_gen|teller\(4) & !\baud_gen|teller[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(4),
	datad => VCC,
	cin => \baud_gen|teller[3]~35\,
	combout => \baud_gen|teller[4]~36_combout\,
	cout => \baud_gen|teller[4]~37\);

-- Location: FF_X80_Y23_N15
\baud_gen|teller[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[4]~36_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(4));

-- Location: LCCOMB_X80_Y23_N16
\baud_gen|teller[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[5]~38_combout\ = (\baud_gen|teller\(5) & (!\baud_gen|teller[4]~37\)) # (!\baud_gen|teller\(5) & ((\baud_gen|teller[4]~37\) # (GND)))
-- \baud_gen|teller[5]~39\ = CARRY((!\baud_gen|teller[4]~37\) # (!\baud_gen|teller\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(5),
	datad => VCC,
	cin => \baud_gen|teller[4]~37\,
	combout => \baud_gen|teller[5]~38_combout\,
	cout => \baud_gen|teller[5]~39\);

-- Location: FF_X80_Y23_N17
\baud_gen|teller[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[5]~38_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(5));

-- Location: LCCOMB_X80_Y23_N18
\baud_gen|teller[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[6]~40_combout\ = (\baud_gen|teller\(6) & (\baud_gen|teller[5]~39\ $ (GND))) # (!\baud_gen|teller\(6) & (!\baud_gen|teller[5]~39\ & VCC))
-- \baud_gen|teller[6]~41\ = CARRY((\baud_gen|teller\(6) & !\baud_gen|teller[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(6),
	datad => VCC,
	cin => \baud_gen|teller[5]~39\,
	combout => \baud_gen|teller[6]~40_combout\,
	cout => \baud_gen|teller[6]~41\);

-- Location: FF_X80_Y23_N19
\baud_gen|teller[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[6]~40_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(6));

-- Location: LCCOMB_X80_Y23_N20
\baud_gen|teller[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[7]~42_combout\ = (\baud_gen|teller\(7) & (!\baud_gen|teller[6]~41\)) # (!\baud_gen|teller\(7) & ((\baud_gen|teller[6]~41\) # (GND)))
-- \baud_gen|teller[7]~43\ = CARRY((!\baud_gen|teller[6]~41\) # (!\baud_gen|teller\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(7),
	datad => VCC,
	cin => \baud_gen|teller[6]~41\,
	combout => \baud_gen|teller[7]~42_combout\,
	cout => \baud_gen|teller[7]~43\);

-- Location: FF_X80_Y23_N21
\baud_gen|teller[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[7]~42_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(7));

-- Location: LCCOMB_X80_Y23_N22
\baud_gen|teller[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[8]~44_combout\ = (\baud_gen|teller\(8) & (\baud_gen|teller[7]~43\ $ (GND))) # (!\baud_gen|teller\(8) & (!\baud_gen|teller[7]~43\ & VCC))
-- \baud_gen|teller[8]~45\ = CARRY((\baud_gen|teller\(8) & !\baud_gen|teller[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(8),
	datad => VCC,
	cin => \baud_gen|teller[7]~43\,
	combout => \baud_gen|teller[8]~44_combout\,
	cout => \baud_gen|teller[8]~45\);

-- Location: FF_X80_Y23_N23
\baud_gen|teller[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[8]~44_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(8));

-- Location: FF_X80_Y23_N25
\baud_gen|teller[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[9]~46_combout\,
	sclr => \baud_gen|teller[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(9));

-- Location: LCCOMB_X82_Y23_N4
\baud_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~0_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (!\baud_gen|teller\(9) & (\baud_gen|Div0|auto_generated|divider|divider|selnose\(432) $ (\baud_gen|teller\(8))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (\baud_gen|teller\(9) & (\baud_gen|Div0|auto_generated|divider|divider|selnose\(432) $ (\baud_gen|teller\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose\(432),
	datac => \baud_gen|teller\(9),
	datad => \baud_gen|teller\(8),
	combout => \baud_gen|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y23_N14
\baud_gen|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~5_combout\ = (\baud_gen|teller\(5) & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ $ (\baud_gen|teller\(4))))) # (!\baud_gen|teller\(5) & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ $ (\baud_gen|teller\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(5),
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baud_gen|teller\(4),
	combout => \baud_gen|Equal0~5_combout\);

-- Location: LCCOMB_X81_Y23_N4
\baud_gen|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~6_combout\ = (\baud_gen|Equal0~5_combout\ & (!\baud_gen|teller\(13) & (\baud_gen|Div0|auto_generated|divider|divider|selnose\(486) $ (\baud_gen|teller\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose\(486),
	datab => \baud_gen|teller\(6),
	datac => \baud_gen|Equal0~5_combout\,
	datad => \baud_gen|teller\(13),
	combout => \baud_gen|Equal0~6_combout\);

-- Location: LCCOMB_X82_Y23_N22
\baud_gen|Div0|auto_generated|divider|divider|selnose[351]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|selnose[351]~9_combout\ = (\SW[15]~input_o\) # ((\SW[16]~input_o\) # (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|selnose[351]~9_combout\);

-- Location: LCCOMB_X80_Y23_N2
\baud_gen|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~10_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(459) & (!\baud_gen|teller\(7) & (\baud_gen|teller\(11) $ (\baud_gen|Div0|auto_generated|divider|divider|selnose[351]~9_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(459) & (\baud_gen|teller\(7) & (\baud_gen|teller\(11) $ (\baud_gen|Div0|auto_generated|divider|divider|selnose[351]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose\(459),
	datab => \baud_gen|teller\(11),
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose[351]~9_combout\,
	datad => \baud_gen|teller\(7),
	combout => \baud_gen|Equal0~10_combout\);

-- Location: LCCOMB_X81_Y23_N8
\baud_gen|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~8_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (!\baud_gen|teller\(1) & (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ $ (\baud_gen|teller\(0))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|teller\(1) & (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ $ (\baud_gen|teller\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baud_gen|teller\(0),
	datad => \baud_gen|teller\(1),
	combout => \baud_gen|Equal0~8_combout\);

-- Location: LCCOMB_X80_Y23_N4
\baud_gen|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~9_combout\ = (\baud_gen|teller\(2) & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ $ (\baud_gen|teller\(3))))) # (!\baud_gen|teller\(2) & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ $ (\baud_gen|teller\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(2),
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datad => \baud_gen|teller\(3),
	combout => \baud_gen|Equal0~9_combout\);

-- Location: LCCOMB_X81_Y23_N6
\baud_gen|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~7_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[324]~10_combout\ & (\baud_gen|teller\(12) & (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ $ (\baud_gen|teller\(10))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[324]~10_combout\ & (!\baud_gen|teller\(12) & (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ $ (\baud_gen|teller\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[324]~10_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datac => \baud_gen|teller\(10),
	datad => \baud_gen|teller\(12),
	combout => \baud_gen|Equal0~7_combout\);

-- Location: LCCOMB_X81_Y23_N26
\baud_gen|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~11_combout\ = (\baud_gen|Equal0~10_combout\ & (\baud_gen|Equal0~8_combout\ & (\baud_gen|Equal0~9_combout\ & \baud_gen|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Equal0~10_combout\,
	datab => \baud_gen|Equal0~8_combout\,
	datac => \baud_gen|Equal0~9_combout\,
	datad => \baud_gen|Equal0~7_combout\,
	combout => \baud_gen|Equal0~11_combout\);

-- Location: LCCOMB_X81_Y23_N0
\baud_gen|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~12_combout\ = (\baud_gen|Equal0~0_combout\ & (\baud_gen|Equal0~6_combout\ & (\baud_gen|Equal0~11_combout\ & \baud_gen|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Equal0~0_combout\,
	datab => \baud_gen|Equal0~6_combout\,
	datac => \baud_gen|Equal0~11_combout\,
	datad => \baud_gen|Equal0~4_combout\,
	combout => \baud_gen|Equal0~12_combout\);

-- Location: LCCOMB_X82_Y23_N0
\baud_gen|baud_enable_m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|baud_enable_m~0_combout\ = (\GPIO[5]~input_o\ & (!\start_teller~q\ & \baud_gen|Equal0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO[5]~input_o\,
	datab => \start_teller~q\,
	datac => \baud_gen|Equal0~12_combout\,
	combout => \baud_gen|baud_enable_m~0_combout\);

-- Location: FF_X82_Y23_N1
\baud_gen|baud_enable_m\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|baud_enable_m~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|baud_enable_m~q\);

-- Location: LCCOMB_X82_Y23_N10
\din_qq~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \din_qq~1_combout\ = ((\baud_gen|baud_enable_m~q\ & !\state.s_idle~q\)) # (!\GPIO[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO[5]~input_o\,
	datab => \baud_gen|baud_enable_m~q\,
	datac => \state.s_idle~q\,
	combout => \din_qq~1_combout\);

-- Location: FF_X82_Y23_N13
din_q : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \din_q~0_combout\,
	ena => \din_qq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \din_q~q\);

-- Location: LCCOMB_X82_Y23_N2
\din_qq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \din_qq~0_combout\ = (\din_q~q\ & \GPIO[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din_q~q\,
	datac => \GPIO[5]~input_o\,
	combout => \din_qq~0_combout\);

-- Location: FF_X82_Y23_N3
din_qq : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \din_qq~0_combout\,
	ena => \din_qq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \din_qq~q\);

-- Location: LCCOMB_X81_Y27_N14
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.s_shift_in~q\ & (!\din_qq~q\)) # (!\state.s_shift_in~q\ & (((\state.s_idle~q\ & shiftreg(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din_qq~q\,
	datab => \state.s_idle~q\,
	datac => shiftreg(9),
	datad => \state.s_shift_in~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X81_Y27_N15
\shiftreg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \error_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(9));

-- Location: LCCOMB_X82_Y27_N8
\state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (\state.s_shift_in~q\ & (shiftreg(9))) # (!\state.s_shift_in~q\ & (((\state.s_wait_for_sender~q\ & !\state.s_offload~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(9),
	datab => \state.s_wait_for_sender~q\,
	datac => \state.s_offload~q\,
	datad => \state.s_shift_in~q\,
	combout => \state~24_combout\);

-- Location: LCCOMB_X82_Y27_N6
\state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~25_combout\ = (\state~24_combout\ & \GPIO[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state~24_combout\,
	datad => \GPIO[5]~input_o\,
	combout => \state~25_combout\);

-- Location: FF_X82_Y27_N7
\state.s_shift_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \state~25_combout\,
	ena => \state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_shift_in~q\);

-- Location: LCCOMB_X81_Y27_N16
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.s_shift_in~q\ & (!shiftreg(9))) # (!\state.s_shift_in~q\ & (((shiftreg(8) & \state.s_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_shift_in~q\,
	datab => shiftreg(9),
	datac => shiftreg(8),
	datad => \state.s_idle~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X81_Y27_N17
\shiftreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \error_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(8));

-- Location: LCCOMB_X81_Y27_N18
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.s_shift_in~q\ & (shiftreg(8))) # (!\state.s_shift_in~q\ & (((shiftreg(7) & \state.s_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_shift_in~q\,
	datab => shiftreg(8),
	datac => shiftreg(7),
	datad => \state.s_idle~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X81_Y27_N19
\shiftreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \error_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(7));

-- Location: LCCOMB_X81_Y27_N30
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.s_shift_in~q\ & (shiftreg(7))) # (!\state.s_shift_in~q\ & (((shiftreg(6) & \state.s_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_shift_in~q\,
	datab => shiftreg(7),
	datac => shiftreg(6),
	datad => \state.s_idle~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X81_Y27_N31
\shiftreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \error_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(6));

-- Location: LCCOMB_X81_Y27_N4
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.s_shift_in~q\ & (shiftreg(6))) # (!\state.s_shift_in~q\ & (((\state.s_idle~q\ & shiftreg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(6),
	datab => \state.s_idle~q\,
	datac => shiftreg(5),
	datad => \state.s_shift_in~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X81_Y27_N5
\shiftreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \error_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(5));

-- Location: LCCOMB_X81_Y27_N28
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.s_shift_in~q\ & (shiftreg(5))) # (!\state.s_shift_in~q\ & (((shiftreg(4) & \state.s_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_shift_in~q\,
	datab => shiftreg(5),
	datac => shiftreg(4),
	datad => \state.s_idle~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X81_Y27_N29
\shiftreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \error_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(4));

-- Location: LCCOMB_X81_Y27_N6
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.s_shift_in~q\ & (shiftreg(4))) # (!\state.s_shift_in~q\ & (((shiftreg(3) & \state.s_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_shift_in~q\,
	datab => shiftreg(4),
	datac => shiftreg(3),
	datad => \state.s_idle~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X81_Y27_N7
\shiftreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \error_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(3));

-- Location: LCCOMB_X81_Y27_N2
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.s_shift_in~q\ & (((shiftreg(3))))) # (!\state.s_shift_in~q\ & (\state.s_idle~q\ & (shiftreg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_shift_in~q\,
	datab => \state.s_idle~q\,
	datac => shiftreg(2),
	datad => shiftreg(3),
	combout => \Selector8~0_combout\);

-- Location: FF_X81_Y27_N3
\shiftreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \error_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(2));

-- Location: LCCOMB_X81_Y27_N22
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.s_shift_in~q\ & (shiftreg(2))) # (!\state.s_shift_in~q\ & (((shiftreg(1) & \state.s_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_shift_in~q\,
	datab => shiftreg(2),
	datac => shiftreg(1),
	datad => \state.s_idle~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X81_Y27_N23
\shiftreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \error_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(1));

-- Location: LCCOMB_X80_Y27_N20
\data_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[0]~feeder_combout\ = shiftreg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => shiftreg(1),
	combout => \data_reg[0]~feeder_combout\);

-- Location: LCCOMB_X81_Y27_N10
\data_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[0]~0_combout\ = (\baud_gen|baud_enable_m~q\ & (\GPIO[5]~input_o\ & \state.s_offload~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|baud_enable_m~q\,
	datab => \GPIO[5]~input_o\,
	datad => \state.s_offload~q\,
	combout => \data_reg[0]~0_combout\);

-- Location: FF_X80_Y27_N21
\data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_reg[0]~feeder_combout\,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(0));

-- Location: LCCOMB_X81_Y27_N26
\data_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[1]~feeder_combout\ = shiftreg(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => shiftreg(2),
	combout => \data_reg[1]~feeder_combout\);

-- Location: FF_X81_Y27_N27
\data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_reg[1]~feeder_combout\,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(1));

-- Location: LCCOMB_X81_Y27_N20
\data_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[2]~feeder_combout\ = shiftreg(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => shiftreg(3),
	combout => \data_reg[2]~feeder_combout\);

-- Location: FF_X81_Y27_N21
\data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_reg[2]~feeder_combout\,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(2));

-- Location: LCCOMB_X80_Y27_N2
\data_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[3]~feeder_combout\ = shiftreg(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => shiftreg(4),
	combout => \data_reg[3]~feeder_combout\);

-- Location: FF_X80_Y27_N3
\data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_reg[3]~feeder_combout\,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(3));

-- Location: FF_X81_Y27_N25
\data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => shiftreg(5),
	sload => VCC,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(4));

-- Location: FF_X81_Y27_N11
\data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => shiftreg(6),
	sload => VCC,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(5));

-- Location: LCCOMB_X80_Y27_N24
\data_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[6]~feeder_combout\ = shiftreg(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => shiftreg(7),
	combout => \data_reg[6]~feeder_combout\);

-- Location: FF_X80_Y27_N25
\data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_reg[6]~feeder_combout\,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(6));

-- Location: LCCOMB_X80_Y27_N22
\data_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[7]~feeder_combout\ = shiftreg(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => shiftreg(8),
	combout => \data_reg[7]~feeder_combout\);

-- Location: FF_X80_Y27_N23
\data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_reg[7]~feeder_combout\,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(7));

-- Location: LCCOMB_X81_Y27_N12
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.s_error~q\) # ((\error_signal~q\ & \state.s_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_error~q\,
	datac => \error_signal~q\,
	datad => \state.s_idle~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X81_Y27_N13
error_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \error_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_signal~q\);

-- Location: IOIBUF_X60_Y0_N22
\GPIO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(1),
	o => \GPIO[1]~input_o\);

-- Location: LCCOMB_X60_Y13_N16
\vippe_a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vippe_a~feeder_combout\ = \GPIO[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO[1]~input_o\,
	combout => \vippe_a~feeder_combout\);

-- Location: FF_X60_Y13_N17
vippe_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vippe_a~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vippe_a~q\);

-- Location: LCCOMB_X60_Y13_N18
\vippe_b~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vippe_b~feeder_combout\ = \vippe_a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vippe_a~q\,
	combout => \vippe_b~feeder_combout\);

-- Location: FF_X60_Y13_N19
vippe_b : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vippe_b~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vippe_b~q\);

-- Location: LCCOMB_X60_Y13_N28
\mottatt_blink~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottatt_blink~feeder_combout\ = \vippe_b~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vippe_b~q\,
	combout => \mottatt_blink~feeder_combout\);

-- Location: FF_X60_Y13_N29
mottatt_blink : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottatt_blink~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mottatt_blink~q\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X107_Y0_N1
\GPIO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(0),
	o => \GPIO[0]~input_o\);

-- Location: IOIBUF_X109_Y0_N8
\GPIO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(2),
	o => \GPIO[2]~input_o\);

-- Location: IOIBUF_X96_Y0_N22
\GPIO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(3),
	o => \GPIO[3]~input_o\);

-- Location: IOIBUF_X102_Y0_N22
\GPIO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(4),
	o => \GPIO[4]~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\GPIO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(6),
	o => \GPIO[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\GPIO[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(8),
	o => \GPIO[8]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\GPIO[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(9),
	o => \GPIO[9]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\GPIO[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(10),
	o => \GPIO[10]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\GPIO[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(11),
	o => \GPIO[11]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\GPIO[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(12),
	o => \GPIO[12]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\GPIO[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(13),
	o => \GPIO[13]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\GPIO[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(14),
	o => \GPIO[14]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\GPIO[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(15),
	o => \GPIO[15]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\GPIO[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(16),
	o => \GPIO[16]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\GPIO[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(17),
	o => \GPIO[17]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\GPIO[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(18),
	o => \GPIO[18]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\GPIO[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(19),
	o => \GPIO[19]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\GPIO[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(20),
	o => \GPIO[20]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\GPIO[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(21),
	o => \GPIO[21]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\GPIO[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(22),
	o => \GPIO[22]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\GPIO[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(23),
	o => \GPIO[23]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\GPIO[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(24),
	o => \GPIO[24]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\GPIO[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(25),
	o => \GPIO[25]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\GPIO[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(26),
	o => \GPIO[26]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\GPIO[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(27),
	o => \GPIO[27]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\GPIO[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(28),
	o => \GPIO[28]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\GPIO[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(29),
	o => \GPIO[29]~input_o\);

-- Location: IOIBUF_X85_Y0_N22
\GPIO[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(30),
	o => \GPIO[30]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\GPIO[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(31),
	o => \GPIO[31]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\GPIO[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(32),
	o => \GPIO[32]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\GPIO[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(33),
	o => \GPIO[33]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\GPIO[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(34),
	o => \GPIO[34]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\GPIO[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(35),
	o => \GPIO[35]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

GPIO(0) <= \GPIO[0]~output_o\;

GPIO(2) <= \GPIO[2]~output_o\;

GPIO(3) <= \GPIO[3]~output_o\;

GPIO(4) <= \GPIO[4]~output_o\;

GPIO(6) <= \GPIO[6]~output_o\;

GPIO(8) <= \GPIO[8]~output_o\;

GPIO(9) <= \GPIO[9]~output_o\;

GPIO(10) <= \GPIO[10]~output_o\;

GPIO(11) <= \GPIO[11]~output_o\;

GPIO(12) <= \GPIO[12]~output_o\;

GPIO(13) <= \GPIO[13]~output_o\;

GPIO(14) <= \GPIO[14]~output_o\;

GPIO(15) <= \GPIO[15]~output_o\;

GPIO(16) <= \GPIO[16]~output_o\;

GPIO(17) <= \GPIO[17]~output_o\;

GPIO(18) <= \GPIO[18]~output_o\;

GPIO(19) <= \GPIO[19]~output_o\;

GPIO(20) <= \GPIO[20]~output_o\;

GPIO(21) <= \GPIO[21]~output_o\;

GPIO(22) <= \GPIO[22]~output_o\;

GPIO(23) <= \GPIO[23]~output_o\;

GPIO(24) <= \GPIO[24]~output_o\;

GPIO(25) <= \GPIO[25]~output_o\;

GPIO(26) <= \GPIO[26]~output_o\;

GPIO(27) <= \GPIO[27]~output_o\;

GPIO(28) <= \GPIO[28]~output_o\;

GPIO(29) <= \GPIO[29]~output_o\;

GPIO(30) <= \GPIO[30]~output_o\;

GPIO(31) <= \GPIO[31]~output_o\;

GPIO(32) <= \GPIO[32]~output_o\;

GPIO(33) <= \GPIO[33]~output_o\;

GPIO(34) <= \GPIO[34]~output_o\;

GPIO(35) <= \GPIO[35]~output_o\;

GPIO(1) <= \GPIO[1]~output_o\;

GPIO(5) <= \GPIO[5]~output_o\;

GPIO(7) <= \GPIO[7]~output_o\;
END structure;


