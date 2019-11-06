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

-- DATE "10/28/2019 09:05:38"

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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

ENTITY 	LCD_klokke_SF IS
    PORT (
	clock_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LCD_RS : BUFFER std_logic;
	LCD_EN : BUFFER std_logic;
	LCD_RW : BUFFER std_logic;
	LCD_ON : BUFFER std_logic;
	LCD_DATA : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END LCD_klokke_SF;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clock_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCD_klokke_SF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \LCD_DATA[0]~input_o\ : std_logic;
SIGNAL \LCD_DATA[1]~input_o\ : std_logic;
SIGNAL \LCD_DATA[2]~input_o\ : std_logic;
SIGNAL \LCD_DATA[3]~input_o\ : std_logic;
SIGNAL \LCD_DATA[4]~input_o\ : std_logic;
SIGNAL \LCD_DATA[5]~input_o\ : std_logic;
SIGNAL \LCD_DATA[6]~input_o\ : std_logic;
SIGNAL \LCD_DATA[7]~input_o\ : std_logic;
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \lcd|LCD_RS~0_combout\ : std_logic;
SIGNAL \reset_synkroniseres|dff~feeder_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \reset_synkroniseres|dff~q\ : std_logic;
SIGNAL \reset_synkroniseres|reset_sync~q\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[0]~22_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[13]~56_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[0]~23\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[1]~24_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[1]~25\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[2]~26_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[2]~27\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[3]~28_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[3]~29\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[4]~30_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[4]~31\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[5]~32_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[5]~33\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[6]~34_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[6]~35\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[7]~36_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[7]~37\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[8]~38_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[8]~39\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[9]~40_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[9]~41\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[10]~42_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[10]~43\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[11]~44_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[11]~45\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[12]~46_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[12]~47\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[13]~48_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[13]~49\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[14]~50_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[14]~51\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[15]~52_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[15]~53\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[16]~54_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[16]~55\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[17]~57_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[17]~58\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[18]~59_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[18]~60\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[19]~61_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[13]~20_combout\ : std_logic;
SIGNAL \lcd|LessThan0~1_combout\ : std_logic;
SIGNAL \lcd|LessThan0~2_combout\ : std_logic;
SIGNAL \lcd|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[13]~21_combout\ : std_logic;
SIGNAL \lcd|CLK_400HZ_Enable~0_combout\ : std_logic;
SIGNAL \lcd|CLK_400HZ_Enable~q\ : std_logic;
SIGNAL \lcd|state.DROP_LCD_E~q\ : std_logic;
SIGNAL \lcd|state.HOLD~q\ : std_logic;
SIGNAL \lcd|state.RESET1~feeder_combout\ : std_logic;
SIGNAL \lcd|state.RESET1~q\ : std_logic;
SIGNAL \lcd|Selector18~0_combout\ : std_logic;
SIGNAL \lcd|next_command.RESET2~q\ : std_logic;
SIGNAL \lcd|state~36_combout\ : std_logic;
SIGNAL \lcd|state.RESET2~q\ : std_logic;
SIGNAL \lcd|Selector19~0_combout\ : std_logic;
SIGNAL \lcd|next_command.RESET3~q\ : std_logic;
SIGNAL \lcd|state~34_combout\ : std_logic;
SIGNAL \lcd|state.RESET3~q\ : std_logic;
SIGNAL \lcd|Selector12~0_combout\ : std_logic;
SIGNAL \lcd|next_command.FUNC_SET~q\ : std_logic;
SIGNAL \lcd|state~35_combout\ : std_logic;
SIGNAL \lcd|state.FUNC_SET~q\ : std_logic;
SIGNAL \lcd|Selector20~0_combout\ : std_logic;
SIGNAL \lcd|next_command.DISPLAY_OFF~q\ : std_logic;
SIGNAL \lcd|state~37_combout\ : std_logic;
SIGNAL \lcd|state.DISPLAY_OFF~q\ : std_logic;
SIGNAL \lcd|Selector21~0_combout\ : std_logic;
SIGNAL \lcd|next_command.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \lcd|state~32_combout\ : std_logic;
SIGNAL \lcd|state.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \lcd|Selector9~0_combout\ : std_logic;
SIGNAL \lcd|Add2~18_combout\ : std_logic;
SIGNAL \lcd|Add2~16_combout\ : std_logic;
SIGNAL \lcd|Add2~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \lcd|Mux6~5_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \lcd|Mux6~7_combout\ : std_logic;
SIGNAL \lcd|Mux6~8_combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \lcd|Mux7~4_combout\ : std_logic;
SIGNAL \lcd|Mux7~5_combout\ : std_logic;
SIGNAL \lcd|Mux7~6_combout\ : std_logic;
SIGNAL \lcd|Add2~12_combout\ : std_logic;
SIGNAL \lcd|Add2~6\ : std_logic;
SIGNAL \lcd|Add2~7_combout\ : std_logic;
SIGNAL \lcd|Add2~13_combout\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[0]~0_combout\ : std_logic;
SIGNAL \lcd|Add2~0_combout\ : std_logic;
SIGNAL \lcd|Add2~8\ : std_logic;
SIGNAL \lcd|Add2~9_combout\ : std_logic;
SIGNAL \lcd|Add2~11_combout\ : std_logic;
SIGNAL \lcd|Mux6~2_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \lcd|Mux6~3_combout\ : std_logic;
SIGNAL \lcd|Mux7~3_combout\ : std_logic;
SIGNAL \lcd|Mux6~12_combout\ : std_logic;
SIGNAL \lcd|Mux7~1_combout\ : std_logic;
SIGNAL \lcd|Mux7~0_combout\ : std_logic;
SIGNAL \lcd|Mux7~2_combout\ : std_logic;
SIGNAL \lcd|Mux7~7_combout\ : std_logic;
SIGNAL \lcd|Mux3~1_combout\ : std_logic;
SIGNAL \lcd|Mux2~1_combout\ : std_logic;
SIGNAL \lcd|Mux2~0_combout\ : std_logic;
SIGNAL \lcd|Mux2~2_combout\ : std_logic;
SIGNAL \lcd|Mux3~0_combout\ : std_logic;
SIGNAL \lcd|Equal1~0_combout\ : std_logic;
SIGNAL \lcd|Mux4~0_combout\ : std_logic;
SIGNAL \lcd|Equal3~0_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \lcd|Mux6~4_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \lcd|Mux6~6_combout\ : std_logic;
SIGNAL \lcd|Mux6~9_combout\ : std_logic;
SIGNAL \lcd|Mux6~10_combout\ : std_logic;
SIGNAL \lcd|Mux6~11_combout\ : std_logic;
SIGNAL \lcd|Mux6~14_combout\ : std_logic;
SIGNAL \lcd|Mux6~15_combout\ : std_logic;
SIGNAL \lcd|Mux4~1_combout\ : std_logic;
SIGNAL \lcd|Mux1~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \lcd|Mux4~3_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \lcd|Mux4~2_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \lcd|Mux4~4_combout\ : std_logic;
SIGNAL \lcd|Mux4~5_combout\ : std_logic;
SIGNAL \lcd|Mux4~6_combout\ : std_logic;
SIGNAL \lcd|Mux4~7_combout\ : std_logic;
SIGNAL \lcd|Mux0~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \lcd|Mux5~0_combout\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \lcd|Mux5~1_combout\ : std_logic;
SIGNAL \lcd|Mux5~2_combout\ : std_logic;
SIGNAL \lcd|Mux5~3_combout\ : std_logic;
SIGNAL \lcd|Equal1~1_combout\ : std_logic;
SIGNAL \lcd|Equal1~2_combout\ : std_logic;
SIGNAL \lcd|Equal1~3_combout\ : std_logic;
SIGNAL \lcd|Equal1~4_combout\ : std_logic;
SIGNAL \lcd|process_1~0_combout\ : std_logic;
SIGNAL \lcd|Add2~17_combout\ : std_logic;
SIGNAL \lcd|Add2~2\ : std_logic;
SIGNAL \lcd|Add2~3_combout\ : std_logic;
SIGNAL \lcd|Add2~19_combout\ : std_logic;
SIGNAL \lcd|Add2~4\ : std_logic;
SIGNAL \lcd|Add2~5_combout\ : std_logic;
SIGNAL \lcd|Add2~14_combout\ : std_logic;
SIGNAL \lcd|Add2~15_combout\ : std_logic;
SIGNAL \lcd|Equal2~0_combout\ : std_logic;
SIGNAL \lcd|Selector16~0_combout\ : std_logic;
SIGNAL \lcd|next_command.LINE2~q\ : std_logic;
SIGNAL \lcd|state~30_combout\ : std_logic;
SIGNAL \lcd|state.LINE2~q\ : std_logic;
SIGNAL \lcd|Selector17~0_combout\ : std_logic;
SIGNAL \lcd|next_command.RETURN_HOME~q\ : std_logic;
SIGNAL \lcd|state~31_combout\ : std_logic;
SIGNAL \lcd|state.RETURN_HOME~q\ : std_logic;
SIGNAL \lcd|Selector13~0_combout\ : std_logic;
SIGNAL \lcd|next_command.DISPLAY_ON~q\ : std_logic;
SIGNAL \lcd|state~33_combout\ : std_logic;
SIGNAL \lcd|state.DISPLAY_ON~q\ : std_logic;
SIGNAL \lcd|Selector14~0_combout\ : std_logic;
SIGNAL \lcd|next_command.MODE_SET~q\ : std_logic;
SIGNAL \lcd|state~29_combout\ : std_logic;
SIGNAL \lcd|state.MODE_SET~q\ : std_logic;
SIGNAL \lcd|Selector5~0_combout\ : std_logic;
SIGNAL \lcd|Selector15~3_combout\ : std_logic;
SIGNAL \lcd|Selector15~2_combout\ : std_logic;
SIGNAL \lcd|next_command.Print_String~q\ : std_logic;
SIGNAL \lcd|state~28_combout\ : std_logic;
SIGNAL \lcd|state.Print_String~q\ : std_logic;
SIGNAL \lcd|Mux3~2_combout\ : std_logic;
SIGNAL \lcd|Mux0~1_combout\ : std_logic;
SIGNAL \lcd|Mux1~1_combout\ : std_logic;
SIGNAL \lcd|Mux1~2_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~0_combout\ : std_logic;
SIGNAL \lcd|Mux5~4_combout\ : std_logic;
SIGNAL \lcd|Mux4~8_combout\ : std_logic;
SIGNAL \lcd|Mux6~13_combout\ : std_logic;
SIGNAL \lcd|LessThan1~0_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~1_combout\ : std_logic;
SIGNAL \lcd|Selector9~1_combout\ : std_logic;
SIGNAL \lcd|LCD_RW_INT~feeder_combout\ : std_logic;
SIGNAL \lcd|LCD_RW_INT~0_combout\ : std_logic;
SIGNAL \lcd|LCD_RW_INT~q\ : std_logic;
SIGNAL \lcd|Selector8~1_combout\ : std_logic;
SIGNAL \lcd|Selector8~2_combout\ : std_logic;
SIGNAL \lcd|Selector8~0_combout\ : std_logic;
SIGNAL \lcd|Selector8~3_combout\ : std_logic;
SIGNAL \lcd|Mux5~5_combout\ : std_logic;
SIGNAL \lcd|Selector7~1_combout\ : std_logic;
SIGNAL \lcd|Add1~0_combout\ : std_logic;
SIGNAL \lcd|Selector7~0_combout\ : std_logic;
SIGNAL \lcd|Selector7~2_combout\ : std_logic;
SIGNAL \lcd|Selector5~1_combout\ : std_logic;
SIGNAL \lcd|Selector6~1_combout\ : std_logic;
SIGNAL \lcd|Selector6~2_combout\ : std_logic;
SIGNAL \lcd|Selector8~4_combout\ : std_logic;
SIGNAL \lcd|Selector6~0_combout\ : std_logic;
SIGNAL \lcd|Selector6~3_combout\ : std_logic;
SIGNAL \lcd|Selector5~2_combout\ : std_logic;
SIGNAL \lcd|Selector5~3_combout\ : std_logic;
SIGNAL \lcd|Selector5~4_combout\ : std_logic;
SIGNAL \lcd|Selector5~5_combout\ : std_logic;
SIGNAL \lcd|Selector4~0_combout\ : std_logic;
SIGNAL \lcd|Selector4~1_combout\ : std_logic;
SIGNAL \lcd|Selector3~0_combout\ : std_logic;
SIGNAL \lcd|Selector3~1_combout\ : std_logic;
SIGNAL \lcd|Selector2~0_combout\ : std_logic;
SIGNAL \lcd|Selector2~1_combout\ : std_logic;
SIGNAL \lcd|Selector1~0_combout\ : std_logic;
SIGNAL \lcd|LCD_RS~q\ : std_logic;
SIGNAL \lcd|LCD_E~0_combout\ : std_logic;
SIGNAL \lcd|LCD_E~q\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \lcd|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd|CHAR_COUNT\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \lcd|ALT_INV_DATA_BUS_VALUE\ : std_logic_vector(5 DOWNTO 3);
SIGNAL \lcd|ALT_INV_LCD_RW_INT~q\ : std_logic;
SIGNAL \lcd|ALT_INV_LCD_E~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock_50 <= clock_50;
ww_SW <= SW;
ww_KEY <= KEY;
LCD_RS <= ww_LCD_RS;
LCD_EN <= ww_LCD_EN;
LCD_RW <= ww_LCD_RW;
LCD_ON <= ww_LCD_ON;
LCD_DATA <= ww_LCD_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);
\lcd|ALT_INV_DATA_BUS_VALUE\(5) <= NOT \lcd|DATA_BUS_VALUE\(5);
\lcd|ALT_INV_DATA_BUS_VALUE\(4) <= NOT \lcd|DATA_BUS_VALUE\(4);
\lcd|ALT_INV_DATA_BUS_VALUE\(3) <= NOT \lcd|DATA_BUS_VALUE\(3);
\lcd|ALT_INV_LCD_RW_INT~q\ <= NOT \lcd|LCD_RW_INT~q\;
\lcd|ALT_INV_LCD_E~q\ <= NOT \lcd|LCD_E~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|DATA_BUS_VALUE\(0),
	oe => \lcd|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|DATA_BUS_VALUE\(1),
	oe => \lcd|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|DATA_BUS_VALUE\(2),
	oe => \lcd|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|ALT_INV_DATA_BUS_VALUE\(3),
	oe => \lcd|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|ALT_INV_DATA_BUS_VALUE\(4),
	oe => \lcd|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|ALT_INV_DATA_BUS_VALUE\(5),
	oe => \lcd|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|DATA_BUS_VALUE\(6),
	oe => \lcd|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|DATA_BUS_VALUE\(7),
	oe => \lcd|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|LCD_RS~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|ALT_INV_LCD_E~q\,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd|ALT_INV_LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_ON~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clock_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G4
\clock_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X103_Y11_N24
\lcd|LCD_RS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|LCD_RS~0_combout\ = (!\lcd|state.DROP_LCD_E~q\ & !\lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|state.DROP_LCD_E~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|LCD_RS~0_combout\);

-- Location: LCCOMB_X106_Y11_N4
\reset_synkroniseres|dff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_synkroniseres|dff~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \reset_synkroniseres|dff~feeder_combout\);

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

-- Location: FF_X106_Y11_N5
\reset_synkroniseres|dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \reset_synkroniseres|dff~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_synkroniseres|dff~q\);

-- Location: FF_X106_Y11_N21
\reset_synkroniseres|reset_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \reset_synkroniseres|dff~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_synkroniseres|reset_sync~q\);

-- Location: LCCOMB_X101_Y12_N12
\lcd|CLK_COUNT_400HZ[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[0]~22_combout\ = \lcd|CLK_COUNT_400HZ\(0) $ (VCC)
-- \lcd|CLK_COUNT_400HZ[0]~23\ = CARRY(\lcd|CLK_COUNT_400HZ\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(0),
	datad => VCC,
	combout => \lcd|CLK_COUNT_400HZ[0]~22_combout\,
	cout => \lcd|CLK_COUNT_400HZ[0]~23\);

-- Location: LCCOMB_X101_Y11_N22
\lcd|CLK_COUNT_400HZ[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[13]~56_combout\ = (!\lcd|CLK_COUNT_400HZ[13]~21_combout\) # (!\reset_synkroniseres|reset_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_synkroniseres|reset_sync~q\,
	datad => \lcd|CLK_COUNT_400HZ[13]~21_combout\,
	combout => \lcd|CLK_COUNT_400HZ[13]~56_combout\);

-- Location: FF_X101_Y12_N13
\lcd|CLK_COUNT_400HZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[0]~22_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(0));

-- Location: LCCOMB_X101_Y12_N14
\lcd|CLK_COUNT_400HZ[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[1]~24_combout\ = (\lcd|CLK_COUNT_400HZ\(1) & (!\lcd|CLK_COUNT_400HZ[0]~23\)) # (!\lcd|CLK_COUNT_400HZ\(1) & ((\lcd|CLK_COUNT_400HZ[0]~23\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[1]~25\ = CARRY((!\lcd|CLK_COUNT_400HZ[0]~23\) # (!\lcd|CLK_COUNT_400HZ\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(1),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[0]~23\,
	combout => \lcd|CLK_COUNT_400HZ[1]~24_combout\,
	cout => \lcd|CLK_COUNT_400HZ[1]~25\);

-- Location: FF_X101_Y12_N15
\lcd|CLK_COUNT_400HZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[1]~24_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(1));

-- Location: LCCOMB_X101_Y12_N16
\lcd|CLK_COUNT_400HZ[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[2]~26_combout\ = (\lcd|CLK_COUNT_400HZ\(2) & (\lcd|CLK_COUNT_400HZ[1]~25\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(2) & (!\lcd|CLK_COUNT_400HZ[1]~25\ & VCC))
-- \lcd|CLK_COUNT_400HZ[2]~27\ = CARRY((\lcd|CLK_COUNT_400HZ\(2) & !\lcd|CLK_COUNT_400HZ[1]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(2),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[1]~25\,
	combout => \lcd|CLK_COUNT_400HZ[2]~26_combout\,
	cout => \lcd|CLK_COUNT_400HZ[2]~27\);

-- Location: FF_X101_Y12_N17
\lcd|CLK_COUNT_400HZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[2]~26_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(2));

-- Location: LCCOMB_X101_Y12_N18
\lcd|CLK_COUNT_400HZ[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[3]~28_combout\ = (\lcd|CLK_COUNT_400HZ\(3) & (!\lcd|CLK_COUNT_400HZ[2]~27\)) # (!\lcd|CLK_COUNT_400HZ\(3) & ((\lcd|CLK_COUNT_400HZ[2]~27\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[3]~29\ = CARRY((!\lcd|CLK_COUNT_400HZ[2]~27\) # (!\lcd|CLK_COUNT_400HZ\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(3),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[2]~27\,
	combout => \lcd|CLK_COUNT_400HZ[3]~28_combout\,
	cout => \lcd|CLK_COUNT_400HZ[3]~29\);

-- Location: FF_X101_Y12_N19
\lcd|CLK_COUNT_400HZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[3]~28_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(3));

-- Location: LCCOMB_X101_Y12_N20
\lcd|CLK_COUNT_400HZ[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[4]~30_combout\ = (\lcd|CLK_COUNT_400HZ\(4) & (\lcd|CLK_COUNT_400HZ[3]~29\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(4) & (!\lcd|CLK_COUNT_400HZ[3]~29\ & VCC))
-- \lcd|CLK_COUNT_400HZ[4]~31\ = CARRY((\lcd|CLK_COUNT_400HZ\(4) & !\lcd|CLK_COUNT_400HZ[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(4),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[3]~29\,
	combout => \lcd|CLK_COUNT_400HZ[4]~30_combout\,
	cout => \lcd|CLK_COUNT_400HZ[4]~31\);

-- Location: FF_X101_Y12_N21
\lcd|CLK_COUNT_400HZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[4]~30_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(4));

-- Location: LCCOMB_X101_Y12_N22
\lcd|CLK_COUNT_400HZ[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[5]~32_combout\ = (\lcd|CLK_COUNT_400HZ\(5) & (!\lcd|CLK_COUNT_400HZ[4]~31\)) # (!\lcd|CLK_COUNT_400HZ\(5) & ((\lcd|CLK_COUNT_400HZ[4]~31\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[5]~33\ = CARRY((!\lcd|CLK_COUNT_400HZ[4]~31\) # (!\lcd|CLK_COUNT_400HZ\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(5),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[4]~31\,
	combout => \lcd|CLK_COUNT_400HZ[5]~32_combout\,
	cout => \lcd|CLK_COUNT_400HZ[5]~33\);

-- Location: FF_X101_Y12_N23
\lcd|CLK_COUNT_400HZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[5]~32_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(5));

-- Location: LCCOMB_X101_Y12_N24
\lcd|CLK_COUNT_400HZ[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[6]~34_combout\ = (\lcd|CLK_COUNT_400HZ\(6) & (\lcd|CLK_COUNT_400HZ[5]~33\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(6) & (!\lcd|CLK_COUNT_400HZ[5]~33\ & VCC))
-- \lcd|CLK_COUNT_400HZ[6]~35\ = CARRY((\lcd|CLK_COUNT_400HZ\(6) & !\lcd|CLK_COUNT_400HZ[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(6),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[5]~33\,
	combout => \lcd|CLK_COUNT_400HZ[6]~34_combout\,
	cout => \lcd|CLK_COUNT_400HZ[6]~35\);

-- Location: FF_X101_Y12_N25
\lcd|CLK_COUNT_400HZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[6]~34_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(6));

-- Location: LCCOMB_X101_Y12_N26
\lcd|CLK_COUNT_400HZ[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[7]~36_combout\ = (\lcd|CLK_COUNT_400HZ\(7) & (!\lcd|CLK_COUNT_400HZ[6]~35\)) # (!\lcd|CLK_COUNT_400HZ\(7) & ((\lcd|CLK_COUNT_400HZ[6]~35\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[7]~37\ = CARRY((!\lcd|CLK_COUNT_400HZ[6]~35\) # (!\lcd|CLK_COUNT_400HZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(7),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[6]~35\,
	combout => \lcd|CLK_COUNT_400HZ[7]~36_combout\,
	cout => \lcd|CLK_COUNT_400HZ[7]~37\);

-- Location: FF_X101_Y12_N27
\lcd|CLK_COUNT_400HZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[7]~36_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(7));

-- Location: LCCOMB_X101_Y12_N28
\lcd|CLK_COUNT_400HZ[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[8]~38_combout\ = (\lcd|CLK_COUNT_400HZ\(8) & (\lcd|CLK_COUNT_400HZ[7]~37\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(8) & (!\lcd|CLK_COUNT_400HZ[7]~37\ & VCC))
-- \lcd|CLK_COUNT_400HZ[8]~39\ = CARRY((\lcd|CLK_COUNT_400HZ\(8) & !\lcd|CLK_COUNT_400HZ[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(8),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[7]~37\,
	combout => \lcd|CLK_COUNT_400HZ[8]~38_combout\,
	cout => \lcd|CLK_COUNT_400HZ[8]~39\);

-- Location: FF_X101_Y12_N29
\lcd|CLK_COUNT_400HZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[8]~38_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(8));

-- Location: LCCOMB_X101_Y12_N30
\lcd|CLK_COUNT_400HZ[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[9]~40_combout\ = (\lcd|CLK_COUNT_400HZ\(9) & (!\lcd|CLK_COUNT_400HZ[8]~39\)) # (!\lcd|CLK_COUNT_400HZ\(9) & ((\lcd|CLK_COUNT_400HZ[8]~39\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[9]~41\ = CARRY((!\lcd|CLK_COUNT_400HZ[8]~39\) # (!\lcd|CLK_COUNT_400HZ\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(9),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[8]~39\,
	combout => \lcd|CLK_COUNT_400HZ[9]~40_combout\,
	cout => \lcd|CLK_COUNT_400HZ[9]~41\);

-- Location: FF_X101_Y12_N31
\lcd|CLK_COUNT_400HZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[9]~40_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(9));

-- Location: LCCOMB_X101_Y11_N0
\lcd|CLK_COUNT_400HZ[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[10]~42_combout\ = (\lcd|CLK_COUNT_400HZ\(10) & (\lcd|CLK_COUNT_400HZ[9]~41\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(10) & (!\lcd|CLK_COUNT_400HZ[9]~41\ & VCC))
-- \lcd|CLK_COUNT_400HZ[10]~43\ = CARRY((\lcd|CLK_COUNT_400HZ\(10) & !\lcd|CLK_COUNT_400HZ[9]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(10),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[9]~41\,
	combout => \lcd|CLK_COUNT_400HZ[10]~42_combout\,
	cout => \lcd|CLK_COUNT_400HZ[10]~43\);

-- Location: FF_X101_Y11_N1
\lcd|CLK_COUNT_400HZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[10]~42_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(10));

-- Location: LCCOMB_X101_Y11_N2
\lcd|CLK_COUNT_400HZ[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[11]~44_combout\ = (\lcd|CLK_COUNT_400HZ\(11) & (!\lcd|CLK_COUNT_400HZ[10]~43\)) # (!\lcd|CLK_COUNT_400HZ\(11) & ((\lcd|CLK_COUNT_400HZ[10]~43\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[11]~45\ = CARRY((!\lcd|CLK_COUNT_400HZ[10]~43\) # (!\lcd|CLK_COUNT_400HZ\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(11),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[10]~43\,
	combout => \lcd|CLK_COUNT_400HZ[11]~44_combout\,
	cout => \lcd|CLK_COUNT_400HZ[11]~45\);

-- Location: FF_X101_Y11_N3
\lcd|CLK_COUNT_400HZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[11]~44_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(11));

-- Location: LCCOMB_X101_Y11_N4
\lcd|CLK_COUNT_400HZ[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[12]~46_combout\ = (\lcd|CLK_COUNT_400HZ\(12) & (\lcd|CLK_COUNT_400HZ[11]~45\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(12) & (!\lcd|CLK_COUNT_400HZ[11]~45\ & VCC))
-- \lcd|CLK_COUNT_400HZ[12]~47\ = CARRY((\lcd|CLK_COUNT_400HZ\(12) & !\lcd|CLK_COUNT_400HZ[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(12),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[11]~45\,
	combout => \lcd|CLK_COUNT_400HZ[12]~46_combout\,
	cout => \lcd|CLK_COUNT_400HZ[12]~47\);

-- Location: FF_X101_Y11_N5
\lcd|CLK_COUNT_400HZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[12]~46_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(12));

-- Location: LCCOMB_X101_Y11_N6
\lcd|CLK_COUNT_400HZ[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[13]~48_combout\ = (\lcd|CLK_COUNT_400HZ\(13) & (!\lcd|CLK_COUNT_400HZ[12]~47\)) # (!\lcd|CLK_COUNT_400HZ\(13) & ((\lcd|CLK_COUNT_400HZ[12]~47\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[13]~49\ = CARRY((!\lcd|CLK_COUNT_400HZ[12]~47\) # (!\lcd|CLK_COUNT_400HZ\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(13),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[12]~47\,
	combout => \lcd|CLK_COUNT_400HZ[13]~48_combout\,
	cout => \lcd|CLK_COUNT_400HZ[13]~49\);

-- Location: FF_X101_Y11_N7
\lcd|CLK_COUNT_400HZ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[13]~48_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(13));

-- Location: LCCOMB_X101_Y11_N8
\lcd|CLK_COUNT_400HZ[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[14]~50_combout\ = (\lcd|CLK_COUNT_400HZ\(14) & (\lcd|CLK_COUNT_400HZ[13]~49\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(14) & (!\lcd|CLK_COUNT_400HZ[13]~49\ & VCC))
-- \lcd|CLK_COUNT_400HZ[14]~51\ = CARRY((\lcd|CLK_COUNT_400HZ\(14) & !\lcd|CLK_COUNT_400HZ[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(14),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[13]~49\,
	combout => \lcd|CLK_COUNT_400HZ[14]~50_combout\,
	cout => \lcd|CLK_COUNT_400HZ[14]~51\);

-- Location: FF_X101_Y11_N9
\lcd|CLK_COUNT_400HZ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[14]~50_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(14));

-- Location: LCCOMB_X101_Y11_N10
\lcd|CLK_COUNT_400HZ[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[15]~52_combout\ = (\lcd|CLK_COUNT_400HZ\(15) & (!\lcd|CLK_COUNT_400HZ[14]~51\)) # (!\lcd|CLK_COUNT_400HZ\(15) & ((\lcd|CLK_COUNT_400HZ[14]~51\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[15]~53\ = CARRY((!\lcd|CLK_COUNT_400HZ[14]~51\) # (!\lcd|CLK_COUNT_400HZ\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(15),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[14]~51\,
	combout => \lcd|CLK_COUNT_400HZ[15]~52_combout\,
	cout => \lcd|CLK_COUNT_400HZ[15]~53\);

-- Location: FF_X101_Y11_N11
\lcd|CLK_COUNT_400HZ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[15]~52_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(15));

-- Location: LCCOMB_X101_Y11_N12
\lcd|CLK_COUNT_400HZ[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[16]~54_combout\ = (\lcd|CLK_COUNT_400HZ\(16) & (\lcd|CLK_COUNT_400HZ[15]~53\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(16) & (!\lcd|CLK_COUNT_400HZ[15]~53\ & VCC))
-- \lcd|CLK_COUNT_400HZ[16]~55\ = CARRY((\lcd|CLK_COUNT_400HZ\(16) & !\lcd|CLK_COUNT_400HZ[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(16),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[15]~53\,
	combout => \lcd|CLK_COUNT_400HZ[16]~54_combout\,
	cout => \lcd|CLK_COUNT_400HZ[16]~55\);

-- Location: FF_X101_Y11_N13
\lcd|CLK_COUNT_400HZ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[16]~54_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(16));

-- Location: LCCOMB_X101_Y11_N14
\lcd|CLK_COUNT_400HZ[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[17]~57_combout\ = (\lcd|CLK_COUNT_400HZ\(17) & (!\lcd|CLK_COUNT_400HZ[16]~55\)) # (!\lcd|CLK_COUNT_400HZ\(17) & ((\lcd|CLK_COUNT_400HZ[16]~55\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[17]~58\ = CARRY((!\lcd|CLK_COUNT_400HZ[16]~55\) # (!\lcd|CLK_COUNT_400HZ\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(17),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[16]~55\,
	combout => \lcd|CLK_COUNT_400HZ[17]~57_combout\,
	cout => \lcd|CLK_COUNT_400HZ[17]~58\);

-- Location: FF_X101_Y11_N15
\lcd|CLK_COUNT_400HZ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[17]~57_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(17));

-- Location: LCCOMB_X101_Y11_N16
\lcd|CLK_COUNT_400HZ[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[18]~59_combout\ = (\lcd|CLK_COUNT_400HZ\(18) & (\lcd|CLK_COUNT_400HZ[17]~58\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(18) & (!\lcd|CLK_COUNT_400HZ[17]~58\ & VCC))
-- \lcd|CLK_COUNT_400HZ[18]~60\ = CARRY((\lcd|CLK_COUNT_400HZ\(18) & !\lcd|CLK_COUNT_400HZ[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(18),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[17]~58\,
	combout => \lcd|CLK_COUNT_400HZ[18]~59_combout\,
	cout => \lcd|CLK_COUNT_400HZ[18]~60\);

-- Location: FF_X101_Y11_N17
\lcd|CLK_COUNT_400HZ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[18]~59_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(18));

-- Location: LCCOMB_X101_Y11_N18
\lcd|CLK_COUNT_400HZ[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[19]~61_combout\ = \lcd|CLK_COUNT_400HZ[18]~60\ $ (\lcd|CLK_COUNT_400HZ\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lcd|CLK_COUNT_400HZ\(19),
	cin => \lcd|CLK_COUNT_400HZ[18]~60\,
	combout => \lcd|CLK_COUNT_400HZ[19]~61_combout\);

-- Location: FF_X101_Y11_N19
\lcd|CLK_COUNT_400HZ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[19]~61_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(19));

-- Location: LCCOMB_X101_Y11_N30
\lcd|CLK_COUNT_400HZ[13]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[13]~20_combout\ = (!\lcd|CLK_COUNT_400HZ\(16) & (!\lcd|CLK_COUNT_400HZ\(18) & (!\lcd|CLK_COUNT_400HZ\(17) & !\lcd|CLK_COUNT_400HZ\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(16),
	datab => \lcd|CLK_COUNT_400HZ\(18),
	datac => \lcd|CLK_COUNT_400HZ\(17),
	datad => \lcd|CLK_COUNT_400HZ\(19),
	combout => \lcd|CLK_COUNT_400HZ[13]~20_combout\);

-- Location: LCCOMB_X101_Y12_N0
\lcd|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|LessThan0~1_combout\ = (!\lcd|CLK_COUNT_400HZ\(7) & (!\lcd|CLK_COUNT_400HZ\(8) & ((!\lcd|CLK_COUNT_400HZ\(6)) # (!\lcd|CLK_COUNT_400HZ\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(7),
	datab => \lcd|CLK_COUNT_400HZ\(8),
	datac => \lcd|CLK_COUNT_400HZ\(5),
	datad => \lcd|CLK_COUNT_400HZ\(6),
	combout => \lcd|LessThan0~1_combout\);

-- Location: LCCOMB_X101_Y11_N26
\lcd|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|LessThan0~2_combout\ = ((!\lcd|CLK_COUNT_400HZ\(10) & ((\lcd|LessThan0~1_combout\) # (!\lcd|CLK_COUNT_400HZ\(9))))) # (!\lcd|CLK_COUNT_400HZ\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(9),
	datab => \lcd|CLK_COUNT_400HZ\(10),
	datac => \lcd|LessThan0~1_combout\,
	datad => \lcd|CLK_COUNT_400HZ\(11),
	combout => \lcd|LessThan0~2_combout\);

-- Location: LCCOMB_X101_Y11_N24
\lcd|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|LessThan0~0_combout\ = ((!\lcd|CLK_COUNT_400HZ\(15)) # (!\lcd|CLK_COUNT_400HZ\(14))) # (!\lcd|CLK_COUNT_400HZ\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(13),
	datac => \lcd|CLK_COUNT_400HZ\(14),
	datad => \lcd|CLK_COUNT_400HZ\(15),
	combout => \lcd|LessThan0~0_combout\);

-- Location: LCCOMB_X101_Y11_N20
\lcd|CLK_COUNT_400HZ[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[13]~21_combout\ = (\lcd|CLK_COUNT_400HZ[13]~20_combout\ & ((\lcd|LessThan0~0_combout\) # ((!\lcd|CLK_COUNT_400HZ\(12) & \lcd|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ[13]~20_combout\,
	datab => \lcd|CLK_COUNT_400HZ\(12),
	datac => \lcd|LessThan0~2_combout\,
	datad => \lcd|LessThan0~0_combout\,
	combout => \lcd|CLK_COUNT_400HZ[13]~21_combout\);

-- Location: LCCOMB_X101_Y11_N28
\lcd|CLK_400HZ_Enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_400HZ_Enable~0_combout\ = (\reset_synkroniseres|reset_sync~q\ & !\lcd|CLK_COUNT_400HZ[13]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_synkroniseres|reset_sync~q\,
	datad => \lcd|CLK_COUNT_400HZ[13]~21_combout\,
	combout => \lcd|CLK_400HZ_Enable~0_combout\);

-- Location: FF_X101_Y11_N29
\lcd|CLK_400HZ_Enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_400HZ_Enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_400HZ_Enable~q\);

-- Location: FF_X106_Y11_N9
\lcd|state.DROP_LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \lcd|LCD_RS~0_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	sload => VCC,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.DROP_LCD_E~q\);

-- Location: FF_X106_Y11_N27
\lcd|state.HOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \lcd|state.DROP_LCD_E~q\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	sload => VCC,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.HOLD~q\);

-- Location: LCCOMB_X106_Y11_N28
\lcd|state.RESET1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state.RESET1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \lcd|state.RESET1~feeder_combout\);

-- Location: FF_X106_Y11_N29
\lcd|state.RESET1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state.RESET1~feeder_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.RESET1~q\);

-- Location: LCCOMB_X106_Y11_N30
\lcd|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector18~0_combout\ = (\lcd|state.RESET1~q\ & ((\lcd|next_command.RESET2~q\) # ((!\lcd|state.DROP_LCD_E~q\ & !\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DROP_LCD_E~q\,
	datab => \lcd|state.HOLD~q\,
	datac => \lcd|next_command.RESET2~q\,
	datad => \lcd|state.RESET1~q\,
	combout => \lcd|Selector18~0_combout\);

-- Location: FF_X106_Y11_N31
\lcd|next_command.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector18~0_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.RESET2~q\);

-- Location: LCCOMB_X105_Y11_N22
\lcd|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~36_combout\ = (!\lcd|next_command.RESET2~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|next_command.RESET2~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~36_combout\);

-- Location: FF_X105_Y11_N23
\lcd|state.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state~36_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.RESET2~q\);

-- Location: LCCOMB_X105_Y11_N4
\lcd|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector19~0_combout\ = (\lcd|state.RESET2~q\) # ((\lcd|next_command.RESET3~q\ & ((\lcd|state.DROP_LCD_E~q\) # (\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.RESET2~q\,
	datab => \lcd|state.DROP_LCD_E~q\,
	datac => \lcd|next_command.RESET3~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|Selector19~0_combout\);

-- Location: FF_X105_Y11_N5
\lcd|next_command.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector19~0_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.RESET3~q\);

-- Location: LCCOMB_X105_Y11_N18
\lcd|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~34_combout\ = (\lcd|next_command.RESET3~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|next_command.RESET3~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~34_combout\);

-- Location: FF_X105_Y11_N19
\lcd|state.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state~34_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.RESET3~q\);

-- Location: LCCOMB_X105_Y11_N14
\lcd|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector12~0_combout\ = (\lcd|state.RESET3~q\) # ((\lcd|next_command.FUNC_SET~q\ & ((\lcd|state.DROP_LCD_E~q\) # (\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.RESET3~q\,
	datab => \lcd|state.DROP_LCD_E~q\,
	datac => \lcd|next_command.FUNC_SET~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|Selector12~0_combout\);

-- Location: FF_X105_Y11_N15
\lcd|next_command.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector12~0_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.FUNC_SET~q\);

-- Location: LCCOMB_X105_Y11_N12
\lcd|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~35_combout\ = (\lcd|next_command.FUNC_SET~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|next_command.FUNC_SET~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~35_combout\);

-- Location: FF_X105_Y11_N13
\lcd|state.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state~35_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.FUNC_SET~q\);

-- Location: LCCOMB_X105_Y11_N8
\lcd|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector20~0_combout\ = (\lcd|state.FUNC_SET~q\) # ((\lcd|next_command.DISPLAY_OFF~q\ & ((\lcd|state.HOLD~q\) # (\lcd|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~q\,
	datab => \lcd|state.FUNC_SET~q\,
	datac => \lcd|next_command.DISPLAY_OFF~q\,
	datad => \lcd|state.DROP_LCD_E~q\,
	combout => \lcd|Selector20~0_combout\);

-- Location: FF_X105_Y11_N9
\lcd|next_command.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector20~0_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.DISPLAY_OFF~q\);

-- Location: LCCOMB_X105_Y11_N0
\lcd|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~37_combout\ = (\lcd|next_command.DISPLAY_OFF~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|next_command.DISPLAY_OFF~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~37_combout\);

-- Location: FF_X105_Y11_N1
\lcd|state.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state~37_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.DISPLAY_OFF~q\);

-- Location: LCCOMB_X105_Y11_N6
\lcd|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector21~0_combout\ = (\lcd|state.DISPLAY_OFF~q\) # ((\lcd|next_command.DISPLAY_CLEAR~q\ & ((\lcd|state.DROP_LCD_E~q\) # (\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|next_command.DISPLAY_CLEAR~q\,
	datab => \lcd|state.DROP_LCD_E~q\,
	datac => \lcd|state.HOLD~q\,
	datad => \lcd|state.DISPLAY_OFF~q\,
	combout => \lcd|Selector21~0_combout\);

-- Location: FF_X106_Y11_N15
\lcd|next_command.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \lcd|Selector21~0_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	sload => VCC,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X105_Y11_N2
\lcd|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~32_combout\ = (\lcd|next_command.DISPLAY_CLEAR~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|next_command.DISPLAY_CLEAR~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~32_combout\);

-- Location: FF_X105_Y11_N3
\lcd|state.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state~32_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X103_Y11_N16
\lcd|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector9~0_combout\ = (\lcd|state.DISPLAY_CLEAR~q\) # ((\lcd|DATA_BUS_VALUE\(0) & ((\lcd|state.HOLD~q\) # (\lcd|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~q\,
	datab => \lcd|state.DISPLAY_CLEAR~q\,
	datac => \lcd|state.DROP_LCD_E~q\,
	datad => \lcd|DATA_BUS_VALUE\(0),
	combout => \lcd|Selector9~0_combout\);

-- Location: LCCOMB_X111_Y11_N28
\lcd|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~18_combout\ = (\lcd|CHAR_COUNT\(1) & (\lcd|state.RESET1~q\ & !\lcd|state.Print_String~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datac => \lcd|state.RESET1~q\,
	datad => \lcd|state.Print_String~q\,
	combout => \lcd|Add2~18_combout\);

-- Location: LCCOMB_X111_Y11_N22
\lcd|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~16_combout\ = (\lcd|state.RESET1~q\ & (\lcd|CHAR_COUNT\(0) & !\lcd|state.Print_String~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.RESET1~q\,
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|state.Print_String~q\,
	combout => \lcd|Add2~16_combout\);

-- Location: LCCOMB_X112_Y11_N10
\lcd|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~1_combout\ = \lcd|CHAR_COUNT\(0) $ (VCC)
-- \lcd|Add2~2\ = CARRY(\lcd|CHAR_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(0),
	datad => VCC,
	combout => \lcd|Add2~1_combout\,
	cout => \lcd|Add2~2\);

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

-- Location: LCCOMB_X109_Y11_N20
\lcd|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~5_combout\ = (\lcd|CHAR_COUNT\(2) & \lcd|CHAR_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux6~5_combout\);

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

-- Location: LCCOMB_X109_Y11_N24
\lcd|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~7_combout\ = ((!\lcd|CHAR_COUNT\(1) & !\lcd|CHAR_COUNT\(0))) # (!\lcd|CHAR_COUNT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|CHAR_COUNT\(2),
	combout => \lcd|Mux6~7_combout\);

-- Location: LCCOMB_X109_Y11_N10
\lcd|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~8_combout\ = (\lcd|CHAR_COUNT\(2) & ((\lcd|CHAR_COUNT\(0)) # (!\lcd|CHAR_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux6~8_combout\);

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

-- Location: LCCOMB_X109_Y11_N18
\lcd|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux7~4_combout\ = (\lcd|CHAR_COUNT\(0) & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(0),
	datac => \SW[16]~input_o\,
	combout => \lcd|Mux7~4_combout\);

-- Location: LCCOMB_X109_Y11_N28
\lcd|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux7~5_combout\ = (\lcd|Mux6~7_combout\ & ((\lcd|Mux6~8_combout\ & (\SW[8]~input_o\)) # (!\lcd|Mux6~8_combout\ & ((\lcd|Mux7~4_combout\))))) # (!\lcd|Mux6~7_combout\ & (((!\lcd|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \lcd|Mux6~7_combout\,
	datac => \lcd|Mux6~8_combout\,
	datad => \lcd|Mux7~4_combout\,
	combout => \lcd|Mux7~5_combout\);

-- Location: LCCOMB_X109_Y11_N2
\lcd|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux7~6_combout\ = (\lcd|Mux6~5_combout\ & ((\lcd|Mux7~5_combout\ & ((\SW[4]~input_o\))) # (!\lcd|Mux7~5_combout\ & (\SW[0]~input_o\)))) # (!\lcd|Mux6~5_combout\ & (((\lcd|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \lcd|Mux6~5_combout\,
	datad => \lcd|Mux7~5_combout\,
	combout => \lcd|Mux7~6_combout\);

-- Location: LCCOMB_X111_Y11_N6
\lcd|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~12_combout\ = (\lcd|state.RESET1~q\ & (\lcd|CHAR_COUNT\(3) & !\lcd|state.Print_String~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.RESET1~q\,
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|state.Print_String~q\,
	combout => \lcd|Add2~12_combout\);

-- Location: LCCOMB_X112_Y11_N14
\lcd|Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~5_combout\ = (\lcd|CHAR_COUNT\(2) & (\lcd|Add2~4\ $ (GND))) # (!\lcd|CHAR_COUNT\(2) & (!\lcd|Add2~4\ & VCC))
-- \lcd|Add2~6\ = CARRY((\lcd|CHAR_COUNT\(2) & !\lcd|Add2~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datad => VCC,
	cin => \lcd|Add2~4\,
	combout => \lcd|Add2~5_combout\,
	cout => \lcd|Add2~6\);

-- Location: LCCOMB_X112_Y11_N16
\lcd|Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~7_combout\ = (\lcd|CHAR_COUNT\(3) & (!\lcd|Add2~6\)) # (!\lcd|CHAR_COUNT\(3) & ((\lcd|Add2~6\) # (GND)))
-- \lcd|Add2~8\ = CARRY((!\lcd|Add2~6\) # (!\lcd|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(3),
	datad => VCC,
	cin => \lcd|Add2~6\,
	combout => \lcd|Add2~7_combout\,
	cout => \lcd|Add2~8\);

-- Location: LCCOMB_X109_Y11_N12
\lcd|Add2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~13_combout\ = (\lcd|Add2~12_combout\) # ((\lcd|state.Print_String~q\ & (\lcd|Add2~7_combout\ & !\lcd|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~q\,
	datab => \lcd|Add2~12_combout\,
	datac => \lcd|Add2~7_combout\,
	datad => \lcd|process_1~0_combout\,
	combout => \lcd|Add2~13_combout\);

-- Location: LCCOMB_X106_Y11_N12
\lcd|CHAR_COUNT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CHAR_COUNT[0]~0_combout\ = (\reset_synkroniseres|reset_sync~q\ & \lcd|CLK_400HZ_Enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres|reset_sync~q\,
	datad => \lcd|CLK_400HZ_Enable~q\,
	combout => \lcd|CHAR_COUNT[0]~0_combout\);

-- Location: FF_X109_Y11_N13
\lcd|CHAR_COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Add2~13_combout\,
	ena => \lcd|CHAR_COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CHAR_COUNT\(3));

-- Location: LCCOMB_X111_Y11_N4
\lcd|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~0_combout\ = (\lcd|state.RESET1~q\ & (\lcd|CHAR_COUNT\(4) & !\lcd|state.Print_String~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.RESET1~q\,
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|state.Print_String~q\,
	combout => \lcd|Add2~0_combout\);

-- Location: LCCOMB_X112_Y11_N18
\lcd|Add2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~9_combout\ = \lcd|Add2~8\ $ (!\lcd|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lcd|CHAR_COUNT\(4),
	cin => \lcd|Add2~8\,
	combout => \lcd|Add2~9_combout\);

-- Location: LCCOMB_X108_Y11_N12
\lcd|Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~11_combout\ = (\lcd|Add2~0_combout\) # ((\lcd|state.Print_String~q\ & (\lcd|Add2~9_combout\ & !\lcd|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Add2~0_combout\,
	datab => \lcd|state.Print_String~q\,
	datac => \lcd|Add2~9_combout\,
	datad => \lcd|process_1~0_combout\,
	combout => \lcd|Add2~11_combout\);

-- Location: FF_X108_Y11_N13
\lcd|CHAR_COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Add2~11_combout\,
	ena => \lcd|CHAR_COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CHAR_COUNT\(4));

-- Location: LCCOMB_X108_Y11_N4
\lcd|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~2_combout\ = (!\lcd|CHAR_COUNT\(3) & (\lcd|CHAR_COUNT\(4) & ((\lcd|CHAR_COUNT\(2)) # (!\lcd|CHAR_COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|CHAR_COUNT\(4),
	combout => \lcd|Mux6~2_combout\);

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

-- Location: LCCOMB_X109_Y11_N22
\lcd|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~3_combout\ = (!\lcd|CHAR_COUNT\(3) & (!\lcd|CHAR_COUNT\(2) & (\lcd|CHAR_COUNT\(1) & \lcd|CHAR_COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(3),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|CHAR_COUNT\(1),
	datad => \lcd|CHAR_COUNT\(4),
	combout => \lcd|Mux6~3_combout\);

-- Location: LCCOMB_X109_Y11_N0
\lcd|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux7~3_combout\ = (\SW[12]~input_o\ & (\lcd|CHAR_COUNT\(0) & \lcd|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|Mux6~3_combout\,
	combout => \lcd|Mux7~3_combout\);

-- Location: LCCOMB_X108_Y11_N30
\lcd|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~12_combout\ = (!\lcd|CHAR_COUNT\(3) & \lcd|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|CHAR_COUNT\(4),
	combout => \lcd|Mux6~12_combout\);

-- Location: LCCOMB_X108_Y11_N22
\lcd|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux7~1_combout\ = (\lcd|CHAR_COUNT\(4) & (\lcd|CHAR_COUNT\(2) $ (((\lcd|CHAR_COUNT\(0) & \lcd|CHAR_COUNT\(3)))))) # (!\lcd|CHAR_COUNT\(4) & ((\lcd|CHAR_COUNT\(2) & ((!\lcd|CHAR_COUNT\(3)))) # (!\lcd|CHAR_COUNT\(2) & (!\lcd|CHAR_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(0),
	datab => \lcd|CHAR_COUNT\(3),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(2),
	combout => \lcd|Mux7~1_combout\);

-- Location: LCCOMB_X110_Y11_N8
\lcd|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux7~0_combout\ = (!\lcd|CHAR_COUNT\(2) & (!\lcd|CHAR_COUNT\(3) & ((\lcd|CHAR_COUNT\(1)) # (!\lcd|CHAR_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Mux7~0_combout\);

-- Location: LCCOMB_X108_Y11_N16
\lcd|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux7~2_combout\ = (!\lcd|Mux6~12_combout\ & ((\lcd|Mux7~0_combout\) # ((!\lcd|CHAR_COUNT\(1) & \lcd|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~12_combout\,
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|Mux7~1_combout\,
	datad => \lcd|Mux7~0_combout\,
	combout => \lcd|Mux7~2_combout\);

-- Location: LCCOMB_X108_Y11_N26
\lcd|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux7~7_combout\ = (\lcd|Mux7~3_combout\) # ((\lcd|Mux7~2_combout\) # ((\lcd|Mux7~6_combout\ & \lcd|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux7~6_combout\,
	datab => \lcd|Mux6~2_combout\,
	datac => \lcd|Mux7~3_combout\,
	datad => \lcd|Mux7~2_combout\,
	combout => \lcd|Mux7~7_combout\);

-- Location: LCCOMB_X110_Y11_N24
\lcd|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~1_combout\ = (!\lcd|CHAR_COUNT\(2) & (\lcd|CHAR_COUNT\(3) & (\lcd|CHAR_COUNT\(1) $ (\lcd|CHAR_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Mux3~1_combout\);

-- Location: LCCOMB_X110_Y11_N14
\lcd|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux2~1_combout\ = (\lcd|CHAR_COUNT\(2) & (\lcd|CHAR_COUNT\(0) & (\lcd|CHAR_COUNT\(4) $ (\lcd|CHAR_COUNT\(1))))) # (!\lcd|CHAR_COUNT\(2) & (!\lcd|CHAR_COUNT\(0) & (\lcd|CHAR_COUNT\(4) & \lcd|CHAR_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux2~1_combout\);

-- Location: LCCOMB_X110_Y11_N28
\lcd|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux2~0_combout\ = (\lcd|CHAR_COUNT\(2) & (((\lcd|CHAR_COUNT\(1)) # (!\lcd|CHAR_COUNT\(4))))) # (!\lcd|CHAR_COUNT\(2) & (\lcd|CHAR_COUNT\(1) $ (((!\lcd|CHAR_COUNT\(0) & \lcd|CHAR_COUNT\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y11_N16
\lcd|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux2~2_combout\ = (\lcd|CHAR_COUNT\(3) & ((\lcd|Mux2~0_combout\))) # (!\lcd|CHAR_COUNT\(3) & (\lcd|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(3),
	datac => \lcd|Mux2~1_combout\,
	datad => \lcd|Mux2~0_combout\,
	combout => \lcd|Mux2~2_combout\);

-- Location: LCCOMB_X110_Y11_N6
\lcd|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~0_combout\ = (\lcd|CHAR_COUNT\(2) & ((\lcd|CHAR_COUNT\(1) & (!\lcd|CHAR_COUNT\(0) & \lcd|CHAR_COUNT\(3))) # (!\lcd|CHAR_COUNT\(1) & (\lcd|CHAR_COUNT\(0))))) # (!\lcd|CHAR_COUNT\(2) & (!\lcd|CHAR_COUNT\(0) & (\lcd|CHAR_COUNT\(1) $ 
-- (\lcd|CHAR_COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y11_N22
\lcd|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Equal1~0_combout\ = (\lcd|Mux2~2_combout\ & ((\lcd|CHAR_COUNT\(4) & ((\lcd|Mux3~0_combout\))) # (!\lcd|CHAR_COUNT\(4) & (\lcd|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux3~1_combout\,
	datab => \lcd|Mux2~2_combout\,
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|Mux3~0_combout\,
	combout => \lcd|Equal1~0_combout\);

-- Location: LCCOMB_X109_Y11_N8
\lcd|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~0_combout\ = (\lcd|CHAR_COUNT\(0) & \lcd|CHAR_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y11_N8
\lcd|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Equal3~0_combout\ = (\lcd|CHAR_COUNT\(2) & (\lcd|CHAR_COUNT\(3) & (\lcd|CHAR_COUNT\(4) & \lcd|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(3),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|Mux4~0_combout\,
	combout => \lcd|Equal3~0_combout\);

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

-- Location: LCCOMB_X108_Y11_N6
\lcd|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~4_combout\ = (\SW[13]~input_o\) # (!\lcd|CHAR_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Mux6~4_combout\);

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

-- Location: LCCOMB_X109_Y11_N14
\lcd|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~6_combout\ = (\SW[17]~input_o\ & \lcd|CHAR_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Mux6~6_combout\);

-- Location: LCCOMB_X108_Y11_N0
\lcd|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~9_combout\ = (\lcd|Mux6~8_combout\ & ((\SW[9]~input_o\) # ((!\lcd|Mux6~7_combout\)))) # (!\lcd|Mux6~8_combout\ & (((\lcd|Mux6~6_combout\ & \lcd|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \lcd|Mux6~6_combout\,
	datac => \lcd|Mux6~8_combout\,
	datad => \lcd|Mux6~7_combout\,
	combout => \lcd|Mux6~9_combout\);

-- Location: LCCOMB_X108_Y11_N18
\lcd|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~10_combout\ = (\lcd|Mux6~5_combout\ & ((\lcd|Mux6~9_combout\ & ((\SW[1]~input_o\))) # (!\lcd|Mux6~9_combout\ & (\SW[5]~input_o\)))) # (!\lcd|Mux6~5_combout\ & (((\lcd|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \lcd|Mux6~5_combout\,
	datad => \lcd|Mux6~9_combout\,
	combout => \lcd|Mux6~10_combout\);

-- Location: LCCOMB_X108_Y11_N24
\lcd|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~11_combout\ = (\lcd|Mux6~4_combout\ & ((\lcd|Mux6~3_combout\) # ((\lcd|Mux6~2_combout\ & \lcd|Mux6~10_combout\)))) # (!\lcd|Mux6~4_combout\ & (((\lcd|Mux6~2_combout\ & \lcd|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~4_combout\,
	datab => \lcd|Mux6~3_combout\,
	datac => \lcd|Mux6~2_combout\,
	datad => \lcd|Mux6~10_combout\,
	combout => \lcd|Mux6~11_combout\);

-- Location: LCCOMB_X110_Y11_N0
\lcd|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~14_combout\ = (\lcd|CHAR_COUNT\(2) & (\lcd|CHAR_COUNT\(4) & (\lcd|CHAR_COUNT\(0) $ (\lcd|CHAR_COUNT\(1))))) # (!\lcd|CHAR_COUNT\(2) & ((\lcd|CHAR_COUNT\(1)) # (\lcd|CHAR_COUNT\(0) $ (\lcd|CHAR_COUNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux6~14_combout\);

-- Location: LCCOMB_X110_Y11_N18
\lcd|Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~15_combout\ = (\lcd|CHAR_COUNT\(0) & (\lcd|Mux6~14_combout\ & (\lcd|CHAR_COUNT\(3) $ (\lcd|CHAR_COUNT\(1))))) # (!\lcd|CHAR_COUNT\(0) & (((\lcd|Mux6~14_combout\)) # (!\lcd|CHAR_COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(3),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|Mux6~14_combout\,
	combout => \lcd|Mux6~15_combout\);

-- Location: LCCOMB_X108_Y11_N2
\lcd|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~1_combout\ = (\lcd|CHAR_COUNT\(1) & (\lcd|CHAR_COUNT\(0) & ((\lcd|CHAR_COUNT\(3)) # (!\lcd|CHAR_COUNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datab => \lcd|CHAR_COUNT\(3),
	datac => \lcd|CHAR_COUNT\(1),
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Mux4~1_combout\);

-- Location: LCCOMB_X110_Y11_N12
\lcd|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux1~0_combout\ = (!\lcd|CHAR_COUNT\(1) & ((\lcd|CHAR_COUNT\(4) & ((!\lcd|CHAR_COUNT\(3)))) # (!\lcd|CHAR_COUNT\(4) & (\lcd|CHAR_COUNT\(2) & \lcd|CHAR_COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Mux1~0_combout\);

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

-- Location: LCCOMB_X109_Y11_N30
\lcd|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~3_combout\ = (\lcd|CHAR_COUNT\(1) & ((\lcd|CHAR_COUNT\(2)) # (!\lcd|CHAR_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux4~3_combout\);

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

-- Location: LCCOMB_X108_Y11_N8
\lcd|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~2_combout\ = ((\lcd|CHAR_COUNT\(3) & ((\lcd|CHAR_COUNT\(4)))) # (!\lcd|CHAR_COUNT\(3) & ((\SW[7]~input_o\) # (!\lcd|CHAR_COUNT\(4))))) # (!\lcd|CHAR_COUNT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \lcd|CHAR_COUNT\(3),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|CHAR_COUNT\(4),
	combout => \lcd|Mux4~2_combout\);

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

-- Location: LCCOMB_X107_Y11_N28
\lcd|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~4_combout\ = (\lcd|CHAR_COUNT\(0) & ((\lcd|CHAR_COUNT\(4) $ (!\lcd|CHAR_COUNT\(2))))) # (!\lcd|CHAR_COUNT\(0) & ((\SW[11]~input_o\) # ((!\lcd|CHAR_COUNT\(2)) # (!\lcd|CHAR_COUNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \lcd|CHAR_COUNT\(4),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Mux4~4_combout\);

-- Location: LCCOMB_X107_Y11_N18
\lcd|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~5_combout\ = (\lcd|Mux4~4_combout\ & (((\lcd|CHAR_COUNT\(4) & !\lcd|CHAR_COUNT\(2))) # (!\lcd|CHAR_COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(3),
	datab => \lcd|CHAR_COUNT\(4),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|Mux4~4_combout\,
	combout => \lcd|Mux4~5_combout\);

-- Location: LCCOMB_X107_Y11_N0
\lcd|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~6_combout\ = (\lcd|Mux4~3_combout\ & (((\lcd|Mux4~0_combout\)))) # (!\lcd|Mux4~3_combout\ & ((\lcd|Mux4~0_combout\ & (\SW[15]~input_o\)) # (!\lcd|Mux4~0_combout\ & ((\lcd|Mux4~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \lcd|Mux4~3_combout\,
	datac => \lcd|Mux4~0_combout\,
	datad => \lcd|Mux4~5_combout\,
	combout => \lcd|Mux4~6_combout\);

-- Location: LCCOMB_X107_Y11_N30
\lcd|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~7_combout\ = (\lcd|Mux4~3_combout\ & ((\lcd|Mux4~6_combout\ & (\SW[3]~input_o\)) # (!\lcd|Mux4~6_combout\ & ((\lcd|Mux4~2_combout\))))) # (!\lcd|Mux4~3_combout\ & (((\lcd|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \lcd|Mux4~3_combout\,
	datac => \lcd|Mux4~2_combout\,
	datad => \lcd|Mux4~6_combout\,
	combout => \lcd|Mux4~7_combout\);

-- Location: LCCOMB_X110_Y11_N10
\lcd|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux0~0_combout\ = (!\lcd|CHAR_COUNT\(2) & (!\lcd|CHAR_COUNT\(0) & (\lcd|CHAR_COUNT\(4) & \lcd|CHAR_COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Mux0~0_combout\);

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

-- Location: LCCOMB_X108_Y11_N10
\lcd|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~0_combout\ = (\lcd|CHAR_COUNT\(4) & ((\lcd|CHAR_COUNT\(3) & ((!\lcd|CHAR_COUNT\(2)))) # (!\lcd|CHAR_COUNT\(3) & (\SW[6]~input_o\ & \lcd|CHAR_COUNT\(2))))) # (!\lcd|CHAR_COUNT\(4) & (!\lcd|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datab => \lcd|CHAR_COUNT\(3),
	datac => \SW[6]~input_o\,
	datad => \lcd|CHAR_COUNT\(2),
	combout => \lcd|Mux5~0_combout\);

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

-- Location: LCCOMB_X109_Y11_N16
\lcd|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~1_combout\ = (\lcd|CHAR_COUNT\(2) & ((\SW[10]~input_o\) # (\lcd|CHAR_COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Mux5~1_combout\);

-- Location: LCCOMB_X107_Y11_N20
\lcd|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~2_combout\ = (\lcd|CHAR_COUNT\(0) & ((\lcd|CHAR_COUNT\(4) & (\lcd|CHAR_COUNT\(3) & !\lcd|Mux5~1_combout\)) # (!\lcd|CHAR_COUNT\(4) & (!\lcd|CHAR_COUNT\(3))))) # (!\lcd|CHAR_COUNT\(0) & ((\lcd|Mux5~1_combout\ & (\lcd|CHAR_COUNT\(4))) # 
-- (!\lcd|Mux5~1_combout\ & ((\lcd|CHAR_COUNT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(0),
	datab => \lcd|CHAR_COUNT\(4),
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|Mux5~1_combout\,
	combout => \lcd|Mux5~2_combout\);

-- Location: LCCOMB_X107_Y11_N2
\lcd|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~3_combout\ = (\lcd|Mux4~3_combout\ & (((\lcd|Mux4~0_combout\)))) # (!\lcd|Mux4~3_combout\ & ((\lcd|Mux4~0_combout\ & (\SW[14]~input_o\)) # (!\lcd|Mux4~0_combout\ & ((\lcd|Mux5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \lcd|Mux4~3_combout\,
	datac => \lcd|Mux4~0_combout\,
	datad => \lcd|Mux5~2_combout\,
	combout => \lcd|Mux5~3_combout\);

-- Location: LCCOMB_X107_Y11_N12
\lcd|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Equal1~1_combout\ = (\lcd|Mux4~3_combout\ & ((\lcd|Mux5~3_combout\ & (\SW[2]~input_o\)) # (!\lcd|Mux5~3_combout\ & ((\lcd|Mux5~0_combout\))))) # (!\lcd|Mux4~3_combout\ & (((\lcd|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \lcd|Mux4~3_combout\,
	datac => \lcd|Mux5~0_combout\,
	datad => \lcd|Mux5~3_combout\,
	combout => \lcd|Equal1~1_combout\);

-- Location: LCCOMB_X107_Y11_N10
\lcd|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Equal1~2_combout\ = (!\lcd|CHAR_COUNT\(1) & (\lcd|Mux0~0_combout\ & \lcd|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datac => \lcd|Mux0~0_combout\,
	datad => \lcd|Equal1~1_combout\,
	combout => \lcd|Equal1~2_combout\);

-- Location: LCCOMB_X107_Y11_N8
\lcd|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Equal1~3_combout\ = (!\lcd|Mux4~1_combout\ & (!\lcd|Mux1~0_combout\ & (\lcd|Mux4~7_combout\ & \lcd|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux4~1_combout\,
	datab => \lcd|Mux1~0_combout\,
	datac => \lcd|Mux4~7_combout\,
	datad => \lcd|Equal1~2_combout\,
	combout => \lcd|Equal1~3_combout\);

-- Location: LCCOMB_X108_Y11_N20
\lcd|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Equal1~4_combout\ = (\lcd|Equal1~3_combout\ & ((\lcd|Mux6~11_combout\) # ((!\lcd|Mux6~12_combout\ & \lcd|Mux6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~12_combout\,
	datab => \lcd|Mux6~11_combout\,
	datac => \lcd|Mux6~15_combout\,
	datad => \lcd|Equal1~3_combout\,
	combout => \lcd|Equal1~4_combout\);

-- Location: LCCOMB_X108_Y11_N28
\lcd|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|process_1~0_combout\ = (\lcd|Equal3~0_combout\) # ((!\lcd|Mux7~7_combout\ & (\lcd|Equal1~0_combout\ & \lcd|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux7~7_combout\,
	datab => \lcd|Equal1~0_combout\,
	datac => \lcd|Equal3~0_combout\,
	datad => \lcd|Equal1~4_combout\,
	combout => \lcd|process_1~0_combout\);

-- Location: LCCOMB_X109_Y11_N4
\lcd|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~17_combout\ = (\lcd|Add2~16_combout\) # ((\lcd|state.Print_String~q\ & (\lcd|Add2~1_combout\ & !\lcd|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~q\,
	datab => \lcd|Add2~16_combout\,
	datac => \lcd|Add2~1_combout\,
	datad => \lcd|process_1~0_combout\,
	combout => \lcd|Add2~17_combout\);

-- Location: FF_X109_Y11_N5
\lcd|CHAR_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Add2~17_combout\,
	ena => \lcd|CHAR_COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CHAR_COUNT\(0));

-- Location: LCCOMB_X112_Y11_N12
\lcd|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~3_combout\ = (\lcd|CHAR_COUNT\(1) & (!\lcd|Add2~2\)) # (!\lcd|CHAR_COUNT\(1) & ((\lcd|Add2~2\) # (GND)))
-- \lcd|Add2~4\ = CARRY((!\lcd|Add2~2\) # (!\lcd|CHAR_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datad => VCC,
	cin => \lcd|Add2~2\,
	combout => \lcd|Add2~3_combout\,
	cout => \lcd|Add2~4\);

-- Location: LCCOMB_X109_Y11_N6
\lcd|Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~19_combout\ = (\lcd|Add2~18_combout\) # ((\lcd|state.Print_String~q\ & (\lcd|Add2~3_combout\ & !\lcd|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~q\,
	datab => \lcd|Add2~18_combout\,
	datac => \lcd|Add2~3_combout\,
	datad => \lcd|process_1~0_combout\,
	combout => \lcd|Add2~19_combout\);

-- Location: FF_X109_Y11_N7
\lcd|CHAR_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Add2~19_combout\,
	ena => \lcd|CHAR_COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CHAR_COUNT\(1));

-- Location: LCCOMB_X111_Y11_N20
\lcd|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~14_combout\ = (\lcd|CHAR_COUNT\(2) & (\lcd|state.RESET1~q\ & !\lcd|state.Print_String~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|state.RESET1~q\,
	datad => \lcd|state.Print_String~q\,
	combout => \lcd|Add2~14_combout\);

-- Location: LCCOMB_X109_Y11_N26
\lcd|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add2~15_combout\ = (\lcd|Add2~14_combout\) # ((\lcd|state.Print_String~q\ & (\lcd|Add2~5_combout\ & !\lcd|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~q\,
	datab => \lcd|Add2~5_combout\,
	datac => \lcd|Add2~14_combout\,
	datad => \lcd|process_1~0_combout\,
	combout => \lcd|Add2~15_combout\);

-- Location: FF_X109_Y11_N27
\lcd|CHAR_COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Add2~15_combout\,
	ena => \lcd|CHAR_COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CHAR_COUNT\(2));

-- Location: LCCOMB_X111_Y11_N14
\lcd|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Equal2~0_combout\ = (\lcd|CHAR_COUNT\(2) & (\lcd|CHAR_COUNT\(3) & (!\lcd|CHAR_COUNT\(4) & \lcd|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(3),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|Mux4~0_combout\,
	combout => \lcd|Equal2~0_combout\);

-- Location: LCCOMB_X106_Y11_N16
\lcd|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector16~0_combout\ = (\lcd|LCD_RS~0_combout\ & (\lcd|Equal2~0_combout\ & ((\lcd|state.Print_String~q\)))) # (!\lcd|LCD_RS~0_combout\ & ((\lcd|next_command.LINE2~q\) # ((\lcd|Equal2~0_combout\ & \lcd|state.Print_String~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|LCD_RS~0_combout\,
	datab => \lcd|Equal2~0_combout\,
	datac => \lcd|next_command.LINE2~q\,
	datad => \lcd|state.Print_String~q\,
	combout => \lcd|Selector16~0_combout\);

-- Location: FF_X106_Y11_N17
\lcd|next_command.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector16~0_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.LINE2~q\);

-- Location: LCCOMB_X106_Y11_N6
\lcd|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~30_combout\ = (\lcd|next_command.LINE2~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|next_command.LINE2~q\,
	datac => \lcd|state.HOLD~q\,
	combout => \lcd|state~30_combout\);

-- Location: FF_X106_Y11_N7
\lcd|state.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state~30_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.LINE2~q\);

-- Location: LCCOMB_X106_Y11_N10
\lcd|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector17~0_combout\ = (\lcd|LCD_RS~0_combout\ & (\lcd|state.Print_String~q\ & ((\lcd|process_1~0_combout\)))) # (!\lcd|LCD_RS~0_combout\ & ((\lcd|next_command.RETURN_HOME~q\) # ((\lcd|state.Print_String~q\ & \lcd|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|LCD_RS~0_combout\,
	datab => \lcd|state.Print_String~q\,
	datac => \lcd|next_command.RETURN_HOME~q\,
	datad => \lcd|process_1~0_combout\,
	combout => \lcd|Selector17~0_combout\);

-- Location: FF_X106_Y11_N11
\lcd|next_command.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector17~0_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.RETURN_HOME~q\);

-- Location: LCCOMB_X106_Y11_N18
\lcd|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~31_combout\ = (\lcd|state.HOLD~q\ & \lcd|next_command.RETURN_HOME~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|state.HOLD~q\,
	datad => \lcd|next_command.RETURN_HOME~q\,
	combout => \lcd|state~31_combout\);

-- Location: FF_X106_Y11_N19
\lcd|state.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state~31_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.RETURN_HOME~q\);

-- Location: LCCOMB_X105_Y11_N30
\lcd|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector13~0_combout\ = (\lcd|state.DISPLAY_CLEAR~q\) # ((\lcd|next_command.DISPLAY_ON~q\ & ((\lcd|state.DROP_LCD_E~q\) # (\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DISPLAY_CLEAR~q\,
	datab => \lcd|state.DROP_LCD_E~q\,
	datac => \lcd|next_command.DISPLAY_ON~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|Selector13~0_combout\);

-- Location: FF_X105_Y11_N31
\lcd|next_command.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector13~0_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.DISPLAY_ON~q\);

-- Location: LCCOMB_X105_Y11_N24
\lcd|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~33_combout\ = (\lcd|next_command.DISPLAY_ON~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|next_command.DISPLAY_ON~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~33_combout\);

-- Location: FF_X105_Y11_N25
\lcd|state.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state~33_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.DISPLAY_ON~q\);

-- Location: LCCOMB_X105_Y11_N26
\lcd|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector14~0_combout\ = (\lcd|state.DISPLAY_ON~q\) # ((\lcd|next_command.MODE_SET~q\ & ((\lcd|state.DROP_LCD_E~q\) # (\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DISPLAY_ON~q\,
	datab => \lcd|state.DROP_LCD_E~q\,
	datac => \lcd|next_command.MODE_SET~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|Selector14~0_combout\);

-- Location: FF_X105_Y11_N27
\lcd|next_command.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector14~0_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.MODE_SET~q\);

-- Location: LCCOMB_X105_Y11_N16
\lcd|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~29_combout\ = (\lcd|next_command.MODE_SET~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|next_command.MODE_SET~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~29_combout\);

-- Location: FF_X106_Y11_N13
\lcd|state.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \lcd|state~29_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	sload => VCC,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.MODE_SET~q\);

-- Location: LCCOMB_X106_Y11_N20
\lcd|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector5~0_combout\ = (!\lcd|state.LINE2~q\ & (!\lcd|state.RETURN_HOME~q\ & !\lcd|state.MODE_SET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.LINE2~q\,
	datab => \lcd|state.RETURN_HOME~q\,
	datad => \lcd|state.MODE_SET~q\,
	combout => \lcd|Selector5~0_combout\);

-- Location: LCCOMB_X106_Y11_N8
\lcd|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector15~3_combout\ = ((\lcd|next_command.Print_String~q\ & ((\lcd|state.HOLD~q\) # (\lcd|state.DROP_LCD_E~q\)))) # (!\lcd|Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|next_command.Print_String~q\,
	datab => \lcd|state.HOLD~q\,
	datac => \lcd|state.DROP_LCD_E~q\,
	datad => \lcd|Selector5~0_combout\,
	combout => \lcd|Selector15~3_combout\);

-- Location: LCCOMB_X107_Y11_N4
\lcd|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector15~2_combout\ = (\lcd|Selector15~3_combout\) # ((\lcd|state.Print_String~q\ & (\lcd|Equal2~0_combout\ $ (!\lcd|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Selector15~3_combout\,
	datab => \lcd|state.Print_String~q\,
	datac => \lcd|Equal2~0_combout\,
	datad => \lcd|process_1~0_combout\,
	combout => \lcd|Selector15~2_combout\);

-- Location: FF_X107_Y11_N5
\lcd|next_command.Print_String\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector15~2_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.Print_String~q\);

-- Location: LCCOMB_X106_Y11_N14
\lcd|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~28_combout\ = (\lcd|next_command.Print_String~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|next_command.Print_String~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~28_combout\);

-- Location: FF_X106_Y11_N23
\lcd|state.Print_String\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \lcd|state~28_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	sload => VCC,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.Print_String~q\);

-- Location: LCCOMB_X110_Y11_N26
\lcd|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~2_combout\ = (\lcd|CHAR_COUNT\(4) & ((\lcd|Mux3~0_combout\))) # (!\lcd|CHAR_COUNT\(4) & (\lcd|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Mux3~1_combout\,
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|Mux3~0_combout\,
	combout => \lcd|Mux3~2_combout\);

-- Location: LCCOMB_X110_Y11_N20
\lcd|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux0~1_combout\ = (!\lcd|CHAR_COUNT\(1) & \lcd|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CHAR_COUNT\(1),
	datad => \lcd|Mux0~0_combout\,
	combout => \lcd|Mux0~1_combout\);

-- Location: LCCOMB_X110_Y11_N30
\lcd|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux1~1_combout\ = (\lcd|CHAR_COUNT\(4) & ((\lcd|CHAR_COUNT\(2)) # ((\lcd|CHAR_COUNT\(0)) # (!\lcd|CHAR_COUNT\(3))))) # (!\lcd|CHAR_COUNT\(4) & ((\lcd|CHAR_COUNT\(3)) # ((\lcd|CHAR_COUNT\(2) & \lcd|CHAR_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Mux1~1_combout\);

-- Location: LCCOMB_X110_Y11_N4
\lcd|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux1~2_combout\ = (\lcd|Mux1~0_combout\) # ((\lcd|CHAR_COUNT\(1) & \lcd|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|Mux1~1_combout\,
	datad => \lcd|Mux1~0_combout\,
	combout => \lcd|Mux1~2_combout\);

-- Location: LCCOMB_X110_Y11_N2
\lcd|DATA_BUS_VALUE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~0_combout\ = (!\lcd|Mux3~2_combout\ & (!\lcd|Mux0~1_combout\ & (\lcd|Mux1~2_combout\ & !\lcd|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux3~2_combout\,
	datab => \lcd|Mux0~1_combout\,
	datac => \lcd|Mux1~2_combout\,
	datad => \lcd|Mux2~2_combout\,
	combout => \lcd|DATA_BUS_VALUE~0_combout\);

-- Location: LCCOMB_X107_Y11_N24
\lcd|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~4_combout\ = (\lcd|Mux4~3_combout\ & ((\lcd|Mux5~3_combout\ & (\SW[2]~input_o\)) # (!\lcd|Mux5~3_combout\ & ((\lcd|Mux5~0_combout\))))) # (!\lcd|Mux4~3_combout\ & (((\lcd|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \lcd|Mux4~3_combout\,
	datac => \lcd|Mux5~0_combout\,
	datad => \lcd|Mux5~3_combout\,
	combout => \lcd|Mux5~4_combout\);

-- Location: LCCOMB_X107_Y11_N22
\lcd|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~8_combout\ = (\lcd|Mux4~1_combout\ & (!\lcd|CHAR_COUNT\(3) & (!\lcd|CHAR_COUNT\(2)))) # (!\lcd|Mux4~1_combout\ & (((\lcd|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(3),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|Mux4~7_combout\,
	datad => \lcd|Mux4~1_combout\,
	combout => \lcd|Mux4~8_combout\);

-- Location: LCCOMB_X107_Y11_N6
\lcd|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~13_combout\ = (\lcd|Mux6~11_combout\) # ((\lcd|Mux6~15_combout\ & ((\lcd|CHAR_COUNT\(3)) # (!\lcd|CHAR_COUNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(3),
	datab => \lcd|CHAR_COUNT\(4),
	datac => \lcd|Mux6~15_combout\,
	datad => \lcd|Mux6~11_combout\,
	combout => \lcd|Mux6~13_combout\);

-- Location: LCCOMB_X107_Y11_N14
\lcd|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|LessThan1~0_combout\ = (\lcd|Mux4~8_combout\ & ((\lcd|Mux6~13_combout\) # ((!\lcd|Mux4~1_combout\ & \lcd|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux4~1_combout\,
	datab => \lcd|Mux5~4_combout\,
	datac => \lcd|Mux4~8_combout\,
	datad => \lcd|Mux6~13_combout\,
	combout => \lcd|LessThan1~0_combout\);

-- Location: LCCOMB_X107_Y11_N16
\lcd|DATA_BUS_VALUE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~1_combout\ = (\lcd|DATA_BUS_VALUE~0_combout\ & \lcd|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|DATA_BUS_VALUE~0_combout\,
	datac => \lcd|LessThan1~0_combout\,
	combout => \lcd|DATA_BUS_VALUE~1_combout\);

-- Location: LCCOMB_X107_Y11_N26
\lcd|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector9~1_combout\ = (\lcd|Selector9~0_combout\) # ((\lcd|state.Print_String~q\ & (\lcd|Mux7~7_combout\ $ (\lcd|DATA_BUS_VALUE~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Selector9~0_combout\,
	datab => \lcd|state.Print_String~q\,
	datac => \lcd|Mux7~7_combout\,
	datad => \lcd|DATA_BUS_VALUE~1_combout\,
	combout => \lcd|Selector9~1_combout\);

-- Location: FF_X107_Y11_N27
\lcd|DATA_BUS_VALUE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector9~1_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(0));

-- Location: LCCOMB_X103_Y11_N20
\lcd|LCD_RW_INT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|LCD_RW_INT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \lcd|LCD_RW_INT~feeder_combout\);

-- Location: LCCOMB_X103_Y11_N14
\lcd|LCD_RW_INT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|LCD_RW_INT~0_combout\ = (\lcd|CLK_400HZ_Enable~q\ & (!\lcd|state.DROP_LCD_E~q\ & !\lcd|state.HOLD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_400HZ_Enable~q\,
	datac => \lcd|state.DROP_LCD_E~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|LCD_RW_INT~0_combout\);

-- Location: FF_X103_Y11_N21
\lcd|LCD_RW_INT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|LCD_RW_INT~feeder_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|LCD_RW_INT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|LCD_RW_INT~q\);

-- Location: LCCOMB_X103_Y11_N28
\lcd|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector8~1_combout\ = (\lcd|state.MODE_SET~q\) # ((\lcd|DATA_BUS_VALUE\(1) & ((\lcd|state.DROP_LCD_E~q\) # (\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.MODE_SET~q\,
	datab => \lcd|DATA_BUS_VALUE\(1),
	datac => \lcd|state.DROP_LCD_E~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|Selector8~1_combout\);

-- Location: LCCOMB_X103_Y11_N26
\lcd|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector8~2_combout\ = (\lcd|state.Print_String~q\ & ((!\lcd|LessThan1~0_combout\) # (!\lcd|DATA_BUS_VALUE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~q\,
	datac => \lcd|DATA_BUS_VALUE~0_combout\,
	datad => \lcd|LessThan1~0_combout\,
	combout => \lcd|Selector8~2_combout\);

-- Location: LCCOMB_X103_Y11_N10
\lcd|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector8~0_combout\ = (\lcd|state.Print_String~q\ & (\lcd|DATA_BUS_VALUE~1_combout\ & (\lcd|Mux6~13_combout\ $ (!\lcd|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~13_combout\,
	datab => \lcd|Mux7~7_combout\,
	datac => \lcd|state.Print_String~q\,
	datad => \lcd|DATA_BUS_VALUE~1_combout\,
	combout => \lcd|Selector8~0_combout\);

-- Location: LCCOMB_X103_Y11_N2
\lcd|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector8~3_combout\ = (\lcd|Selector8~1_combout\) # ((\lcd|Selector8~0_combout\) # ((\lcd|Mux6~13_combout\ & \lcd|Selector8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~13_combout\,
	datab => \lcd|Selector8~1_combout\,
	datac => \lcd|Selector8~2_combout\,
	datad => \lcd|Selector8~0_combout\,
	combout => \lcd|Selector8~3_combout\);

-- Location: FF_X103_Y11_N3
\lcd|DATA_BUS_VALUE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector8~3_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(1));

-- Location: LCCOMB_X103_Y11_N12
\lcd|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~5_combout\ = (!\lcd|Mux4~1_combout\ & \lcd|Mux5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|Mux4~1_combout\,
	datad => \lcd|Mux5~4_combout\,
	combout => \lcd|Mux5~5_combout\);

-- Location: LCCOMB_X103_Y11_N4
\lcd|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector7~1_combout\ = (\lcd|state.MODE_SET~q\) # ((\lcd|state.DISPLAY_ON~q\) # ((!\lcd|LCD_RS~0_combout\ & \lcd|DATA_BUS_VALUE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.MODE_SET~q\,
	datab => \lcd|LCD_RS~0_combout\,
	datac => \lcd|state.DISPLAY_ON~q\,
	datad => \lcd|DATA_BUS_VALUE\(2),
	combout => \lcd|Selector7~1_combout\);

-- Location: LCCOMB_X108_Y11_N14
\lcd|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add1~0_combout\ = (\lcd|Mux6~11_combout\) # ((\lcd|Mux7~7_combout\) # ((!\lcd|Mux6~12_combout\ & \lcd|Mux6~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~12_combout\,
	datab => \lcd|Mux6~11_combout\,
	datac => \lcd|Mux7~7_combout\,
	datad => \lcd|Mux6~15_combout\,
	combout => \lcd|Add1~0_combout\);

-- Location: LCCOMB_X103_Y11_N18
\lcd|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector7~0_combout\ = (\lcd|state.Print_String~q\ & (\lcd|DATA_BUS_VALUE~1_combout\ & (\lcd|Mux5~5_combout\ $ (!\lcd|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~5_combout\,
	datab => \lcd|state.Print_String~q\,
	datac => \lcd|Add1~0_combout\,
	datad => \lcd|DATA_BUS_VALUE~1_combout\,
	combout => \lcd|Selector7~0_combout\);

-- Location: LCCOMB_X103_Y11_N8
\lcd|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector7~2_combout\ = (\lcd|Selector7~1_combout\) # ((\lcd|Selector7~0_combout\) # ((\lcd|Mux5~5_combout\ & \lcd|Selector8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~5_combout\,
	datab => \lcd|Selector7~1_combout\,
	datac => \lcd|Selector8~2_combout\,
	datad => \lcd|Selector7~0_combout\,
	combout => \lcd|Selector7~2_combout\);

-- Location: FF_X103_Y11_N9
\lcd|DATA_BUS_VALUE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector7~2_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(2));

-- Location: LCCOMB_X105_Y11_N10
\lcd|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector5~1_combout\ = (!\lcd|state.DISPLAY_OFF~q\ & !\lcd|state.DISPLAY_ON~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|state.DISPLAY_OFF~q\,
	datad => \lcd|state.DISPLAY_ON~q\,
	combout => \lcd|Selector5~1_combout\);

-- Location: LCCOMB_X105_Y11_N28
\lcd|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector6~1_combout\ = (\lcd|state.FUNC_SET~q\) # ((\lcd|state.RESET3~q\) # ((\lcd|state.RESET2~q\) # (!\lcd|Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.FUNC_SET~q\,
	datab => \lcd|state.RESET3~q\,
	datac => \lcd|state.RESET2~q\,
	datad => \lcd|Selector5~1_combout\,
	combout => \lcd|Selector6~1_combout\);

-- Location: LCCOMB_X103_Y11_N22
\lcd|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector6~2_combout\ = (\lcd|Selector6~1_combout\) # (((!\lcd|LCD_RS~0_combout\ & !\lcd|DATA_BUS_VALUE\(3))) # (!\lcd|state.RESET1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|LCD_RS~0_combout\,
	datab => \lcd|Selector6~1_combout\,
	datac => \lcd|DATA_BUS_VALUE\(3),
	datad => \lcd|state.RESET1~q\,
	combout => \lcd|Selector6~2_combout\);

-- Location: LCCOMB_X103_Y11_N6
\lcd|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector8~4_combout\ = (\lcd|state.Print_String~q\ & (\lcd|DATA_BUS_VALUE~0_combout\ & \lcd|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~q\,
	datac => \lcd|DATA_BUS_VALUE~0_combout\,
	datad => \lcd|LessThan1~0_combout\,
	combout => \lcd|Selector8~4_combout\);

-- Location: LCCOMB_X103_Y11_N0
\lcd|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector6~0_combout\ = (\lcd|Selector8~4_combout\ & (\lcd|Mux4~8_combout\ $ (((\lcd|Mux5~5_combout\) # (\lcd|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~5_combout\,
	datab => \lcd|Mux4~8_combout\,
	datac => \lcd|Add1~0_combout\,
	datad => \lcd|Selector8~4_combout\,
	combout => \lcd|Selector6~0_combout\);

-- Location: LCCOMB_X103_Y11_N30
\lcd|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector6~3_combout\ = (!\lcd|Selector6~2_combout\ & (!\lcd|Selector6~0_combout\ & ((!\lcd|Selector8~2_combout\) # (!\lcd|Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Selector6~2_combout\,
	datab => \lcd|Mux4~8_combout\,
	datac => \lcd|Selector8~2_combout\,
	datad => \lcd|Selector6~0_combout\,
	combout => \lcd|Selector6~3_combout\);

-- Location: FF_X103_Y11_N31
\lcd|DATA_BUS_VALUE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector6~3_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(3));

-- Location: LCCOMB_X111_Y11_N12
\lcd|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector5~2_combout\ = (\lcd|state.Print_String~q\ & ((\lcd|CHAR_COUNT\(4) & (\lcd|Mux3~0_combout\)) # (!\lcd|CHAR_COUNT\(4) & ((\lcd|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~q\,
	datab => \lcd|Mux3~0_combout\,
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|Mux3~1_combout\,
	combout => \lcd|Selector5~2_combout\);

-- Location: LCCOMB_X111_Y11_N18
\lcd|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector5~3_combout\ = (!\lcd|state.Print_String~q\ & (\lcd|Selector5~1_combout\ & (\lcd|Selector5~0_combout\ & !\lcd|state.DISPLAY_CLEAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~q\,
	datab => \lcd|Selector5~1_combout\,
	datac => \lcd|Selector5~0_combout\,
	datad => \lcd|state.DISPLAY_CLEAR~q\,
	combout => \lcd|Selector5~3_combout\);

-- Location: LCCOMB_X111_Y11_N24
\lcd|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector5~4_combout\ = (\lcd|state.Print_String~q\ & (!\lcd|Mux0~1_combout\ & (\lcd|Mux1~2_combout\ & !\lcd|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~q\,
	datab => \lcd|Mux0~1_combout\,
	datac => \lcd|Mux1~2_combout\,
	datad => \lcd|LessThan1~0_combout\,
	combout => \lcd|Selector5~4_combout\);

-- Location: LCCOMB_X111_Y11_N0
\lcd|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector5~5_combout\ = (!\lcd|Selector5~2_combout\ & (!\lcd|Selector5~3_combout\ & ((\lcd|Mux2~2_combout\) # (!\lcd|Selector5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Selector5~2_combout\,
	datab => \lcd|Selector5~3_combout\,
	datac => \lcd|Mux2~2_combout\,
	datad => \lcd|Selector5~4_combout\,
	combout => \lcd|Selector5~5_combout\);

-- Location: FF_X111_Y11_N1
\lcd|DATA_BUS_VALUE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector5~5_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|LCD_RW_INT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(4));

-- Location: LCCOMB_X111_Y11_N26
\lcd|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector4~0_combout\ = (\lcd|state.Print_String~q\ & ((\lcd|CHAR_COUNT\(3) & ((\lcd|Mux2~0_combout\))) # (!\lcd|CHAR_COUNT\(3) & (\lcd|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux2~1_combout\,
	datab => \lcd|Mux2~0_combout\,
	datac => \lcd|state.Print_String~q\,
	datad => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Selector4~0_combout\);

-- Location: LCCOMB_X111_Y11_N10
\lcd|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector4~1_combout\ = (!\lcd|Selector5~3_combout\ & (!\lcd|Selector4~0_combout\ & ((\lcd|Mux3~2_combout\) # (!\lcd|Selector5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux3~2_combout\,
	datab => \lcd|Selector5~3_combout\,
	datac => \lcd|Selector4~0_combout\,
	datad => \lcd|Selector5~4_combout\,
	combout => \lcd|Selector4~1_combout\);

-- Location: FF_X111_Y11_N11
\lcd|DATA_BUS_VALUE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector4~1_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|LCD_RW_INT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(5));

-- Location: LCCOMB_X106_Y11_N26
\lcd|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector3~0_combout\ = (\lcd|state.LINE2~q\) # ((\lcd|DATA_BUS_VALUE\(6) & ((\lcd|state.DROP_LCD_E~q\) # (\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DROP_LCD_E~q\,
	datab => \lcd|DATA_BUS_VALUE\(6),
	datac => \lcd|state.HOLD~q\,
	datad => \lcd|state.LINE2~q\,
	combout => \lcd|Selector3~0_combout\);

-- Location: LCCOMB_X106_Y11_N24
\lcd|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector3~1_combout\ = (\lcd|Selector3~0_combout\) # ((\lcd|state.Print_String~q\ & ((\lcd|DATA_BUS_VALUE~1_combout\) # (!\lcd|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Selector3~0_combout\,
	datab => \lcd|state.Print_String~q\,
	datac => \lcd|Mux1~2_combout\,
	datad => \lcd|DATA_BUS_VALUE~1_combout\,
	combout => \lcd|Selector3~1_combout\);

-- Location: FF_X106_Y11_N25
\lcd|DATA_BUS_VALUE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector3~1_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(6));

-- Location: LCCOMB_X106_Y11_N22
\lcd|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector2~0_combout\ = (\lcd|LCD_RS~0_combout\ & (((\lcd|state.Print_String~q\ & \lcd|Mux0~1_combout\)))) # (!\lcd|LCD_RS~0_combout\ & ((\lcd|DATA_BUS_VALUE\(7)) # ((\lcd|state.Print_String~q\ & \lcd|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|LCD_RS~0_combout\,
	datab => \lcd|DATA_BUS_VALUE\(7),
	datac => \lcd|state.Print_String~q\,
	datad => \lcd|Mux0~1_combout\,
	combout => \lcd|Selector2~0_combout\);

-- Location: LCCOMB_X106_Y11_N2
\lcd|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector2~1_combout\ = (\lcd|state.LINE2~q\) # ((\lcd|Selector2~0_combout\) # (\lcd|state.RETURN_HOME~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.LINE2~q\,
	datac => \lcd|Selector2~0_combout\,
	datad => \lcd|state.RETURN_HOME~q\,
	combout => \lcd|Selector2~1_combout\);

-- Location: FF_X106_Y11_N3
\lcd|DATA_BUS_VALUE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector2~1_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(7));

-- Location: LCCOMB_X106_Y11_N0
\lcd|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector1~0_combout\ = (\lcd|state.Print_String~q\) # ((\lcd|LCD_RS~q\ & ((\lcd|state.DROP_LCD_E~q\) # (\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DROP_LCD_E~q\,
	datab => \lcd|state.HOLD~q\,
	datac => \lcd|LCD_RS~q\,
	datad => \lcd|state.Print_String~q\,
	combout => \lcd|Selector1~0_combout\);

-- Location: FF_X106_Y11_N1
\lcd|LCD_RS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector1~0_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|LCD_RS~q\);

-- Location: LCCOMB_X105_Y11_N20
\lcd|LCD_E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|LCD_E~0_combout\ = (\lcd|CLK_400HZ_Enable~q\ & ((\lcd|state.HOLD~q\ & ((\lcd|LCD_E~q\))) # (!\lcd|state.HOLD~q\ & (\lcd|state.DROP_LCD_E~q\)))) # (!\lcd|CLK_400HZ_Enable~q\ & (((\lcd|LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_400HZ_Enable~q\,
	datab => \lcd|state.DROP_LCD_E~q\,
	datac => \lcd|LCD_E~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|LCD_E~0_combout\);

-- Location: FF_X105_Y11_N21
\lcd|LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|LCD_E~0_combout\,
	clrn => \reset_synkroniseres|reset_sync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|LCD_E~q\);

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

-- Location: IOIBUF_X0_Y52_N15
\LCD_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(0),
	o => \LCD_DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\LCD_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(1),
	o => \LCD_DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\LCD_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(2),
	o => \LCD_DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\LCD_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(3),
	o => \LCD_DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\LCD_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(4),
	o => \LCD_DATA[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\LCD_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(5),
	o => \LCD_DATA[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\LCD_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(6),
	o => \LCD_DATA[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\LCD_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(7),
	o => \LCD_DATA[7]~input_o\);

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

LCD_DATA(7) <= \LCD_DATA[7]~output_o\;
END structure;


