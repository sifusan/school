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

-- DATE "11/07/2019 08:00:27"

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
	LCD_DATA : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0)
	);
END LCD_klokke_SF;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clock_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
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
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
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
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset_synkroniseres_3|dff~feeder_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \reset_synkroniseres_3|dff~q\ : std_logic;
SIGNAL \reset_synkroniseres_3|reset_sync~q\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[0]~22_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[12]~56_combout\ : std_logic;
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
SIGNAL \lcd|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[15]~53\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[16]~54_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[16]~55\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[17]~57_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[17]~58\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[18]~59_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[18]~60\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[19]~61_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[12]~20_combout\ : std_logic;
SIGNAL \lcd|LessThan0~1_combout\ : std_logic;
SIGNAL \lcd|LessThan0~2_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[12]~21_combout\ : std_logic;
SIGNAL \lcd|CLK_400HZ_Enable~0_combout\ : std_logic;
SIGNAL \lcd|CLK_400HZ_Enable~q\ : std_logic;
SIGNAL \lcd|state.DROP_LCD_E~q\ : std_logic;
SIGNAL \lcd|state.HOLD~q\ : std_logic;
SIGNAL \lcd|LCD_RS~0_combout\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[0]~5_combout\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[0]~feeder_combout\ : std_logic;
SIGNAL \lcd|state.RESET1~feeder_combout\ : std_logic;
SIGNAL \lcd|state.RESET1~q\ : std_logic;
SIGNAL \lcd|Selector26~0_combout\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[0]~9_combout\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[0]~6\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[1]~7_combout\ : std_logic;
SIGNAL \lcd|Selector25~0_combout\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[1]~8\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[2]~10_combout\ : std_logic;
SIGNAL \lcd|Selector24~0_combout\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[2]~11\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[3]~12_combout\ : std_logic;
SIGNAL \lcd|Selector23~0_combout\ : std_logic;
SIGNAL \lcd|Mux5~0_combout\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[3]~13\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[4]~14_combout\ : std_logic;
SIGNAL \lcd|Selector22~0_combout\ : std_logic;
SIGNAL \lcd|Equal2~0_combout\ : std_logic;
SIGNAL \lcd|Equal3~0_combout\ : std_logic;
SIGNAL \lcd|Selector15~0_combout\ : std_logic;
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
SIGNAL \lcd|Selector13~0_combout\ : std_logic;
SIGNAL \lcd|next_command.DISPLAY_ON~q\ : std_logic;
SIGNAL \lcd|state~33_combout\ : std_logic;
SIGNAL \lcd|state.DISPLAY_ON~q\ : std_logic;
SIGNAL \lcd|Selector14~0_combout\ : std_logic;
SIGNAL \lcd|next_command.MODE_SET~q\ : std_logic;
SIGNAL \lcd|state~29_combout\ : std_logic;
SIGNAL \lcd|state.MODE_SET~q\ : std_logic;
SIGNAL \lcd|Selector16~0_combout\ : std_logic;
SIGNAL \lcd|next_command.LINE2~q\ : std_logic;
SIGNAL \lcd|state~30_combout\ : std_logic;
SIGNAL \lcd|state.LINE2~q\ : std_logic;
SIGNAL \lcd|Selector17~0_combout\ : std_logic;
SIGNAL \lcd|next_command.RETURN_HOME~q\ : std_logic;
SIGNAL \lcd|state~31_combout\ : std_logic;
SIGNAL \lcd|state.RETURN_HOME~q\ : std_logic;
SIGNAL \lcd|Selector5~0_combout\ : std_logic;
SIGNAL \lcd|Selector15~1_combout\ : std_logic;
SIGNAL \lcd|next_command.Print_String~q\ : std_logic;
SIGNAL \lcd|state~28_combout\ : std_logic;
SIGNAL \lcd|state.Print_String~q\ : std_logic;
SIGNAL \lcd|Mux6~10_combout\ : std_logic;
SIGNAL \lcd|Mux5~1_combout\ : std_logic;
SIGNAL \lcd|Mux5~19_combout\ : std_logic;
SIGNAL \lcd|Mux6~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \lcd|Mux5~2_combout\ : std_logic;
SIGNAL \lcd|Mux5~3_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \flanke_Q0~feeder_combout\ : std_logic;
SIGNAL \flanke_Q0~q\ : std_logic;
SIGNAL \flanke_QQ0~feeder_combout\ : std_logic;
SIGNAL \flanke_QQ0~q\ : std_logic;
SIGNAL \flanke_QQQ0~feeder_combout\ : std_logic;
SIGNAL \flanke_QQQ0~q\ : std_logic;
SIGNAL \enable_lagr_rundetid~0_combout\ : std_logic;
SIGNAL \enable_lagr_rundetid~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \teller~12_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \teller~8_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \teller~9_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \teller[3]~10_combout\ : std_logic;
SIGNAL \teller[1]~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \teller[4]~11_combout\ : std_logic;
SIGNAL \teller[1]~1_combout\ : std_logic;
SIGNAL \running~0_combout\ : std_logic;
SIGNAL \running~q\ : std_logic;
SIGNAL \teller[1]~2_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \teller[5]~4_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \teller[6]~5_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \teller[7]~6_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \teller[8]~7_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \teller[9]~3_combout\ : std_logic;
SIGNAL \memory~30_combout\ : std_logic;
SIGNAL \memory~31_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \memory~32_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \flanke_Q1~feeder_combout\ : std_logic;
SIGNAL \flanke_Q1~q\ : std_logic;
SIGNAL \flanke_QQ1~feeder_combout\ : std_logic;
SIGNAL \flanke_QQ1~q\ : std_logic;
SIGNAL \flanke_QQQ1~feeder_combout\ : std_logic;
SIGNAL \flanke_QQQ1~q\ : std_logic;
SIGNAL \enable_les_av~0_combout\ : std_logic;
SIGNAL \enable_les_av~q\ : std_logic;
SIGNAL \digital_klokke|sekund_std[0]~6_combout\ : std_logic;
SIGNAL \reset_synkroniseres_2|dff~feeder_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \reset_synkroniseres_2|dff~q\ : std_logic;
SIGNAL \reset_synkroniseres_2|reset_sync~feeder_combout\ : std_logic;
SIGNAL \reset_synkroniseres_2|reset_sync~q\ : std_logic;
SIGNAL \digital_klokke|sekund_std[0]~7\ : std_logic;
SIGNAL \digital_klokke|sekund_std[1]~8_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[0]~26_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[4]~28_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[0]~27\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[1]~29_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[1]~30\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[2]~31_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[2]~32\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[3]~33_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[3]~34\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[4]~35_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[4]~36\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[5]~37_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[5]~38\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[6]~39_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[6]~40\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[7]~41_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[7]~42\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[8]~43_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[8]~44\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[9]~45_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[9]~46\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[10]~47_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[10]~48\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[11]~49_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[11]~50\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[12]~51_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[12]~52\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[13]~53_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~12_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[13]~54\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[14]~55_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~13_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[14]~56\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[15]~57_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[15]~58\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[16]~59_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~15_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[16]~60\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[17]~61_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[17]~62\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[18]~63_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[18]~64\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[19]~65_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[19]~66\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[20]~67_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[20]~68\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[21]~69_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[21]~70\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[22]~71_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~14_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~16_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~17_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Mux0~0_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~10_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~11_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~18_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[22]~72\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[23]~73_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[23]~74\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[24]~75_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~24_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~25_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~21_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~20_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[24]~76\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|teller[25]~77_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~22_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~19_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~23_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~5_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~2_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~1_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~3_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~0_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~4_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~8_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~6_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~7_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~9_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|Equal0~26_combout\ : std_logic;
SIGNAL \digital_klokke|enable_gen_1|enable~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[30]~2_combout\ : std_logic;
SIGNAL \digital_klokke|sekund_std[1]~9\ : std_logic;
SIGNAL \digital_klokke|sekund_std[2]~10_combout\ : std_logic;
SIGNAL \digital_klokke|sekund_std[2]~11\ : std_logic;
SIGNAL \digital_klokke|sekund_std[3]~12_combout\ : std_logic;
SIGNAL \digital_klokke|sekund_std[3]~13\ : std_logic;
SIGNAL \digital_klokke|sekund_std[4]~14_combout\ : std_logic;
SIGNAL \digital_klokke|sekund_std[4]~15\ : std_logic;
SIGNAL \digital_klokke|sekund_std[5]~16_combout\ : std_logic;
SIGNAL \digital_klokke|sekund_std[5]~17\ : std_logic;
SIGNAL \digital_klokke|tid:s[6]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[6]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[6]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[7]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[7]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[7]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[8]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[8]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[8]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[9]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[9]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[9]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[10]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[10]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[10]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[11]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[11]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[11]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[12]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[12]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[12]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[13]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[13]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[13]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[14]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[14]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[14]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[15]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[15]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[15]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[16]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[16]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[16]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[17]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[17]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[17]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[18]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[18]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[18]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[19]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[19]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[19]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[20]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[20]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[20]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[21]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[21]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[21]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[22]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[22]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[22]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[23]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[23]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[23]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[24]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[24]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[24]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[25]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[25]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[25]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[26]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[26]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[26]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[27]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[27]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[27]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[28]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[28]~q\ : std_logic;
SIGNAL \digital_klokke|tid:s[28]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[29]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[29]~q\ : std_logic;
SIGNAL \digital_klokke|LessThan0~8_combout\ : std_logic;
SIGNAL \digital_klokke|LessThan0~6_combout\ : std_logic;
SIGNAL \digital_klokke|LessThan0~7_combout\ : std_logic;
SIGNAL \digital_klokke|LessThan0~5_combout\ : std_logic;
SIGNAL \digital_klokke|LessThan0~9_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[29]~2\ : std_logic;
SIGNAL \digital_klokke|tid:s[30]~4_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[30]~q\ : std_logic;
SIGNAL \digital_klokke|LessThan0~2_combout\ : std_logic;
SIGNAL \digital_klokke|LessThan0~0_combout\ : std_logic;
SIGNAL \digital_klokke|LessThan0~1_combout\ : std_logic;
SIGNAL \digital_klokke|LessThan0~3_combout\ : std_logic;
SIGNAL \digital_klokke|LessThan0~4_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[30]~5\ : std_logic;
SIGNAL \digital_klokke|tid:s[31]~1_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[31]~q\ : std_logic;
SIGNAL \digital_klokke|LessThan0~10_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[30]~1_combout\ : std_logic;
SIGNAL \antall_runder[0]~4_combout\ : std_logic;
SIGNAL \antall_runder[1]~5_combout\ : std_logic;
SIGNAL \antall_runder[1]~6\ : std_logic;
SIGNAL \antall_runder[2]~7_combout\ : std_logic;
SIGNAL \antall_runder[2]~8\ : std_logic;
SIGNAL \antall_runder[3]~9_combout\ : std_logic;
SIGNAL \antall_runder[3]~10\ : std_logic;
SIGNAL \antall_runder[4]~11_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[23]~17_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[23]~16_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~19_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~18_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~21_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~20_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[20]~23_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[20]~22_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[28]~24_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[27]~30_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[27]~25_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[26]~26_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Add1~0_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[25]~27_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[25]~28_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Add1~1_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Add1~2_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Add1~3_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Add1~4_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_wirecell_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_wirecell_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_wirecell_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \lcd|Mux5~6_combout\ : std_logic;
SIGNAL \lcd|Mux5~4_combout\ : std_logic;
SIGNAL \digital_klokke|Add2~0_combout\ : std_logic;
SIGNAL \digital_klokke|t~21_combout\ : std_logic;
SIGNAL \digital_klokke|tid:s[30]~3_combout\ : std_logic;
SIGNAL \digital_klokke|m~30_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[7]~0_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[30]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~0_combout\ : std_logic;
SIGNAL \digital_klokke|m~0_combout\ : std_logic;
SIGNAL \digital_klokke|Add1~1\ : std_logic;
SIGNAL \digital_klokke|Add1~2_combout\ : std_logic;
SIGNAL \digital_klokke|m~1_combout\ : std_logic;
SIGNAL \digital_klokke|Add1~3\ : std_logic;
SIGNAL \digital_klokke|Add1~4_combout\ : std_logic;
SIGNAL \digital_klokke|m~5_combout\ : std_logic;
SIGNAL \digital_klokke|Add1~5\ : std_logic;
SIGNAL \digital_klokke|Add1~6_combout\ : std_logic;
SIGNAL \digital_klokke|m~4_combout\ : std_logic;
SIGNAL \digital_klokke|Add1~7\ : std_logic;
SIGNAL \digital_klokke|Add1~8_combout\ : std_logic;
SIGNAL \digital_klokke|m~3_combout\ : std_logic;
SIGNAL \digital_klokke|Add1~9\ : std_logic;
SIGNAL \digital_klokke|Add1~10_combout\ : std_logic;
SIGNAL \digital_klokke|m~2_combout\ : std_logic;
SIGNAL \digital_klokke|Add1~11\ : std_logic;
SIGNAL \digital_klokke|Add1~12_combout\ : std_logic;
SIGNAL \digital_klokke|m~6_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[6]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~13\ : std_logic;
SIGNAL \digital_klokke|Add1~14_combout\ : std_logic;
SIGNAL \digital_klokke|m~7_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[7]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~15\ : std_logic;
SIGNAL \digital_klokke|Add1~16_combout\ : std_logic;
SIGNAL \digital_klokke|m~8_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[8]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~17\ : std_logic;
SIGNAL \digital_klokke|Add1~18_combout\ : std_logic;
SIGNAL \digital_klokke|m~9_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[9]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~19\ : std_logic;
SIGNAL \digital_klokke|Add1~20_combout\ : std_logic;
SIGNAL \digital_klokke|m~10_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[10]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~21\ : std_logic;
SIGNAL \digital_klokke|Add1~22_combout\ : std_logic;
SIGNAL \digital_klokke|m~11_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[11]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~23\ : std_logic;
SIGNAL \digital_klokke|Add1~24_combout\ : std_logic;
SIGNAL \digital_klokke|m~12_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[12]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~25\ : std_logic;
SIGNAL \digital_klokke|Add1~26_combout\ : std_logic;
SIGNAL \digital_klokke|m~13_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[13]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~27\ : std_logic;
SIGNAL \digital_klokke|Add1~28_combout\ : std_logic;
SIGNAL \digital_klokke|m~14_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[14]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~29\ : std_logic;
SIGNAL \digital_klokke|Add1~30_combout\ : std_logic;
SIGNAL \digital_klokke|m~15_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[15]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~31\ : std_logic;
SIGNAL \digital_klokke|Add1~32_combout\ : std_logic;
SIGNAL \digital_klokke|m~16_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[16]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~33\ : std_logic;
SIGNAL \digital_klokke|Add1~34_combout\ : std_logic;
SIGNAL \digital_klokke|m~17_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[17]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~35\ : std_logic;
SIGNAL \digital_klokke|Add1~36_combout\ : std_logic;
SIGNAL \digital_klokke|m~18_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[18]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~37\ : std_logic;
SIGNAL \digital_klokke|Add1~38_combout\ : std_logic;
SIGNAL \digital_klokke|m~19_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[19]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~39\ : std_logic;
SIGNAL \digital_klokke|Add1~40_combout\ : std_logic;
SIGNAL \digital_klokke|m~20_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[20]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~41\ : std_logic;
SIGNAL \digital_klokke|Add1~42_combout\ : std_logic;
SIGNAL \digital_klokke|m~21_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[21]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~43\ : std_logic;
SIGNAL \digital_klokke|Add1~44_combout\ : std_logic;
SIGNAL \digital_klokke|m~22_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[22]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~45\ : std_logic;
SIGNAL \digital_klokke|Add1~46_combout\ : std_logic;
SIGNAL \digital_klokke|m~23_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[23]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~47\ : std_logic;
SIGNAL \digital_klokke|Add1~48_combout\ : std_logic;
SIGNAL \digital_klokke|m~24_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[24]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~49\ : std_logic;
SIGNAL \digital_klokke|Add1~50_combout\ : std_logic;
SIGNAL \digital_klokke|m~25_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[25]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~51\ : std_logic;
SIGNAL \digital_klokke|Add1~52_combout\ : std_logic;
SIGNAL \digital_klokke|m~26_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[26]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~53\ : std_logic;
SIGNAL \digital_klokke|Add1~54_combout\ : std_logic;
SIGNAL \digital_klokke|m~27_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[27]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~55\ : std_logic;
SIGNAL \digital_klokke|Add1~56_combout\ : std_logic;
SIGNAL \digital_klokke|m~28_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[28]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~57\ : std_logic;
SIGNAL \digital_klokke|Add1~58_combout\ : std_logic;
SIGNAL \digital_klokke|m~29_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[29]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~59\ : std_logic;
SIGNAL \digital_klokke|Add1~60_combout\ : std_logic;
SIGNAL \digital_klokke|m~31_combout\ : std_logic;
SIGNAL \digital_klokke|tid:m[31]~q\ : std_logic;
SIGNAL \digital_klokke|Add1~61\ : std_logic;
SIGNAL \digital_klokke|Add1~62_combout\ : std_logic;
SIGNAL \digital_klokke|Equal0~9_combout\ : std_logic;
SIGNAL \digital_klokke|Equal0~6_combout\ : std_logic;
SIGNAL \digital_klokke|Equal0~5_combout\ : std_logic;
SIGNAL \digital_klokke|Equal0~7_combout\ : std_logic;
SIGNAL \digital_klokke|Equal0~2_combout\ : std_logic;
SIGNAL \digital_klokke|Equal0~1_combout\ : std_logic;
SIGNAL \digital_klokke|Equal0~3_combout\ : std_logic;
SIGNAL \digital_klokke|Equal0~0_combout\ : std_logic;
SIGNAL \digital_klokke|Equal0~4_combout\ : std_logic;
SIGNAL \digital_klokke|Equal0~8_combout\ : std_logic;
SIGNAL \digital_klokke|Equal0~10_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[14]~0_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[21]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~9\ : std_logic;
SIGNAL \digital_klokke|Add2~10_combout\ : std_logic;
SIGNAL \digital_klokke|t~5_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[5]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~11\ : std_logic;
SIGNAL \digital_klokke|Add2~12_combout\ : std_logic;
SIGNAL \digital_klokke|t~6_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[6]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~13\ : std_logic;
SIGNAL \digital_klokke|Add2~14_combout\ : std_logic;
SIGNAL \digital_klokke|t~7_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[7]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~15\ : std_logic;
SIGNAL \digital_klokke|Add2~16_combout\ : std_logic;
SIGNAL \digital_klokke|t~8_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[8]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~17\ : std_logic;
SIGNAL \digital_klokke|Add2~18_combout\ : std_logic;
SIGNAL \digital_klokke|t~9_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[9]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~19\ : std_logic;
SIGNAL \digital_klokke|Add2~20_combout\ : std_logic;
SIGNAL \digital_klokke|t~10_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[10]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~21\ : std_logic;
SIGNAL \digital_klokke|Add2~22_combout\ : std_logic;
SIGNAL \digital_klokke|t~11_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[11]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~23\ : std_logic;
SIGNAL \digital_klokke|Add2~24_combout\ : std_logic;
SIGNAL \digital_klokke|t~12_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[12]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~25\ : std_logic;
SIGNAL \digital_klokke|Add2~26_combout\ : std_logic;
SIGNAL \digital_klokke|t~13_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[13]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~27\ : std_logic;
SIGNAL \digital_klokke|Add2~29\ : std_logic;
SIGNAL \digital_klokke|Add2~30_combout\ : std_logic;
SIGNAL \digital_klokke|t~15_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[15]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~31\ : std_logic;
SIGNAL \digital_klokke|Add2~32_combout\ : std_logic;
SIGNAL \digital_klokke|t~16_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[16]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~33\ : std_logic;
SIGNAL \digital_klokke|Add2~34_combout\ : std_logic;
SIGNAL \digital_klokke|t~17_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[17]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~35\ : std_logic;
SIGNAL \digital_klokke|Add2~36_combout\ : std_logic;
SIGNAL \digital_klokke|t~18_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[18]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~37\ : std_logic;
SIGNAL \digital_klokke|Add2~38_combout\ : std_logic;
SIGNAL \digital_klokke|t~19_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[19]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~39\ : std_logic;
SIGNAL \digital_klokke|Add2~40_combout\ : std_logic;
SIGNAL \digital_klokke|t~20_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[20]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~41\ : std_logic;
SIGNAL \digital_klokke|Add2~42_combout\ : std_logic;
SIGNAL \digital_klokke|t~22_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[22]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~43\ : std_logic;
SIGNAL \digital_klokke|Add2~44_combout\ : std_logic;
SIGNAL \digital_klokke|t~23_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[23]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~45\ : std_logic;
SIGNAL \digital_klokke|Add2~46_combout\ : std_logic;
SIGNAL \digital_klokke|Equal1~6_combout\ : std_logic;
SIGNAL \digital_klokke|t~31_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[31]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~47\ : std_logic;
SIGNAL \digital_klokke|Add2~48_combout\ : std_logic;
SIGNAL \digital_klokke|t~24_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[24]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~49\ : std_logic;
SIGNAL \digital_klokke|Add2~50_combout\ : std_logic;
SIGNAL \digital_klokke|t~25_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[25]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~51\ : std_logic;
SIGNAL \digital_klokke|Add2~52_combout\ : std_logic;
SIGNAL \digital_klokke|t~26_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[26]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~53\ : std_logic;
SIGNAL \digital_klokke|Add2~54_combout\ : std_logic;
SIGNAL \digital_klokke|t~27_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[27]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~55\ : std_logic;
SIGNAL \digital_klokke|Add2~56_combout\ : std_logic;
SIGNAL \digital_klokke|t~28_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[28]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~57\ : std_logic;
SIGNAL \digital_klokke|Add2~58_combout\ : std_logic;
SIGNAL \digital_klokke|t~29_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[29]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~59\ : std_logic;
SIGNAL \digital_klokke|Add2~60_combout\ : std_logic;
SIGNAL \digital_klokke|t~30_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[30]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~61\ : std_logic;
SIGNAL \digital_klokke|Add2~62_combout\ : std_logic;
SIGNAL \digital_klokke|Equal1~8_combout\ : std_logic;
SIGNAL \digital_klokke|Equal1~5_combout\ : std_logic;
SIGNAL \digital_klokke|Equal1~7_combout\ : std_logic;
SIGNAL \digital_klokke|Equal1~9_combout\ : std_logic;
SIGNAL \digital_klokke|t~14_combout\ : std_logic;
SIGNAL \digital_klokke|tid:t[14]~q\ : std_logic;
SIGNAL \digital_klokke|Add2~28_combout\ : std_logic;
SIGNAL \digital_klokke|Equal1~3_combout\ : std_logic;
SIGNAL \digital_klokke|Equal1~2_combout\ : std_logic;
SIGNAL \digital_klokke|Equal1~0_combout\ : std_logic;
SIGNAL \digital_klokke|Equal1~1_combout\ : std_logic;
SIGNAL \digital_klokke|Equal1~4_combout\ : std_logic;
SIGNAL \digital_klokke|t~0_combout\ : std_logic;
SIGNAL \digital_klokke|Add2~1\ : std_logic;
SIGNAL \digital_klokke|Add2~2_combout\ : std_logic;
SIGNAL \digital_klokke|t~1_combout\ : std_logic;
SIGNAL \digital_klokke|Add2~3\ : std_logic;
SIGNAL \digital_klokke|Add2~4_combout\ : std_logic;
SIGNAL \digital_klokke|t~4_combout\ : std_logic;
SIGNAL \digital_klokke|Add2~5\ : std_logic;
SIGNAL \digital_klokke|Add2~6_combout\ : std_logic;
SIGNAL \digital_klokke|t~3_combout\ : std_logic;
SIGNAL \digital_klokke|Add2~7\ : std_logic;
SIGNAL \digital_klokke|Add2~8_combout\ : std_logic;
SIGNAL \digital_klokke|t~2_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[28]~0_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[28]~1_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[27]~2_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Add1~0_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[25]~6_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \lcd|Mux6~4_combout\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \lcd|Mux6~5_combout\ : std_logic;
SIGNAL \lcd|Mux5~9_combout\ : std_logic;
SIGNAL \lcd|Mux6~1_combout\ : std_logic;
SIGNAL \lcd|Mux5~8_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[23]~16_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[23]~17_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~19_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~18_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~21_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~20_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[20]~23_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[20]~22_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[28]~24_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[27]~25_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[27]~30_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[26]~26_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Add1~2_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[25]~27_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[25]~28_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \lcd|Mux6~2_combout\ : std_logic;
SIGNAL \lcd|Mux6~3_combout\ : std_logic;
SIGNAL \lcd|Mux6~6_combout\ : std_logic;
SIGNAL \lcd|Mux6~7_combout\ : std_logic;
SIGNAL \lcd|Mux6~8_combout\ : std_logic;
SIGNAL \lcd|Mux6~9_combout\ : std_logic;
SIGNAL \lcd|Mux6~11_combout\ : std_logic;
SIGNAL \lcd|Selector9~0_combout\ : std_logic;
SIGNAL \lcd|Mux4~2_combout\ : std_logic;
SIGNAL \lcd|Mux4~0_combout\ : std_logic;
SIGNAL \lcd|Mux4~1_combout\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \lcd|Mux4~7_combout\ : std_logic;
SIGNAL \lcd|Mux5~5_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Add1~2_combout\ : std_logic;
SIGNAL \lcd|Mux4~6_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Add1~4_combout\ : std_logic;
SIGNAL \lcd|Mux4~3_combout\ : std_logic;
SIGNAL \lcd|Mux4~4_combout\ : std_logic;
SIGNAL \lcd|Mux4~5_combout\ : std_logic;
SIGNAL \lcd|Mux4~8_combout\ : std_logic;
SIGNAL \lcd|Mux4~9_combout\ : std_logic;
SIGNAL \lcd|Mux4~10_combout\ : std_logic;
SIGNAL \lcd|Mux4~11_combout\ : std_logic;
SIGNAL \lcd|Mux1~1_combout\ : std_logic;
SIGNAL \lcd|Mux1~0_combout\ : std_logic;
SIGNAL \lcd|Mux1~2_combout\ : std_logic;
SIGNAL \lcd|Mux0~0_combout\ : std_logic;
SIGNAL \lcd|Mux2~0_combout\ : std_logic;
SIGNAL \lcd|Mux2~1_combout\ : std_logic;
SIGNAL \lcd|Equal0~0_combout\ : std_logic;
SIGNAL \lcd|Mux5~17_combout\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Add1~1_combout\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \lcd|Mux5~13_combout\ : std_logic;
SIGNAL \lcd|Mux5~7_combout\ : std_logic;
SIGNAL \lcd|Mux5~10_combout\ : std_logic;
SIGNAL \lcd|Mux5~11_combout\ : std_logic;
SIGNAL \lcd|Mux5~12_combout\ : std_logic;
SIGNAL \lcd|Mux5~14_combout\ : std_logic;
SIGNAL \lcd|Mux5~15_combout\ : std_logic;
SIGNAL \lcd|Mux5~16_combout\ : std_logic;
SIGNAL \lcd|Mux5~18_combout\ : std_logic;
SIGNAL \lcd|Mux3~2_combout\ : std_logic;
SIGNAL \lcd|Mux3~3_combout\ : std_logic;
SIGNAL \lcd|Mux3~0_combout\ : std_logic;
SIGNAL \lcd|Mux3~1_combout\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Add1~3_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_2|Add1~4_combout\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \lcd|Mux3~7_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Add1~5_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Add1~6_combout\ : std_logic;
SIGNAL \lcd|Mux3~4_combout\ : std_logic;
SIGNAL \lcd|Mux3~5_combout\ : std_logic;
SIGNAL \lcd|Mux3~6_combout\ : std_logic;
SIGNAL \lcd|Mux3~8_combout\ : std_logic;
SIGNAL \lcd|Mux3~9_combout\ : std_logic;
SIGNAL \lcd|Mux3~10_combout\ : std_logic;
SIGNAL \lcd|Mux3~11_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~0_combout\ : std_logic;
SIGNAL \lcd|Selector9~1_combout\ : std_logic;
SIGNAL \lcd|LCD_RW_INT~feeder_combout\ : std_logic;
SIGNAL \lcd|LCD_RW_INT~0_combout\ : std_logic;
SIGNAL \lcd|LCD_RW_INT~q\ : std_logic;
SIGNAL \lcd|Selector8~0_combout\ : std_logic;
SIGNAL \lcd|Selector8~1_combout\ : std_logic;
SIGNAL \lcd|Selector7~0_combout\ : std_logic;
SIGNAL \lcd|Mux5~20_combout\ : std_logic;
SIGNAL \lcd|Add1~0_combout\ : std_logic;
SIGNAL \lcd|Selector7~1_combout\ : std_logic;
SIGNAL \lcd|Selector7~2_combout\ : std_logic;
SIGNAL \lcd|LessThan1~0_combout\ : std_logic;
SIGNAL \lcd|Selector8~2_combout\ : std_logic;
SIGNAL \lcd|Selector5~1_combout\ : std_logic;
SIGNAL \lcd|Selector6~1_combout\ : std_logic;
SIGNAL \lcd|Selector6~2_combout\ : std_logic;
SIGNAL \lcd|Selector6~0_combout\ : std_logic;
SIGNAL \lcd|Add1~1_combout\ : std_logic;
SIGNAL \lcd|Selector6~3_combout\ : std_logic;
SIGNAL \lcd|Selector5~2_combout\ : std_logic;
SIGNAL \lcd|Selector5~3_combout\ : std_logic;
SIGNAL \lcd|Selector5~4_combout\ : std_logic;
SIGNAL \lcd|Selector5~5_combout\ : std_logic;
SIGNAL \lcd|Selector4~0_combout\ : std_logic;
SIGNAL \lcd|Selector3~1_combout\ : std_logic;
SIGNAL \lcd|Selector3~0_combout\ : std_logic;
SIGNAL \lcd|Selector3~2_combout\ : std_logic;
SIGNAL \lcd|Selector2~0_combout\ : std_logic;
SIGNAL \lcd|Selector1~0_combout\ : std_logic;
SIGNAL \lcd|LCD_RS~q\ : std_logic;
SIGNAL \lcd|LCD_E~0_combout\ : std_logic;
SIGNAL \lcd|LCD_E~q\ : std_logic;
SIGNAL \digital_klokke|dekoder_0|Mux6~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_0|Mux5~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_0|Mux4~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_0|Mux3~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_0|Mux2~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_0|Mux1~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_0|Mux0~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_1|Mux6~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_1|Mux5~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_1|Mux4~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_1|Mux3~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_1|Mux2~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_1|Mux1~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_1|Mux0~0_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Add1~7_combout\ : std_logic;
SIGNAL \digital_klokke|bin2bcd_1|Add1~3_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_2|Mux6~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_2|Mux5~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_2|Mux4~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_2|Mux3~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_2|Mux2~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_2|Mux1~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_2|Mux0~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_3|Mux6~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_3|Mux5~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_3|Mux4~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_3|Mux3~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_3|Mux2~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_3|Mux1~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_3|Mux0~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_4|Mux6~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_4|Mux5~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_4|Mux4~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_4|Mux3~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_4|Mux2~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_4|Mux1~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_4|Mux0~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_5|Mux6~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_5|Mux4~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_5|Mux1~0_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[0]~26_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[10]~28_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[0]~27\ : std_logic;
SIGNAL \enable_gen_1|teller[1]~29_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[1]~30\ : std_logic;
SIGNAL \enable_gen_1|teller[2]~31_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[2]~32\ : std_logic;
SIGNAL \enable_gen_1|teller[3]~33_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[3]~34\ : std_logic;
SIGNAL \enable_gen_1|teller[4]~35_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[4]~36\ : std_logic;
SIGNAL \enable_gen_1|teller[5]~37_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[5]~38\ : std_logic;
SIGNAL \enable_gen_1|teller[6]~39_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[6]~40\ : std_logic;
SIGNAL \enable_gen_1|teller[7]~41_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[7]~42\ : std_logic;
SIGNAL \enable_gen_1|teller[8]~43_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[8]~44\ : std_logic;
SIGNAL \enable_gen_1|teller[9]~45_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[9]~46\ : std_logic;
SIGNAL \enable_gen_1|teller[10]~47_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[10]~48\ : std_logic;
SIGNAL \enable_gen_1|teller[11]~49_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[11]~50\ : std_logic;
SIGNAL \enable_gen_1|teller[12]~51_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[12]~52\ : std_logic;
SIGNAL \enable_gen_1|teller[13]~53_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[13]~54\ : std_logic;
SIGNAL \enable_gen_1|teller[14]~55_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[14]~56\ : std_logic;
SIGNAL \enable_gen_1|teller[15]~57_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[15]~58\ : std_logic;
SIGNAL \enable_gen_1|teller[16]~59_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[16]~60\ : std_logic;
SIGNAL \enable_gen_1|teller[17]~61_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[17]~62\ : std_logic;
SIGNAL \enable_gen_1|teller[18]~63_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[18]~64\ : std_logic;
SIGNAL \enable_gen_1|teller[19]~65_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[19]~66\ : std_logic;
SIGNAL \enable_gen_1|teller[20]~67_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[20]~68\ : std_logic;
SIGNAL \enable_gen_1|teller[21]~69_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[21]~70\ : std_logic;
SIGNAL \enable_gen_1|teller[22]~71_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[22]~72\ : std_logic;
SIGNAL \enable_gen_1|teller[23]~73_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[23]~74\ : std_logic;
SIGNAL \enable_gen_1|teller[24]~75_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[24]~76\ : std_logic;
SIGNAL \enable_gen_1|teller[25]~77_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~7_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~6_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~2_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~0_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~3_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~1_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~4_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~5_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~8_combout\ : std_logic;
SIGNAL \enable_gen_1|enable~q\ : std_logic;
SIGNAL \hallo~0_combout\ : std_logic;
SIGNAL \hallo~q\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \digital_klokke|sekund_std\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \digital_klokke|minutt_std\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \lcd|CHAR_COUNT\ : std_logic_vector(4 DOWNTO 0);
SIGNAL teller : std_logic_vector(9 DOWNTO 0);
SIGNAL \digital_klokke|enable_gen_1|teller\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \lcd|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \digital_klokke|timer_std\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \enable_gen_1|teller\ : std_logic_vector(25 DOWNTO 0);
SIGNAL antall_runder : std_logic_vector(4 DOWNTO 0);
SIGNAL \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \lcd|ALT_INV_DATA_BUS_VALUE\ : std_logic_vector(5 DOWNTO 3);
SIGNAL \lcd|ALT_INV_state.Print_String~q\ : std_logic;
SIGNAL \digital_klokke|dekoder_4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \digital_klokke|dekoder_0|ALT_INV_Mux0~0_combout\ : std_logic;
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
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & 
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_wirecell_combout\ & \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_wirecell_combout\ & 
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_wirecell_combout\ & \digital_klokke|bin2bcd_0|Add1~4_combout\ & \digital_klokke|bin2bcd_0|Add1~2_combout\ & \digital_klokke|bin2bcd_0|Add1~1_combout\ & 
\digital_klokke|sekund_std\(0));

\memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (antall_runder(4) & antall_runder(3) & antall_runder(2) & antall_runder(1) & antall_runder(0));

\memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\SW[4]~input_o\ & \SW[3]~input_o\ & \SW[2]~input_o\ & \SW[1]~input_o\ & \SW[0]~input_o\);

\memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\memory_rtl_0|auto_generated|ram_block1a1\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\memory_rtl_0|auto_generated|ram_block1a2\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\memory_rtl_0|auto_generated|ram_block1a3\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\memory_rtl_0|auto_generated|ram_block1a4\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\memory_rtl_0|auto_generated|ram_block1a5\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\memory_rtl_0|auto_generated|ram_block1a6\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\memory_rtl_0|auto_generated|ram_block1a7\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~8_combout\ <= NOT \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\;
\lcd|ALT_INV_DATA_BUS_VALUE\(5) <= NOT \lcd|DATA_BUS_VALUE\(5);
\lcd|ALT_INV_DATA_BUS_VALUE\(4) <= NOT \lcd|DATA_BUS_VALUE\(4);
\lcd|ALT_INV_DATA_BUS_VALUE\(3) <= NOT \lcd|DATA_BUS_VALUE\(3);
\lcd|ALT_INV_state.Print_String~q\ <= NOT \lcd|state.Print_String~q\;
\digital_klokke|dekoder_4|ALT_INV_Mux0~0_combout\ <= NOT \digital_klokke|dekoder_4|Mux0~0_combout\;
\digital_klokke|dekoder_3|ALT_INV_Mux0~0_combout\ <= NOT \digital_klokke|dekoder_3|Mux0~0_combout\;
\digital_klokke|dekoder_2|ALT_INV_Mux0~0_combout\ <= NOT \digital_klokke|dekoder_2|Mux0~0_combout\;
\digital_klokke|dekoder_1|ALT_INV_Mux0~0_combout\ <= NOT \digital_klokke|dekoder_1|Mux0~0_combout\;
\digital_klokke|dekoder_0|ALT_INV_Mux0~0_combout\ <= NOT \digital_klokke|dekoder_0|Mux0~0_combout\;
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

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|dekoder_5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \hallo~q\,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

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

-- Location: LCCOMB_X89_Y19_N28
\reset_synkroniseres_3|dff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_synkroniseres_3|dff~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \reset_synkroniseres_3|dff~feeder_combout\);

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

-- Location: FF_X89_Y19_N29
\reset_synkroniseres_3|dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \reset_synkroniseres_3|dff~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_synkroniseres_3|dff~q\);

-- Location: FF_X86_Y19_N7
\reset_synkroniseres_3|reset_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \reset_synkroniseres_3|dff~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_synkroniseres_3|reset_sync~q\);

-- Location: LCCOMB_X85_Y16_N12
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

-- Location: LCCOMB_X85_Y15_N20
\lcd|CLK_COUNT_400HZ[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[12]~56_combout\ = (!\reset_synkroniseres_3|reset_sync~q\) # (!\lcd|CLK_COUNT_400HZ[12]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CLK_COUNT_400HZ[12]~21_combout\,
	datad => \reset_synkroniseres_3|reset_sync~q\,
	combout => \lcd|CLK_COUNT_400HZ[12]~56_combout\);

-- Location: FF_X85_Y16_N13
\lcd|CLK_COUNT_400HZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[0]~22_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(0));

-- Location: LCCOMB_X85_Y16_N14
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

-- Location: FF_X85_Y16_N15
\lcd|CLK_COUNT_400HZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[1]~24_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(1));

-- Location: LCCOMB_X85_Y16_N16
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

-- Location: FF_X85_Y16_N17
\lcd|CLK_COUNT_400HZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[2]~26_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(2));

-- Location: LCCOMB_X85_Y16_N18
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

-- Location: FF_X85_Y16_N19
\lcd|CLK_COUNT_400HZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[3]~28_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(3));

-- Location: LCCOMB_X85_Y16_N20
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

-- Location: FF_X85_Y16_N21
\lcd|CLK_COUNT_400HZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[4]~30_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(4));

-- Location: LCCOMB_X85_Y16_N22
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

-- Location: FF_X85_Y16_N23
\lcd|CLK_COUNT_400HZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[5]~32_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(5));

-- Location: LCCOMB_X85_Y16_N24
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

-- Location: FF_X85_Y16_N25
\lcd|CLK_COUNT_400HZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[6]~34_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(6));

-- Location: LCCOMB_X85_Y16_N26
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

-- Location: FF_X85_Y16_N27
\lcd|CLK_COUNT_400HZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[7]~36_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(7));

-- Location: LCCOMB_X85_Y16_N28
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

-- Location: FF_X85_Y16_N29
\lcd|CLK_COUNT_400HZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[8]~38_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(8));

-- Location: LCCOMB_X85_Y16_N30
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

-- Location: FF_X85_Y16_N31
\lcd|CLK_COUNT_400HZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[9]~40_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(9));

-- Location: LCCOMB_X85_Y15_N0
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

-- Location: FF_X85_Y15_N1
\lcd|CLK_COUNT_400HZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[10]~42_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(10));

-- Location: LCCOMB_X85_Y15_N2
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

-- Location: FF_X85_Y15_N3
\lcd|CLK_COUNT_400HZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[11]~44_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(11));

-- Location: LCCOMB_X85_Y15_N4
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

-- Location: FF_X85_Y15_N5
\lcd|CLK_COUNT_400HZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[12]~46_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(12));

-- Location: LCCOMB_X85_Y15_N6
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

-- Location: FF_X85_Y15_N7
\lcd|CLK_COUNT_400HZ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[13]~48_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(13));

-- Location: LCCOMB_X85_Y15_N8
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

-- Location: FF_X85_Y15_N9
\lcd|CLK_COUNT_400HZ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[14]~50_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(14));

-- Location: LCCOMB_X85_Y15_N10
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

-- Location: FF_X85_Y15_N11
\lcd|CLK_COUNT_400HZ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[15]~52_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(15));

-- Location: LCCOMB_X85_Y15_N26
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

-- Location: LCCOMB_X85_Y15_N12
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

-- Location: FF_X85_Y15_N13
\lcd|CLK_COUNT_400HZ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[16]~54_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(16));

-- Location: LCCOMB_X85_Y15_N14
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

-- Location: FF_X85_Y15_N15
\lcd|CLK_COUNT_400HZ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[17]~57_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(17));

-- Location: LCCOMB_X85_Y15_N16
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

-- Location: FF_X85_Y15_N17
\lcd|CLK_COUNT_400HZ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[18]~59_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(18));

-- Location: LCCOMB_X85_Y15_N18
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

-- Location: FF_X85_Y15_N19
\lcd|CLK_COUNT_400HZ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CLK_COUNT_400HZ[19]~61_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CLK_COUNT_400HZ\(19));

-- Location: LCCOMB_X85_Y15_N24
\lcd|CLK_COUNT_400HZ[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[12]~20_combout\ = (!\lcd|CLK_COUNT_400HZ\(16) & (!\lcd|CLK_COUNT_400HZ\(19) & (!\lcd|CLK_COUNT_400HZ\(17) & !\lcd|CLK_COUNT_400HZ\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(16),
	datab => \lcd|CLK_COUNT_400HZ\(19),
	datac => \lcd|CLK_COUNT_400HZ\(17),
	datad => \lcd|CLK_COUNT_400HZ\(18),
	combout => \lcd|CLK_COUNT_400HZ[12]~20_combout\);

-- Location: LCCOMB_X85_Y16_N8
\lcd|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|LessThan0~1_combout\ = (!\lcd|CLK_COUNT_400HZ\(7) & (!\lcd|CLK_COUNT_400HZ\(8) & ((!\lcd|CLK_COUNT_400HZ\(5)) # (!\lcd|CLK_COUNT_400HZ\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(7),
	datab => \lcd|CLK_COUNT_400HZ\(6),
	datac => \lcd|CLK_COUNT_400HZ\(5),
	datad => \lcd|CLK_COUNT_400HZ\(8),
	combout => \lcd|LessThan0~1_combout\);

-- Location: LCCOMB_X85_Y15_N28
\lcd|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|LessThan0~2_combout\ = ((!\lcd|CLK_COUNT_400HZ\(10) & ((\lcd|LessThan0~1_combout\) # (!\lcd|CLK_COUNT_400HZ\(9))))) # (!\lcd|CLK_COUNT_400HZ\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|LessThan0~1_combout\,
	datab => \lcd|CLK_COUNT_400HZ\(11),
	datac => \lcd|CLK_COUNT_400HZ\(9),
	datad => \lcd|CLK_COUNT_400HZ\(10),
	combout => \lcd|LessThan0~2_combout\);

-- Location: LCCOMB_X85_Y15_N22
\lcd|CLK_COUNT_400HZ[12]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[12]~21_combout\ = (\lcd|CLK_COUNT_400HZ[12]~20_combout\ & ((\lcd|LessThan0~0_combout\) # ((!\lcd|CLK_COUNT_400HZ\(12) & \lcd|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|LessThan0~0_combout\,
	datab => \lcd|CLK_COUNT_400HZ[12]~20_combout\,
	datac => \lcd|CLK_COUNT_400HZ\(12),
	datad => \lcd|LessThan0~2_combout\,
	combout => \lcd|CLK_COUNT_400HZ[12]~21_combout\);

-- Location: LCCOMB_X89_Y19_N2
\lcd|CLK_400HZ_Enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CLK_400HZ_Enable~0_combout\ = (!\lcd|CLK_COUNT_400HZ[12]~21_combout\ & \reset_synkroniseres_3|reset_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ[12]~21_combout\,
	datad => \reset_synkroniseres_3|reset_sync~q\,
	combout => \lcd|CLK_400HZ_Enable~0_combout\);

-- Location: FF_X89_Y19_N3
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

-- Location: FF_X86_Y19_N25
\lcd|state.DROP_LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \lcd|LCD_RS~0_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	sload => VCC,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.DROP_LCD_E~q\);

-- Location: FF_X86_Y19_N19
\lcd|state.HOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \lcd|state.DROP_LCD_E~q\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	sload => VCC,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.HOLD~q\);

-- Location: LCCOMB_X84_Y19_N12
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

-- Location: LCCOMB_X89_Y19_N14
\lcd|CHAR_COUNT[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CHAR_COUNT[0]~5_combout\ = \lcd|CHAR_COUNT\(0) $ (VCC)
-- \lcd|CHAR_COUNT[0]~6\ = CARRY(\lcd|CHAR_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(0),
	datad => VCC,
	combout => \lcd|CHAR_COUNT[0]~5_combout\,
	cout => \lcd|CHAR_COUNT[0]~6\);

-- Location: LCCOMB_X89_Y19_N12
\lcd|CHAR_COUNT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CHAR_COUNT[0]~feeder_combout\ = \lcd|CHAR_COUNT[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT[0]~5_combout\,
	combout => \lcd|CHAR_COUNT[0]~feeder_combout\);

-- Location: LCCOMB_X85_Y19_N26
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

-- Location: FF_X85_Y19_N27
\lcd|state.RESET1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state.RESET1~feeder_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.RESET1~q\);

-- Location: LCCOMB_X89_Y19_N30
\lcd|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector26~0_combout\ = (\lcd|CHAR_COUNT\(0) & \lcd|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(0),
	datad => \lcd|state.RESET1~q\,
	combout => \lcd|Selector26~0_combout\);

-- Location: LCCOMB_X89_Y19_N24
\lcd|CHAR_COUNT[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CHAR_COUNT[0]~9_combout\ = (\reset_synkroniseres_3|reset_sync~q\ & \lcd|CLK_400HZ_Enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_3|reset_sync~q\,
	datad => \lcd|CLK_400HZ_Enable~q\,
	combout => \lcd|CHAR_COUNT[0]~9_combout\);

-- Location: FF_X89_Y19_N13
\lcd|CHAR_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CHAR_COUNT[0]~feeder_combout\,
	asdata => \lcd|Selector26~0_combout\,
	sload => \lcd|ALT_INV_state.Print_String~q\,
	ena => \lcd|CHAR_COUNT[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CHAR_COUNT\(0));

-- Location: LCCOMB_X89_Y19_N16
\lcd|CHAR_COUNT[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CHAR_COUNT[1]~7_combout\ = (\lcd|CHAR_COUNT\(1) & (!\lcd|CHAR_COUNT[0]~6\)) # (!\lcd|CHAR_COUNT\(1) & ((\lcd|CHAR_COUNT[0]~6\) # (GND)))
-- \lcd|CHAR_COUNT[1]~8\ = CARRY((!\lcd|CHAR_COUNT[0]~6\) # (!\lcd|CHAR_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(1),
	datad => VCC,
	cin => \lcd|CHAR_COUNT[0]~6\,
	combout => \lcd|CHAR_COUNT[1]~7_combout\,
	cout => \lcd|CHAR_COUNT[1]~8\);

-- Location: LCCOMB_X89_Y19_N10
\lcd|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector25~0_combout\ = (\lcd|CHAR_COUNT\(1) & \lcd|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(1),
	datad => \lcd|state.RESET1~q\,
	combout => \lcd|Selector25~0_combout\);

-- Location: FF_X89_Y19_N17
\lcd|CHAR_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CHAR_COUNT[1]~7_combout\,
	asdata => \lcd|Selector25~0_combout\,
	sload => \lcd|ALT_INV_state.Print_String~q\,
	ena => \lcd|CHAR_COUNT[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CHAR_COUNT\(1));

-- Location: LCCOMB_X89_Y19_N18
\lcd|CHAR_COUNT[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CHAR_COUNT[2]~10_combout\ = (\lcd|CHAR_COUNT\(2) & (\lcd|CHAR_COUNT[1]~8\ $ (GND))) # (!\lcd|CHAR_COUNT\(2) & (!\lcd|CHAR_COUNT[1]~8\ & VCC))
-- \lcd|CHAR_COUNT[2]~11\ = CARRY((\lcd|CHAR_COUNT\(2) & !\lcd|CHAR_COUNT[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datad => VCC,
	cin => \lcd|CHAR_COUNT[1]~8\,
	combout => \lcd|CHAR_COUNT[2]~10_combout\,
	cout => \lcd|CHAR_COUNT[2]~11\);

-- Location: LCCOMB_X89_Y19_N4
\lcd|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector24~0_combout\ = (\lcd|CHAR_COUNT\(2) & \lcd|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|state.RESET1~q\,
	combout => \lcd|Selector24~0_combout\);

-- Location: FF_X89_Y19_N19
\lcd|CHAR_COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CHAR_COUNT[2]~10_combout\,
	asdata => \lcd|Selector24~0_combout\,
	sload => \lcd|ALT_INV_state.Print_String~q\,
	ena => \lcd|CHAR_COUNT[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CHAR_COUNT\(2));

-- Location: LCCOMB_X89_Y19_N20
\lcd|CHAR_COUNT[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CHAR_COUNT[3]~12_combout\ = (\lcd|CHAR_COUNT\(3) & (!\lcd|CHAR_COUNT[2]~11\)) # (!\lcd|CHAR_COUNT\(3) & ((\lcd|CHAR_COUNT[2]~11\) # (GND)))
-- \lcd|CHAR_COUNT[3]~13\ = CARRY((!\lcd|CHAR_COUNT[2]~11\) # (!\lcd|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(3),
	datad => VCC,
	cin => \lcd|CHAR_COUNT[2]~11\,
	combout => \lcd|CHAR_COUNT[3]~12_combout\,
	cout => \lcd|CHAR_COUNT[3]~13\);

-- Location: LCCOMB_X89_Y19_N8
\lcd|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector23~0_combout\ = (\lcd|CHAR_COUNT\(3) & \lcd|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(3),
	datad => \lcd|state.RESET1~q\,
	combout => \lcd|Selector23~0_combout\);

-- Location: FF_X89_Y19_N21
\lcd|CHAR_COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CHAR_COUNT[3]~12_combout\,
	asdata => \lcd|Selector23~0_combout\,
	sload => \lcd|ALT_INV_state.Print_String~q\,
	ena => \lcd|CHAR_COUNT[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CHAR_COUNT\(3));

-- Location: LCCOMB_X86_Y18_N16
\lcd|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~0_combout\ = (\lcd|CHAR_COUNT\(2) & \lcd|CHAR_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux5~0_combout\);

-- Location: LCCOMB_X89_Y19_N22
\lcd|CHAR_COUNT[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|CHAR_COUNT[4]~14_combout\ = \lcd|CHAR_COUNT\(4) $ (!\lcd|CHAR_COUNT[3]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	cin => \lcd|CHAR_COUNT[3]~13\,
	combout => \lcd|CHAR_COUNT[4]~14_combout\);

-- Location: LCCOMB_X89_Y19_N26
\lcd|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector22~0_combout\ = (\lcd|CHAR_COUNT\(4) & \lcd|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|state.RESET1~q\,
	combout => \lcd|Selector22~0_combout\);

-- Location: FF_X89_Y19_N23
\lcd|CHAR_COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|CHAR_COUNT[4]~14_combout\,
	asdata => \lcd|Selector22~0_combout\,
	sload => \lcd|ALT_INV_state.Print_String~q\,
	ena => \lcd|CHAR_COUNT[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|CHAR_COUNT\(4));

-- Location: LCCOMB_X86_Y18_N6
\lcd|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Equal2~0_combout\ = (\lcd|CHAR_COUNT\(3) & (\lcd|Mux5~0_combout\ & (!\lcd|CHAR_COUNT\(4) & \lcd|CHAR_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(3),
	datab => \lcd|Mux5~0_combout\,
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Equal2~0_combout\);

-- Location: LCCOMB_X86_Y18_N20
\lcd|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Equal3~0_combout\ = (\lcd|CHAR_COUNT\(3) & (\lcd|Mux5~0_combout\ & (\lcd|CHAR_COUNT\(4) & \lcd|CHAR_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(3),
	datab => \lcd|Mux5~0_combout\,
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Equal3~0_combout\);

-- Location: LCCOMB_X85_Y19_N28
\lcd|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector15~0_combout\ = (\lcd|state.Print_String~q\ & (\lcd|Equal2~0_combout\ $ (!\lcd|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|state.Print_String~q\,
	datac => \lcd|Equal2~0_combout\,
	datad => \lcd|Equal3~0_combout\,
	combout => \lcd|Selector15~0_combout\);

-- Location: LCCOMB_X86_Y19_N26
\lcd|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector18~0_combout\ = (\lcd|state.RESET1~q\ & ((\lcd|next_command.RESET2~q\) # ((!\lcd|state.DROP_LCD_E~q\ & !\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.RESET1~q\,
	datab => \lcd|state.DROP_LCD_E~q\,
	datac => \lcd|next_command.RESET2~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|Selector18~0_combout\);

-- Location: FF_X86_Y19_N27
\lcd|next_command.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector18~0_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.RESET2~q\);

-- Location: LCCOMB_X86_Y19_N6
\lcd|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~36_combout\ = (!\lcd|next_command.RESET2~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|next_command.RESET2~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~36_combout\);

-- Location: FF_X86_Y19_N11
\lcd|state.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \lcd|state~36_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	sload => VCC,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.RESET2~q\);

-- Location: LCCOMB_X86_Y19_N4
\lcd|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector19~0_combout\ = (\lcd|state.RESET2~q\) # ((\lcd|next_command.RESET3~q\ & ((\lcd|state.DROP_LCD_E~q\) # (\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DROP_LCD_E~q\,
	datab => \lcd|state.RESET2~q\,
	datac => \lcd|next_command.RESET3~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|Selector19~0_combout\);

-- Location: FF_X86_Y19_N5
\lcd|next_command.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector19~0_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.RESET3~q\);

-- Location: LCCOMB_X86_Y19_N2
\lcd|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~34_combout\ = (\lcd|state.HOLD~q\ & \lcd|next_command.RESET3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~q\,
	datad => \lcd|next_command.RESET3~q\,
	combout => \lcd|state~34_combout\);

-- Location: FF_X86_Y19_N3
\lcd|state.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state~34_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.RESET3~q\);

-- Location: LCCOMB_X86_Y19_N16
\lcd|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector12~0_combout\ = (\lcd|state.RESET3~q\) # ((\lcd|next_command.FUNC_SET~q\ & ((\lcd|state.DROP_LCD_E~q\) # (\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DROP_LCD_E~q\,
	datab => \lcd|state.RESET3~q\,
	datac => \lcd|next_command.FUNC_SET~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|Selector12~0_combout\);

-- Location: FF_X86_Y19_N17
\lcd|next_command.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector12~0_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.FUNC_SET~q\);

-- Location: LCCOMB_X86_Y19_N20
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

-- Location: FF_X86_Y19_N21
\lcd|state.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state~35_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.FUNC_SET~q\);

-- Location: LCCOMB_X86_Y19_N30
\lcd|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector20~0_combout\ = (\lcd|state.FUNC_SET~q\) # ((\lcd|next_command.DISPLAY_OFF~q\ & ((\lcd|state.DROP_LCD_E~q\) # (\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DROP_LCD_E~q\,
	datab => \lcd|state.FUNC_SET~q\,
	datac => \lcd|next_command.DISPLAY_OFF~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|Selector20~0_combout\);

-- Location: FF_X86_Y19_N31
\lcd|next_command.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector20~0_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.DISPLAY_OFF~q\);

-- Location: LCCOMB_X86_Y19_N22
\lcd|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~37_combout\ = (\lcd|next_command.DISPLAY_OFF~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|next_command.DISPLAY_OFF~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~37_combout\);

-- Location: FF_X86_Y19_N23
\lcd|state.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state~37_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.DISPLAY_OFF~q\);

-- Location: LCCOMB_X86_Y19_N14
\lcd|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector21~0_combout\ = (\lcd|state.DISPLAY_OFF~q\) # ((\lcd|next_command.DISPLAY_CLEAR~q\ & ((\lcd|state.DROP_LCD_E~q\) # (\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DROP_LCD_E~q\,
	datab => \lcd|state.DISPLAY_OFF~q\,
	datac => \lcd|next_command.DISPLAY_CLEAR~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|Selector21~0_combout\);

-- Location: FF_X86_Y19_N15
\lcd|next_command.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector21~0_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X86_Y19_N8
\lcd|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~32_combout\ = (\lcd|next_command.DISPLAY_CLEAR~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|next_command.DISPLAY_CLEAR~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~32_combout\);

-- Location: FF_X86_Y19_N13
\lcd|state.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \lcd|state~32_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	sload => VCC,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X85_Y19_N30
\lcd|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector13~0_combout\ = (\lcd|state.DISPLAY_CLEAR~q\) # ((\lcd|next_command.DISPLAY_ON~q\ & ((\lcd|state.HOLD~q\) # (\lcd|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~q\,
	datab => \lcd|state.DROP_LCD_E~q\,
	datac => \lcd|next_command.DISPLAY_ON~q\,
	datad => \lcd|state.DISPLAY_CLEAR~q\,
	combout => \lcd|Selector13~0_combout\);

-- Location: FF_X85_Y19_N31
\lcd|next_command.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector13~0_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.DISPLAY_ON~q\);

-- Location: LCCOMB_X84_Y19_N16
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

-- Location: FF_X85_Y19_N15
\lcd|state.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \lcd|state~33_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	sload => VCC,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.DISPLAY_ON~q\);

-- Location: LCCOMB_X85_Y19_N4
\lcd|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector14~0_combout\ = (\lcd|state.DISPLAY_ON~q\) # ((\lcd|next_command.MODE_SET~q\ & ((\lcd|state.HOLD~q\) # (\lcd|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~q\,
	datab => \lcd|state.DISPLAY_ON~q\,
	datac => \lcd|state.DROP_LCD_E~q\,
	datad => \lcd|next_command.MODE_SET~q\,
	combout => \lcd|Selector14~0_combout\);

-- Location: FF_X86_Y19_N29
\lcd|next_command.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \lcd|Selector14~0_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	sload => VCC,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.MODE_SET~q\);

-- Location: LCCOMB_X85_Y19_N22
\lcd|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~29_combout\ = (\lcd|next_command.MODE_SET~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|next_command.MODE_SET~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~29_combout\);

-- Location: FF_X85_Y19_N23
\lcd|state.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state~29_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.MODE_SET~q\);

-- Location: LCCOMB_X85_Y19_N6
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

-- Location: FF_X86_Y19_N9
\lcd|next_command.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \lcd|Selector16~0_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	sload => VCC,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.LINE2~q\);

-- Location: LCCOMB_X85_Y19_N24
\lcd|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~30_combout\ = (\lcd|next_command.LINE2~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|next_command.LINE2~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~30_combout\);

-- Location: FF_X85_Y19_N25
\lcd|state.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state~30_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.LINE2~q\);

-- Location: LCCOMB_X85_Y19_N16
\lcd|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector17~0_combout\ = (\lcd|LCD_RS~0_combout\ & (\lcd|state.Print_String~q\ & ((\lcd|Equal3~0_combout\)))) # (!\lcd|LCD_RS~0_combout\ & ((\lcd|next_command.RETURN_HOME~q\) # ((\lcd|state.Print_String~q\ & \lcd|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|LCD_RS~0_combout\,
	datab => \lcd|state.Print_String~q\,
	datac => \lcd|next_command.RETURN_HOME~q\,
	datad => \lcd|Equal3~0_combout\,
	combout => \lcd|Selector17~0_combout\);

-- Location: FF_X85_Y19_N17
\lcd|next_command.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector17~0_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.RETURN_HOME~q\);

-- Location: LCCOMB_X84_Y19_N6
\lcd|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~31_combout\ = (\lcd|next_command.RETURN_HOME~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|next_command.RETURN_HOME~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~31_combout\);

-- Location: FF_X85_Y19_N11
\lcd|state.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \lcd|state~31_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	sload => VCC,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.RETURN_HOME~q\);

-- Location: LCCOMB_X85_Y19_N14
\lcd|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector5~0_combout\ = (!\lcd|state.MODE_SET~q\ & (!\lcd|state.LINE2~q\ & !\lcd|state.RETURN_HOME~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.MODE_SET~q\,
	datab => \lcd|state.LINE2~q\,
	datad => \lcd|state.RETURN_HOME~q\,
	combout => \lcd|Selector5~0_combout\);

-- Location: LCCOMB_X85_Y19_N8
\lcd|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector15~1_combout\ = (\lcd|Selector15~0_combout\) # (((!\lcd|LCD_RS~0_combout\ & \lcd|next_command.Print_String~q\)) # (!\lcd|Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|LCD_RS~0_combout\,
	datab => \lcd|Selector15~0_combout\,
	datac => \lcd|next_command.Print_String~q\,
	datad => \lcd|Selector5~0_combout\,
	combout => \lcd|Selector15~1_combout\);

-- Location: FF_X85_Y19_N9
\lcd|next_command.Print_String\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector15~1_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|next_command.Print_String~q\);

-- Location: LCCOMB_X85_Y19_N20
\lcd|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|state~28_combout\ = (\lcd|next_command.Print_String~q\ & \lcd|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|next_command.Print_String~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|state~28_combout\);

-- Location: FF_X85_Y19_N21
\lcd|state.Print_String\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|state~28_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|state.Print_String~q\);

-- Location: LCCOMB_X86_Y20_N16
\lcd|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~10_combout\ = (!\lcd|CHAR_COUNT\(1) & (!\lcd|CHAR_COUNT\(3) & \lcd|CHAR_COUNT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|CHAR_COUNT\(4),
	combout => \lcd|Mux6~10_combout\);

-- Location: LCCOMB_X86_Y20_N12
\lcd|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~1_combout\ = (\lcd|CHAR_COUNT\(3)) # ((\lcd|CHAR_COUNT\(1) & (\lcd|CHAR_COUNT\(2) & \lcd|CHAR_COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|CHAR_COUNT\(4),
	combout => \lcd|Mux5~1_combout\);

-- Location: LCCOMB_X86_Y20_N26
\lcd|Mux5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~19_combout\ = (\lcd|CHAR_COUNT\(3)) # (((\lcd|CHAR_COUNT\(1) & \lcd|CHAR_COUNT\(2))) # (!\lcd|CHAR_COUNT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|CHAR_COUNT\(4),
	combout => \lcd|Mux5~19_combout\);

-- Location: LCCOMB_X86_Y20_N14
\lcd|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~0_combout\ = (!\lcd|CHAR_COUNT\(3) & ((\lcd|CHAR_COUNT\(1) & ((!\lcd|CHAR_COUNT\(2)))) # (!\lcd|CHAR_COUNT\(1) & ((\lcd|CHAR_COUNT\(2)) # (!\lcd|CHAR_COUNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datab => \lcd|CHAR_COUNT\(3),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|CHAR_COUNT\(2),
	combout => \lcd|Mux6~0_combout\);

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

-- Location: LCCOMB_X88_Y19_N12
\lcd|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~2_combout\ = ((\lcd|CHAR_COUNT\(1) & (!\lcd|CHAR_COUNT\(2) & \lcd|CHAR_COUNT\(4)))) # (!\lcd|CHAR_COUNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|CHAR_COUNT\(4),
	combout => \lcd|Mux5~2_combout\);

-- Location: LCCOMB_X88_Y19_N30
\lcd|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~3_combout\ = (\lcd|CHAR_COUNT\(0) & \lcd|Mux5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|Mux5~2_combout\,
	combout => \lcd|Mux5~3_combout\);

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

-- Location: LCCOMB_X105_Y20_N24
\flanke_Q0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \flanke_Q0~feeder_combout\ = \KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \flanke_Q0~feeder_combout\);

-- Location: FF_X105_Y20_N25
flanke_Q0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \flanke_Q0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flanke_Q0~q\);

-- Location: LCCOMB_X105_Y20_N12
\flanke_QQ0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \flanke_QQ0~feeder_combout\ = \flanke_Q0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flanke_Q0~q\,
	combout => \flanke_QQ0~feeder_combout\);

-- Location: FF_X105_Y20_N13
flanke_QQ0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \flanke_QQ0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flanke_QQ0~q\);

-- Location: LCCOMB_X105_Y20_N26
\flanke_QQQ0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \flanke_QQQ0~feeder_combout\ = \flanke_QQ0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flanke_QQ0~q\,
	combout => \flanke_QQQ0~feeder_combout\);

-- Location: FF_X105_Y20_N27
flanke_QQQ0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \flanke_QQQ0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flanke_QQQ0~q\);

-- Location: LCCOMB_X105_Y20_N0
\enable_lagr_rundetid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_lagr_rundetid~0_combout\ = (\flanke_QQQ0~q\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flanke_QQQ0~q\,
	datad => \KEY[0]~input_o\,
	combout => \enable_lagr_rundetid~0_combout\);

-- Location: FF_X105_Y20_N1
enable_lagr_rundetid : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_lagr_rundetid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_lagr_rundetid~q\);

-- Location: LCCOMB_X106_Y21_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = teller(0) $ (VCC)
-- \Add0~1\ = CARRY(teller(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => teller(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X106_Y21_N6
\teller~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \teller~12_combout\ = (!\memory~32_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~32_combout\,
	datad => \Add0~0_combout\,
	combout => \teller~12_combout\);

-- Location: FF_X106_Y21_N7
\teller[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \teller~12_combout\,
	ena => \teller[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teller(0));

-- Location: LCCOMB_X106_Y21_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (teller(1) & (!\Add0~1\)) # (!teller(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!teller(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => teller(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X105_Y21_N16
\teller~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \teller~8_combout\ = (\Add0~2_combout\ & !\memory~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \memory~32_combout\,
	combout => \teller~8_combout\);

-- Location: FF_X105_Y21_N17
\teller[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \teller~8_combout\,
	ena => \teller[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teller(1));

-- Location: LCCOMB_X106_Y21_N16
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (teller(2) & (\Add0~3\ $ (GND))) # (!teller(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((teller(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => teller(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X106_Y21_N8
\teller~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \teller~9_combout\ = (!\memory~32_combout\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~32_combout\,
	datad => \Add0~4_combout\,
	combout => \teller~9_combout\);

-- Location: FF_X106_Y21_N9
\teller[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \teller~9_combout\,
	ena => \teller[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teller(2));

-- Location: LCCOMB_X106_Y21_N18
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (teller(3) & (!\Add0~5\)) # (!teller(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!teller(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => teller(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X105_Y21_N14
\teller[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \teller[3]~10_combout\ = (\teller[1]~2_combout\ & (\Add0~6_combout\ & ((!\memory~32_combout\)))) # (!\teller[1]~2_combout\ & (((teller(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \teller[1]~2_combout\,
	datab => \Add0~6_combout\,
	datac => teller(3),
	datad => \memory~32_combout\,
	combout => \teller[3]~10_combout\);

-- Location: FF_X105_Y21_N15
\teller[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \teller[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teller(3));

-- Location: LCCOMB_X105_Y21_N26
\teller[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \teller[1]~0_combout\ = (teller(1) & (teller(2) & teller(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => teller(1),
	datac => teller(2),
	datad => teller(0),
	combout => \teller[1]~0_combout\);

-- Location: LCCOMB_X106_Y21_N20
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (teller(4) & (\Add0~7\ $ (GND))) # (!teller(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((teller(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => teller(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X105_Y21_N28
\teller[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \teller[4]~11_combout\ = (\teller[1]~2_combout\ & (!\memory~32_combout\ & (\Add0~8_combout\))) # (!\teller[1]~2_combout\ & (((teller(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~32_combout\,
	datab => \Add0~8_combout\,
	datac => teller(4),
	datad => \teller[1]~2_combout\,
	combout => \teller[4]~11_combout\);

-- Location: FF_X105_Y21_N29
\teller[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \teller[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teller(4));

-- Location: LCCOMB_X105_Y21_N8
\teller[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \teller[1]~1_combout\ = (teller(3)) # ((\teller[1]~0_combout\) # (teller(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => teller(3),
	datac => \teller[1]~0_combout\,
	datad => teller(4),
	combout => \teller[1]~1_combout\);

-- Location: LCCOMB_X105_Y21_N20
\running~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \running~0_combout\ = (\running~q\) # (\enable_lagr_rundetid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \running~q\,
	datad => \enable_lagr_rundetid~q\,
	combout => \running~0_combout\);

-- Location: FF_X105_Y21_N21
running : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \running~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \running~q\);

-- Location: LCCOMB_X105_Y21_N6
\teller[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \teller[1]~2_combout\ = (\running~q\ & (((\enable_lagr_rundetid~q\) # (!\teller[1]~1_combout\)) # (!\memory~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~31_combout\,
	datab => \enable_lagr_rundetid~q\,
	datac => \teller[1]~1_combout\,
	datad => \running~q\,
	combout => \teller[1]~2_combout\);

-- Location: LCCOMB_X106_Y21_N22
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (teller(5) & (!\Add0~9\)) # (!teller(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!teller(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => teller(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X106_Y21_N0
\teller[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \teller[5]~4_combout\ = (\teller[1]~2_combout\ & (\Add0~10_combout\ & ((!\memory~32_combout\)))) # (!\teller[1]~2_combout\ & (((teller(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \teller[1]~2_combout\,
	datac => teller(5),
	datad => \memory~32_combout\,
	combout => \teller[5]~4_combout\);

-- Location: FF_X106_Y21_N1
\teller[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \teller[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teller(5));

-- Location: LCCOMB_X106_Y21_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (teller(6) & (\Add0~11\ $ (GND))) # (!teller(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((teller(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => teller(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X105_Y21_N24
\teller[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \teller[6]~5_combout\ = (\teller[1]~2_combout\ & (\Add0~12_combout\ & (!\memory~32_combout\))) # (!\teller[1]~2_combout\ & (((teller(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \memory~32_combout\,
	datac => teller(6),
	datad => \teller[1]~2_combout\,
	combout => \teller[6]~5_combout\);

-- Location: FF_X105_Y21_N25
\teller[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \teller[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teller(6));

-- Location: LCCOMB_X106_Y21_N26
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (teller(7) & (!\Add0~13\)) # (!teller(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!teller(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => teller(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X106_Y21_N10
\teller[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \teller[7]~6_combout\ = (\teller[1]~2_combout\ & (\Add0~14_combout\ & ((!\memory~32_combout\)))) # (!\teller[1]~2_combout\ & (((teller(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \teller[1]~2_combout\,
	datac => teller(7),
	datad => \memory~32_combout\,
	combout => \teller[7]~6_combout\);

-- Location: FF_X106_Y21_N11
\teller[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \teller[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teller(7));

-- Location: LCCOMB_X106_Y21_N28
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (teller(8) & (\Add0~15\ $ (GND))) # (!teller(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((teller(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => teller(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X106_Y21_N4
\teller[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \teller[8]~7_combout\ = (\teller[1]~2_combout\ & (!\memory~32_combout\ & ((\Add0~16_combout\)))) # (!\teller[1]~2_combout\ & (((teller(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~32_combout\,
	datab => \teller[1]~2_combout\,
	datac => teller(8),
	datad => \Add0~16_combout\,
	combout => \teller[8]~7_combout\);

-- Location: FF_X106_Y21_N5
\teller[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \teller[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teller(8));

-- Location: LCCOMB_X106_Y21_N30
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (teller(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => teller(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X105_Y21_N18
\teller[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \teller[9]~3_combout\ = (\teller[1]~2_combout\ & (\Add0~18_combout\ & (!\memory~32_combout\))) # (!\teller[1]~2_combout\ & (((teller(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \memory~32_combout\,
	datac => teller(9),
	datad => \teller[1]~2_combout\,
	combout => \teller[9]~3_combout\);

-- Location: FF_X105_Y21_N19
\teller[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \teller[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => teller(9));

-- Location: LCCOMB_X106_Y21_N2
\memory~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~30_combout\ = (teller(7) & (teller(6) & (teller(8) & teller(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => teller(7),
	datab => teller(6),
	datac => teller(8),
	datad => teller(5),
	combout => \memory~30_combout\);

-- Location: LCCOMB_X105_Y21_N10
\memory~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~31_combout\ = (teller(9) & \memory~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => teller(9),
	datad => \memory~30_combout\,
	combout => \memory~31_combout\);

-- Location: LCCOMB_X105_Y21_N22
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!teller(3) & (!teller(4) & ((!teller(1)) # (!teller(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => teller(3),
	datab => teller(4),
	datac => teller(2),
	datad => teller(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X105_Y21_N12
\memory~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~32_combout\ = (\memory~31_combout\ & (\enable_lagr_rundetid~q\ & (!\LessThan1~0_combout\ & \running~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~31_combout\,
	datab => \enable_lagr_rundetid~q\,
	datac => \LessThan1~0_combout\,
	datad => \running~q\,
	combout => \memory~32_combout\);

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

-- Location: LCCOMB_X108_Y20_N10
\flanke_Q1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \flanke_Q1~feeder_combout\ = \KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \flanke_Q1~feeder_combout\);

-- Location: FF_X108_Y20_N11
flanke_Q1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \flanke_Q1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flanke_Q1~q\);

-- Location: LCCOMB_X108_Y20_N12
\flanke_QQ1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \flanke_QQ1~feeder_combout\ = \flanke_Q1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flanke_Q1~q\,
	combout => \flanke_QQ1~feeder_combout\);

-- Location: FF_X108_Y20_N13
flanke_QQ1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \flanke_QQ1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flanke_QQ1~q\);

-- Location: LCCOMB_X108_Y20_N18
\flanke_QQQ1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \flanke_QQQ1~feeder_combout\ = \flanke_QQ1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flanke_QQ1~q\,
	combout => \flanke_QQQ1~feeder_combout\);

-- Location: FF_X108_Y20_N19
flanke_QQQ1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \flanke_QQQ1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flanke_QQQ1~q\);

-- Location: LCCOMB_X108_Y20_N8
\enable_les_av~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_les_av~0_combout\ = (!\KEY[1]~input_o\ & \flanke_QQQ1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datad => \flanke_QQQ1~q\,
	combout => \enable_les_av~0_combout\);

-- Location: FF_X108_Y20_N9
enable_les_av : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_les_av~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_les_av~q\);

-- Location: LCCOMB_X91_Y20_N0
\digital_klokke|sekund_std[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|sekund_std[0]~6_combout\ = \digital_klokke|sekund_std\(0) $ (VCC)
-- \digital_klokke|sekund_std[0]~7\ = CARRY(\digital_klokke|sekund_std\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|sekund_std\(0),
	datad => VCC,
	combout => \digital_klokke|sekund_std[0]~6_combout\,
	cout => \digital_klokke|sekund_std[0]~7\);

-- Location: LCCOMB_X92_Y19_N10
\reset_synkroniseres_2|dff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_synkroniseres_2|dff~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \reset_synkroniseres_2|dff~feeder_combout\);

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

-- Location: FF_X92_Y19_N11
\reset_synkroniseres_2|dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \reset_synkroniseres_2|dff~feeder_combout\,
	clrn => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_synkroniseres_2|dff~q\);

-- Location: LCCOMB_X92_Y19_N8
\reset_synkroniseres_2|reset_sync~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_synkroniseres_2|reset_sync~feeder_combout\ = \reset_synkroniseres_2|dff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_synkroniseres_2|dff~q\,
	combout => \reset_synkroniseres_2|reset_sync~feeder_combout\);

-- Location: FF_X92_Y19_N9
\reset_synkroniseres_2|reset_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \reset_synkroniseres_2|reset_sync~feeder_combout\,
	clrn => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_synkroniseres_2|reset_sync~q\);

-- Location: LCCOMB_X91_Y20_N2
\digital_klokke|sekund_std[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|sekund_std[1]~8_combout\ = (\digital_klokke|sekund_std\(1) & (!\digital_klokke|sekund_std[0]~7\)) # (!\digital_klokke|sekund_std\(1) & ((\digital_klokke|sekund_std[0]~7\) # (GND)))
-- \digital_klokke|sekund_std[1]~9\ = CARRY((!\digital_klokke|sekund_std[0]~7\) # (!\digital_klokke|sekund_std\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|sekund_std\(1),
	datad => VCC,
	cin => \digital_klokke|sekund_std[0]~7\,
	combout => \digital_klokke|sekund_std[1]~8_combout\,
	cout => \digital_klokke|sekund_std[1]~9\);

-- Location: LCCOMB_X110_Y14_N6
\digital_klokke|enable_gen_1|teller[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[0]~26_combout\ = \digital_klokke|enable_gen_1|teller\(0) $ (VCC)
-- \digital_klokke|enable_gen_1|teller[0]~27\ = CARRY(\digital_klokke|enable_gen_1|teller\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(0),
	datad => VCC,
	combout => \digital_klokke|enable_gen_1|teller[0]~26_combout\,
	cout => \digital_klokke|enable_gen_1|teller[0]~27\);

-- Location: LCCOMB_X110_Y13_N28
\digital_klokke|enable_gen_1|teller[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[4]~28_combout\ = (\digital_klokke|enable_gen_1|Equal0~26_combout\) # (!\reset_synkroniseres_2|reset_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|Equal0~26_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	combout => \digital_klokke|enable_gen_1|teller[4]~28_combout\);

-- Location: FF_X110_Y14_N7
\digital_klokke|enable_gen_1|teller[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[0]~26_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(0));

-- Location: LCCOMB_X110_Y14_N8
\digital_klokke|enable_gen_1|teller[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[1]~29_combout\ = (\digital_klokke|enable_gen_1|teller\(1) & (!\digital_klokke|enable_gen_1|teller[0]~27\)) # (!\digital_klokke|enable_gen_1|teller\(1) & ((\digital_klokke|enable_gen_1|teller[0]~27\) # (GND)))
-- \digital_klokke|enable_gen_1|teller[1]~30\ = CARRY((!\digital_klokke|enable_gen_1|teller[0]~27\) # (!\digital_klokke|enable_gen_1|teller\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(1),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[0]~27\,
	combout => \digital_klokke|enable_gen_1|teller[1]~29_combout\,
	cout => \digital_klokke|enable_gen_1|teller[1]~30\);

-- Location: FF_X110_Y14_N9
\digital_klokke|enable_gen_1|teller[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[1]~29_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(1));

-- Location: LCCOMB_X110_Y14_N10
\digital_klokke|enable_gen_1|teller[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[2]~31_combout\ = (\digital_klokke|enable_gen_1|teller\(2) & (\digital_klokke|enable_gen_1|teller[1]~30\ $ (GND))) # (!\digital_klokke|enable_gen_1|teller\(2) & (!\digital_klokke|enable_gen_1|teller[1]~30\ & VCC))
-- \digital_klokke|enable_gen_1|teller[2]~32\ = CARRY((\digital_klokke|enable_gen_1|teller\(2) & !\digital_klokke|enable_gen_1|teller[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(2),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[1]~30\,
	combout => \digital_klokke|enable_gen_1|teller[2]~31_combout\,
	cout => \digital_klokke|enable_gen_1|teller[2]~32\);

-- Location: FF_X110_Y14_N11
\digital_klokke|enable_gen_1|teller[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[2]~31_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(2));

-- Location: LCCOMB_X110_Y14_N12
\digital_klokke|enable_gen_1|teller[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[3]~33_combout\ = (\digital_klokke|enable_gen_1|teller\(3) & (!\digital_klokke|enable_gen_1|teller[2]~32\)) # (!\digital_klokke|enable_gen_1|teller\(3) & ((\digital_klokke|enable_gen_1|teller[2]~32\) # (GND)))
-- \digital_klokke|enable_gen_1|teller[3]~34\ = CARRY((!\digital_klokke|enable_gen_1|teller[2]~32\) # (!\digital_klokke|enable_gen_1|teller\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(3),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[2]~32\,
	combout => \digital_klokke|enable_gen_1|teller[3]~33_combout\,
	cout => \digital_klokke|enable_gen_1|teller[3]~34\);

-- Location: FF_X110_Y14_N13
\digital_klokke|enable_gen_1|teller[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[3]~33_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(3));

-- Location: LCCOMB_X110_Y14_N14
\digital_klokke|enable_gen_1|teller[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[4]~35_combout\ = (\digital_klokke|enable_gen_1|teller\(4) & (\digital_klokke|enable_gen_1|teller[3]~34\ $ (GND))) # (!\digital_klokke|enable_gen_1|teller\(4) & (!\digital_klokke|enable_gen_1|teller[3]~34\ & VCC))
-- \digital_klokke|enable_gen_1|teller[4]~36\ = CARRY((\digital_klokke|enable_gen_1|teller\(4) & !\digital_klokke|enable_gen_1|teller[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(4),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[3]~34\,
	combout => \digital_klokke|enable_gen_1|teller[4]~35_combout\,
	cout => \digital_klokke|enable_gen_1|teller[4]~36\);

-- Location: FF_X110_Y14_N15
\digital_klokke|enable_gen_1|teller[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[4]~35_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(4));

-- Location: LCCOMB_X110_Y14_N16
\digital_klokke|enable_gen_1|teller[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[5]~37_combout\ = (\digital_klokke|enable_gen_1|teller\(5) & (!\digital_klokke|enable_gen_1|teller[4]~36\)) # (!\digital_klokke|enable_gen_1|teller\(5) & ((\digital_klokke|enable_gen_1|teller[4]~36\) # (GND)))
-- \digital_klokke|enable_gen_1|teller[5]~38\ = CARRY((!\digital_klokke|enable_gen_1|teller[4]~36\) # (!\digital_klokke|enable_gen_1|teller\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(5),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[4]~36\,
	combout => \digital_klokke|enable_gen_1|teller[5]~37_combout\,
	cout => \digital_klokke|enable_gen_1|teller[5]~38\);

-- Location: FF_X110_Y14_N17
\digital_klokke|enable_gen_1|teller[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[5]~37_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(5));

-- Location: LCCOMB_X110_Y14_N18
\digital_klokke|enable_gen_1|teller[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[6]~39_combout\ = (\digital_klokke|enable_gen_1|teller\(6) & (\digital_klokke|enable_gen_1|teller[5]~38\ $ (GND))) # (!\digital_klokke|enable_gen_1|teller\(6) & (!\digital_klokke|enable_gen_1|teller[5]~38\ & VCC))
-- \digital_klokke|enable_gen_1|teller[6]~40\ = CARRY((\digital_klokke|enable_gen_1|teller\(6) & !\digital_klokke|enable_gen_1|teller[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(6),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[5]~38\,
	combout => \digital_klokke|enable_gen_1|teller[6]~39_combout\,
	cout => \digital_klokke|enable_gen_1|teller[6]~40\);

-- Location: FF_X110_Y14_N19
\digital_klokke|enable_gen_1|teller[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[6]~39_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(6));

-- Location: LCCOMB_X110_Y14_N20
\digital_klokke|enable_gen_1|teller[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[7]~41_combout\ = (\digital_klokke|enable_gen_1|teller\(7) & (!\digital_klokke|enable_gen_1|teller[6]~40\)) # (!\digital_klokke|enable_gen_1|teller\(7) & ((\digital_klokke|enable_gen_1|teller[6]~40\) # (GND)))
-- \digital_klokke|enable_gen_1|teller[7]~42\ = CARRY((!\digital_klokke|enable_gen_1|teller[6]~40\) # (!\digital_klokke|enable_gen_1|teller\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(7),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[6]~40\,
	combout => \digital_klokke|enable_gen_1|teller[7]~41_combout\,
	cout => \digital_klokke|enable_gen_1|teller[7]~42\);

-- Location: FF_X110_Y14_N21
\digital_klokke|enable_gen_1|teller[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[7]~41_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(7));

-- Location: LCCOMB_X110_Y14_N22
\digital_klokke|enable_gen_1|teller[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[8]~43_combout\ = (\digital_klokke|enable_gen_1|teller\(8) & (\digital_klokke|enable_gen_1|teller[7]~42\ $ (GND))) # (!\digital_klokke|enable_gen_1|teller\(8) & (!\digital_klokke|enable_gen_1|teller[7]~42\ & VCC))
-- \digital_klokke|enable_gen_1|teller[8]~44\ = CARRY((\digital_klokke|enable_gen_1|teller\(8) & !\digital_klokke|enable_gen_1|teller[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(8),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[7]~42\,
	combout => \digital_klokke|enable_gen_1|teller[8]~43_combout\,
	cout => \digital_klokke|enable_gen_1|teller[8]~44\);

-- Location: FF_X110_Y14_N23
\digital_klokke|enable_gen_1|teller[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[8]~43_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(8));

-- Location: LCCOMB_X110_Y14_N24
\digital_klokke|enable_gen_1|teller[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[9]~45_combout\ = (\digital_klokke|enable_gen_1|teller\(9) & (!\digital_klokke|enable_gen_1|teller[8]~44\)) # (!\digital_klokke|enable_gen_1|teller\(9) & ((\digital_klokke|enable_gen_1|teller[8]~44\) # (GND)))
-- \digital_klokke|enable_gen_1|teller[9]~46\ = CARRY((!\digital_klokke|enable_gen_1|teller[8]~44\) # (!\digital_klokke|enable_gen_1|teller\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(9),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[8]~44\,
	combout => \digital_klokke|enable_gen_1|teller[9]~45_combout\,
	cout => \digital_klokke|enable_gen_1|teller[9]~46\);

-- Location: FF_X110_Y14_N25
\digital_klokke|enable_gen_1|teller[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[9]~45_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(9));

-- Location: LCCOMB_X110_Y14_N26
\digital_klokke|enable_gen_1|teller[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[10]~47_combout\ = (\digital_klokke|enable_gen_1|teller\(10) & (\digital_klokke|enable_gen_1|teller[9]~46\ $ (GND))) # (!\digital_klokke|enable_gen_1|teller\(10) & (!\digital_klokke|enable_gen_1|teller[9]~46\ & VCC))
-- \digital_klokke|enable_gen_1|teller[10]~48\ = CARRY((\digital_klokke|enable_gen_1|teller\(10) & !\digital_klokke|enable_gen_1|teller[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(10),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[9]~46\,
	combout => \digital_klokke|enable_gen_1|teller[10]~47_combout\,
	cout => \digital_klokke|enable_gen_1|teller[10]~48\);

-- Location: FF_X110_Y14_N27
\digital_klokke|enable_gen_1|teller[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[10]~47_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(10));

-- Location: LCCOMB_X110_Y14_N28
\digital_klokke|enable_gen_1|teller[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[11]~49_combout\ = (\digital_klokke|enable_gen_1|teller\(11) & (!\digital_klokke|enable_gen_1|teller[10]~48\)) # (!\digital_klokke|enable_gen_1|teller\(11) & ((\digital_klokke|enable_gen_1|teller[10]~48\) # (GND)))
-- \digital_klokke|enable_gen_1|teller[11]~50\ = CARRY((!\digital_klokke|enable_gen_1|teller[10]~48\) # (!\digital_klokke|enable_gen_1|teller\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(11),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[10]~48\,
	combout => \digital_klokke|enable_gen_1|teller[11]~49_combout\,
	cout => \digital_klokke|enable_gen_1|teller[11]~50\);

-- Location: FF_X110_Y14_N29
\digital_klokke|enable_gen_1|teller[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[11]~49_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(11));

-- Location: LCCOMB_X110_Y14_N30
\digital_klokke|enable_gen_1|teller[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[12]~51_combout\ = (\digital_klokke|enable_gen_1|teller\(12) & (\digital_klokke|enable_gen_1|teller[11]~50\ $ (GND))) # (!\digital_klokke|enable_gen_1|teller\(12) & (!\digital_klokke|enable_gen_1|teller[11]~50\ & VCC))
-- \digital_klokke|enable_gen_1|teller[12]~52\ = CARRY((\digital_klokke|enable_gen_1|teller\(12) & !\digital_klokke|enable_gen_1|teller[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(12),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[11]~50\,
	combout => \digital_klokke|enable_gen_1|teller[12]~51_combout\,
	cout => \digital_klokke|enable_gen_1|teller[12]~52\);

-- Location: FF_X110_Y14_N31
\digital_klokke|enable_gen_1|teller[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[12]~51_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(12));

-- Location: LCCOMB_X110_Y13_N0
\digital_klokke|enable_gen_1|teller[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[13]~53_combout\ = (\digital_klokke|enable_gen_1|teller\(13) & (!\digital_klokke|enable_gen_1|teller[12]~52\)) # (!\digital_klokke|enable_gen_1|teller\(13) & ((\digital_klokke|enable_gen_1|teller[12]~52\) # (GND)))
-- \digital_klokke|enable_gen_1|teller[13]~54\ = CARRY((!\digital_klokke|enable_gen_1|teller[12]~52\) # (!\digital_klokke|enable_gen_1|teller\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(13),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[12]~52\,
	combout => \digital_klokke|enable_gen_1|teller[13]~53_combout\,
	cout => \digital_klokke|enable_gen_1|teller[13]~54\);

-- Location: FF_X110_Y13_N1
\digital_klokke|enable_gen_1|teller[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[13]~53_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(13));

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

-- Location: LCCOMB_X111_Y12_N26
\digital_klokke|enable_gen_1|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~12_combout\ = \digital_klokke|enable_gen_1|teller\(13) $ (((\SW[17]~input_o\) # ((\SW[15]~input_o\ & \SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(13),
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \digital_klokke|enable_gen_1|Equal0~12_combout\);

-- Location: LCCOMB_X110_Y13_N2
\digital_klokke|enable_gen_1|teller[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[14]~55_combout\ = (\digital_klokke|enable_gen_1|teller\(14) & (\digital_klokke|enable_gen_1|teller[13]~54\ $ (GND))) # (!\digital_klokke|enable_gen_1|teller\(14) & (!\digital_klokke|enable_gen_1|teller[13]~54\ & VCC))
-- \digital_klokke|enable_gen_1|teller[14]~56\ = CARRY((\digital_klokke|enable_gen_1|teller\(14) & !\digital_klokke|enable_gen_1|teller[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(14),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[13]~54\,
	combout => \digital_klokke|enable_gen_1|teller[14]~55_combout\,
	cout => \digital_klokke|enable_gen_1|teller[14]~56\);

-- Location: FF_X110_Y13_N3
\digital_klokke|enable_gen_1|teller[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[14]~55_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(14));

-- Location: LCCOMB_X111_Y13_N20
\digital_klokke|enable_gen_1|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~13_combout\ = \digital_klokke|enable_gen_1|teller\(14) $ (((\SW[17]~input_o\) # (\SW[15]~input_o\ $ (\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \digital_klokke|enable_gen_1|teller\(14),
	combout => \digital_klokke|enable_gen_1|Equal0~13_combout\);

-- Location: LCCOMB_X110_Y13_N4
\digital_klokke|enable_gen_1|teller[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[15]~57_combout\ = (\digital_klokke|enable_gen_1|teller\(15) & (!\digital_klokke|enable_gen_1|teller[14]~56\)) # (!\digital_klokke|enable_gen_1|teller\(15) & ((\digital_klokke|enable_gen_1|teller[14]~56\) # (GND)))
-- \digital_klokke|enable_gen_1|teller[15]~58\ = CARRY((!\digital_klokke|enable_gen_1|teller[14]~56\) # (!\digital_klokke|enable_gen_1|teller\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(15),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[14]~56\,
	combout => \digital_klokke|enable_gen_1|teller[15]~57_combout\,
	cout => \digital_klokke|enable_gen_1|teller[15]~58\);

-- Location: FF_X110_Y13_N5
\digital_klokke|enable_gen_1|teller[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[15]~57_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(15));

-- Location: LCCOMB_X110_Y13_N6
\digital_klokke|enable_gen_1|teller[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[16]~59_combout\ = (\digital_klokke|enable_gen_1|teller\(16) & (\digital_klokke|enable_gen_1|teller[15]~58\ $ (GND))) # (!\digital_klokke|enable_gen_1|teller\(16) & (!\digital_klokke|enable_gen_1|teller[15]~58\ & VCC))
-- \digital_klokke|enable_gen_1|teller[16]~60\ = CARRY((\digital_klokke|enable_gen_1|teller\(16) & !\digital_klokke|enable_gen_1|teller[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(16),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[15]~58\,
	combout => \digital_klokke|enable_gen_1|teller[16]~59_combout\,
	cout => \digital_klokke|enable_gen_1|teller[16]~60\);

-- Location: FF_X110_Y13_N7
\digital_klokke|enable_gen_1|teller[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[16]~59_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(16));

-- Location: LCCOMB_X111_Y12_N10
\digital_klokke|enable_gen_1|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~15_combout\ = (\digital_klokke|enable_gen_1|teller\(16) & (!\SW[15]~input_o\ & (\SW[16]~input_o\ & !\SW[17]~input_o\))) # (!\digital_klokke|enable_gen_1|teller\(16) & ((\SW[15]~input_o\) # ((\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(16),
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \digital_klokke|enable_gen_1|Equal0~15_combout\);

-- Location: LCCOMB_X110_Y13_N8
\digital_klokke|enable_gen_1|teller[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[17]~61_combout\ = (\digital_klokke|enable_gen_1|teller\(17) & (!\digital_klokke|enable_gen_1|teller[16]~60\)) # (!\digital_klokke|enable_gen_1|teller\(17) & ((\digital_klokke|enable_gen_1|teller[16]~60\) # (GND)))
-- \digital_klokke|enable_gen_1|teller[17]~62\ = CARRY((!\digital_klokke|enable_gen_1|teller[16]~60\) # (!\digital_klokke|enable_gen_1|teller\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(17),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[16]~60\,
	combout => \digital_klokke|enable_gen_1|teller[17]~61_combout\,
	cout => \digital_klokke|enable_gen_1|teller[17]~62\);

-- Location: FF_X110_Y13_N9
\digital_klokke|enable_gen_1|teller[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[17]~61_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(17));

-- Location: LCCOMB_X110_Y13_N10
\digital_klokke|enable_gen_1|teller[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[18]~63_combout\ = (\digital_klokke|enable_gen_1|teller\(18) & (\digital_klokke|enable_gen_1|teller[17]~62\ $ (GND))) # (!\digital_klokke|enable_gen_1|teller\(18) & (!\digital_klokke|enable_gen_1|teller[17]~62\ & VCC))
-- \digital_klokke|enable_gen_1|teller[18]~64\ = CARRY((\digital_klokke|enable_gen_1|teller\(18) & !\digital_klokke|enable_gen_1|teller[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(18),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[17]~62\,
	combout => \digital_klokke|enable_gen_1|teller[18]~63_combout\,
	cout => \digital_klokke|enable_gen_1|teller[18]~64\);

-- Location: FF_X110_Y13_N11
\digital_klokke|enable_gen_1|teller[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[18]~63_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(18));

-- Location: LCCOMB_X110_Y13_N12
\digital_klokke|enable_gen_1|teller[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[19]~65_combout\ = (\digital_klokke|enable_gen_1|teller\(19) & (!\digital_klokke|enable_gen_1|teller[18]~64\)) # (!\digital_klokke|enable_gen_1|teller\(19) & ((\digital_klokke|enable_gen_1|teller[18]~64\) # (GND)))
-- \digital_klokke|enable_gen_1|teller[19]~66\ = CARRY((!\digital_klokke|enable_gen_1|teller[18]~64\) # (!\digital_klokke|enable_gen_1|teller\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(19),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[18]~64\,
	combout => \digital_klokke|enable_gen_1|teller[19]~65_combout\,
	cout => \digital_klokke|enable_gen_1|teller[19]~66\);

-- Location: FF_X110_Y13_N13
\digital_klokke|enable_gen_1|teller[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[19]~65_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(19));

-- Location: LCCOMB_X110_Y13_N14
\digital_klokke|enable_gen_1|teller[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[20]~67_combout\ = (\digital_klokke|enable_gen_1|teller\(20) & (\digital_klokke|enable_gen_1|teller[19]~66\ $ (GND))) # (!\digital_klokke|enable_gen_1|teller\(20) & (!\digital_klokke|enable_gen_1|teller[19]~66\ & VCC))
-- \digital_klokke|enable_gen_1|teller[20]~68\ = CARRY((\digital_klokke|enable_gen_1|teller\(20) & !\digital_klokke|enable_gen_1|teller[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(20),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[19]~66\,
	combout => \digital_klokke|enable_gen_1|teller[20]~67_combout\,
	cout => \digital_klokke|enable_gen_1|teller[20]~68\);

-- Location: FF_X110_Y13_N15
\digital_klokke|enable_gen_1|teller[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[20]~67_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(20));

-- Location: LCCOMB_X110_Y13_N16
\digital_klokke|enable_gen_1|teller[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[21]~69_combout\ = (\digital_klokke|enable_gen_1|teller\(21) & (!\digital_klokke|enable_gen_1|teller[20]~68\)) # (!\digital_klokke|enable_gen_1|teller\(21) & ((\digital_klokke|enable_gen_1|teller[20]~68\) # (GND)))
-- \digital_klokke|enable_gen_1|teller[21]~70\ = CARRY((!\digital_klokke|enable_gen_1|teller[20]~68\) # (!\digital_klokke|enable_gen_1|teller\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(21),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[20]~68\,
	combout => \digital_klokke|enable_gen_1|teller[21]~69_combout\,
	cout => \digital_klokke|enable_gen_1|teller[21]~70\);

-- Location: FF_X110_Y13_N17
\digital_klokke|enable_gen_1|teller[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[21]~69_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(21));

-- Location: LCCOMB_X110_Y13_N18
\digital_klokke|enable_gen_1|teller[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[22]~71_combout\ = (\digital_klokke|enable_gen_1|teller\(22) & (\digital_klokke|enable_gen_1|teller[21]~70\ $ (GND))) # (!\digital_klokke|enable_gen_1|teller\(22) & (!\digital_klokke|enable_gen_1|teller[21]~70\ & VCC))
-- \digital_klokke|enable_gen_1|teller[22]~72\ = CARRY((\digital_klokke|enable_gen_1|teller\(22) & !\digital_klokke|enable_gen_1|teller[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(22),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[21]~70\,
	combout => \digital_klokke|enable_gen_1|teller[22]~71_combout\,
	cout => \digital_klokke|enable_gen_1|teller[22]~72\);

-- Location: FF_X110_Y13_N19
\digital_klokke|enable_gen_1|teller[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[22]~71_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(22));

-- Location: LCCOMB_X111_Y12_N20
\digital_klokke|enable_gen_1|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~14_combout\ = (\SW[17]~input_o\) # ((\digital_klokke|enable_gen_1|teller\(16) & ((\SW[15]~input_o\) # (!\SW[16]~input_o\))) # (!\digital_klokke|enable_gen_1|teller\(16) & ((\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(16),
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \digital_klokke|enable_gen_1|Equal0~14_combout\);

-- Location: LCCOMB_X111_Y12_N4
\digital_klokke|enable_gen_1|Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~16_combout\ = (\digital_klokke|enable_gen_1|Equal0~15_combout\ & (!\digital_klokke|enable_gen_1|teller\(22) & (\digital_klokke|enable_gen_1|teller\(18) $ (\digital_klokke|enable_gen_1|Equal0~14_combout\)))) # 
-- (!\digital_klokke|enable_gen_1|Equal0~15_combout\ & (!\digital_klokke|enable_gen_1|teller\(18) & (\digital_klokke|enable_gen_1|teller\(22) & !\digital_klokke|enable_gen_1|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|Equal0~15_combout\,
	datab => \digital_klokke|enable_gen_1|teller\(18),
	datac => \digital_klokke|enable_gen_1|teller\(22),
	datad => \digital_klokke|enable_gen_1|Equal0~14_combout\,
	combout => \digital_klokke|enable_gen_1|Equal0~16_combout\);

-- Location: LCCOMB_X111_Y12_N22
\digital_klokke|enable_gen_1|Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~17_combout\ = (\digital_klokke|enable_gen_1|Equal0~16_combout\ & (\digital_klokke|enable_gen_1|teller\(17) $ (\digital_klokke|enable_gen_1|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|Equal0~16_combout\,
	datac => \digital_klokke|enable_gen_1|teller\(17),
	datad => \digital_klokke|enable_gen_1|Equal0~14_combout\,
	combout => \digital_klokke|enable_gen_1|Equal0~17_combout\);

-- Location: LCCOMB_X111_Y12_N30
\digital_klokke|enable_gen_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Mux0~0_combout\ = (\SW[15]~input_o\ & !\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \digital_klokke|enable_gen_1|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y12_N18
\digital_klokke|enable_gen_1|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~10_combout\ = \digital_klokke|enable_gen_1|teller\(12) $ (((\SW[16]~input_o\) # ((\SW[15]~input_o\ & \SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(12),
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \digital_klokke|enable_gen_1|Equal0~10_combout\);

-- Location: LCCOMB_X111_Y12_N24
\digital_klokke|enable_gen_1|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~11_combout\ = (\digital_klokke|enable_gen_1|Equal0~10_combout\ & (\digital_klokke|enable_gen_1|teller\(11) $ (((\SW[16]~input_o\) # (!\digital_klokke|enable_gen_1|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|Mux0~0_combout\,
	datab => \digital_klokke|enable_gen_1|teller\(11),
	datac => \SW[16]~input_o\,
	datad => \digital_klokke|enable_gen_1|Equal0~10_combout\,
	combout => \digital_klokke|enable_gen_1|Equal0~11_combout\);

-- Location: LCCOMB_X111_Y12_N12
\digital_klokke|enable_gen_1|Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~18_combout\ = (\digital_klokke|enable_gen_1|Equal0~12_combout\ & (\digital_klokke|enable_gen_1|Equal0~13_combout\ & (\digital_klokke|enable_gen_1|Equal0~17_combout\ & \digital_klokke|enable_gen_1|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|Equal0~12_combout\,
	datab => \digital_klokke|enable_gen_1|Equal0~13_combout\,
	datac => \digital_klokke|enable_gen_1|Equal0~17_combout\,
	datad => \digital_klokke|enable_gen_1|Equal0~11_combout\,
	combout => \digital_klokke|enable_gen_1|Equal0~18_combout\);

-- Location: LCCOMB_X110_Y13_N20
\digital_klokke|enable_gen_1|teller[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[23]~73_combout\ = (\digital_klokke|enable_gen_1|teller\(23) & (!\digital_klokke|enable_gen_1|teller[22]~72\)) # (!\digital_klokke|enable_gen_1|teller\(23) & ((\digital_klokke|enable_gen_1|teller[22]~72\) # (GND)))
-- \digital_klokke|enable_gen_1|teller[23]~74\ = CARRY((!\digital_klokke|enable_gen_1|teller[22]~72\) # (!\digital_klokke|enable_gen_1|teller\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|enable_gen_1|teller\(23),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[22]~72\,
	combout => \digital_klokke|enable_gen_1|teller[23]~73_combout\,
	cout => \digital_klokke|enable_gen_1|teller[23]~74\);

-- Location: FF_X110_Y13_N21
\digital_klokke|enable_gen_1|teller[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[23]~73_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(23));

-- Location: LCCOMB_X110_Y13_N22
\digital_klokke|enable_gen_1|teller[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[24]~75_combout\ = (\digital_klokke|enable_gen_1|teller\(24) & (\digital_klokke|enable_gen_1|teller[23]~74\ $ (GND))) # (!\digital_klokke|enable_gen_1|teller\(24) & (!\digital_klokke|enable_gen_1|teller[23]~74\ & VCC))
-- \digital_klokke|enable_gen_1|teller[24]~76\ = CARRY((\digital_klokke|enable_gen_1|teller\(24) & !\digital_klokke|enable_gen_1|teller[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(24),
	datad => VCC,
	cin => \digital_klokke|enable_gen_1|teller[23]~74\,
	combout => \digital_klokke|enable_gen_1|teller[24]~75_combout\,
	cout => \digital_klokke|enable_gen_1|teller[24]~76\);

-- Location: FF_X110_Y13_N23
\digital_klokke|enable_gen_1|teller[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[24]~75_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(24));

-- Location: LCCOMB_X111_Y13_N16
\digital_klokke|enable_gen_1|Equal0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~24_combout\ = (!\digital_klokke|enable_gen_1|teller\(24) & (\SW[15]~input_o\ $ (\digital_klokke|enable_gen_1|teller\(5) $ (!\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \digital_klokke|enable_gen_1|teller\(24),
	datac => \digital_klokke|enable_gen_1|teller\(5),
	datad => \SW[16]~input_o\,
	combout => \digital_klokke|enable_gen_1|Equal0~24_combout\);

-- Location: LCCOMB_X111_Y13_N22
\digital_klokke|enable_gen_1|Equal0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~25_combout\ = (\digital_klokke|enable_gen_1|Equal0~24_combout\ & (\digital_klokke|enable_gen_1|teller\(23) $ (((\SW[17]~input_o\) # (\SW[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \digital_klokke|enable_gen_1|Equal0~24_combout\,
	datac => \digital_klokke|enable_gen_1|teller\(23),
	datad => \SW[16]~input_o\,
	combout => \digital_klokke|enable_gen_1|Equal0~25_combout\);

-- Location: LCCOMB_X111_Y13_N10
\digital_klokke|enable_gen_1|Equal0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~21_combout\ = (\digital_klokke|enable_gen_1|teller\(21) & (!\SW[16]~input_o\ & (!\SW[17]~input_o\ & \digital_klokke|enable_gen_1|teller\(20)))) # (!\digital_klokke|enable_gen_1|teller\(21) & 
-- (!\digital_klokke|enable_gen_1|teller\(20) & ((\SW[16]~input_o\) # (\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(21),
	datab => \SW[16]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \digital_klokke|enable_gen_1|teller\(20),
	combout => \digital_klokke|enable_gen_1|Equal0~21_combout\);

-- Location: LCCOMB_X111_Y13_N24
\digital_klokke|enable_gen_1|Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~20_combout\ = (\SW[17]~input_o\ & (!\digital_klokke|enable_gen_1|teller\(15) & (\SW[15]~input_o\ $ (!\digital_klokke|enable_gen_1|teller\(2))))) # (!\SW[17]~input_o\ & (((!\digital_klokke|enable_gen_1|teller\(2) & 
-- \digital_klokke|enable_gen_1|teller\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \digital_klokke|enable_gen_1|teller\(2),
	datac => \SW[17]~input_o\,
	datad => \digital_klokke|enable_gen_1|teller\(15),
	combout => \digital_klokke|enable_gen_1|Equal0~20_combout\);

-- Location: LCCOMB_X110_Y13_N24
\digital_klokke|enable_gen_1|teller[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|teller[25]~77_combout\ = \digital_klokke|enable_gen_1|teller[24]~76\ $ (\digital_klokke|enable_gen_1|teller\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \digital_klokke|enable_gen_1|teller\(25),
	cin => \digital_klokke|enable_gen_1|teller[24]~76\,
	combout => \digital_klokke|enable_gen_1|teller[25]~77_combout\);

-- Location: FF_X110_Y13_N25
\digital_klokke|enable_gen_1|teller[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|teller[25]~77_combout\,
	sclr => \digital_klokke|enable_gen_1|teller[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|teller\(25));

-- Location: LCCOMB_X111_Y13_N8
\digital_klokke|enable_gen_1|Equal0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~22_combout\ = \digital_klokke|enable_gen_1|teller\(25) $ (((!\SW[17]~input_o\ & (!\SW[16]~input_o\ & !\SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \digital_klokke|enable_gen_1|teller\(25),
	combout => \digital_klokke|enable_gen_1|Equal0~22_combout\);

-- Location: LCCOMB_X111_Y13_N18
\digital_klokke|enable_gen_1|Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~19_combout\ = (\digital_klokke|enable_gen_1|teller\(19) & (!\SW[16]~input_o\ & (!\SW[17]~input_o\ & !\digital_klokke|enable_gen_1|teller\(8)))) # (!\digital_klokke|enable_gen_1|teller\(19) & ((\SW[16]~input_o\ & 
-- (\SW[17]~input_o\ $ (\digital_klokke|enable_gen_1|teller\(8)))) # (!\SW[16]~input_o\ & (\SW[17]~input_o\ & \digital_klokke|enable_gen_1|teller\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(19),
	datab => \SW[16]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \digital_klokke|enable_gen_1|teller\(8),
	combout => \digital_klokke|enable_gen_1|Equal0~19_combout\);

-- Location: LCCOMB_X111_Y13_N14
\digital_klokke|enable_gen_1|Equal0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~23_combout\ = (\digital_klokke|enable_gen_1|Equal0~21_combout\ & (\digital_klokke|enable_gen_1|Equal0~20_combout\ & (!\digital_klokke|enable_gen_1|Equal0~22_combout\ & \digital_klokke|enable_gen_1|Equal0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|Equal0~21_combout\,
	datab => \digital_klokke|enable_gen_1|Equal0~20_combout\,
	datac => \digital_klokke|enable_gen_1|Equal0~22_combout\,
	datad => \digital_klokke|enable_gen_1|Equal0~19_combout\,
	combout => \digital_klokke|enable_gen_1|Equal0~23_combout\);

-- Location: LCCOMB_X111_Y13_N6
\digital_klokke|enable_gen_1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~5_combout\ = \digital_klokke|enable_gen_1|teller\(7) $ (((\SW[16]~input_o\) # ((\SW[15]~input_o\ & !\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \digital_klokke|enable_gen_1|teller\(7),
	datac => \SW[17]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \digital_klokke|enable_gen_1|Equal0~5_combout\);

-- Location: LCCOMB_X111_Y13_N12
\digital_klokke|enable_gen_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~2_combout\ = \digital_klokke|enable_gen_1|teller\(3) $ (((!\SW[15]~input_o\ & (!\SW[16]~input_o\ & \SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \digital_klokke|enable_gen_1|teller\(3),
	combout => \digital_klokke|enable_gen_1|Equal0~2_combout\);

-- Location: LCCOMB_X111_Y13_N2
\digital_klokke|enable_gen_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~1_combout\ = \digital_klokke|enable_gen_1|teller\(1) $ (((!\SW[15]~input_o\ & (\SW[16]~input_o\ & \SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \digital_klokke|enable_gen_1|teller\(1),
	combout => \digital_klokke|enable_gen_1|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y13_N30
\digital_klokke|enable_gen_1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~3_combout\ = \digital_klokke|enable_gen_1|teller\(4) $ (((\SW[15]~input_o\ & (\SW[16]~input_o\ $ (\SW[17]~input_o\))) # (!\SW[15]~input_o\ & (\SW[16]~input_o\ & \SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \digital_klokke|enable_gen_1|teller\(4),
	combout => \digital_klokke|enable_gen_1|Equal0~3_combout\);

-- Location: LCCOMB_X111_Y13_N28
\digital_klokke|enable_gen_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~0_combout\ = \digital_klokke|enable_gen_1|teller\(0) $ (((\SW[17]~input_o\ & (\SW[16]~input_o\ & \SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \digital_klokke|enable_gen_1|teller\(0),
	combout => \digital_klokke|enable_gen_1|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y13_N0
\digital_klokke|enable_gen_1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~4_combout\ = (!\digital_klokke|enable_gen_1|Equal0~2_combout\ & (!\digital_klokke|enable_gen_1|Equal0~1_combout\ & (!\digital_klokke|enable_gen_1|Equal0~3_combout\ & !\digital_klokke|enable_gen_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|Equal0~2_combout\,
	datab => \digital_klokke|enable_gen_1|Equal0~1_combout\,
	datac => \digital_klokke|enable_gen_1|Equal0~3_combout\,
	datad => \digital_klokke|enable_gen_1|Equal0~0_combout\,
	combout => \digital_klokke|enable_gen_1|Equal0~4_combout\);

-- Location: LCCOMB_X111_Y13_N4
\digital_klokke|enable_gen_1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~8_combout\ = \digital_klokke|enable_gen_1|teller\(6) $ (((\SW[15]~input_o\ & (\SW[17]~input_o\ $ (\SW[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \digital_klokke|enable_gen_1|teller\(6),
	datac => \SW[17]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \digital_klokke|enable_gen_1|Equal0~8_combout\);

-- Location: LCCOMB_X111_Y12_N28
\digital_klokke|enable_gen_1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~6_combout\ = \digital_klokke|enable_gen_1|teller\(9) $ (((\SW[15]~input_o\ & ((\SW[17]~input_o\) # (!\SW[16]~input_o\))) # (!\SW[15]~input_o\ & ((\SW[16]~input_o\) # (!\SW[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|teller\(9),
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \digital_klokke|enable_gen_1|Equal0~6_combout\);

-- Location: LCCOMB_X111_Y12_N0
\digital_klokke|enable_gen_1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~7_combout\ = (\digital_klokke|enable_gen_1|Equal0~6_combout\ & (\digital_klokke|enable_gen_1|teller\(10) $ (((\SW[16]~input_o\) # (!\digital_klokke|enable_gen_1|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|Mux0~0_combout\,
	datab => \digital_klokke|enable_gen_1|teller\(10),
	datac => \SW[16]~input_o\,
	datad => \digital_klokke|enable_gen_1|Equal0~6_combout\,
	combout => \digital_klokke|enable_gen_1|Equal0~7_combout\);

-- Location: LCCOMB_X111_Y13_N26
\digital_klokke|enable_gen_1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~9_combout\ = (\digital_klokke|enable_gen_1|Equal0~5_combout\ & (\digital_klokke|enable_gen_1|Equal0~4_combout\ & (!\digital_klokke|enable_gen_1|Equal0~8_combout\ & \digital_klokke|enable_gen_1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|Equal0~5_combout\,
	datab => \digital_klokke|enable_gen_1|Equal0~4_combout\,
	datac => \digital_klokke|enable_gen_1|Equal0~8_combout\,
	datad => \digital_klokke|enable_gen_1|Equal0~7_combout\,
	combout => \digital_klokke|enable_gen_1|Equal0~9_combout\);

-- Location: LCCOMB_X110_Y13_N30
\digital_klokke|enable_gen_1|Equal0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|enable_gen_1|Equal0~26_combout\ = (\digital_klokke|enable_gen_1|Equal0~18_combout\ & (\digital_klokke|enable_gen_1|Equal0~25_combout\ & (\digital_klokke|enable_gen_1|Equal0~23_combout\ & \digital_klokke|enable_gen_1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|enable_gen_1|Equal0~18_combout\,
	datab => \digital_klokke|enable_gen_1|Equal0~25_combout\,
	datac => \digital_klokke|enable_gen_1|Equal0~23_combout\,
	datad => \digital_klokke|enable_gen_1|Equal0~9_combout\,
	combout => \digital_klokke|enable_gen_1|Equal0~26_combout\);

-- Location: FF_X110_Y13_N31
\digital_klokke|enable_gen_1|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|enable_gen_1|Equal0~26_combout\,
	ena => \reset_synkroniseres_2|reset_sync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|enable_gen_1|enable~q\);

-- Location: LCCOMB_X92_Y19_N0
\digital_klokke|tid:s[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[30]~2_combout\ = ((\running~q\ & \digital_klokke|enable_gen_1|enable~q\)) # (!\reset_synkroniseres_2|reset_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \running~q\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|enable_gen_1|enable~q\,
	combout => \digital_klokke|tid:s[30]~2_combout\);

-- Location: FF_X91_Y20_N3
\digital_klokke|sekund_std[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|sekund_std[1]~8_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|sekund_std\(1));

-- Location: LCCOMB_X91_Y20_N4
\digital_klokke|sekund_std[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|sekund_std[2]~10_combout\ = (\digital_klokke|sekund_std\(2) & (\digital_klokke|sekund_std[1]~9\ $ (GND))) # (!\digital_klokke|sekund_std\(2) & (!\digital_klokke|sekund_std[1]~9\ & VCC))
-- \digital_klokke|sekund_std[2]~11\ = CARRY((\digital_klokke|sekund_std\(2) & !\digital_klokke|sekund_std[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|sekund_std\(2),
	datad => VCC,
	cin => \digital_klokke|sekund_std[1]~9\,
	combout => \digital_klokke|sekund_std[2]~10_combout\,
	cout => \digital_klokke|sekund_std[2]~11\);

-- Location: FF_X91_Y20_N5
\digital_klokke|sekund_std[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|sekund_std[2]~10_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|sekund_std\(2));

-- Location: LCCOMB_X91_Y20_N6
\digital_klokke|sekund_std[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|sekund_std[3]~12_combout\ = (\digital_klokke|sekund_std\(3) & (!\digital_klokke|sekund_std[2]~11\)) # (!\digital_klokke|sekund_std\(3) & ((\digital_klokke|sekund_std[2]~11\) # (GND)))
-- \digital_klokke|sekund_std[3]~13\ = CARRY((!\digital_klokke|sekund_std[2]~11\) # (!\digital_klokke|sekund_std\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|sekund_std\(3),
	datad => VCC,
	cin => \digital_klokke|sekund_std[2]~11\,
	combout => \digital_klokke|sekund_std[3]~12_combout\,
	cout => \digital_klokke|sekund_std[3]~13\);

-- Location: FF_X90_Y20_N29
\digital_klokke|sekund_std[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \digital_klokke|sekund_std[3]~12_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	sload => VCC,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|sekund_std\(3));

-- Location: LCCOMB_X91_Y20_N8
\digital_klokke|sekund_std[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|sekund_std[4]~14_combout\ = (\digital_klokke|sekund_std\(4) & (\digital_klokke|sekund_std[3]~13\ $ (GND))) # (!\digital_klokke|sekund_std\(4) & (!\digital_klokke|sekund_std[3]~13\ & VCC))
-- \digital_klokke|sekund_std[4]~15\ = CARRY((\digital_klokke|sekund_std\(4) & !\digital_klokke|sekund_std[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|sekund_std\(4),
	datad => VCC,
	cin => \digital_klokke|sekund_std[3]~13\,
	combout => \digital_klokke|sekund_std[4]~14_combout\,
	cout => \digital_klokke|sekund_std[4]~15\);

-- Location: FF_X90_Y20_N11
\digital_klokke|sekund_std[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \digital_klokke|sekund_std[4]~14_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	sload => VCC,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|sekund_std\(4));

-- Location: LCCOMB_X91_Y20_N10
\digital_klokke|sekund_std[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|sekund_std[5]~16_combout\ = (\digital_klokke|sekund_std\(5) & (!\digital_klokke|sekund_std[4]~15\)) # (!\digital_klokke|sekund_std\(5) & ((\digital_klokke|sekund_std[4]~15\) # (GND)))
-- \digital_klokke|sekund_std[5]~17\ = CARRY((!\digital_klokke|sekund_std[4]~15\) # (!\digital_klokke|sekund_std\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|sekund_std\(5),
	datad => VCC,
	cin => \digital_klokke|sekund_std[4]~15\,
	combout => \digital_klokke|sekund_std[5]~16_combout\,
	cout => \digital_klokke|sekund_std[5]~17\);

-- Location: FF_X90_Y20_N13
\digital_klokke|sekund_std[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \digital_klokke|sekund_std[5]~16_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	sload => VCC,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|sekund_std\(5));

-- Location: LCCOMB_X91_Y20_N12
\digital_klokke|tid:s[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[6]~1_combout\ = (\digital_klokke|tid:s[6]~q\ & (\digital_klokke|sekund_std[5]~17\ $ (GND))) # (!\digital_klokke|tid:s[6]~q\ & (!\digital_klokke|sekund_std[5]~17\ & VCC))
-- \digital_klokke|tid:s[6]~2\ = CARRY((\digital_klokke|tid:s[6]~q\ & !\digital_klokke|sekund_std[5]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[6]~q\,
	datad => VCC,
	cin => \digital_klokke|sekund_std[5]~17\,
	combout => \digital_klokke|tid:s[6]~1_combout\,
	cout => \digital_klokke|tid:s[6]~2\);

-- Location: FF_X91_Y20_N13
\digital_klokke|tid:s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[6]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[6]~q\);

-- Location: LCCOMB_X91_Y20_N14
\digital_klokke|tid:s[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[7]~1_combout\ = (\digital_klokke|tid:s[7]~q\ & (!\digital_klokke|tid:s[6]~2\)) # (!\digital_klokke|tid:s[7]~q\ & ((\digital_klokke|tid:s[6]~2\) # (GND)))
-- \digital_klokke|tid:s[7]~2\ = CARRY((!\digital_klokke|tid:s[6]~2\) # (!\digital_klokke|tid:s[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[7]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[6]~2\,
	combout => \digital_klokke|tid:s[7]~1_combout\,
	cout => \digital_klokke|tid:s[7]~2\);

-- Location: FF_X91_Y20_N15
\digital_klokke|tid:s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[7]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[7]~q\);

-- Location: LCCOMB_X91_Y20_N16
\digital_klokke|tid:s[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[8]~1_combout\ = (\digital_klokke|tid:s[8]~q\ & (\digital_klokke|tid:s[7]~2\ $ (GND))) # (!\digital_klokke|tid:s[8]~q\ & (!\digital_klokke|tid:s[7]~2\ & VCC))
-- \digital_klokke|tid:s[8]~2\ = CARRY((\digital_klokke|tid:s[8]~q\ & !\digital_klokke|tid:s[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[8]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[7]~2\,
	combout => \digital_klokke|tid:s[8]~1_combout\,
	cout => \digital_klokke|tid:s[8]~2\);

-- Location: FF_X91_Y20_N17
\digital_klokke|tid:s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[8]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[8]~q\);

-- Location: LCCOMB_X91_Y20_N18
\digital_klokke|tid:s[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[9]~1_combout\ = (\digital_klokke|tid:s[9]~q\ & (!\digital_klokke|tid:s[8]~2\)) # (!\digital_klokke|tid:s[9]~q\ & ((\digital_klokke|tid:s[8]~2\) # (GND)))
-- \digital_klokke|tid:s[9]~2\ = CARRY((!\digital_klokke|tid:s[8]~2\) # (!\digital_klokke|tid:s[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[9]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[8]~2\,
	combout => \digital_klokke|tid:s[9]~1_combout\,
	cout => \digital_klokke|tid:s[9]~2\);

-- Location: FF_X91_Y20_N19
\digital_klokke|tid:s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[9]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[9]~q\);

-- Location: LCCOMB_X91_Y20_N20
\digital_klokke|tid:s[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[10]~1_combout\ = (\digital_klokke|tid:s[10]~q\ & (\digital_klokke|tid:s[9]~2\ $ (GND))) # (!\digital_klokke|tid:s[10]~q\ & (!\digital_klokke|tid:s[9]~2\ & VCC))
-- \digital_klokke|tid:s[10]~2\ = CARRY((\digital_klokke|tid:s[10]~q\ & !\digital_klokke|tid:s[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[10]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[9]~2\,
	combout => \digital_klokke|tid:s[10]~1_combout\,
	cout => \digital_klokke|tid:s[10]~2\);

-- Location: FF_X91_Y20_N21
\digital_klokke|tid:s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[10]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[10]~q\);

-- Location: LCCOMB_X91_Y20_N22
\digital_klokke|tid:s[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[11]~1_combout\ = (\digital_klokke|tid:s[11]~q\ & (!\digital_klokke|tid:s[10]~2\)) # (!\digital_klokke|tid:s[11]~q\ & ((\digital_klokke|tid:s[10]~2\) # (GND)))
-- \digital_klokke|tid:s[11]~2\ = CARRY((!\digital_klokke|tid:s[10]~2\) # (!\digital_klokke|tid:s[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[11]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[10]~2\,
	combout => \digital_klokke|tid:s[11]~1_combout\,
	cout => \digital_klokke|tid:s[11]~2\);

-- Location: FF_X91_Y20_N23
\digital_klokke|tid:s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[11]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[11]~q\);

-- Location: LCCOMB_X91_Y20_N24
\digital_klokke|tid:s[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[12]~1_combout\ = (\digital_klokke|tid:s[12]~q\ & (\digital_klokke|tid:s[11]~2\ $ (GND))) # (!\digital_klokke|tid:s[12]~q\ & (!\digital_klokke|tid:s[11]~2\ & VCC))
-- \digital_klokke|tid:s[12]~2\ = CARRY((\digital_klokke|tid:s[12]~q\ & !\digital_klokke|tid:s[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[12]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[11]~2\,
	combout => \digital_klokke|tid:s[12]~1_combout\,
	cout => \digital_klokke|tid:s[12]~2\);

-- Location: FF_X91_Y20_N25
\digital_klokke|tid:s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[12]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[12]~q\);

-- Location: LCCOMB_X91_Y20_N26
\digital_klokke|tid:s[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[13]~1_combout\ = (\digital_klokke|tid:s[13]~q\ & (!\digital_klokke|tid:s[12]~2\)) # (!\digital_klokke|tid:s[13]~q\ & ((\digital_klokke|tid:s[12]~2\) # (GND)))
-- \digital_klokke|tid:s[13]~2\ = CARRY((!\digital_klokke|tid:s[12]~2\) # (!\digital_klokke|tid:s[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[13]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[12]~2\,
	combout => \digital_klokke|tid:s[13]~1_combout\,
	cout => \digital_klokke|tid:s[13]~2\);

-- Location: FF_X91_Y20_N27
\digital_klokke|tid:s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[13]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[13]~q\);

-- Location: LCCOMB_X91_Y20_N28
\digital_klokke|tid:s[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[14]~1_combout\ = (\digital_klokke|tid:s[14]~q\ & (\digital_klokke|tid:s[13]~2\ $ (GND))) # (!\digital_klokke|tid:s[14]~q\ & (!\digital_klokke|tid:s[13]~2\ & VCC))
-- \digital_klokke|tid:s[14]~2\ = CARRY((\digital_klokke|tid:s[14]~q\ & !\digital_klokke|tid:s[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[14]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[13]~2\,
	combout => \digital_klokke|tid:s[14]~1_combout\,
	cout => \digital_klokke|tid:s[14]~2\);

-- Location: FF_X91_Y20_N29
\digital_klokke|tid:s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[14]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[14]~q\);

-- Location: LCCOMB_X91_Y20_N30
\digital_klokke|tid:s[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[15]~1_combout\ = (\digital_klokke|tid:s[15]~q\ & (!\digital_klokke|tid:s[14]~2\)) # (!\digital_klokke|tid:s[15]~q\ & ((\digital_klokke|tid:s[14]~2\) # (GND)))
-- \digital_klokke|tid:s[15]~2\ = CARRY((!\digital_klokke|tid:s[14]~2\) # (!\digital_klokke|tid:s[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[15]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[14]~2\,
	combout => \digital_klokke|tid:s[15]~1_combout\,
	cout => \digital_klokke|tid:s[15]~2\);

-- Location: FF_X91_Y20_N31
\digital_klokke|tid:s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[15]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[15]~q\);

-- Location: LCCOMB_X91_Y19_N0
\digital_klokke|tid:s[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[16]~1_combout\ = (\digital_klokke|tid:s[16]~q\ & (\digital_klokke|tid:s[15]~2\ $ (GND))) # (!\digital_klokke|tid:s[16]~q\ & (!\digital_klokke|tid:s[15]~2\ & VCC))
-- \digital_klokke|tid:s[16]~2\ = CARRY((\digital_klokke|tid:s[16]~q\ & !\digital_klokke|tid:s[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[16]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[15]~2\,
	combout => \digital_klokke|tid:s[16]~1_combout\,
	cout => \digital_klokke|tid:s[16]~2\);

-- Location: FF_X91_Y19_N1
\digital_klokke|tid:s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[16]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[16]~q\);

-- Location: LCCOMB_X91_Y19_N2
\digital_klokke|tid:s[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[17]~1_combout\ = (\digital_klokke|tid:s[17]~q\ & (!\digital_klokke|tid:s[16]~2\)) # (!\digital_klokke|tid:s[17]~q\ & ((\digital_klokke|tid:s[16]~2\) # (GND)))
-- \digital_klokke|tid:s[17]~2\ = CARRY((!\digital_klokke|tid:s[16]~2\) # (!\digital_klokke|tid:s[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[17]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[16]~2\,
	combout => \digital_klokke|tid:s[17]~1_combout\,
	cout => \digital_klokke|tid:s[17]~2\);

-- Location: FF_X91_Y19_N3
\digital_klokke|tid:s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[17]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[17]~q\);

-- Location: LCCOMB_X91_Y19_N4
\digital_klokke|tid:s[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[18]~1_combout\ = (\digital_klokke|tid:s[18]~q\ & (\digital_klokke|tid:s[17]~2\ $ (GND))) # (!\digital_klokke|tid:s[18]~q\ & (!\digital_klokke|tid:s[17]~2\ & VCC))
-- \digital_klokke|tid:s[18]~2\ = CARRY((\digital_klokke|tid:s[18]~q\ & !\digital_klokke|tid:s[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[18]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[17]~2\,
	combout => \digital_klokke|tid:s[18]~1_combout\,
	cout => \digital_klokke|tid:s[18]~2\);

-- Location: FF_X91_Y19_N5
\digital_klokke|tid:s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[18]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[18]~q\);

-- Location: LCCOMB_X91_Y19_N6
\digital_klokke|tid:s[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[19]~1_combout\ = (\digital_klokke|tid:s[19]~q\ & (!\digital_klokke|tid:s[18]~2\)) # (!\digital_klokke|tid:s[19]~q\ & ((\digital_klokke|tid:s[18]~2\) # (GND)))
-- \digital_klokke|tid:s[19]~2\ = CARRY((!\digital_klokke|tid:s[18]~2\) # (!\digital_klokke|tid:s[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[19]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[18]~2\,
	combout => \digital_klokke|tid:s[19]~1_combout\,
	cout => \digital_klokke|tid:s[19]~2\);

-- Location: FF_X91_Y19_N7
\digital_klokke|tid:s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[19]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[19]~q\);

-- Location: LCCOMB_X91_Y19_N8
\digital_klokke|tid:s[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[20]~1_combout\ = (\digital_klokke|tid:s[20]~q\ & (\digital_klokke|tid:s[19]~2\ $ (GND))) # (!\digital_klokke|tid:s[20]~q\ & (!\digital_klokke|tid:s[19]~2\ & VCC))
-- \digital_klokke|tid:s[20]~2\ = CARRY((\digital_klokke|tid:s[20]~q\ & !\digital_klokke|tid:s[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[20]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[19]~2\,
	combout => \digital_klokke|tid:s[20]~1_combout\,
	cout => \digital_klokke|tid:s[20]~2\);

-- Location: FF_X91_Y19_N9
\digital_klokke|tid:s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[20]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[20]~q\);

-- Location: LCCOMB_X91_Y19_N10
\digital_klokke|tid:s[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[21]~1_combout\ = (\digital_klokke|tid:s[21]~q\ & (!\digital_klokke|tid:s[20]~2\)) # (!\digital_klokke|tid:s[21]~q\ & ((\digital_klokke|tid:s[20]~2\) # (GND)))
-- \digital_klokke|tid:s[21]~2\ = CARRY((!\digital_klokke|tid:s[20]~2\) # (!\digital_klokke|tid:s[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[21]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[20]~2\,
	combout => \digital_klokke|tid:s[21]~1_combout\,
	cout => \digital_klokke|tid:s[21]~2\);

-- Location: FF_X91_Y19_N11
\digital_klokke|tid:s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[21]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[21]~q\);

-- Location: LCCOMB_X91_Y19_N12
\digital_klokke|tid:s[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[22]~1_combout\ = (\digital_klokke|tid:s[22]~q\ & (\digital_klokke|tid:s[21]~2\ $ (GND))) # (!\digital_klokke|tid:s[22]~q\ & (!\digital_klokke|tid:s[21]~2\ & VCC))
-- \digital_klokke|tid:s[22]~2\ = CARRY((\digital_klokke|tid:s[22]~q\ & !\digital_klokke|tid:s[21]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[22]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[21]~2\,
	combout => \digital_klokke|tid:s[22]~1_combout\,
	cout => \digital_klokke|tid:s[22]~2\);

-- Location: FF_X91_Y19_N13
\digital_klokke|tid:s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[22]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[22]~q\);

-- Location: LCCOMB_X91_Y19_N14
\digital_klokke|tid:s[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[23]~1_combout\ = (\digital_klokke|tid:s[23]~q\ & (!\digital_klokke|tid:s[22]~2\)) # (!\digital_klokke|tid:s[23]~q\ & ((\digital_klokke|tid:s[22]~2\) # (GND)))
-- \digital_klokke|tid:s[23]~2\ = CARRY((!\digital_klokke|tid:s[22]~2\) # (!\digital_klokke|tid:s[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[23]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[22]~2\,
	combout => \digital_klokke|tid:s[23]~1_combout\,
	cout => \digital_klokke|tid:s[23]~2\);

-- Location: FF_X91_Y19_N15
\digital_klokke|tid:s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[23]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[23]~q\);

-- Location: LCCOMB_X91_Y19_N16
\digital_klokke|tid:s[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[24]~1_combout\ = (\digital_klokke|tid:s[24]~q\ & (\digital_klokke|tid:s[23]~2\ $ (GND))) # (!\digital_klokke|tid:s[24]~q\ & (!\digital_klokke|tid:s[23]~2\ & VCC))
-- \digital_klokke|tid:s[24]~2\ = CARRY((\digital_klokke|tid:s[24]~q\ & !\digital_klokke|tid:s[23]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[24]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[23]~2\,
	combout => \digital_klokke|tid:s[24]~1_combout\,
	cout => \digital_klokke|tid:s[24]~2\);

-- Location: FF_X91_Y19_N17
\digital_klokke|tid:s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[24]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[24]~q\);

-- Location: LCCOMB_X91_Y19_N18
\digital_klokke|tid:s[25]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[25]~1_combout\ = (\digital_klokke|tid:s[25]~q\ & (!\digital_klokke|tid:s[24]~2\)) # (!\digital_klokke|tid:s[25]~q\ & ((\digital_klokke|tid:s[24]~2\) # (GND)))
-- \digital_klokke|tid:s[25]~2\ = CARRY((!\digital_klokke|tid:s[24]~2\) # (!\digital_klokke|tid:s[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[25]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[24]~2\,
	combout => \digital_klokke|tid:s[25]~1_combout\,
	cout => \digital_klokke|tid:s[25]~2\);

-- Location: FF_X91_Y19_N19
\digital_klokke|tid:s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[25]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[25]~q\);

-- Location: LCCOMB_X91_Y19_N20
\digital_klokke|tid:s[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[26]~1_combout\ = (\digital_klokke|tid:s[26]~q\ & (\digital_klokke|tid:s[25]~2\ $ (GND))) # (!\digital_klokke|tid:s[26]~q\ & (!\digital_klokke|tid:s[25]~2\ & VCC))
-- \digital_klokke|tid:s[26]~2\ = CARRY((\digital_klokke|tid:s[26]~q\ & !\digital_klokke|tid:s[25]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[26]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[25]~2\,
	combout => \digital_klokke|tid:s[26]~1_combout\,
	cout => \digital_klokke|tid:s[26]~2\);

-- Location: FF_X91_Y19_N21
\digital_klokke|tid:s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[26]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[26]~q\);

-- Location: LCCOMB_X91_Y19_N22
\digital_klokke|tid:s[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[27]~1_combout\ = (\digital_klokke|tid:s[27]~q\ & (!\digital_klokke|tid:s[26]~2\)) # (!\digital_klokke|tid:s[27]~q\ & ((\digital_klokke|tid:s[26]~2\) # (GND)))
-- \digital_klokke|tid:s[27]~2\ = CARRY((!\digital_klokke|tid:s[26]~2\) # (!\digital_klokke|tid:s[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[27]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[26]~2\,
	combout => \digital_klokke|tid:s[27]~1_combout\,
	cout => \digital_klokke|tid:s[27]~2\);

-- Location: FF_X91_Y19_N23
\digital_klokke|tid:s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[27]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[27]~q\);

-- Location: LCCOMB_X91_Y19_N24
\digital_klokke|tid:s[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[28]~1_combout\ = (\digital_klokke|tid:s[28]~q\ & (\digital_klokke|tid:s[27]~2\ $ (GND))) # (!\digital_klokke|tid:s[28]~q\ & (!\digital_klokke|tid:s[27]~2\ & VCC))
-- \digital_klokke|tid:s[28]~2\ = CARRY((\digital_klokke|tid:s[28]~q\ & !\digital_klokke|tid:s[27]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[28]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[27]~2\,
	combout => \digital_klokke|tid:s[28]~1_combout\,
	cout => \digital_klokke|tid:s[28]~2\);

-- Location: FF_X91_Y19_N25
\digital_klokke|tid:s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[28]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[28]~q\);

-- Location: LCCOMB_X91_Y19_N26
\digital_klokke|tid:s[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[29]~1_combout\ = (\digital_klokke|tid:s[29]~q\ & (!\digital_klokke|tid:s[28]~2\)) # (!\digital_klokke|tid:s[29]~q\ & ((\digital_klokke|tid:s[28]~2\) # (GND)))
-- \digital_klokke|tid:s[29]~2\ = CARRY((!\digital_klokke|tid:s[28]~2\) # (!\digital_klokke|tid:s[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[29]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[28]~2\,
	combout => \digital_klokke|tid:s[29]~1_combout\,
	cout => \digital_klokke|tid:s[29]~2\);

-- Location: FF_X91_Y19_N27
\digital_klokke|tid:s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[29]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[29]~q\);

-- Location: LCCOMB_X92_Y19_N12
\digital_klokke|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|LessThan0~8_combout\ = (!\digital_klokke|tid:s[28]~q\ & (!\digital_klokke|tid:s[27]~q\ & (!\digital_klokke|tid:s[29]~q\ & !\digital_klokke|tid:s[26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[28]~q\,
	datab => \digital_klokke|tid:s[27]~q\,
	datac => \digital_klokke|tid:s[29]~q\,
	datad => \digital_klokke|tid:s[26]~q\,
	combout => \digital_klokke|LessThan0~8_combout\);

-- Location: LCCOMB_X92_Y19_N20
\digital_klokke|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|LessThan0~6_combout\ = (!\digital_klokke|tid:s[21]~q\ & (!\digital_klokke|tid:s[19]~q\ & (!\digital_klokke|tid:s[18]~q\ & !\digital_klokke|tid:s[20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[21]~q\,
	datab => \digital_klokke|tid:s[19]~q\,
	datac => \digital_klokke|tid:s[18]~q\,
	datad => \digital_klokke|tid:s[20]~q\,
	combout => \digital_klokke|LessThan0~6_combout\);

-- Location: LCCOMB_X92_Y19_N26
\digital_klokke|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|LessThan0~7_combout\ = (!\digital_klokke|tid:s[23]~q\ & (!\digital_klokke|tid:s[25]~q\ & (!\digital_klokke|tid:s[24]~q\ & !\digital_klokke|tid:s[22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[23]~q\,
	datab => \digital_klokke|tid:s[25]~q\,
	datac => \digital_klokke|tid:s[24]~q\,
	datad => \digital_klokke|tid:s[22]~q\,
	combout => \digital_klokke|LessThan0~7_combout\);

-- Location: LCCOMB_X92_Y19_N18
\digital_klokke|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|LessThan0~5_combout\ = (!\digital_klokke|tid:s[14]~q\ & (!\digital_klokke|tid:s[15]~q\ & (!\digital_klokke|tid:s[16]~q\ & !\digital_klokke|tid:s[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[14]~q\,
	datab => \digital_klokke|tid:s[15]~q\,
	datac => \digital_klokke|tid:s[16]~q\,
	datad => \digital_klokke|tid:s[17]~q\,
	combout => \digital_klokke|LessThan0~5_combout\);

-- Location: LCCOMB_X92_Y19_N6
\digital_klokke|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|LessThan0~9_combout\ = (\digital_klokke|LessThan0~8_combout\ & (\digital_klokke|LessThan0~6_combout\ & (\digital_klokke|LessThan0~7_combout\ & \digital_klokke|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|LessThan0~8_combout\,
	datab => \digital_klokke|LessThan0~6_combout\,
	datac => \digital_klokke|LessThan0~7_combout\,
	datad => \digital_klokke|LessThan0~5_combout\,
	combout => \digital_klokke|LessThan0~9_combout\);

-- Location: LCCOMB_X91_Y19_N28
\digital_klokke|tid:s[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[30]~4_combout\ = (\digital_klokke|tid:s[30]~q\ & (\digital_klokke|tid:s[29]~2\ $ (GND))) # (!\digital_klokke|tid:s[30]~q\ & (!\digital_klokke|tid:s[29]~2\ & VCC))
-- \digital_klokke|tid:s[30]~5\ = CARRY((\digital_klokke|tid:s[30]~q\ & !\digital_klokke|tid:s[29]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:s[30]~q\,
	datad => VCC,
	cin => \digital_klokke|tid:s[29]~2\,
	combout => \digital_klokke|tid:s[30]~4_combout\,
	cout => \digital_klokke|tid:s[30]~5\);

-- Location: FF_X91_Y19_N29
\digital_klokke|tid:s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[30]~4_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[30]~q\);

-- Location: LCCOMB_X90_Y20_N12
\digital_klokke|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|LessThan0~2_combout\ = ((!\digital_klokke|sekund_std\(2) & ((!\digital_klokke|sekund_std\(1)) # (!\digital_klokke|sekund_std\(0))))) # (!\digital_klokke|sekund_std\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|sekund_std\(2),
	datab => \digital_klokke|sekund_std\(0),
	datac => \digital_klokke|sekund_std\(5),
	datad => \digital_klokke|sekund_std\(1),
	combout => \digital_klokke|LessThan0~2_combout\);

-- Location: LCCOMB_X92_Y20_N28
\digital_klokke|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|LessThan0~0_combout\ = (!\digital_klokke|tid:s[7]~q\ & (!\digital_klokke|tid:s[9]~q\ & (!\digital_klokke|tid:s[8]~q\ & !\digital_klokke|tid:s[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[7]~q\,
	datab => \digital_klokke|tid:s[9]~q\,
	datac => \digital_klokke|tid:s[8]~q\,
	datad => \digital_klokke|tid:s[6]~q\,
	combout => \digital_klokke|LessThan0~0_combout\);

-- Location: LCCOMB_X92_Y20_N30
\digital_klokke|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|LessThan0~1_combout\ = (!\digital_klokke|tid:s[10]~q\ & (!\digital_klokke|tid:s[12]~q\ & (!\digital_klokke|tid:s[13]~q\ & !\digital_klokke|tid:s[11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[10]~q\,
	datab => \digital_klokke|tid:s[12]~q\,
	datac => \digital_klokke|tid:s[13]~q\,
	datad => \digital_klokke|tid:s[11]~q\,
	combout => \digital_klokke|LessThan0~1_combout\);

-- Location: LCCOMB_X90_Y20_N10
\digital_klokke|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|LessThan0~3_combout\ = (!\digital_klokke|sekund_std\(3)) # (!\digital_klokke|sekund_std\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|sekund_std\(4),
	datad => \digital_klokke|sekund_std\(3),
	combout => \digital_klokke|LessThan0~3_combout\);

-- Location: LCCOMB_X92_Y20_N4
\digital_klokke|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|LessThan0~4_combout\ = (\digital_klokke|LessThan0~0_combout\ & (\digital_klokke|LessThan0~1_combout\ & ((\digital_klokke|LessThan0~2_combout\) # (\digital_klokke|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|LessThan0~2_combout\,
	datab => \digital_klokke|LessThan0~0_combout\,
	datac => \digital_klokke|LessThan0~1_combout\,
	datad => \digital_klokke|LessThan0~3_combout\,
	combout => \digital_klokke|LessThan0~4_combout\);

-- Location: LCCOMB_X91_Y19_N30
\digital_klokke|tid:s[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[31]~1_combout\ = \digital_klokke|tid:s[31]~q\ $ (\digital_klokke|tid:s[30]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:s[31]~q\,
	cin => \digital_klokke|tid:s[30]~5\,
	combout => \digital_klokke|tid:s[31]~1_combout\);

-- Location: FF_X91_Y19_N31
\digital_klokke|tid:s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|tid:s[31]~1_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:s[31]~q\);

-- Location: LCCOMB_X92_Y19_N4
\digital_klokke|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|LessThan0~10_combout\ = (\digital_klokke|tid:s[31]~q\) # ((\digital_klokke|LessThan0~9_combout\ & (!\digital_klokke|tid:s[30]~q\ & \digital_klokke|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|LessThan0~9_combout\,
	datab => \digital_klokke|tid:s[30]~q\,
	datac => \digital_klokke|LessThan0~4_combout\,
	datad => \digital_klokke|tid:s[31]~q\,
	combout => \digital_klokke|LessThan0~10_combout\);

-- Location: LCCOMB_X92_Y19_N2
\digital_klokke|tid:s[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[30]~1_combout\ = (!\digital_klokke|LessThan0~10_combout\) # (!\reset_synkroniseres_2|reset_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|LessThan0~10_combout\,
	combout => \digital_klokke|tid:s[30]~1_combout\);

-- Location: FF_X91_Y20_N1
\digital_klokke|sekund_std[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|sekund_std[0]~6_combout\,
	sclr => \digital_klokke|tid:s[30]~1_combout\,
	ena => \digital_klokke|tid:s[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|sekund_std\(0));

-- Location: LCCOMB_X105_Y20_N6
\antall_runder[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \antall_runder[0]~4_combout\ = antall_runder(0) $ (\memory~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => antall_runder(0),
	datad => \memory~32_combout\,
	combout => \antall_runder[0]~4_combout\);

-- Location: FF_X105_Y20_N7
\antall_runder[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \antall_runder[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => antall_runder(0));

-- Location: LCCOMB_X105_Y20_N16
\antall_runder[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \antall_runder[1]~5_combout\ = (antall_runder(0) & (antall_runder(1) $ (VCC))) # (!antall_runder(0) & (antall_runder(1) & VCC))
-- \antall_runder[1]~6\ = CARRY((antall_runder(0) & antall_runder(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => antall_runder(0),
	datab => antall_runder(1),
	datad => VCC,
	combout => \antall_runder[1]~5_combout\,
	cout => \antall_runder[1]~6\);

-- Location: FF_X105_Y20_N17
\antall_runder[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \antall_runder[1]~5_combout\,
	ena => \memory~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => antall_runder(1));

-- Location: LCCOMB_X105_Y20_N18
\antall_runder[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \antall_runder[2]~7_combout\ = (antall_runder(2) & (!\antall_runder[1]~6\)) # (!antall_runder(2) & ((\antall_runder[1]~6\) # (GND)))
-- \antall_runder[2]~8\ = CARRY((!\antall_runder[1]~6\) # (!antall_runder(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => antall_runder(2),
	datad => VCC,
	cin => \antall_runder[1]~6\,
	combout => \antall_runder[2]~7_combout\,
	cout => \antall_runder[2]~8\);

-- Location: FF_X105_Y20_N19
\antall_runder[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \antall_runder[2]~7_combout\,
	ena => \memory~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => antall_runder(2));

-- Location: LCCOMB_X105_Y20_N20
\antall_runder[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \antall_runder[3]~9_combout\ = (antall_runder(3) & (\antall_runder[2]~8\ $ (GND))) # (!antall_runder(3) & (!\antall_runder[2]~8\ & VCC))
-- \antall_runder[3]~10\ = CARRY((antall_runder(3) & !\antall_runder[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => antall_runder(3),
	datad => VCC,
	cin => \antall_runder[2]~8\,
	combout => \antall_runder[3]~9_combout\,
	cout => \antall_runder[3]~10\);

-- Location: FF_X105_Y20_N21
\antall_runder[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \antall_runder[3]~9_combout\,
	ena => \memory~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => antall_runder(3));

-- Location: LCCOMB_X105_Y20_N22
\antall_runder[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \antall_runder[4]~11_combout\ = antall_runder(4) $ (\antall_runder[3]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => antall_runder(4),
	cin => \antall_runder[3]~10\,
	combout => \antall_runder[4]~11_combout\);

-- Location: FF_X105_Y20_N23
\antall_runder[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \antall_runder[4]~11_combout\,
	ena => \memory~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => antall_runder(4));

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

-- Location: LCCOMB_X90_Y20_N16
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \digital_klokke|sekund_std\(3) $ (VCC)
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\digital_klokke|sekund_std\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|sekund_std\(3),
	datad => VCC,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X90_Y20_N18
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\digital_klokke|sekund_std\(4) & (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # 
-- (!\digital_klokke|sekund_std\(4) & (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\digital_klokke|sekund_std\(4) & !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|sekund_std\(4),
	datad => VCC,
	cin => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X90_Y20_N20
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\digital_klokke|sekund_std\(5) & (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # 
-- (!\digital_klokke|sekund_std\(5) & (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\digital_klokke|sekund_std\(5) & !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|sekund_std\(5),
	datad => VCC,
	cin => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X90_Y20_N22
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X90_Y20_N24
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X89_Y20_N30
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[23]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[23]~17_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[23]~17_combout\);

-- Location: LCCOMB_X89_Y20_N8
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[23]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[23]~16_combout\ = (\digital_klokke|sekund_std\(5) & \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|sekund_std\(5),
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[23]~16_combout\);

-- Location: LCCOMB_X90_Y20_N6
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~19_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~19_combout\);

-- Location: LCCOMB_X90_Y20_N28
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~18_combout\ = (\digital_klokke|sekund_std\(4) & \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|sekund_std\(4),
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~18_combout\);

-- Location: LCCOMB_X89_Y20_N22
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~21_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~21_combout\);

-- Location: LCCOMB_X89_Y20_N20
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~20_combout\ = (\digital_klokke|sekund_std\(3) & \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|sekund_std\(3),
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~20_combout\);

-- Location: LCCOMB_X89_Y20_N24
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[20]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[20]~23_combout\ = (\digital_klokke|sekund_std\(2) & !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|sekund_std\(2),
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[20]~23_combout\);

-- Location: LCCOMB_X89_Y20_N0
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[20]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[20]~22_combout\ = (\digital_klokke|sekund_std\(2) & \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|sekund_std\(2),
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[20]~22_combout\);

-- Location: LCCOMB_X89_Y20_N10
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[20]~23_combout\) # 
-- (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[20]~22_combout\)))
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[20]~23_combout\) # 
-- (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[20]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[20]~23_combout\,
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[20]~22_combout\,
	datad => VCC,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X89_Y20_N12
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~21_combout\) # (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~20_combout\)))) # 
-- (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~21_combout\ & 
-- (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~20_combout\)))
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~21_combout\ & 
-- (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~20_combout\ & !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~21_combout\,
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[21]~20_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X89_Y20_N14
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~19_combout\) # (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~18_combout\)))) # 
-- (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~19_combout\) # 
-- (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~18_combout\)))))
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~19_combout\) # (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~19_combout\,
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[22]~18_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X89_Y20_N16
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[23]~17_combout\ & 
-- (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[23]~16_combout\ & !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[23]~16_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X89_Y20_N18
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X89_Y20_N4
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[28]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\digital_klokke|sekund_std\(4))) # (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|sekund_std\(4),
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[28]~29_combout\);

-- Location: LCCOMB_X89_Y20_N26
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[28]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[28]~24_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[28]~24_combout\);

-- Location: LCCOMB_X89_Y20_N2
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[27]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[27]~30_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\digital_klokke|sekund_std\(3)))) # (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \digital_klokke|sekund_std\(3),
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[27]~30_combout\);

-- Location: LCCOMB_X89_Y20_N28
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[27]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[27]~25_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[27]~25_combout\);

-- Location: LCCOMB_X89_Y20_N6
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[26]~26_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[26]~26_combout\);

-- Location: LCCOMB_X88_Y20_N4
\digital_klokke|bin2bcd_0|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Add1~0_combout\ = (\digital_klokke|sekund_std\(2) & \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|sekund_std\(2),
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Add1~0_combout\);

-- Location: LCCOMB_X88_Y20_N22
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[25]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[25]~27_combout\ = (\digital_klokke|sekund_std\(1) & \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|sekund_std\(1),
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[25]~27_combout\);

-- Location: LCCOMB_X88_Y20_N20
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[25]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[25]~28_combout\ = (\digital_klokke|sekund_std\(1) & !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|sekund_std\(1),
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[25]~28_combout\);

-- Location: LCCOMB_X88_Y20_N10
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[25]~27_combout\) # 
-- (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[25]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[25]~27_combout\,
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[25]~28_combout\,
	datad => VCC,
	cout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X88_Y20_N12
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[26]~26_combout\ & (!\digital_klokke|bin2bcd_0|Add1~0_combout\ & 
-- !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[26]~26_combout\,
	datab => \digital_klokke|bin2bcd_0|Add1~0_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X88_Y20_N14
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ & 
-- ((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[27]~30_combout\) # (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[27]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[27]~30_combout\,
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[27]~25_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X88_Y20_N16
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ & 
-- (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[28]~24_combout\ & !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[28]~29_combout\,
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|StageOut[28]~24_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X88_Y20_N18
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X88_Y20_N30
\digital_klokke|bin2bcd_0|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Add1~1_combout\ = \digital_klokke|sekund_std\(1) $ (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|sekund_std\(1),
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Add1~1_combout\);

-- Location: LCCOMB_X88_Y20_N24
\digital_klokke|bin2bcd_0|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Add1~2_combout\ = \digital_klokke|sekund_std\(2) $ (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (((\digital_klokke|sekund_std\(1)) # 
-- (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|sekund_std\(2),
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \digital_klokke|sekund_std\(1),
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Add1~2_combout\);

-- Location: LCCOMB_X88_Y20_N28
\digital_klokke|bin2bcd_0|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Add1~3_combout\ = (\digital_klokke|sekund_std\(2) & (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (\digital_klokke|sekund_std\(1))))) # (!\digital_klokke|sekund_std\(2) & 
-- ((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\digital_klokke|sekund_std\(1) & !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # 
-- (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|sekund_std\(2),
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \digital_klokke|sekund_std\(1),
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Add1~3_combout\);

-- Location: LCCOMB_X88_Y20_N26
\digital_klokke|bin2bcd_0|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Add1~4_combout\ = \digital_klokke|sekund_std\(3) $ (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\digital_klokke|bin2bcd_0|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|sekund_std\(3),
	datac => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_0|Add1~3_combout\,
	combout => \digital_klokke|bin2bcd_0|Add1~4_combout\);

-- Location: LCCOMB_X103_Y20_N4
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_wirecell_combout\ = !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_wirecell_combout\);

-- Location: LCCOMB_X105_Y20_N10
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_wirecell_combout\ = !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_wirecell_combout\);

-- Location: LCCOMB_X105_Y20_N28
\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_wirecell_combout\ = !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_wirecell_combout\);

-- Location: LCCOMB_X105_Y20_N14
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M9K_X104_Y20_N0
\memory_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:memory_rtl_0|altsyncram_amd1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory~32_combout\,
	portbre => VCC,
	clk0 => \clock_50~inputclkctrl_outclk\,
	clk1 => \clock_50~inputclkctrl_outclk\,
	ena0 => \memory~32_combout\,
	ena1 => \enable_les_av~q\,
	portadatain => \memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X88_Y19_N20
\lcd|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~6_combout\ = (\lcd|CHAR_COUNT\(1)) # ((\lcd|CHAR_COUNT\(2)) # (\lcd|CHAR_COUNT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datab => \lcd|CHAR_COUNT\(2),
	datad => \lcd|CHAR_COUNT\(4),
	combout => \lcd|Mux5~6_combout\);

-- Location: LCCOMB_X88_Y19_N16
\lcd|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~4_combout\ = (\lcd|CHAR_COUNT\(4)) # ((!\lcd|CHAR_COUNT\(1) & (!\lcd|CHAR_COUNT\(2) & \lcd|CHAR_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|CHAR_COUNT\(4),
	combout => \lcd|Mux5~4_combout\);

-- Location: LCCOMB_X90_Y16_N0
\digital_klokke|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~0_combout\ = \digital_klokke|timer_std\(0) $ (VCC)
-- \digital_klokke|Add2~1\ = CARRY(\digital_klokke|timer_std\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|timer_std\(0),
	datad => VCC,
	combout => \digital_klokke|Add2~0_combout\,
	cout => \digital_klokke|Add2~1\);

-- Location: LCCOMB_X89_Y15_N6
\digital_klokke|t~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~21_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~42_combout\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~9_combout\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Add2~42_combout\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~21_combout\);

-- Location: LCCOMB_X92_Y19_N24
\digital_klokke|tid:s[30]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:s[30]~3_combout\ = (\running~q\ & \digital_klokke|enable_gen_1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \running~q\,
	datad => \digital_klokke|enable_gen_1|enable~q\,
	combout => \digital_klokke|tid:s[30]~3_combout\);

-- Location: LCCOMB_X92_Y14_N22
\digital_klokke|m~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~30_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add1~60_combout\ & \digital_klokke|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Add1~60_combout\,
	datad => \digital_klokke|Equal0~10_combout\,
	combout => \digital_klokke|m~30_combout\);

-- Location: LCCOMB_X92_Y19_N30
\digital_klokke|tid:m[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:m[7]~0_combout\ = ((\running~q\ & (!\digital_klokke|LessThan0~10_combout\ & \digital_klokke|enable_gen_1|enable~q\))) # (!\reset_synkroniseres_2|reset_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \running~q\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|LessThan0~10_combout\,
	datad => \digital_klokke|enable_gen_1|enable~q\,
	combout => \digital_klokke|tid:m[7]~0_combout\);

-- Location: FF_X92_Y14_N23
\digital_klokke|tid:m[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~30_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[30]~q\);

-- Location: LCCOMB_X91_Y15_N0
\digital_klokke|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~0_combout\ = \digital_klokke|minutt_std\(0) $ (VCC)
-- \digital_klokke|Add1~1\ = CARRY(\digital_klokke|minutt_std\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|minutt_std\(0),
	datad => VCC,
	combout => \digital_klokke|Add1~0_combout\,
	cout => \digital_klokke|Add1~1\);

-- Location: LCCOMB_X92_Y14_N6
\digital_klokke|m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~0_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add1~0_combout\ & \digital_klokke|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Add1~0_combout\,
	datad => \digital_klokke|Equal0~10_combout\,
	combout => \digital_klokke|m~0_combout\);

-- Location: FF_X91_Y15_N1
\digital_klokke|minutt_std[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \digital_klokke|m~0_combout\,
	sload => VCC,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|minutt_std\(0));

-- Location: LCCOMB_X91_Y15_N2
\digital_klokke|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~2_combout\ = (\digital_klokke|minutt_std\(1) & (!\digital_klokke|Add1~1\)) # (!\digital_klokke|minutt_std\(1) & ((\digital_klokke|Add1~1\) # (GND)))
-- \digital_klokke|Add1~3\ = CARRY((!\digital_klokke|Add1~1\) # (!\digital_klokke|minutt_std\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|minutt_std\(1),
	datad => VCC,
	cin => \digital_klokke|Add1~1\,
	combout => \digital_klokke|Add1~2_combout\,
	cout => \digital_klokke|Add1~3\);

-- Location: LCCOMB_X92_Y15_N0
\digital_klokke|m~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~1_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Equal0~10_combout\ & \digital_klokke|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \digital_klokke|Add1~2_combout\,
	combout => \digital_klokke|m~1_combout\);

-- Location: FF_X91_Y15_N9
\digital_klokke|minutt_std[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \digital_klokke|m~1_combout\,
	sload => VCC,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|minutt_std\(1));

-- Location: LCCOMB_X91_Y15_N4
\digital_klokke|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~4_combout\ = (\digital_klokke|minutt_std\(2) & (\digital_klokke|Add1~3\ $ (GND))) # (!\digital_klokke|minutt_std\(2) & (!\digital_klokke|Add1~3\ & VCC))
-- \digital_klokke|Add1~5\ = CARRY((\digital_klokke|minutt_std\(2) & !\digital_klokke|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|minutt_std\(2),
	datad => VCC,
	cin => \digital_klokke|Add1~3\,
	combout => \digital_klokke|Add1~4_combout\,
	cout => \digital_klokke|Add1~5\);

-- Location: LCCOMB_X89_Y18_N12
\digital_klokke|m~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~5_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add1~4_combout\ & \digital_klokke|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Add1~4_combout\,
	datad => \digital_klokke|Equal0~10_combout\,
	combout => \digital_klokke|m~5_combout\);

-- Location: FF_X88_Y18_N9
\digital_klokke|minutt_std[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \digital_klokke|m~5_combout\,
	sload => VCC,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|minutt_std\(2));

-- Location: LCCOMB_X91_Y15_N6
\digital_klokke|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~6_combout\ = (\digital_klokke|minutt_std\(3) & (!\digital_klokke|Add1~5\)) # (!\digital_klokke|minutt_std\(3) & ((\digital_klokke|Add1~5\) # (GND)))
-- \digital_klokke|Add1~7\ = CARRY((!\digital_klokke|Add1~5\) # (!\digital_klokke|minutt_std\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|minutt_std\(3),
	datad => VCC,
	cin => \digital_klokke|Add1~5\,
	combout => \digital_klokke|Add1~6_combout\,
	cout => \digital_klokke|Add1~7\);

-- Location: LCCOMB_X89_Y18_N28
\digital_klokke|m~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~4_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add1~6_combout\ & \digital_klokke|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Add1~6_combout\,
	datad => \digital_klokke|Equal0~10_combout\,
	combout => \digital_klokke|m~4_combout\);

-- Location: FF_X89_Y18_N29
\digital_klokke|minutt_std[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~4_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|minutt_std\(3));

-- Location: LCCOMB_X91_Y15_N8
\digital_klokke|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~8_combout\ = (\digital_klokke|minutt_std\(4) & (\digital_klokke|Add1~7\ $ (GND))) # (!\digital_klokke|minutt_std\(4) & (!\digital_klokke|Add1~7\ & VCC))
-- \digital_klokke|Add1~9\ = CARRY((\digital_klokke|minutt_std\(4) & !\digital_klokke|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|minutt_std\(4),
	datad => VCC,
	cin => \digital_klokke|Add1~7\,
	combout => \digital_klokke|Add1~8_combout\,
	cout => \digital_klokke|Add1~9\);

-- Location: LCCOMB_X89_Y18_N10
\digital_klokke|m~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~3_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add1~8_combout\ & \digital_klokke|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Add1~8_combout\,
	datad => \digital_klokke|Equal0~10_combout\,
	combout => \digital_klokke|m~3_combout\);

-- Location: FF_X89_Y18_N11
\digital_klokke|minutt_std[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~3_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|minutt_std\(4));

-- Location: LCCOMB_X91_Y15_N10
\digital_klokke|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~10_combout\ = (\digital_klokke|minutt_std\(5) & (!\digital_klokke|Add1~9\)) # (!\digital_klokke|minutt_std\(5) & ((\digital_klokke|Add1~9\) # (GND)))
-- \digital_klokke|Add1~11\ = CARRY((!\digital_klokke|Add1~9\) # (!\digital_klokke|minutt_std\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|minutt_std\(5),
	datad => VCC,
	cin => \digital_klokke|Add1~9\,
	combout => \digital_klokke|Add1~10_combout\,
	cout => \digital_klokke|Add1~11\);

-- Location: LCCOMB_X89_Y18_N24
\digital_klokke|m~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~2_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add1~10_combout\ & \digital_klokke|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Add1~10_combout\,
	datad => \digital_klokke|Equal0~10_combout\,
	combout => \digital_klokke|m~2_combout\);

-- Location: FF_X89_Y18_N25
\digital_klokke|minutt_std[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~2_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|minutt_std\(5));

-- Location: LCCOMB_X91_Y15_N12
\digital_klokke|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~12_combout\ = (\digital_klokke|tid:m[6]~q\ & (\digital_klokke|Add1~11\ $ (GND))) # (!\digital_klokke|tid:m[6]~q\ & (!\digital_klokke|Add1~11\ & VCC))
-- \digital_klokke|Add1~13\ = CARRY((\digital_klokke|tid:m[6]~q\ & !\digital_klokke|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:m[6]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~11\,
	combout => \digital_klokke|Add1~12_combout\,
	cout => \digital_klokke|Add1~13\);

-- Location: LCCOMB_X92_Y15_N6
\digital_klokke|m~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~6_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Equal0~10_combout\ & \digital_klokke|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \digital_klokke|Add1~12_combout\,
	combout => \digital_klokke|m~6_combout\);

-- Location: FF_X92_Y15_N7
\digital_klokke|tid:m[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~6_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[6]~q\);

-- Location: LCCOMB_X91_Y15_N14
\digital_klokke|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~14_combout\ = (\digital_klokke|tid:m[7]~q\ & (!\digital_klokke|Add1~13\)) # (!\digital_klokke|tid:m[7]~q\ & ((\digital_klokke|Add1~13\) # (GND)))
-- \digital_klokke|Add1~15\ = CARRY((!\digital_klokke|Add1~13\) # (!\digital_klokke|tid:m[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:m[7]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~13\,
	combout => \digital_klokke|Add1~14_combout\,
	cout => \digital_klokke|Add1~15\);

-- Location: LCCOMB_X92_Y15_N4
\digital_klokke|m~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~7_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Equal0~10_combout\ & \digital_klokke|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \digital_klokke|Add1~14_combout\,
	combout => \digital_klokke|m~7_combout\);

-- Location: FF_X92_Y15_N5
\digital_klokke|tid:m[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~7_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[7]~q\);

-- Location: LCCOMB_X91_Y15_N16
\digital_klokke|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~16_combout\ = (\digital_klokke|tid:m[8]~q\ & (\digital_klokke|Add1~15\ $ (GND))) # (!\digital_klokke|tid:m[8]~q\ & (!\digital_klokke|Add1~15\ & VCC))
-- \digital_klokke|Add1~17\ = CARRY((\digital_klokke|tid:m[8]~q\ & !\digital_klokke|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:m[8]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~15\,
	combout => \digital_klokke|Add1~16_combout\,
	cout => \digital_klokke|Add1~17\);

-- Location: LCCOMB_X92_Y15_N12
\digital_klokke|m~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~8_combout\ = (\digital_klokke|Add1~16_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & \digital_klokke|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add1~16_combout\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal0~10_combout\,
	combout => \digital_klokke|m~8_combout\);

-- Location: FF_X92_Y15_N13
\digital_klokke|tid:m[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~8_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[8]~q\);

-- Location: LCCOMB_X91_Y15_N18
\digital_klokke|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~18_combout\ = (\digital_klokke|tid:m[9]~q\ & (!\digital_klokke|Add1~17\)) # (!\digital_klokke|tid:m[9]~q\ & ((\digital_klokke|Add1~17\) # (GND)))
-- \digital_klokke|Add1~19\ = CARRY((!\digital_klokke|Add1~17\) # (!\digital_klokke|tid:m[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:m[9]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~17\,
	combout => \digital_klokke|Add1~18_combout\,
	cout => \digital_klokke|Add1~19\);

-- Location: LCCOMB_X92_Y15_N2
\digital_klokke|m~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~9_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Equal0~10_combout\ & \digital_klokke|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \digital_klokke|Add1~18_combout\,
	combout => \digital_klokke|m~9_combout\);

-- Location: FF_X92_Y15_N3
\digital_klokke|tid:m[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~9_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[9]~q\);

-- Location: LCCOMB_X91_Y15_N20
\digital_klokke|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~20_combout\ = (\digital_klokke|tid:m[10]~q\ & (\digital_klokke|Add1~19\ $ (GND))) # (!\digital_klokke|tid:m[10]~q\ & (!\digital_klokke|Add1~19\ & VCC))
-- \digital_klokke|Add1~21\ = CARRY((\digital_klokke|tid:m[10]~q\ & !\digital_klokke|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:m[10]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~19\,
	combout => \digital_klokke|Add1~20_combout\,
	cout => \digital_klokke|Add1~21\);

-- Location: LCCOMB_X92_Y15_N14
\digital_klokke|m~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~10_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Equal0~10_combout\ & \digital_klokke|Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \digital_klokke|Add1~20_combout\,
	combout => \digital_klokke|m~10_combout\);

-- Location: FF_X91_Y15_N23
\digital_klokke|tid:m[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \digital_klokke|m~10_combout\,
	sload => VCC,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[10]~q\);

-- Location: LCCOMB_X91_Y15_N22
\digital_klokke|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~22_combout\ = (\digital_klokke|tid:m[11]~q\ & (!\digital_klokke|Add1~21\)) # (!\digital_klokke|tid:m[11]~q\ & ((\digital_klokke|Add1~21\) # (GND)))
-- \digital_klokke|Add1~23\ = CARRY((!\digital_klokke|Add1~21\) # (!\digital_klokke|tid:m[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:m[11]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~21\,
	combout => \digital_klokke|Add1~22_combout\,
	cout => \digital_klokke|Add1~23\);

-- Location: LCCOMB_X92_Y15_N16
\digital_klokke|m~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~11_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Equal0~10_combout\ & \digital_klokke|Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \digital_klokke|Add1~22_combout\,
	combout => \digital_klokke|m~11_combout\);

-- Location: FF_X92_Y15_N17
\digital_klokke|tid:m[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~11_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[11]~q\);

-- Location: LCCOMB_X91_Y15_N24
\digital_klokke|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~24_combout\ = (\digital_klokke|tid:m[12]~q\ & (\digital_klokke|Add1~23\ $ (GND))) # (!\digital_klokke|tid:m[12]~q\ & (!\digital_klokke|Add1~23\ & VCC))
-- \digital_klokke|Add1~25\ = CARRY((\digital_klokke|tid:m[12]~q\ & !\digital_klokke|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:m[12]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~23\,
	combout => \digital_klokke|Add1~24_combout\,
	cout => \digital_klokke|Add1~25\);

-- Location: LCCOMB_X92_Y15_N24
\digital_klokke|m~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~12_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Equal0~10_combout\ & \digital_klokke|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \digital_klokke|Add1~24_combout\,
	combout => \digital_klokke|m~12_combout\);

-- Location: FF_X92_Y15_N25
\digital_klokke|tid:m[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~12_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[12]~q\);

-- Location: LCCOMB_X91_Y15_N26
\digital_klokke|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~26_combout\ = (\digital_klokke|tid:m[13]~q\ & (!\digital_klokke|Add1~25\)) # (!\digital_klokke|tid:m[13]~q\ & ((\digital_klokke|Add1~25\) # (GND)))
-- \digital_klokke|Add1~27\ = CARRY((!\digital_klokke|Add1~25\) # (!\digital_klokke|tid:m[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:m[13]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~25\,
	combout => \digital_klokke|Add1~26_combout\,
	cout => \digital_klokke|Add1~27\);

-- Location: LCCOMB_X92_Y15_N22
\digital_klokke|m~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~13_combout\ = (\digital_klokke|Add1~26_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & \digital_klokke|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add1~26_combout\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal0~10_combout\,
	combout => \digital_klokke|m~13_combout\);

-- Location: FF_X92_Y15_N23
\digital_klokke|tid:m[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~13_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[13]~q\);

-- Location: LCCOMB_X91_Y15_N28
\digital_klokke|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~28_combout\ = (\digital_klokke|tid:m[14]~q\ & (\digital_klokke|Add1~27\ $ (GND))) # (!\digital_klokke|tid:m[14]~q\ & (!\digital_klokke|Add1~27\ & VCC))
-- \digital_klokke|Add1~29\ = CARRY((\digital_klokke|tid:m[14]~q\ & !\digital_klokke|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:m[14]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~27\,
	combout => \digital_klokke|Add1~28_combout\,
	cout => \digital_klokke|Add1~29\);

-- Location: LCCOMB_X92_Y15_N20
\digital_klokke|m~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~14_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Equal0~10_combout\ & \digital_klokke|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \digital_klokke|Add1~28_combout\,
	combout => \digital_klokke|m~14_combout\);

-- Location: FF_X92_Y15_N21
\digital_klokke|tid:m[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~14_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[14]~q\);

-- Location: LCCOMB_X91_Y15_N30
\digital_klokke|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~30_combout\ = (\digital_klokke|tid:m[15]~q\ & (!\digital_klokke|Add1~29\)) # (!\digital_klokke|tid:m[15]~q\ & ((\digital_klokke|Add1~29\) # (GND)))
-- \digital_klokke|Add1~31\ = CARRY((!\digital_klokke|Add1~29\) # (!\digital_klokke|tid:m[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:m[15]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~29\,
	combout => \digital_klokke|Add1~30_combout\,
	cout => \digital_klokke|Add1~31\);

-- Location: LCCOMB_X92_Y15_N10
\digital_klokke|m~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~15_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Equal0~10_combout\ & \digital_klokke|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \digital_klokke|Add1~30_combout\,
	combout => \digital_klokke|m~15_combout\);

-- Location: FF_X92_Y15_N11
\digital_klokke|tid:m[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~15_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[15]~q\);

-- Location: LCCOMB_X91_Y14_N0
\digital_klokke|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~32_combout\ = (\digital_klokke|tid:m[16]~q\ & (\digital_klokke|Add1~31\ $ (GND))) # (!\digital_klokke|tid:m[16]~q\ & (!\digital_klokke|Add1~31\ & VCC))
-- \digital_klokke|Add1~33\ = CARRY((\digital_klokke|tid:m[16]~q\ & !\digital_klokke|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:m[16]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~31\,
	combout => \digital_klokke|Add1~32_combout\,
	cout => \digital_klokke|Add1~33\);

-- Location: LCCOMB_X90_Y14_N16
\digital_klokke|m~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~16_combout\ = (\digital_klokke|Add1~32_combout\ & (\digital_klokke|Equal0~10_combout\ & \reset_synkroniseres_2|reset_sync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|Add1~32_combout\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \reset_synkroniseres_2|reset_sync~q\,
	combout => \digital_klokke|m~16_combout\);

-- Location: FF_X90_Y14_N17
\digital_klokke|tid:m[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~16_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[16]~q\);

-- Location: LCCOMB_X91_Y14_N2
\digital_klokke|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~34_combout\ = (\digital_klokke|tid:m[17]~q\ & (!\digital_klokke|Add1~33\)) # (!\digital_klokke|tid:m[17]~q\ & ((\digital_klokke|Add1~33\) # (GND)))
-- \digital_klokke|Add1~35\ = CARRY((!\digital_klokke|Add1~33\) # (!\digital_klokke|tid:m[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:m[17]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~33\,
	combout => \digital_klokke|Add1~34_combout\,
	cout => \digital_klokke|Add1~35\);

-- Location: LCCOMB_X90_Y14_N6
\digital_klokke|m~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~17_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Equal0~10_combout\ & \digital_klokke|Add1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \digital_klokke|Add1~34_combout\,
	combout => \digital_klokke|m~17_combout\);

-- Location: FF_X90_Y14_N7
\digital_klokke|tid:m[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~17_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[17]~q\);

-- Location: LCCOMB_X91_Y14_N4
\digital_klokke|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~36_combout\ = (\digital_klokke|tid:m[18]~q\ & (\digital_klokke|Add1~35\ $ (GND))) # (!\digital_klokke|tid:m[18]~q\ & (!\digital_klokke|Add1~35\ & VCC))
-- \digital_klokke|Add1~37\ = CARRY((\digital_klokke|tid:m[18]~q\ & !\digital_klokke|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:m[18]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~35\,
	combout => \digital_klokke|Add1~36_combout\,
	cout => \digital_klokke|Add1~37\);

-- Location: LCCOMB_X90_Y14_N28
\digital_klokke|m~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~18_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Equal0~10_combout\ & \digital_klokke|Add1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \digital_klokke|Add1~36_combout\,
	combout => \digital_klokke|m~18_combout\);

-- Location: FF_X90_Y14_N29
\digital_klokke|tid:m[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~18_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[18]~q\);

-- Location: LCCOMB_X91_Y14_N6
\digital_klokke|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~38_combout\ = (\digital_klokke|tid:m[19]~q\ & (!\digital_klokke|Add1~37\)) # (!\digital_klokke|tid:m[19]~q\ & ((\digital_klokke|Add1~37\) # (GND)))
-- \digital_klokke|Add1~39\ = CARRY((!\digital_klokke|Add1~37\) # (!\digital_klokke|tid:m[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:m[19]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~37\,
	combout => \digital_klokke|Add1~38_combout\,
	cout => \digital_klokke|Add1~39\);

-- Location: LCCOMB_X90_Y14_N26
\digital_klokke|m~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~19_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Equal0~10_combout\ & \digital_klokke|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \digital_klokke|Add1~38_combout\,
	combout => \digital_klokke|m~19_combout\);

-- Location: FF_X90_Y14_N27
\digital_klokke|tid:m[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~19_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[19]~q\);

-- Location: LCCOMB_X91_Y14_N8
\digital_klokke|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~40_combout\ = (\digital_klokke|tid:m[20]~q\ & (\digital_klokke|Add1~39\ $ (GND))) # (!\digital_klokke|tid:m[20]~q\ & (!\digital_klokke|Add1~39\ & VCC))
-- \digital_klokke|Add1~41\ = CARRY((\digital_klokke|tid:m[20]~q\ & !\digital_klokke|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:m[20]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~39\,
	combout => \digital_klokke|Add1~40_combout\,
	cout => \digital_klokke|Add1~41\);

-- Location: LCCOMB_X90_Y14_N22
\digital_klokke|m~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~20_combout\ = (\digital_klokke|Add1~40_combout\ & (\digital_klokke|Equal0~10_combout\ & \reset_synkroniseres_2|reset_sync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|Add1~40_combout\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \reset_synkroniseres_2|reset_sync~q\,
	combout => \digital_klokke|m~20_combout\);

-- Location: FF_X90_Y14_N23
\digital_klokke|tid:m[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~20_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[20]~q\);

-- Location: LCCOMB_X91_Y14_N10
\digital_klokke|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~42_combout\ = (\digital_klokke|tid:m[21]~q\ & (!\digital_klokke|Add1~41\)) # (!\digital_klokke|tid:m[21]~q\ & ((\digital_klokke|Add1~41\) # (GND)))
-- \digital_klokke|Add1~43\ = CARRY((!\digital_klokke|Add1~41\) # (!\digital_klokke|tid:m[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:m[21]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~41\,
	combout => \digital_klokke|Add1~42_combout\,
	cout => \digital_klokke|Add1~43\);

-- Location: LCCOMB_X90_Y14_N4
\digital_klokke|m~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~21_combout\ = (\digital_klokke|Add1~42_combout\ & (\digital_klokke|Equal0~10_combout\ & \reset_synkroniseres_2|reset_sync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|Add1~42_combout\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \reset_synkroniseres_2|reset_sync~q\,
	combout => \digital_klokke|m~21_combout\);

-- Location: FF_X90_Y14_N5
\digital_klokke|tid:m[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~21_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[21]~q\);

-- Location: LCCOMB_X91_Y14_N12
\digital_klokke|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~44_combout\ = (\digital_klokke|tid:m[22]~q\ & (\digital_klokke|Add1~43\ $ (GND))) # (!\digital_klokke|tid:m[22]~q\ & (!\digital_klokke|Add1~43\ & VCC))
-- \digital_klokke|Add1~45\ = CARRY((\digital_klokke|tid:m[22]~q\ & !\digital_klokke|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:m[22]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~43\,
	combout => \digital_klokke|Add1~44_combout\,
	cout => \digital_klokke|Add1~45\);

-- Location: LCCOMB_X90_Y14_N12
\digital_klokke|m~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~22_combout\ = (\digital_klokke|Add1~44_combout\ & (\digital_klokke|Equal0~10_combout\ & \reset_synkroniseres_2|reset_sync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|Add1~44_combout\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \reset_synkroniseres_2|reset_sync~q\,
	combout => \digital_klokke|m~22_combout\);

-- Location: FF_X90_Y14_N13
\digital_klokke|tid:m[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~22_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[22]~q\);

-- Location: LCCOMB_X91_Y14_N14
\digital_klokke|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~46_combout\ = (\digital_klokke|tid:m[23]~q\ & (!\digital_klokke|Add1~45\)) # (!\digital_klokke|tid:m[23]~q\ & ((\digital_klokke|Add1~45\) # (GND)))
-- \digital_klokke|Add1~47\ = CARRY((!\digital_klokke|Add1~45\) # (!\digital_klokke|tid:m[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:m[23]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~45\,
	combout => \digital_klokke|Add1~46_combout\,
	cout => \digital_klokke|Add1~47\);

-- Location: LCCOMB_X90_Y14_N18
\digital_klokke|m~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~23_combout\ = (\digital_klokke|Add1~46_combout\ & (\digital_klokke|Equal0~10_combout\ & \reset_synkroniseres_2|reset_sync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|Add1~46_combout\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \reset_synkroniseres_2|reset_sync~q\,
	combout => \digital_klokke|m~23_combout\);

-- Location: FF_X90_Y14_N19
\digital_klokke|tid:m[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~23_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[23]~q\);

-- Location: LCCOMB_X91_Y14_N16
\digital_klokke|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~48_combout\ = (\digital_klokke|tid:m[24]~q\ & (\digital_klokke|Add1~47\ $ (GND))) # (!\digital_klokke|tid:m[24]~q\ & (!\digital_klokke|Add1~47\ & VCC))
-- \digital_klokke|Add1~49\ = CARRY((\digital_klokke|tid:m[24]~q\ & !\digital_klokke|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:m[24]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~47\,
	combout => \digital_klokke|Add1~48_combout\,
	cout => \digital_klokke|Add1~49\);

-- Location: LCCOMB_X92_Y14_N8
\digital_klokke|m~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~24_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add1~48_combout\ & \digital_klokke|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Add1~48_combout\,
	datad => \digital_klokke|Equal0~10_combout\,
	combout => \digital_klokke|m~24_combout\);

-- Location: FF_X92_Y14_N9
\digital_klokke|tid:m[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~24_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[24]~q\);

-- Location: LCCOMB_X91_Y14_N18
\digital_klokke|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~50_combout\ = (\digital_klokke|tid:m[25]~q\ & (!\digital_klokke|Add1~49\)) # (!\digital_klokke|tid:m[25]~q\ & ((\digital_klokke|Add1~49\) # (GND)))
-- \digital_klokke|Add1~51\ = CARRY((!\digital_klokke|Add1~49\) # (!\digital_klokke|tid:m[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:m[25]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~49\,
	combout => \digital_klokke|Add1~50_combout\,
	cout => \digital_klokke|Add1~51\);

-- Location: LCCOMB_X92_Y14_N2
\digital_klokke|m~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~25_combout\ = (\digital_klokke|Equal0~10_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & \digital_klokke|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal0~10_combout\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Add1~50_combout\,
	combout => \digital_klokke|m~25_combout\);

-- Location: FF_X92_Y14_N3
\digital_klokke|tid:m[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~25_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[25]~q\);

-- Location: LCCOMB_X91_Y14_N20
\digital_klokke|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~52_combout\ = (\digital_klokke|tid:m[26]~q\ & (\digital_klokke|Add1~51\ $ (GND))) # (!\digital_klokke|tid:m[26]~q\ & (!\digital_klokke|Add1~51\ & VCC))
-- \digital_klokke|Add1~53\ = CARRY((\digital_klokke|tid:m[26]~q\ & !\digital_klokke|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:m[26]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~51\,
	combout => \digital_klokke|Add1~52_combout\,
	cout => \digital_klokke|Add1~53\);

-- Location: LCCOMB_X92_Y14_N4
\digital_klokke|m~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~26_combout\ = (\digital_klokke|Equal0~10_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & \digital_klokke|Add1~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal0~10_combout\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Add1~52_combout\,
	combout => \digital_klokke|m~26_combout\);

-- Location: FF_X92_Y14_N5
\digital_klokke|tid:m[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~26_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[26]~q\);

-- Location: LCCOMB_X91_Y14_N22
\digital_klokke|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~54_combout\ = (\digital_klokke|tid:m[27]~q\ & (!\digital_klokke|Add1~53\)) # (!\digital_klokke|tid:m[27]~q\ & ((\digital_klokke|Add1~53\) # (GND)))
-- \digital_klokke|Add1~55\ = CARRY((!\digital_klokke|Add1~53\) # (!\digital_klokke|tid:m[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:m[27]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~53\,
	combout => \digital_klokke|Add1~54_combout\,
	cout => \digital_klokke|Add1~55\);

-- Location: LCCOMB_X92_Y14_N26
\digital_klokke|m~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~27_combout\ = (\digital_klokke|Equal0~10_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & \digital_klokke|Add1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal0~10_combout\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Add1~54_combout\,
	combout => \digital_klokke|m~27_combout\);

-- Location: FF_X92_Y14_N27
\digital_klokke|tid:m[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~27_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[27]~q\);

-- Location: LCCOMB_X91_Y14_N24
\digital_klokke|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~56_combout\ = (\digital_klokke|tid:m[28]~q\ & (\digital_klokke|Add1~55\ $ (GND))) # (!\digital_klokke|tid:m[28]~q\ & (!\digital_klokke|Add1~55\ & VCC))
-- \digital_klokke|Add1~57\ = CARRY((\digital_klokke|tid:m[28]~q\ & !\digital_klokke|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:m[28]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~55\,
	combout => \digital_klokke|Add1~56_combout\,
	cout => \digital_klokke|Add1~57\);

-- Location: LCCOMB_X92_Y14_N18
\digital_klokke|m~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~28_combout\ = (\digital_klokke|Equal0~10_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & \digital_klokke|Add1~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal0~10_combout\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Add1~56_combout\,
	combout => \digital_klokke|m~28_combout\);

-- Location: FF_X92_Y14_N19
\digital_klokke|tid:m[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~28_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[28]~q\);

-- Location: LCCOMB_X91_Y14_N26
\digital_klokke|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~58_combout\ = (\digital_klokke|tid:m[29]~q\ & (!\digital_klokke|Add1~57\)) # (!\digital_klokke|tid:m[29]~q\ & ((\digital_klokke|Add1~57\) # (GND)))
-- \digital_klokke|Add1~59\ = CARRY((!\digital_klokke|Add1~57\) # (!\digital_klokke|tid:m[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:m[29]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~57\,
	combout => \digital_klokke|Add1~58_combout\,
	cout => \digital_klokke|Add1~59\);

-- Location: LCCOMB_X92_Y14_N20
\digital_klokke|m~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~29_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add1~58_combout\ & \digital_klokke|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Add1~58_combout\,
	datad => \digital_klokke|Equal0~10_combout\,
	combout => \digital_klokke|m~29_combout\);

-- Location: FF_X92_Y14_N21
\digital_klokke|tid:m[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~29_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[29]~q\);

-- Location: LCCOMB_X91_Y14_N28
\digital_klokke|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~60_combout\ = (\digital_klokke|tid:m[30]~q\ & (\digital_klokke|Add1~59\ $ (GND))) # (!\digital_klokke|tid:m[30]~q\ & (!\digital_klokke|Add1~59\ & VCC))
-- \digital_klokke|Add1~61\ = CARRY((\digital_klokke|tid:m[30]~q\ & !\digital_klokke|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:m[30]~q\,
	datad => VCC,
	cin => \digital_klokke|Add1~59\,
	combout => \digital_klokke|Add1~60_combout\,
	cout => \digital_klokke|Add1~61\);

-- Location: LCCOMB_X92_Y14_N28
\digital_klokke|m~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|m~31_combout\ = (\digital_klokke|Equal0~10_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & \digital_klokke|Add1~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal0~10_combout\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Add1~62_combout\,
	combout => \digital_klokke|m~31_combout\);

-- Location: FF_X92_Y14_N29
\digital_klokke|tid:m[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|m~31_combout\,
	ena => \digital_klokke|tid:m[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:m[31]~q\);

-- Location: LCCOMB_X91_Y14_N30
\digital_klokke|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add1~62_combout\ = \digital_klokke|Add1~61\ $ (\digital_klokke|tid:m[31]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \digital_klokke|tid:m[31]~q\,
	cin => \digital_klokke|Add1~61\,
	combout => \digital_klokke|Add1~62_combout\);

-- Location: LCCOMB_X92_Y14_N10
\digital_klokke|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal0~9_combout\ = (\digital_klokke|Add1~60_combout\) # ((\digital_klokke|Add1~62_combout\) # ((\digital_klokke|Add1~58_combout\) # (\digital_klokke|Add1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add1~60_combout\,
	datab => \digital_klokke|Add1~62_combout\,
	datac => \digital_klokke|Add1~58_combout\,
	datad => \digital_klokke|Add1~56_combout\,
	combout => \digital_klokke|Equal0~9_combout\);

-- Location: LCCOMB_X90_Y14_N10
\digital_klokke|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal0~6_combout\ = (\digital_klokke|Add1~42_combout\) # (\digital_klokke|Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|Add1~42_combout\,
	datac => \digital_klokke|Add1~40_combout\,
	combout => \digital_klokke|Equal0~6_combout\);

-- Location: LCCOMB_X90_Y14_N24
\digital_klokke|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal0~5_combout\ = (\digital_klokke|Add1~38_combout\) # ((\digital_klokke|Add1~34_combout\) # ((\digital_klokke|Add1~32_combout\) # (\digital_klokke|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add1~38_combout\,
	datab => \digital_klokke|Add1~34_combout\,
	datac => \digital_klokke|Add1~32_combout\,
	datad => \digital_klokke|Add1~36_combout\,
	combout => \digital_klokke|Equal0~5_combout\);

-- Location: LCCOMB_X90_Y14_N0
\digital_klokke|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal0~7_combout\ = (\digital_klokke|Equal0~6_combout\) # ((\digital_klokke|Add1~46_combout\) # ((\digital_klokke|Add1~44_combout\) # (\digital_klokke|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal0~6_combout\,
	datab => \digital_klokke|Add1~46_combout\,
	datac => \digital_klokke|Add1~44_combout\,
	datad => \digital_klokke|Equal0~5_combout\,
	combout => \digital_klokke|Equal0~7_combout\);

-- Location: LCCOMB_X92_Y15_N26
\digital_klokke|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal0~2_combout\ = (\digital_klokke|Add1~22_combout\) # ((\digital_klokke|Add1~20_combout\) # ((\digital_klokke|Add1~16_combout\) # (\digital_klokke|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add1~22_combout\,
	datab => \digital_klokke|Add1~20_combout\,
	datac => \digital_klokke|Add1~16_combout\,
	datad => \digital_klokke|Add1~18_combout\,
	combout => \digital_klokke|Equal0~2_combout\);

-- Location: LCCOMB_X92_Y15_N18
\digital_klokke|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal0~1_combout\ = (\digital_klokke|Add1~14_combout\) # (((\digital_klokke|Add1~12_combout\) # (!\digital_klokke|Add1~10_combout\)) # (!\digital_klokke|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add1~14_combout\,
	datab => \digital_klokke|Add1~8_combout\,
	datac => \digital_klokke|Add1~10_combout\,
	datad => \digital_klokke|Add1~12_combout\,
	combout => \digital_klokke|Equal0~1_combout\);

-- Location: LCCOMB_X92_Y15_N8
\digital_klokke|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal0~3_combout\ = (\digital_klokke|Add1~30_combout\) # ((\digital_klokke|Add1~24_combout\) # ((\digital_klokke|Add1~26_combout\) # (\digital_klokke|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add1~30_combout\,
	datab => \digital_klokke|Add1~24_combout\,
	datac => \digital_klokke|Add1~26_combout\,
	datad => \digital_klokke|Add1~28_combout\,
	combout => \digital_klokke|Equal0~3_combout\);

-- Location: LCCOMB_X92_Y15_N28
\digital_klokke|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal0~0_combout\ = (\digital_klokke|Add1~0_combout\) # (((\digital_klokke|Add1~2_combout\) # (!\digital_klokke|Add1~6_combout\)) # (!\digital_klokke|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add1~0_combout\,
	datab => \digital_klokke|Add1~4_combout\,
	datac => \digital_klokke|Add1~6_combout\,
	datad => \digital_klokke|Add1~2_combout\,
	combout => \digital_klokke|Equal0~0_combout\);

-- Location: LCCOMB_X92_Y15_N30
\digital_klokke|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal0~4_combout\ = (\digital_klokke|Equal0~2_combout\) # ((\digital_klokke|Equal0~1_combout\) # ((\digital_klokke|Equal0~3_combout\) # (\digital_klokke|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal0~2_combout\,
	datab => \digital_klokke|Equal0~1_combout\,
	datac => \digital_klokke|Equal0~3_combout\,
	datad => \digital_klokke|Equal0~0_combout\,
	combout => \digital_klokke|Equal0~4_combout\);

-- Location: LCCOMB_X92_Y14_N0
\digital_klokke|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal0~8_combout\ = (\digital_klokke|Add1~48_combout\) # ((\digital_klokke|Add1~54_combout\) # ((\digital_klokke|Add1~50_combout\) # (\digital_klokke|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add1~48_combout\,
	datab => \digital_klokke|Add1~54_combout\,
	datac => \digital_klokke|Add1~50_combout\,
	datad => \digital_klokke|Add1~52_combout\,
	combout => \digital_klokke|Equal0~8_combout\);

-- Location: LCCOMB_X92_Y14_N12
\digital_klokke|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal0~10_combout\ = (\digital_klokke|Equal0~9_combout\) # ((\digital_klokke|Equal0~7_combout\) # ((\digital_klokke|Equal0~4_combout\) # (\digital_klokke|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal0~9_combout\,
	datab => \digital_klokke|Equal0~7_combout\,
	datac => \digital_klokke|Equal0~4_combout\,
	datad => \digital_klokke|Equal0~8_combout\,
	combout => \digital_klokke|Equal0~10_combout\);

-- Location: LCCOMB_X91_Y16_N14
\digital_klokke|tid:t[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|tid:t[14]~0_combout\ = ((\digital_klokke|tid:s[30]~3_combout\ & (!\digital_klokke|Equal0~10_combout\ & !\digital_klokke|LessThan0~10_combout\))) # (!\reset_synkroniseres_2|reset_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datab => \digital_klokke|tid:s[30]~3_combout\,
	datac => \digital_klokke|Equal0~10_combout\,
	datad => \digital_klokke|LessThan0~10_combout\,
	combout => \digital_klokke|tid:t[14]~0_combout\);

-- Location: FF_X89_Y15_N7
\digital_klokke|tid:t[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~21_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[21]~q\);

-- Location: LCCOMB_X90_Y16_N8
\digital_klokke|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~8_combout\ = (\digital_klokke|timer_std\(4) & (\digital_klokke|Add2~7\ $ (GND))) # (!\digital_klokke|timer_std\(4) & (!\digital_klokke|Add2~7\ & VCC))
-- \digital_klokke|Add2~9\ = CARRY((\digital_klokke|timer_std\(4) & !\digital_klokke|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|timer_std\(4),
	datad => VCC,
	cin => \digital_klokke|Add2~7\,
	combout => \digital_klokke|Add2~8_combout\,
	cout => \digital_klokke|Add2~9\);

-- Location: LCCOMB_X90_Y16_N10
\digital_klokke|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~10_combout\ = (\digital_klokke|tid:t[5]~q\ & (!\digital_klokke|Add2~9\)) # (!\digital_klokke|tid:t[5]~q\ & ((\digital_klokke|Add2~9\) # (GND)))
-- \digital_klokke|Add2~11\ = CARRY((!\digital_klokke|Add2~9\) # (!\digital_klokke|tid:t[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:t[5]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~9\,
	combout => \digital_klokke|Add2~10_combout\,
	cout => \digital_klokke|Add2~11\);

-- Location: LCCOMB_X91_Y16_N4
\digital_klokke|t~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~5_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~10_combout\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datab => \digital_klokke|Add2~10_combout\,
	datac => \digital_klokke|Equal1~9_combout\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~5_combout\);

-- Location: FF_X91_Y16_N5
\digital_klokke|tid:t[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~5_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[5]~q\);

-- Location: LCCOMB_X90_Y16_N12
\digital_klokke|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~12_combout\ = (\digital_klokke|tid:t[6]~q\ & (\digital_klokke|Add2~11\ $ (GND))) # (!\digital_klokke|tid:t[6]~q\ & (!\digital_klokke|Add2~11\ & VCC))
-- \digital_klokke|Add2~13\ = CARRY((\digital_klokke|tid:t[6]~q\ & !\digital_klokke|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:t[6]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~11\,
	combout => \digital_klokke|Add2~12_combout\,
	cout => \digital_klokke|Add2~13\);

-- Location: LCCOMB_X91_Y16_N2
\digital_klokke|t~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~6_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~12_combout\ & ((\digital_klokke|Equal1~4_combout\) # (\digital_klokke|Equal1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datab => \digital_klokke|Equal1~4_combout\,
	datac => \digital_klokke|Equal1~9_combout\,
	datad => \digital_klokke|Add2~12_combout\,
	combout => \digital_klokke|t~6_combout\);

-- Location: FF_X91_Y16_N3
\digital_klokke|tid:t[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~6_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[6]~q\);

-- Location: LCCOMB_X90_Y16_N14
\digital_klokke|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~14_combout\ = (\digital_klokke|tid:t[7]~q\ & (!\digital_klokke|Add2~13\)) # (!\digital_klokke|tid:t[7]~q\ & ((\digital_klokke|Add2~13\) # (GND)))
-- \digital_klokke|Add2~15\ = CARRY((!\digital_klokke|Add2~13\) # (!\digital_klokke|tid:t[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[7]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~13\,
	combout => \digital_klokke|Add2~14_combout\,
	cout => \digital_klokke|Add2~15\);

-- Location: LCCOMB_X91_Y16_N12
\digital_klokke|t~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~7_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~14_combout\ & ((\digital_klokke|Equal1~4_combout\) # (\digital_klokke|Equal1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datab => \digital_klokke|Equal1~4_combout\,
	datac => \digital_klokke|Equal1~9_combout\,
	datad => \digital_klokke|Add2~14_combout\,
	combout => \digital_klokke|t~7_combout\);

-- Location: FF_X91_Y16_N13
\digital_klokke|tid:t[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~7_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[7]~q\);

-- Location: LCCOMB_X90_Y16_N16
\digital_klokke|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~16_combout\ = (\digital_klokke|tid:t[8]~q\ & (\digital_klokke|Add2~15\ $ (GND))) # (!\digital_klokke|tid:t[8]~q\ & (!\digital_klokke|Add2~15\ & VCC))
-- \digital_klokke|Add2~17\ = CARRY((\digital_klokke|tid:t[8]~q\ & !\digital_klokke|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[8]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~15\,
	combout => \digital_klokke|Add2~16_combout\,
	cout => \digital_klokke|Add2~17\);

-- Location: LCCOMB_X91_Y16_N0
\digital_klokke|t~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~8_combout\ = (\digital_klokke|Add2~16_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~9_combout\,
	datab => \digital_klokke|Equal1~4_combout\,
	datac => \digital_klokke|Add2~16_combout\,
	datad => \reset_synkroniseres_2|reset_sync~q\,
	combout => \digital_klokke|t~8_combout\);

-- Location: FF_X91_Y16_N1
\digital_klokke|tid:t[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~8_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[8]~q\);

-- Location: LCCOMB_X90_Y16_N18
\digital_klokke|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~18_combout\ = (\digital_klokke|tid:t[9]~q\ & (!\digital_klokke|Add2~17\)) # (!\digital_klokke|tid:t[9]~q\ & ((\digital_klokke|Add2~17\) # (GND)))
-- \digital_klokke|Add2~19\ = CARRY((!\digital_klokke|Add2~17\) # (!\digital_klokke|tid:t[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:t[9]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~17\,
	combout => \digital_klokke|Add2~18_combout\,
	cout => \digital_klokke|Add2~19\);

-- Location: LCCOMB_X91_Y16_N6
\digital_klokke|t~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~9_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~18_combout\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datab => \digital_klokke|Add2~18_combout\,
	datac => \digital_klokke|Equal1~9_combout\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~9_combout\);

-- Location: FF_X91_Y16_N7
\digital_klokke|tid:t[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~9_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[9]~q\);

-- Location: LCCOMB_X90_Y16_N20
\digital_klokke|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~20_combout\ = (\digital_klokke|tid:t[10]~q\ & (\digital_klokke|Add2~19\ $ (GND))) # (!\digital_klokke|tid:t[10]~q\ & (!\digital_klokke|Add2~19\ & VCC))
-- \digital_klokke|Add2~21\ = CARRY((\digital_klokke|tid:t[10]~q\ & !\digital_klokke|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[10]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~19\,
	combout => \digital_klokke|Add2~20_combout\,
	cout => \digital_klokke|Add2~21\);

-- Location: LCCOMB_X91_Y16_N8
\digital_klokke|t~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~10_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~20_combout\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datab => \digital_klokke|Add2~20_combout\,
	datac => \digital_klokke|Equal1~9_combout\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~10_combout\);

-- Location: FF_X91_Y16_N9
\digital_klokke|tid:t[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~10_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[10]~q\);

-- Location: LCCOMB_X90_Y16_N22
\digital_klokke|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~22_combout\ = (\digital_klokke|tid:t[11]~q\ & (!\digital_klokke|Add2~21\)) # (!\digital_klokke|tid:t[11]~q\ & ((\digital_klokke|Add2~21\) # (GND)))
-- \digital_klokke|Add2~23\ = CARRY((!\digital_klokke|Add2~21\) # (!\digital_klokke|tid:t[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[11]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~21\,
	combout => \digital_klokke|Add2~22_combout\,
	cout => \digital_klokke|Add2~23\);

-- Location: LCCOMB_X91_Y16_N26
\digital_klokke|t~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~11_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~22_combout\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datab => \digital_klokke|Add2~22_combout\,
	datac => \digital_klokke|Equal1~9_combout\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~11_combout\);

-- Location: FF_X91_Y16_N27
\digital_klokke|tid:t[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~11_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[11]~q\);

-- Location: LCCOMB_X90_Y16_N24
\digital_klokke|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~24_combout\ = (\digital_klokke|tid:t[12]~q\ & (\digital_klokke|Add2~23\ $ (GND))) # (!\digital_klokke|tid:t[12]~q\ & (!\digital_klokke|Add2~23\ & VCC))
-- \digital_klokke|Add2~25\ = CARRY((\digital_klokke|tid:t[12]~q\ & !\digital_klokke|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[12]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~23\,
	combout => \digital_klokke|Add2~24_combout\,
	cout => \digital_klokke|Add2~25\);

-- Location: LCCOMB_X91_Y16_N10
\digital_klokke|t~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~12_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~24_combout\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datab => \digital_klokke|Add2~24_combout\,
	datac => \digital_klokke|Equal1~9_combout\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~12_combout\);

-- Location: FF_X91_Y16_N11
\digital_klokke|tid:t[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~12_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[12]~q\);

-- Location: LCCOMB_X90_Y16_N26
\digital_klokke|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~26_combout\ = (\digital_klokke|tid:t[13]~q\ & (!\digital_klokke|Add2~25\)) # (!\digital_klokke|tid:t[13]~q\ & ((\digital_klokke|Add2~25\) # (GND)))
-- \digital_klokke|Add2~27\ = CARRY((!\digital_klokke|Add2~25\) # (!\digital_klokke|tid:t[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[13]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~25\,
	combout => \digital_klokke|Add2~26_combout\,
	cout => \digital_klokke|Add2~27\);

-- Location: LCCOMB_X91_Y16_N28
\digital_klokke|t~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~13_combout\ = (\digital_klokke|Add2~26_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~9_combout\,
	datab => \digital_klokke|Equal1~4_combout\,
	datac => \digital_klokke|Add2~26_combout\,
	datad => \reset_synkroniseres_2|reset_sync~q\,
	combout => \digital_klokke|t~13_combout\);

-- Location: FF_X91_Y16_N29
\digital_klokke|tid:t[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~13_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[13]~q\);

-- Location: LCCOMB_X90_Y16_N28
\digital_klokke|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~28_combout\ = (\digital_klokke|tid:t[14]~q\ & (\digital_klokke|Add2~27\ $ (GND))) # (!\digital_klokke|tid:t[14]~q\ & (!\digital_klokke|Add2~27\ & VCC))
-- \digital_klokke|Add2~29\ = CARRY((\digital_klokke|tid:t[14]~q\ & !\digital_klokke|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[14]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~27\,
	combout => \digital_klokke|Add2~28_combout\,
	cout => \digital_klokke|Add2~29\);

-- Location: LCCOMB_X90_Y16_N30
\digital_klokke|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~30_combout\ = (\digital_klokke|tid:t[15]~q\ & (!\digital_klokke|Add2~29\)) # (!\digital_klokke|tid:t[15]~q\ & ((\digital_klokke|Add2~29\) # (GND)))
-- \digital_klokke|Add2~31\ = CARRY((!\digital_klokke|Add2~29\) # (!\digital_klokke|tid:t[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:t[15]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~29\,
	combout => \digital_klokke|Add2~30_combout\,
	cout => \digital_klokke|Add2~31\);

-- Location: LCCOMB_X91_Y16_N20
\digital_klokke|t~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~15_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~30_combout\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datab => \digital_klokke|Add2~30_combout\,
	datac => \digital_klokke|Equal1~9_combout\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~15_combout\);

-- Location: FF_X91_Y16_N21
\digital_klokke|tid:t[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~15_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[15]~q\);

-- Location: LCCOMB_X90_Y15_N0
\digital_klokke|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~32_combout\ = (\digital_klokke|tid:t[16]~q\ & (\digital_klokke|Add2~31\ $ (GND))) # (!\digital_klokke|tid:t[16]~q\ & (!\digital_klokke|Add2~31\ & VCC))
-- \digital_klokke|Add2~33\ = CARRY((\digital_klokke|tid:t[16]~q\ & !\digital_klokke|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[16]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~31\,
	combout => \digital_klokke|Add2~32_combout\,
	cout => \digital_klokke|Add2~33\);

-- Location: LCCOMB_X89_Y16_N28
\digital_klokke|t~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~16_combout\ = (\digital_klokke|Add2~32_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~4_combout\) # (\digital_klokke|Equal1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~4_combout\,
	datab => \digital_klokke|Add2~32_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Equal1~9_combout\,
	combout => \digital_klokke|t~16_combout\);

-- Location: FF_X89_Y16_N29
\digital_klokke|tid:t[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~16_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[16]~q\);

-- Location: LCCOMB_X90_Y15_N2
\digital_klokke|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~34_combout\ = (\digital_klokke|tid:t[17]~q\ & (!\digital_klokke|Add2~33\)) # (!\digital_klokke|tid:t[17]~q\ & ((\digital_klokke|Add2~33\) # (GND)))
-- \digital_klokke|Add2~35\ = CARRY((!\digital_klokke|Add2~33\) # (!\digital_klokke|tid:t[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[17]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~33\,
	combout => \digital_klokke|Add2~34_combout\,
	cout => \digital_klokke|Add2~35\);

-- Location: LCCOMB_X89_Y16_N26
\digital_klokke|t~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~17_combout\ = (\digital_klokke|Add2~34_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~34_combout\,
	datab => \digital_klokke|Equal1~9_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~17_combout\);

-- Location: FF_X90_Y16_N29
\digital_klokke|tid:t[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \digital_klokke|t~17_combout\,
	sload => VCC,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[17]~q\);

-- Location: LCCOMB_X90_Y15_N4
\digital_klokke|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~36_combout\ = (\digital_klokke|tid:t[18]~q\ & (\digital_klokke|Add2~35\ $ (GND))) # (!\digital_klokke|tid:t[18]~q\ & (!\digital_klokke|Add2~35\ & VCC))
-- \digital_klokke|Add2~37\ = CARRY((\digital_klokke|tid:t[18]~q\ & !\digital_klokke|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:t[18]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~35\,
	combout => \digital_klokke|Add2~36_combout\,
	cout => \digital_klokke|Add2~37\);

-- Location: LCCOMB_X89_Y16_N18
\digital_klokke|t~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~18_combout\ = (\digital_klokke|Add2~36_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~4_combout\) # (\digital_klokke|Equal1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~4_combout\,
	datab => \digital_klokke|Add2~36_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Equal1~9_combout\,
	combout => \digital_klokke|t~18_combout\);

-- Location: FF_X89_Y16_N19
\digital_klokke|tid:t[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~18_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[18]~q\);

-- Location: LCCOMB_X90_Y15_N6
\digital_klokke|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~38_combout\ = (\digital_klokke|tid:t[19]~q\ & (!\digital_klokke|Add2~37\)) # (!\digital_klokke|tid:t[19]~q\ & ((\digital_klokke|Add2~37\) # (GND)))
-- \digital_klokke|Add2~39\ = CARRY((!\digital_klokke|Add2~37\) # (!\digital_klokke|tid:t[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:t[19]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~37\,
	combout => \digital_klokke|Add2~38_combout\,
	cout => \digital_klokke|Add2~39\);

-- Location: LCCOMB_X89_Y16_N12
\digital_klokke|t~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~19_combout\ = (\digital_klokke|Add2~38_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~4_combout\) # (\digital_klokke|Equal1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~4_combout\,
	datab => \digital_klokke|Add2~38_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Equal1~9_combout\,
	combout => \digital_klokke|t~19_combout\);

-- Location: FF_X89_Y16_N13
\digital_klokke|tid:t[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~19_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[19]~q\);

-- Location: LCCOMB_X90_Y15_N8
\digital_klokke|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~40_combout\ = (\digital_klokke|tid:t[20]~q\ & (\digital_klokke|Add2~39\ $ (GND))) # (!\digital_klokke|tid:t[20]~q\ & (!\digital_klokke|Add2~39\ & VCC))
-- \digital_klokke|Add2~41\ = CARRY((\digital_klokke|tid:t[20]~q\ & !\digital_klokke|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:t[20]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~39\,
	combout => \digital_klokke|Add2~40_combout\,
	cout => \digital_klokke|Add2~41\);

-- Location: LCCOMB_X89_Y15_N0
\digital_klokke|t~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~20_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~40_combout\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~9_combout\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Add2~40_combout\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~20_combout\);

-- Location: FF_X89_Y15_N1
\digital_klokke|tid:t[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~20_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[20]~q\);

-- Location: LCCOMB_X90_Y15_N10
\digital_klokke|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~42_combout\ = (\digital_klokke|tid:t[21]~q\ & (!\digital_klokke|Add2~41\)) # (!\digital_klokke|tid:t[21]~q\ & ((\digital_klokke|Add2~41\) # (GND)))
-- \digital_klokke|Add2~43\ = CARRY((!\digital_klokke|Add2~41\) # (!\digital_klokke|tid:t[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[21]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~41\,
	combout => \digital_klokke|Add2~42_combout\,
	cout => \digital_klokke|Add2~43\);

-- Location: LCCOMB_X89_Y15_N16
\digital_klokke|t~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~22_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~44_combout\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~9_combout\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Add2~44_combout\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~22_combout\);

-- Location: FF_X89_Y15_N17
\digital_klokke|tid:t[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~22_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[22]~q\);

-- Location: LCCOMB_X90_Y15_N12
\digital_klokke|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~44_combout\ = (\digital_klokke|tid:t[22]~q\ & (\digital_klokke|Add2~43\ $ (GND))) # (!\digital_klokke|tid:t[22]~q\ & (!\digital_klokke|Add2~43\ & VCC))
-- \digital_klokke|Add2~45\ = CARRY((\digital_klokke|tid:t[22]~q\ & !\digital_klokke|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:t[22]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~43\,
	combout => \digital_klokke|Add2~44_combout\,
	cout => \digital_klokke|Add2~45\);

-- Location: LCCOMB_X89_Y15_N30
\digital_klokke|t~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~23_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~46_combout\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~9_combout\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Add2~46_combout\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~23_combout\);

-- Location: FF_X89_Y15_N31
\digital_klokke|tid:t[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~23_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[23]~q\);

-- Location: LCCOMB_X90_Y15_N14
\digital_klokke|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~46_combout\ = (\digital_klokke|tid:t[23]~q\ & (!\digital_klokke|Add2~45\)) # (!\digital_klokke|tid:t[23]~q\ & ((\digital_klokke|Add2~45\) # (GND)))
-- \digital_klokke|Add2~47\ = CARRY((!\digital_klokke|Add2~45\) # (!\digital_klokke|tid:t[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[23]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~45\,
	combout => \digital_klokke|Add2~46_combout\,
	cout => \digital_klokke|Add2~47\);

-- Location: LCCOMB_X89_Y15_N12
\digital_klokke|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal1~6_combout\ = (\digital_klokke|Add2~42_combout\) # ((\digital_klokke|Add2~40_combout\) # ((\digital_klokke|Add2~44_combout\) # (\digital_klokke|Add2~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~42_combout\,
	datab => \digital_klokke|Add2~40_combout\,
	datac => \digital_klokke|Add2~44_combout\,
	datad => \digital_klokke|Add2~46_combout\,
	combout => \digital_klokke|Equal1~6_combout\);

-- Location: LCCOMB_X89_Y15_N14
\digital_klokke|t~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~31_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~62_combout\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~9_combout\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Add2~62_combout\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~31_combout\);

-- Location: FF_X89_Y15_N15
\digital_klokke|tid:t[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~31_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[31]~q\);

-- Location: LCCOMB_X90_Y15_N16
\digital_klokke|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~48_combout\ = (\digital_klokke|tid:t[24]~q\ & (\digital_klokke|Add2~47\ $ (GND))) # (!\digital_klokke|tid:t[24]~q\ & (!\digital_klokke|Add2~47\ & VCC))
-- \digital_klokke|Add2~49\ = CARRY((\digital_klokke|tid:t[24]~q\ & !\digital_klokke|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:t[24]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~47\,
	combout => \digital_klokke|Add2~48_combout\,
	cout => \digital_klokke|Add2~49\);

-- Location: LCCOMB_X89_Y15_N26
\digital_klokke|t~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~24_combout\ = (\digital_klokke|Add2~48_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~9_combout\,
	datab => \digital_klokke|Add2~48_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~24_combout\);

-- Location: FF_X89_Y15_N27
\digital_klokke|tid:t[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~24_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[24]~q\);

-- Location: LCCOMB_X90_Y15_N18
\digital_klokke|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~50_combout\ = (\digital_klokke|tid:t[25]~q\ & (!\digital_klokke|Add2~49\)) # (!\digital_klokke|tid:t[25]~q\ & ((\digital_klokke|Add2~49\) # (GND)))
-- \digital_klokke|Add2~51\ = CARRY((!\digital_klokke|Add2~49\) # (!\digital_klokke|tid:t[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[25]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~49\,
	combout => \digital_klokke|Add2~50_combout\,
	cout => \digital_klokke|Add2~51\);

-- Location: LCCOMB_X89_Y15_N4
\digital_klokke|t~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~25_combout\ = (\digital_klokke|Add2~50_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~9_combout\,
	datab => \digital_klokke|Add2~50_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~25_combout\);

-- Location: FF_X89_Y15_N5
\digital_klokke|tid:t[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~25_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[25]~q\);

-- Location: LCCOMB_X90_Y15_N20
\digital_klokke|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~52_combout\ = (\digital_klokke|tid:t[26]~q\ & (\digital_klokke|Add2~51\ $ (GND))) # (!\digital_klokke|tid:t[26]~q\ & (!\digital_klokke|Add2~51\ & VCC))
-- \digital_klokke|Add2~53\ = CARRY((\digital_klokke|tid:t[26]~q\ & !\digital_klokke|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[26]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~51\,
	combout => \digital_klokke|Add2~52_combout\,
	cout => \digital_klokke|Add2~53\);

-- Location: LCCOMB_X89_Y15_N18
\digital_klokke|t~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~26_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~52_combout\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~9_combout\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Add2~52_combout\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~26_combout\);

-- Location: FF_X89_Y15_N19
\digital_klokke|tid:t[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~26_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[26]~q\);

-- Location: LCCOMB_X90_Y15_N22
\digital_klokke|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~54_combout\ = (\digital_klokke|tid:t[27]~q\ & (!\digital_klokke|Add2~53\)) # (!\digital_klokke|tid:t[27]~q\ & ((\digital_klokke|Add2~53\) # (GND)))
-- \digital_klokke|Add2~55\ = CARRY((!\digital_klokke|Add2~53\) # (!\digital_klokke|tid:t[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[27]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~53\,
	combout => \digital_klokke|Add2~54_combout\,
	cout => \digital_klokke|Add2~55\);

-- Location: LCCOMB_X89_Y15_N20
\digital_klokke|t~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~27_combout\ = (\digital_klokke|Add2~54_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~9_combout\,
	datab => \digital_klokke|Add2~54_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~27_combout\);

-- Location: FF_X89_Y15_N21
\digital_klokke|tid:t[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~27_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[27]~q\);

-- Location: LCCOMB_X90_Y15_N24
\digital_klokke|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~56_combout\ = (\digital_klokke|tid:t[28]~q\ & (\digital_klokke|Add2~55\ $ (GND))) # (!\digital_klokke|tid:t[28]~q\ & (!\digital_klokke|Add2~55\ & VCC))
-- \digital_klokke|Add2~57\ = CARRY((\digital_klokke|tid:t[28]~q\ & !\digital_klokke|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[28]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~55\,
	combout => \digital_klokke|Add2~56_combout\,
	cout => \digital_klokke|Add2~57\);

-- Location: LCCOMB_X89_Y15_N28
\digital_klokke|t~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~28_combout\ = (\digital_klokke|Add2~56_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~9_combout\,
	datab => \digital_klokke|Add2~56_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~28_combout\);

-- Location: FF_X89_Y15_N29
\digital_klokke|tid:t[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~28_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[28]~q\);

-- Location: LCCOMB_X90_Y15_N26
\digital_klokke|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~58_combout\ = (\digital_klokke|tid:t[29]~q\ & (!\digital_klokke|Add2~57\)) # (!\digital_klokke|tid:t[29]~q\ & ((\digital_klokke|Add2~57\) # (GND)))
-- \digital_klokke|Add2~59\ = CARRY((!\digital_klokke|Add2~57\) # (!\digital_klokke|tid:t[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|tid:t[29]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~57\,
	combout => \digital_klokke|Add2~58_combout\,
	cout => \digital_klokke|Add2~59\);

-- Location: LCCOMB_X89_Y15_N10
\digital_klokke|t~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~29_combout\ = (\digital_klokke|Add2~58_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~58_combout\,
	datab => \reset_synkroniseres_2|reset_sync~q\,
	datac => \digital_klokke|Equal1~9_combout\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~29_combout\);

-- Location: FF_X89_Y15_N11
\digital_klokke|tid:t[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~29_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[29]~q\);

-- Location: LCCOMB_X90_Y15_N28
\digital_klokke|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~60_combout\ = (\digital_klokke|tid:t[30]~q\ & (\digital_klokke|Add2~59\ $ (GND))) # (!\digital_klokke|tid:t[30]~q\ & (!\digital_klokke|Add2~59\ & VCC))
-- \digital_klokke|Add2~61\ = CARRY((\digital_klokke|tid:t[30]~q\ & !\digital_klokke|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|tid:t[30]~q\,
	datad => VCC,
	cin => \digital_klokke|Add2~59\,
	combout => \digital_klokke|Add2~60_combout\,
	cout => \digital_klokke|Add2~61\);

-- Location: LCCOMB_X89_Y15_N24
\digital_klokke|t~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~30_combout\ = (\digital_klokke|Add2~60_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~9_combout\,
	datab => \digital_klokke|Add2~60_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~30_combout\);

-- Location: FF_X89_Y15_N25
\digital_klokke|tid:t[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~30_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[30]~q\);

-- Location: LCCOMB_X90_Y15_N30
\digital_klokke|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~62_combout\ = \digital_klokke|Add2~61\ $ (\digital_klokke|tid:t[31]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \digital_klokke|tid:t[31]~q\,
	cin => \digital_klokke|Add2~61\,
	combout => \digital_klokke|Add2~62_combout\);

-- Location: LCCOMB_X89_Y15_N8
\digital_klokke|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal1~8_combout\ = (\digital_klokke|Add2~62_combout\) # ((\digital_klokke|Add2~60_combout\) # ((\digital_klokke|Add2~58_combout\) # (\digital_klokke|Add2~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~62_combout\,
	datab => \digital_klokke|Add2~60_combout\,
	datac => \digital_klokke|Add2~58_combout\,
	datad => \digital_klokke|Add2~56_combout\,
	combout => \digital_klokke|Equal1~8_combout\);

-- Location: LCCOMB_X89_Y16_N30
\digital_klokke|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal1~5_combout\ = (\digital_klokke|Add2~34_combout\) # ((\digital_klokke|Add2~32_combout\) # ((\digital_klokke|Add2~38_combout\) # (\digital_klokke|Add2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~34_combout\,
	datab => \digital_klokke|Add2~32_combout\,
	datac => \digital_klokke|Add2~38_combout\,
	datad => \digital_klokke|Add2~36_combout\,
	combout => \digital_klokke|Equal1~5_combout\);

-- Location: LCCOMB_X89_Y15_N2
\digital_klokke|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal1~7_combout\ = (\digital_klokke|Add2~48_combout\) # ((\digital_klokke|Add2~54_combout\) # ((\digital_klokke|Add2~52_combout\) # (\digital_klokke|Add2~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~48_combout\,
	datab => \digital_klokke|Add2~54_combout\,
	datac => \digital_klokke|Add2~52_combout\,
	datad => \digital_klokke|Add2~50_combout\,
	combout => \digital_klokke|Equal1~7_combout\);

-- Location: LCCOMB_X89_Y15_N22
\digital_klokke|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal1~9_combout\ = (\digital_klokke|Equal1~6_combout\) # ((\digital_klokke|Equal1~8_combout\) # ((\digital_klokke|Equal1~5_combout\) # (\digital_klokke|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~6_combout\,
	datab => \digital_klokke|Equal1~8_combout\,
	datac => \digital_klokke|Equal1~5_combout\,
	datad => \digital_klokke|Equal1~7_combout\,
	combout => \digital_klokke|Equal1~9_combout\);

-- Location: LCCOMB_X91_Y16_N22
\digital_klokke|t~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~14_combout\ = (\reset_synkroniseres_2|reset_sync~q\ & (\digital_klokke|Add2~28_combout\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datab => \digital_klokke|Add2~28_combout\,
	datac => \digital_klokke|Equal1~9_combout\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~14_combout\);

-- Location: FF_X91_Y16_N23
\digital_klokke|tid:t[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~14_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|tid:t[14]~q\);

-- Location: LCCOMB_X91_Y16_N30
\digital_klokke|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal1~3_combout\ = (\digital_klokke|Add2~28_combout\) # ((\digital_klokke|Add2~30_combout\) # ((\digital_klokke|Add2~26_combout\) # (\digital_klokke|Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~28_combout\,
	datab => \digital_klokke|Add2~30_combout\,
	datac => \digital_klokke|Add2~26_combout\,
	datad => \digital_klokke|Add2~24_combout\,
	combout => \digital_klokke|Equal1~3_combout\);

-- Location: LCCOMB_X91_Y16_N24
\digital_klokke|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal1~2_combout\ = (\digital_klokke|Add2~22_combout\) # ((\digital_klokke|Add2~18_combout\) # ((\digital_klokke|Add2~16_combout\) # (\digital_klokke|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~22_combout\,
	datab => \digital_klokke|Add2~18_combout\,
	datac => \digital_klokke|Add2~16_combout\,
	datad => \digital_klokke|Add2~20_combout\,
	combout => \digital_klokke|Equal1~2_combout\);

-- Location: LCCOMB_X89_Y16_N22
\digital_klokke|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal1~0_combout\ = (\digital_klokke|Add2~4_combout\) # ((\digital_klokke|Add2~2_combout\) # ((\digital_klokke|Add2~0_combout\) # (!\digital_klokke|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~4_combout\,
	datab => \digital_klokke|Add2~2_combout\,
	datac => \digital_klokke|Add2~0_combout\,
	datad => \digital_klokke|Add2~6_combout\,
	combout => \digital_klokke|Equal1~0_combout\);

-- Location: LCCOMB_X91_Y16_N18
\digital_klokke|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal1~1_combout\ = (\digital_klokke|Add2~14_combout\) # ((\digital_klokke|Add2~10_combout\) # ((\digital_klokke|Add2~12_combout\) # (!\digital_klokke|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~14_combout\,
	datab => \digital_klokke|Add2~10_combout\,
	datac => \digital_klokke|Add2~8_combout\,
	datad => \digital_klokke|Add2~12_combout\,
	combout => \digital_klokke|Equal1~1_combout\);

-- Location: LCCOMB_X91_Y16_N16
\digital_klokke|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Equal1~4_combout\ = (\digital_klokke|Equal1~3_combout\) # ((\digital_klokke|Equal1~2_combout\) # ((\digital_klokke|Equal1~0_combout\) # (\digital_klokke|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Equal1~3_combout\,
	datab => \digital_klokke|Equal1~2_combout\,
	datac => \digital_klokke|Equal1~0_combout\,
	datad => \digital_klokke|Equal1~1_combout\,
	combout => \digital_klokke|Equal1~4_combout\);

-- Location: LCCOMB_X89_Y16_N16
\digital_klokke|t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~0_combout\ = (\digital_klokke|Add2~0_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~4_combout\) # (\digital_klokke|Equal1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~0_combout\,
	datab => \digital_klokke|Equal1~4_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Equal1~9_combout\,
	combout => \digital_klokke|t~0_combout\);

-- Location: FF_X89_Y16_N17
\digital_klokke|timer_std[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~0_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|timer_std\(0));

-- Location: LCCOMB_X90_Y16_N2
\digital_klokke|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~2_combout\ = (\digital_klokke|timer_std\(1) & (!\digital_klokke|Add2~1\)) # (!\digital_klokke|timer_std\(1) & ((\digital_klokke|Add2~1\) # (GND)))
-- \digital_klokke|Add2~3\ = CARRY((!\digital_klokke|Add2~1\) # (!\digital_klokke|timer_std\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|timer_std\(1),
	datad => VCC,
	cin => \digital_klokke|Add2~1\,
	combout => \digital_klokke|Add2~2_combout\,
	cout => \digital_klokke|Add2~3\);

-- Location: LCCOMB_X89_Y16_N6
\digital_klokke|t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~1_combout\ = (\digital_klokke|Add2~2_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~4_combout\) # (\digital_klokke|Equal1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~2_combout\,
	datab => \digital_klokke|Equal1~4_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Equal1~9_combout\,
	combout => \digital_klokke|t~1_combout\);

-- Location: FF_X89_Y16_N7
\digital_klokke|timer_std[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \digital_klokke|t~1_combout\,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|timer_std\(1));

-- Location: LCCOMB_X90_Y16_N4
\digital_klokke|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~4_combout\ = (\digital_klokke|timer_std\(2) & (\digital_klokke|Add2~3\ $ (GND))) # (!\digital_klokke|timer_std\(2) & (!\digital_klokke|Add2~3\ & VCC))
-- \digital_klokke|Add2~5\ = CARRY((\digital_klokke|timer_std\(2) & !\digital_klokke|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|timer_std\(2),
	datad => VCC,
	cin => \digital_klokke|Add2~3\,
	combout => \digital_klokke|Add2~4_combout\,
	cout => \digital_klokke|Add2~5\);

-- Location: LCCOMB_X89_Y16_N20
\digital_klokke|t~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~4_combout\ = (\digital_klokke|Add2~4_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~4_combout\,
	datab => \digital_klokke|Equal1~9_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~4_combout\);

-- Location: FF_X88_Y16_N27
\digital_klokke|timer_std[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \digital_klokke|t~4_combout\,
	sload => VCC,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|timer_std\(2));

-- Location: LCCOMB_X90_Y16_N6
\digital_klokke|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|Add2~6_combout\ = (\digital_klokke|timer_std\(3) & (!\digital_klokke|Add2~5\)) # (!\digital_klokke|timer_std\(3) & ((\digital_klokke|Add2~5\) # (GND)))
-- \digital_klokke|Add2~7\ = CARRY((!\digital_klokke|Add2~5\) # (!\digital_klokke|timer_std\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|timer_std\(3),
	datad => VCC,
	cin => \digital_klokke|Add2~5\,
	combout => \digital_klokke|Add2~6_combout\,
	cout => \digital_klokke|Add2~7\);

-- Location: LCCOMB_X89_Y16_N14
\digital_klokke|t~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~3_combout\ = (\digital_klokke|Add2~6_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~6_combout\,
	datab => \digital_klokke|Equal1~9_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~3_combout\);

-- Location: FF_X88_Y16_N13
\digital_klokke|timer_std[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \digital_klokke|t~3_combout\,
	sload => VCC,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|timer_std\(3));

-- Location: LCCOMB_X89_Y16_N0
\digital_klokke|t~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|t~2_combout\ = (\digital_klokke|Add2~8_combout\ & (\reset_synkroniseres_2|reset_sync~q\ & ((\digital_klokke|Equal1~9_combout\) # (\digital_klokke|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|Add2~8_combout\,
	datab => \digital_klokke|Equal1~9_combout\,
	datac => \reset_synkroniseres_2|reset_sync~q\,
	datad => \digital_klokke|Equal1~4_combout\,
	combout => \digital_klokke|t~2_combout\);

-- Location: FF_X88_Y16_N1
\digital_klokke|timer_std[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \digital_klokke|t~2_combout\,
	sload => VCC,
	ena => \digital_klokke|tid:t[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digital_klokke|timer_std\(4));

-- Location: LCCOMB_X88_Y16_N16
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \digital_klokke|timer_std\(2) $ (VCC)
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(\digital_klokke|timer_std\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|timer_std\(2),
	datad => VCC,
	combout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X88_Y16_N18
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\digital_klokke|timer_std\(3) & (\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # 
-- (!\digital_klokke|timer_std\(3) & (!\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\digital_klokke|timer_std\(3) & !\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|timer_std\(3),
	datad => VCC,
	cin => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X88_Y16_N20
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\digital_klokke|timer_std\(4) & (\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # 
-- (!\digital_klokke|timer_std\(4) & (!\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((\digital_klokke|timer_std\(4) & !\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|timer_std\(4),
	datad => VCC,
	cin => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X88_Y16_N22
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY(!\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X88_Y16_N24
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X88_Y16_N0
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[28]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[28]~0_combout\ = (\digital_klokke|timer_std\(4) & \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|timer_std\(4),
	datad => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[28]~0_combout\);

-- Location: LCCOMB_X88_Y16_N30
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[28]~1_combout\ = (\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[28]~1_combout\);

-- Location: LCCOMB_X88_Y16_N26
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[27]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\ = (\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\);

-- Location: LCCOMB_X88_Y16_N12
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[27]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[27]~2_combout\ = (\digital_klokke|timer_std\(3) & \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|timer_std\(3),
	datad => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[27]~2_combout\);

-- Location: LCCOMB_X87_Y16_N16
\digital_klokke|bin2bcd_2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Add1~0_combout\ = (\digital_klokke|timer_std\(2) & \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|timer_std\(2),
	datad => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_2|Add1~0_combout\);

-- Location: LCCOMB_X88_Y16_N28
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[26]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ = (\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\);

-- Location: LCCOMB_X89_Y16_N4
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[25]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\ = (\digital_klokke|timer_std\(1) & \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|timer_std\(1),
	datad => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\);

-- Location: LCCOMB_X88_Y16_N14
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[25]~6_combout\ = (\digital_klokke|timer_std\(1) & !\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|timer_std\(1),
	datad => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[25]~6_combout\);

-- Location: LCCOMB_X88_Y16_N2
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY((\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\) # 
-- (\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[25]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[25]~5_combout\,
	datab => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[25]~6_combout\,
	datad => VCC,
	cout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X88_Y16_N4
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\digital_klokke|bin2bcd_2|Add1~0_combout\ & (!\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ & 
-- !\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_2|Add1~0_combout\,
	datab => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[26]~4_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X88_Y16_N6
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ & 
-- ((\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\) # (\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[27]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[27]~3_combout\,
	datab => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[27]~2_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X88_Y16_N8
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[28]~0_combout\ & 
-- (!\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[28]~1_combout\ & !\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[28]~0_combout\,
	datab => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|StageOut[28]~1_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X88_Y16_N10
\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X87_Y16_N4
\lcd|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~4_combout\ = (\lcd|Mux5~6_combout\ & (\lcd|Mux5~4_combout\)) # (!\lcd|Mux5~6_combout\ & ((\lcd|Mux5~4_combout\ & ((\digital_klokke|timer_std\(0)))) # (!\lcd|Mux5~4_combout\ & 
-- (!\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~6_combout\,
	datab => \lcd|Mux5~4_combout\,
	datac => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \digital_klokke|timer_std\(0),
	combout => \lcd|Mux6~4_combout\);

-- Location: LCCOMB_X87_Y20_N4
\lcd|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~5_combout\ = (!\lcd|CHAR_COUNT\(2) & ((\lcd|CHAR_COUNT\(1) & ((\memory_rtl_0|auto_generated|ram_block1a4\))) # (!\lcd|CHAR_COUNT\(1) & (!\lcd|CHAR_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \memory_rtl_0|auto_generated|ram_block1a4\,
	combout => \lcd|Mux6~5_combout\);

-- Location: LCCOMB_X86_Y18_N14
\lcd|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~9_combout\ = (\lcd|CHAR_COUNT\(2) & ((\lcd|CHAR_COUNT\(0)) # (!\lcd|CHAR_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Mux5~9_combout\);

-- Location: LCCOMB_X88_Y20_N0
\lcd|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~1_combout\ = (!\lcd|CHAR_COUNT\(0) & \digital_klokke|minutt_std\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(0),
	datad => \digital_klokke|minutt_std\(0),
	combout => \lcd|Mux6~1_combout\);

-- Location: LCCOMB_X86_Y18_N24
\lcd|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~8_combout\ = (\lcd|CHAR_COUNT\(2) & (!\lcd|CHAR_COUNT\(1))) # (!\lcd|CHAR_COUNT\(2) & ((\lcd|CHAR_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Mux5~8_combout\);

-- Location: LCCOMB_X89_Y18_N14
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \digital_klokke|minutt_std\(3) $ (VCC)
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\digital_klokke|minutt_std\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|minutt_std\(3),
	datad => VCC,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X89_Y18_N16
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\digital_klokke|minutt_std\(4) & (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # 
-- (!\digital_klokke|minutt_std\(4) & (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\digital_klokke|minutt_std\(4) & !\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|minutt_std\(4),
	datad => VCC,
	cin => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X89_Y18_N18
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\digital_klokke|minutt_std\(5) & (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # 
-- (!\digital_klokke|minutt_std\(5) & (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\digital_klokke|minutt_std\(5) & !\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|minutt_std\(5),
	datad => VCC,
	cin => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X89_Y18_N20
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X89_Y18_N22
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X89_Y18_N30
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[23]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[23]~16_combout\ = (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \digital_klokke|minutt_std\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \digital_klokke|minutt_std\(5),
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[23]~16_combout\);

-- Location: LCCOMB_X88_Y18_N4
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[23]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[23]~17_combout\ = (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[23]~17_combout\);

-- Location: LCCOMB_X89_Y18_N2
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~19_combout\ = (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~19_combout\);

-- Location: LCCOMB_X89_Y18_N0
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~18_combout\ = (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \digital_klokke|minutt_std\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \digital_klokke|minutt_std\(4),
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~18_combout\);

-- Location: LCCOMB_X89_Y18_N4
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~21_combout\ = (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~21_combout\);

-- Location: LCCOMB_X88_Y18_N18
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~20_combout\ = (\digital_klokke|minutt_std\(3) & \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|minutt_std\(3),
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~20_combout\);

-- Location: LCCOMB_X88_Y18_N12
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[20]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[20]~23_combout\ = (\digital_klokke|minutt_std\(2) & !\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|minutt_std\(2),
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[20]~23_combout\);

-- Location: LCCOMB_X88_Y18_N14
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[20]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[20]~22_combout\ = (\digital_klokke|minutt_std\(2) & \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|minutt_std\(2),
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[20]~22_combout\);

-- Location: LCCOMB_X88_Y18_N22
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[20]~23_combout\) # 
-- (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[20]~22_combout\)))
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[20]~23_combout\) # 
-- (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[20]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[20]~23_combout\,
	datab => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[20]~22_combout\,
	datad => VCC,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X88_Y18_N24
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~21_combout\) # (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~20_combout\)))) # 
-- (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~21_combout\ & 
-- (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~20_combout\)))
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~21_combout\ & 
-- (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~20_combout\ & !\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~21_combout\,
	datab => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[21]~20_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X88_Y18_N26
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~19_combout\) # (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~18_combout\)))) # 
-- (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~19_combout\) # 
-- (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~18_combout\)))))
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~19_combout\) # (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~19_combout\,
	datab => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[22]~18_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X88_Y18_N28
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[23]~16_combout\ & 
-- (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[23]~17_combout\ & !\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[23]~16_combout\,
	datab => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X88_Y18_N30
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X88_Y18_N6
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[28]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ = (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\digital_klokke|minutt_std\(4)))) # (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \digital_klokke|minutt_std\(4),
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[28]~29_combout\);

-- Location: LCCOMB_X87_Y18_N16
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[28]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[28]~24_combout\ = (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[28]~24_combout\);

-- Location: LCCOMB_X87_Y18_N30
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[27]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[27]~25_combout\ = (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[27]~25_combout\);

-- Location: LCCOMB_X88_Y18_N0
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[27]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[27]~30_combout\ = (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\digital_klokke|minutt_std\(3)))) # (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \digital_klokke|minutt_std\(3),
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[27]~30_combout\);

-- Location: LCCOMB_X88_Y18_N20
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[26]~26_combout\ = (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[26]~26_combout\);

-- Location: LCCOMB_X88_Y18_N10
\digital_klokke|bin2bcd_1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Add1~2_combout\ = (\digital_klokke|minutt_std\(2) & \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|minutt_std\(2),
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_1|Add1~2_combout\);

-- Location: LCCOMB_X88_Y18_N2
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[25]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[25]~27_combout\ = (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \digital_klokke|minutt_std\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|minutt_std\(1),
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[25]~27_combout\);

-- Location: LCCOMB_X88_Y18_N16
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[25]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[25]~28_combout\ = (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \digital_klokke|minutt_std\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|minutt_std\(1),
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[25]~28_combout\);

-- Location: LCCOMB_X87_Y18_N4
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[25]~27_combout\) # 
-- (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[25]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[25]~27_combout\,
	datab => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[25]~28_combout\,
	datad => VCC,
	cout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X87_Y18_N6
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[26]~26_combout\ & (!\digital_klokke|bin2bcd_1|Add1~2_combout\ & 
-- !\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[26]~26_combout\,
	datab => \digital_klokke|bin2bcd_1|Add1~2_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X87_Y18_N8
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ & 
-- ((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[27]~25_combout\) # (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[27]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[27]~25_combout\,
	datab => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[27]~30_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X87_Y18_N10
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ & 
-- (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[28]~24_combout\ & !\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[28]~29_combout\,
	datab => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|StageOut[28]~24_combout\,
	datad => VCC,
	cin => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X87_Y18_N12
\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X87_Y20_N8
\lcd|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~2_combout\ = (\lcd|Mux5~9_combout\ & ((\lcd|Mux6~1_combout\) # ((!\lcd|Mux5~8_combout\)))) # (!\lcd|Mux5~9_combout\ & (((\lcd|Mux5~8_combout\ & !\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~9_combout\,
	datab => \lcd|Mux6~1_combout\,
	datac => \lcd|Mux5~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \lcd|Mux6~2_combout\);

-- Location: LCCOMB_X87_Y20_N2
\lcd|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~3_combout\ = (\lcd|Mux6~2_combout\ & ((\digital_klokke|sekund_std\(0)) # ((!\lcd|Mux5~0_combout\)))) # (!\lcd|Mux6~2_combout\ & (((!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \lcd|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|sekund_std\(0),
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \lcd|Mux6~2_combout\,
	datad => \lcd|Mux5~0_combout\,
	combout => \lcd|Mux6~3_combout\);

-- Location: LCCOMB_X87_Y20_N10
\lcd|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~6_combout\ = (\lcd|Mux6~4_combout\ & (((\lcd|Mux6~5_combout\)) # (!\lcd|Mux5~6_combout\))) # (!\lcd|Mux6~4_combout\ & (\lcd|Mux5~6_combout\ & ((\lcd|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~4_combout\,
	datab => \lcd|Mux5~6_combout\,
	datac => \lcd|Mux6~5_combout\,
	datad => \lcd|Mux6~3_combout\,
	combout => \lcd|Mux6~6_combout\);

-- Location: LCCOMB_X87_Y20_N12
\lcd|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~7_combout\ = (\lcd|Mux5~3_combout\ & (((\lcd|CHAR_COUNT\(3))))) # (!\lcd|Mux5~3_combout\ & ((\lcd|CHAR_COUNT\(3) & ((\lcd|Mux6~6_combout\))) # (!\lcd|CHAR_COUNT\(3) & (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \lcd|Mux5~3_combout\,
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|Mux6~6_combout\,
	combout => \lcd|Mux6~7_combout\);

-- Location: LCCOMB_X87_Y20_N18
\lcd|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~8_combout\ = (\lcd|Mux5~3_combout\ & ((\lcd|Mux6~7_combout\ & ((\memory_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\lcd|Mux6~7_combout\ & (\SW[0]~input_o\)))) # (!\lcd|Mux5~3_combout\ & (((\lcd|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \lcd|Mux5~3_combout\,
	datac => \memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \lcd|Mux6~7_combout\,
	combout => \lcd|Mux6~8_combout\);

-- Location: LCCOMB_X87_Y20_N16
\lcd|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~9_combout\ = (\lcd|Mux5~19_combout\ & ((\lcd|Mux6~0_combout\) # ((\lcd|Mux5~1_combout\ & \lcd|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~1_combout\,
	datab => \lcd|Mux5~19_combout\,
	datac => \lcd|Mux6~0_combout\,
	datad => \lcd|Mux6~8_combout\,
	combout => \lcd|Mux6~9_combout\);

-- Location: LCCOMB_X87_Y20_N14
\lcd|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux6~11_combout\ = (\lcd|Mux6~9_combout\) # ((\lcd|Mux6~10_combout\ & (\lcd|CHAR_COUNT\(0) $ (\lcd|CHAR_COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~10_combout\,
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|Mux6~9_combout\,
	combout => \lcd|Mux6~11_combout\);

-- Location: LCCOMB_X86_Y19_N18
\lcd|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector9~0_combout\ = (\lcd|state.DISPLAY_CLEAR~q\) # ((\lcd|DATA_BUS_VALUE\(0) & ((\lcd|state.DROP_LCD_E~q\) # (\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DROP_LCD_E~q\,
	datab => \lcd|state.DISPLAY_CLEAR~q\,
	datac => \lcd|state.HOLD~q\,
	datad => \lcd|DATA_BUS_VALUE\(0),
	combout => \lcd|Selector9~0_combout\);

-- Location: LCCOMB_X86_Y20_N24
\lcd|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~2_combout\ = (\lcd|Mux5~19_combout\ & (!\lcd|Mux5~1_combout\ & (\lcd|CHAR_COUNT\(1) $ (\lcd|CHAR_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|Mux5~19_combout\,
	datad => \lcd|Mux5~1_combout\,
	combout => \lcd|Mux4~2_combout\);

-- Location: LCCOMB_X86_Y18_N22
\lcd|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~0_combout\ = (\lcd|CHAR_COUNT\(3)) # ((\lcd|CHAR_COUNT\(1)) # (\lcd|CHAR_COUNT\(2) $ (\lcd|CHAR_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(3),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Mux4~0_combout\);

-- Location: LCCOMB_X86_Y18_N8
\lcd|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~1_combout\ = (\lcd|Mux4~0_combout\ & (\lcd|CHAR_COUNT\(4) & (!\lcd|CHAR_COUNT\(3) & !\lcd|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux4~0_combout\,
	datab => \lcd|CHAR_COUNT\(4),
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|Mux5~0_combout\,
	combout => \lcd|Mux4~1_combout\);

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

-- Location: LCCOMB_X87_Y20_N22
\lcd|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~7_combout\ = (\lcd|CHAR_COUNT\(1) & (!\lcd|CHAR_COUNT\(2) & \memory_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \memory_rtl_0|auto_generated|ram_block1a6\,
	combout => \lcd|Mux4~7_combout\);

-- Location: LCCOMB_X88_Y19_N26
\lcd|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~5_combout\ = (!\lcd|CHAR_COUNT\(2) & (\lcd|CHAR_COUNT\(0) & !\lcd|CHAR_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux5~5_combout\);

-- Location: LCCOMB_X87_Y16_N28
\digital_klokke|bin2bcd_2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Add1~2_combout\ = \digital_klokke|timer_std\(2) $ (\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (((\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (\digital_klokke|timer_std\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|timer_std\(2),
	datab => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \digital_klokke|timer_std\(1),
	combout => \digital_klokke|bin2bcd_2|Add1~2_combout\);

-- Location: LCCOMB_X87_Y16_N22
\lcd|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~6_combout\ = (\lcd|Mux5~6_combout\ & ((\lcd|Mux5~5_combout\) # ((\lcd|CHAR_COUNT\(4))))) # (!\lcd|Mux5~6_combout\ & (\digital_klokke|bin2bcd_2|Add1~2_combout\ & ((\lcd|Mux5~5_combout\) # (\lcd|CHAR_COUNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~6_combout\,
	datab => \lcd|Mux5~5_combout\,
	datac => \lcd|CHAR_COUNT\(4),
	datad => \digital_klokke|bin2bcd_2|Add1~2_combout\,
	combout => \lcd|Mux4~6_combout\);

-- Location: LCCOMB_X88_Y18_N8
\digital_klokke|bin2bcd_1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Add1~4_combout\ = \digital_klokke|minutt_std\(2) $ (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|minutt_std\(2),
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_1|Add1~4_combout\);

-- Location: LCCOMB_X87_Y20_N28
\lcd|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~3_combout\ = (\lcd|CHAR_COUNT\(0)) # (\digital_klokke|bin2bcd_1|Add1~4_combout\ $ (((!\digital_klokke|minutt_std\(1) & !\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|minutt_std\(1),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \digital_klokke|bin2bcd_1|Add1~4_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \lcd|Mux4~3_combout\);

-- Location: LCCOMB_X87_Y20_N26
\lcd|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~4_combout\ = (\lcd|Mux5~9_combout\ & (((!\lcd|Mux4~3_combout\) # (!\lcd|Mux5~8_combout\)))) # (!\lcd|Mux5~9_combout\ & (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\lcd|Mux5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~9_combout\,
	datab => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \lcd|Mux5~8_combout\,
	datad => \lcd|Mux4~3_combout\,
	combout => \lcd|Mux4~4_combout\);

-- Location: LCCOMB_X87_Y20_N20
\lcd|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~5_combout\ = (\lcd|Mux5~0_combout\ & ((\lcd|Mux4~4_combout\ & ((\digital_klokke|bin2bcd_0|Add1~2_combout\))) # (!\lcd|Mux4~4_combout\ & (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # 
-- (!\lcd|Mux5~0_combout\ & (((\lcd|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \lcd|Mux5~0_combout\,
	datac => \lcd|Mux4~4_combout\,
	datad => \digital_klokke|bin2bcd_0|Add1~2_combout\,
	combout => \lcd|Mux4~5_combout\);

-- Location: LCCOMB_X87_Y20_N24
\lcd|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~8_combout\ = (\lcd|Mux4~6_combout\ & ((\lcd|Mux4~7_combout\) # ((!\lcd|Mux5~6_combout\)))) # (!\lcd|Mux4~6_combout\ & (((\lcd|Mux5~6_combout\ & \lcd|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux4~7_combout\,
	datab => \lcd|Mux4~6_combout\,
	datac => \lcd|Mux5~6_combout\,
	datad => \lcd|Mux4~5_combout\,
	combout => \lcd|Mux4~8_combout\);

-- Location: LCCOMB_X87_Y20_N6
\lcd|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~9_combout\ = (\lcd|Mux5~3_combout\ & (((\lcd|CHAR_COUNT\(3))))) # (!\lcd|Mux5~3_combout\ & ((\lcd|CHAR_COUNT\(3) & ((\lcd|Mux4~8_combout\))) # (!\lcd|CHAR_COUNT\(3) & (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \lcd|Mux5~3_combout\,
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|Mux4~8_combout\,
	combout => \lcd|Mux4~9_combout\);

-- Location: LCCOMB_X87_Y20_N0
\lcd|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~10_combout\ = (\lcd|Mux5~3_combout\ & ((\lcd|Mux4~9_combout\ & ((\memory_rtl_0|auto_generated|ram_block1a2\))) # (!\lcd|Mux4~9_combout\ & (\SW[2]~input_o\)))) # (!\lcd|Mux5~3_combout\ & (((\lcd|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \lcd|Mux5~3_combout\,
	datac => \memory_rtl_0|auto_generated|ram_block1a2\,
	datad => \lcd|Mux4~9_combout\,
	combout => \lcd|Mux4~10_combout\);

-- Location: LCCOMB_X87_Y20_N30
\lcd|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux4~11_combout\ = (\lcd|Mux4~2_combout\) # ((\lcd|Mux4~1_combout\) # ((\lcd|Mux5~1_combout\ & \lcd|Mux4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~1_combout\,
	datab => \lcd|Mux4~2_combout\,
	datac => \lcd|Mux4~1_combout\,
	datad => \lcd|Mux4~10_combout\,
	combout => \lcd|Mux4~11_combout\);

-- Location: LCCOMB_X86_Y18_N28
\lcd|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux1~1_combout\ = (\lcd|CHAR_COUNT\(2) & (\lcd|CHAR_COUNT\(0) & (\lcd|CHAR_COUNT\(1) $ (\lcd|CHAR_COUNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Mux1~1_combout\);

-- Location: LCCOMB_X86_Y18_N10
\lcd|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux1~0_combout\ = (\lcd|CHAR_COUNT\(2) & ((\lcd|CHAR_COUNT\(4)) # ((!\lcd|CHAR_COUNT\(1) & \lcd|CHAR_COUNT\(0))))) # (!\lcd|CHAR_COUNT\(2) & ((\lcd|CHAR_COUNT\(1) & (!\lcd|CHAR_COUNT\(4) & !\lcd|CHAR_COUNT\(0))) # (!\lcd|CHAR_COUNT\(1) & 
-- (\lcd|CHAR_COUNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Mux1~0_combout\);

-- Location: LCCOMB_X86_Y18_N30
\lcd|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux1~2_combout\ = (\lcd|CHAR_COUNT\(3) & ((\lcd|Mux1~0_combout\))) # (!\lcd|CHAR_COUNT\(3) & (\lcd|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(3),
	datab => \lcd|Mux1~1_combout\,
	datad => \lcd|Mux1~0_combout\,
	combout => \lcd|Mux1~2_combout\);

-- Location: LCCOMB_X88_Y19_N14
\lcd|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux0~0_combout\ = (\lcd|CHAR_COUNT\(2) & ((\lcd|CHAR_COUNT\(1) & ((\lcd|CHAR_COUNT\(0)) # (\lcd|CHAR_COUNT\(4)))) # (!\lcd|CHAR_COUNT\(1) & (\lcd|CHAR_COUNT\(0) & \lcd|CHAR_COUNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|CHAR_COUNT\(4),
	combout => \lcd|Mux0~0_combout\);

-- Location: LCCOMB_X86_Y18_N12
\lcd|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux2~0_combout\ = (\lcd|CHAR_COUNT\(2) & (!\lcd|CHAR_COUNT\(4) & (\lcd|CHAR_COUNT\(3) $ (\lcd|CHAR_COUNT\(1))))) # (!\lcd|CHAR_COUNT\(2) & ((\lcd|CHAR_COUNT\(4) & ((!\lcd|CHAR_COUNT\(1)))) # (!\lcd|CHAR_COUNT\(4) & (\lcd|CHAR_COUNT\(3) & 
-- \lcd|CHAR_COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(3),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux2~0_combout\);

-- Location: LCCOMB_X86_Y18_N26
\lcd|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux2~1_combout\ = (\lcd|Mux2~0_combout\ & ((\lcd|CHAR_COUNT\(1) & (\lcd|CHAR_COUNT\(3) $ (\lcd|CHAR_COUNT\(0)))) # (!\lcd|CHAR_COUNT\(1) & ((\lcd|CHAR_COUNT\(0)) # (!\lcd|CHAR_COUNT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux2~0_combout\,
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Mux2~1_combout\);

-- Location: LCCOMB_X88_Y19_N28
\lcd|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Equal0~0_combout\ = (!\lcd|Mux1~2_combout\ & (!\lcd|Mux2~1_combout\ & ((\lcd|Mux0~0_combout\) # (\lcd|CHAR_COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux1~2_combout\,
	datab => \lcd|Mux0~0_combout\,
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|Mux2~1_combout\,
	combout => \lcd|Equal0~0_combout\);

-- Location: LCCOMB_X86_Y18_N18
\lcd|Mux5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~17_combout\ = (\lcd|CHAR_COUNT\(4) & (!\lcd|CHAR_COUNT\(2) & ((!\lcd|CHAR_COUNT\(0))))) # (!\lcd|CHAR_COUNT\(4) & (((\lcd|CHAR_COUNT\(1)) # (!\lcd|CHAR_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Mux5~17_combout\);

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

-- Location: LCCOMB_X87_Y16_N26
\digital_klokke|bin2bcd_2|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Add1~1_combout\ = \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\digital_klokke|timer_std\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \digital_klokke|timer_std\(1),
	combout => \digital_klokke|bin2bcd_2|Add1~1_combout\);

-- Location: LCCOMB_X86_Y18_N4
\lcd|Mux5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~13_combout\ = (!\lcd|CHAR_COUNT\(2) & ((\lcd|CHAR_COUNT\(1) & (\memory_rtl_0|auto_generated|ram_block1a5\)) # (!\lcd|CHAR_COUNT\(1) & ((\lcd|CHAR_COUNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rtl_0|auto_generated|ram_block1a5\,
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux5~13_combout\);

-- Location: LCCOMB_X87_Y18_N22
\lcd|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~7_combout\ = (\lcd|CHAR_COUNT\(0)) # (\digital_klokke|minutt_std\(1) $ (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|minutt_std\(1),
	datab => \lcd|CHAR_COUNT\(0),
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \lcd|Mux5~7_combout\);

-- Location: LCCOMB_X87_Y18_N28
\lcd|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~10_combout\ = (\lcd|Mux5~8_combout\ & ((\lcd|Mux5~9_combout\ & ((\lcd|Mux5~7_combout\))) # (!\lcd|Mux5~9_combout\ & (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\lcd|Mux5~8_combout\ & 
-- (((!\lcd|Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \lcd|Mux5~8_combout\,
	datac => \lcd|Mux5~7_combout\,
	datad => \lcd|Mux5~9_combout\,
	combout => \lcd|Mux5~10_combout\);

-- Location: LCCOMB_X87_Y18_N18
\lcd|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~11_combout\ = (\lcd|Mux5~0_combout\ & ((\lcd|Mux5~10_combout\ & (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\lcd|Mux5~10_combout\ & ((\digital_klokke|bin2bcd_0|Add1~1_combout\))))) # 
-- (!\lcd|Mux5~0_combout\ & (((\lcd|Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~0_combout\,
	datab => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_0|Add1~1_combout\,
	datad => \lcd|Mux5~10_combout\,
	combout => \lcd|Mux5~11_combout\);

-- Location: LCCOMB_X87_Y18_N24
\lcd|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~12_combout\ = (\lcd|Mux5~4_combout\ & (((\lcd|Mux5~6_combout\)))) # (!\lcd|Mux5~4_combout\ & ((\lcd|Mux5~6_combout\ & ((\lcd|Mux5~11_combout\))) # (!\lcd|Mux5~6_combout\ & 
-- (!\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~4_combout\,
	datab => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \lcd|Mux5~6_combout\,
	datad => \lcd|Mux5~11_combout\,
	combout => \lcd|Mux5~12_combout\);

-- Location: LCCOMB_X87_Y18_N2
\lcd|Mux5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~14_combout\ = (\lcd|Mux5~4_combout\ & ((\lcd|Mux5~12_combout\ & ((\lcd|Mux5~13_combout\))) # (!\lcd|Mux5~12_combout\ & (!\digital_klokke|bin2bcd_2|Add1~1_combout\)))) # (!\lcd|Mux5~4_combout\ & (((\lcd|Mux5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~4_combout\,
	datab => \digital_klokke|bin2bcd_2|Add1~1_combout\,
	datac => \lcd|Mux5~13_combout\,
	datad => \lcd|Mux5~12_combout\,
	combout => \lcd|Mux5~14_combout\);

-- Location: LCCOMB_X87_Y18_N20
\lcd|Mux5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~15_combout\ = (\lcd|CHAR_COUNT\(3) & (((\lcd|Mux5~3_combout\) # (\lcd|Mux5~14_combout\)))) # (!\lcd|CHAR_COUNT\(3) & (\SW[5]~input_o\ & (!\lcd|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \lcd|CHAR_COUNT\(3),
	datac => \lcd|Mux5~3_combout\,
	datad => \lcd|Mux5~14_combout\,
	combout => \lcd|Mux5~15_combout\);

-- Location: LCCOMB_X87_Y18_N26
\lcd|Mux5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~16_combout\ = (\lcd|Mux5~3_combout\ & ((\lcd|Mux5~15_combout\ & (\memory_rtl_0|auto_generated|ram_block1a1\)) # (!\lcd|Mux5~15_combout\ & ((\SW[1]~input_o\))))) # (!\lcd|Mux5~3_combout\ & (((\lcd|Mux5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_rtl_0|auto_generated|ram_block1a1\,
	datab => \SW[1]~input_o\,
	datac => \lcd|Mux5~3_combout\,
	datad => \lcd|Mux5~15_combout\,
	combout => \lcd|Mux5~16_combout\);

-- Location: LCCOMB_X86_Y18_N0
\lcd|Mux5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~18_combout\ = (\lcd|Mux5~17_combout\ & (((\lcd|Mux5~1_combout\ & \lcd|Mux5~16_combout\)) # (!\lcd|CHAR_COUNT\(3)))) # (!\lcd|Mux5~17_combout\ & (\lcd|Mux5~1_combout\ & ((\lcd|Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~17_combout\,
	datab => \lcd|Mux5~1_combout\,
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|Mux5~16_combout\,
	combout => \lcd|Mux5~18_combout\);

-- Location: LCCOMB_X86_Y20_N28
\lcd|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~2_combout\ = ((\lcd|CHAR_COUNT\(1)) # (!\lcd|CHAR_COUNT\(0))) # (!\lcd|CHAR_COUNT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux3~2_combout\);

-- Location: LCCOMB_X86_Y20_N30
\lcd|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~3_combout\ = (!\lcd|CHAR_COUNT\(4) & (!\lcd|CHAR_COUNT\(3) & \lcd|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(4),
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|Mux3~2_combout\,
	combout => \lcd|Mux3~3_combout\);

-- Location: LCCOMB_X89_Y19_N6
\lcd|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~0_combout\ = (\lcd|CHAR_COUNT\(4) & !\lcd|CHAR_COUNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Mux3~0_combout\);

-- Location: LCCOMB_X89_Y19_N0
\lcd|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~1_combout\ = (\lcd|Mux3~0_combout\ & ((\lcd|CHAR_COUNT\(0) & (!\lcd|CHAR_COUNT\(1) & \lcd|CHAR_COUNT\(2))) # (!\lcd|CHAR_COUNT\(0) & (\lcd|CHAR_COUNT\(1) & !\lcd|CHAR_COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(0),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|Mux3~0_combout\,
	combout => \lcd|Mux3~1_combout\);

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

-- Location: LCCOMB_X87_Y16_N6
\digital_klokke|bin2bcd_2|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Add1~3_combout\ = (\digital_klokke|timer_std\(2) & ((\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # 
-- ((\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (\digital_klokke|timer_std\(1))))) # (!\digital_klokke|timer_std\(2) & 
-- (\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (\digital_klokke|timer_std\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|timer_std\(2),
	datab => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \digital_klokke|timer_std\(1),
	combout => \digital_klokke|bin2bcd_2|Add1~3_combout\);

-- Location: LCCOMB_X87_Y16_N24
\digital_klokke|bin2bcd_2|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_2|Add1~4_combout\ = \digital_klokke|timer_std\(3) $ (\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (!\digital_klokke|bin2bcd_2|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digital_klokke|timer_std\(3),
	datac => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_2|Add1~3_combout\,
	combout => \digital_klokke|bin2bcd_2|Add1~4_combout\);

-- Location: LCCOMB_X88_Y19_N8
\lcd|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~7_combout\ = (!\lcd|CHAR_COUNT\(2) & ((\memory_rtl_0|auto_generated|ram_block1a7\) # (!\lcd|CHAR_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(2),
	datac => \memory_rtl_0|auto_generated|ram_block1a7\,
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux3~7_combout\);

-- Location: LCCOMB_X87_Y18_N14
\digital_klokke|bin2bcd_1|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Add1~5_combout\ = (\digital_klokke|minutt_std\(2) & (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\digital_klokke|minutt_std\(1)) # 
-- (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\digital_klokke|minutt_std\(2) & ((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\digital_klokke|minutt_std\(1) & !\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|minutt_std\(1),
	datab => \digital_klokke|minutt_std\(2),
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_1|Add1~5_combout\);

-- Location: LCCOMB_X87_Y18_N0
\digital_klokke|bin2bcd_1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Add1~6_combout\ = \digital_klokke|minutt_std\(3) $ (\digital_klokke|bin2bcd_1|Add1~5_combout\ $ (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|minutt_std\(3),
	datac => \digital_klokke|bin2bcd_1|Add1~5_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|bin2bcd_1|Add1~6_combout\);

-- Location: LCCOMB_X88_Y19_N2
\lcd|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~4_combout\ = (\lcd|CHAR_COUNT\(1) & (((!\lcd|CHAR_COUNT\(0))))) # (!\lcd|CHAR_COUNT\(1) & ((\lcd|CHAR_COUNT\(2) & ((\lcd|CHAR_COUNT\(0)) # (!\digital_klokke|bin2bcd_1|Add1~6_combout\))) # (!\lcd|CHAR_COUNT\(2) & (!\lcd|CHAR_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \digital_klokke|bin2bcd_1|Add1~6_combout\,
	combout => \lcd|Mux3~4_combout\);

-- Location: LCCOMB_X88_Y19_N24
\lcd|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~5_combout\ = (\lcd|CHAR_COUNT\(1) & ((\lcd|CHAR_COUNT\(2) & (\digital_klokke|bin2bcd_0|Add1~4_combout\ & !\lcd|Mux3~4_combout\)) # (!\lcd|CHAR_COUNT\(2) & ((\lcd|Mux3~4_combout\))))) # (!\lcd|CHAR_COUNT\(1) & (((\lcd|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \digital_klokke|bin2bcd_0|Add1~4_combout\,
	datad => \lcd|Mux3~4_combout\,
	combout => \lcd|Mux3~5_combout\);

-- Location: LCCOMB_X88_Y19_N18
\lcd|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~6_combout\ = (\lcd|Mux5~6_combout\ & ((\lcd|CHAR_COUNT\(4)) # ((\lcd|Mux5~5_combout\) # (\lcd|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~6_combout\,
	datab => \lcd|CHAR_COUNT\(4),
	datac => \lcd|Mux5~5_combout\,
	datad => \lcd|Mux3~5_combout\,
	combout => \lcd|Mux3~6_combout\);

-- Location: LCCOMB_X88_Y19_N10
\lcd|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~8_combout\ = (\lcd|Mux5~4_combout\ & ((\lcd|Mux3~6_combout\ & ((\lcd|Mux3~7_combout\))) # (!\lcd|Mux3~6_combout\ & (!\digital_klokke|bin2bcd_2|Add1~4_combout\)))) # (!\lcd|Mux5~4_combout\ & (((\lcd|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_2|Add1~4_combout\,
	datab => \lcd|Mux5~4_combout\,
	datac => \lcd|Mux3~7_combout\,
	datad => \lcd|Mux3~6_combout\,
	combout => \lcd|Mux3~8_combout\);

-- Location: LCCOMB_X88_Y19_N0
\lcd|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~9_combout\ = (\lcd|Mux5~3_combout\ & (((\lcd|CHAR_COUNT\(3))))) # (!\lcd|Mux5~3_combout\ & ((\lcd|CHAR_COUNT\(3) & ((\lcd|Mux3~8_combout\))) # (!\lcd|CHAR_COUNT\(3) & (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~3_combout\,
	datab => \SW[7]~input_o\,
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|Mux3~8_combout\,
	combout => \lcd|Mux3~9_combout\);

-- Location: LCCOMB_X88_Y19_N6
\lcd|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~10_combout\ = (\lcd|Mux5~3_combout\ & ((\lcd|Mux3~9_combout\ & ((\memory_rtl_0|auto_generated|ram_block1a3\))) # (!\lcd|Mux3~9_combout\ & (\SW[3]~input_o\)))) # (!\lcd|Mux5~3_combout\ & (((\lcd|Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~3_combout\,
	datab => \SW[3]~input_o\,
	datac => \memory_rtl_0|auto_generated|ram_block1a3\,
	datad => \lcd|Mux3~9_combout\,
	combout => \lcd|Mux3~10_combout\);

-- Location: LCCOMB_X88_Y19_N4
\lcd|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux3~11_combout\ = (\lcd|Mux3~3_combout\) # ((\lcd|Mux3~1_combout\) # ((\lcd|Mux5~1_combout\ & \lcd|Mux3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux3~3_combout\,
	datab => \lcd|Mux5~1_combout\,
	datac => \lcd|Mux3~1_combout\,
	datad => \lcd|Mux3~10_combout\,
	combout => \lcd|Mux3~11_combout\);

-- Location: LCCOMB_X87_Y19_N18
\lcd|DATA_BUS_VALUE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~0_combout\ = (\lcd|Equal0~0_combout\ & (\lcd|Mux3~11_combout\ & ((\lcd|Mux4~11_combout\) # (\lcd|Mux5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux4~11_combout\,
	datab => \lcd|Equal0~0_combout\,
	datac => \lcd|Mux5~18_combout\,
	datad => \lcd|Mux3~11_combout\,
	combout => \lcd|DATA_BUS_VALUE~0_combout\);

-- Location: LCCOMB_X87_Y19_N8
\lcd|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector9~1_combout\ = (\lcd|Selector9~0_combout\) # ((\lcd|state.Print_String~q\ & (\lcd|Mux6~11_combout\ $ (\lcd|DATA_BUS_VALUE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~q\,
	datab => \lcd|Mux6~11_combout\,
	datac => \lcd|Selector9~0_combout\,
	datad => \lcd|DATA_BUS_VALUE~0_combout\,
	combout => \lcd|Selector9~1_combout\);

-- Location: FF_X87_Y19_N9
\lcd|DATA_BUS_VALUE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector9~1_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(0));

-- Location: LCCOMB_X85_Y19_N2
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

-- Location: LCCOMB_X85_Y19_N10
\lcd|LCD_RW_INT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|LCD_RW_INT~0_combout\ = (!\lcd|state.HOLD~q\ & (!\lcd|state.DROP_LCD_E~q\ & \lcd|CLK_400HZ_Enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~q\,
	datab => \lcd|state.DROP_LCD_E~q\,
	datad => \lcd|CLK_400HZ_Enable~q\,
	combout => \lcd|LCD_RW_INT~0_combout\);

-- Location: FF_X85_Y19_N3
\lcd|LCD_RW_INT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|LCD_RW_INT~feeder_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|LCD_RW_INT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|LCD_RW_INT~q\);

-- Location: LCCOMB_X87_Y19_N20
\lcd|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector8~0_combout\ = (\lcd|state.Print_String~q\ & (\lcd|Mux5~18_combout\ $ (((!\lcd|Mux6~11_combout\ & \lcd|DATA_BUS_VALUE~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~q\,
	datab => \lcd|Mux6~11_combout\,
	datac => \lcd|Mux5~18_combout\,
	datad => \lcd|DATA_BUS_VALUE~0_combout\,
	combout => \lcd|Selector8~0_combout\);

-- Location: LCCOMB_X87_Y19_N26
\lcd|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector8~1_combout\ = (\lcd|state.MODE_SET~q\) # ((\lcd|Selector8~0_combout\) # ((!\lcd|LCD_RS~0_combout\ & \lcd|DATA_BUS_VALUE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|LCD_RS~0_combout\,
	datab => \lcd|state.MODE_SET~q\,
	datac => \lcd|DATA_BUS_VALUE\(1),
	datad => \lcd|Selector8~0_combout\,
	combout => \lcd|Selector8~1_combout\);

-- Location: FF_X87_Y19_N27
\lcd|DATA_BUS_VALUE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector8~1_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(1));

-- Location: LCCOMB_X84_Y19_N26
\lcd|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector7~0_combout\ = (\lcd|state.DISPLAY_ON~q\) # ((\lcd|state.MODE_SET~q\) # ((!\lcd|LCD_RS~0_combout\ & \lcd|DATA_BUS_VALUE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|LCD_RS~0_combout\,
	datab => \lcd|DATA_BUS_VALUE\(2),
	datac => \lcd|state.DISPLAY_ON~q\,
	datad => \lcd|state.MODE_SET~q\,
	combout => \lcd|Selector7~0_combout\);

-- Location: LCCOMB_X86_Y18_N2
\lcd|Mux5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Mux5~20_combout\ = (!\lcd|CHAR_COUNT\(3) & \lcd|Mux5~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|Mux5~17_combout\,
	combout => \lcd|Mux5~20_combout\);

-- Location: LCCOMB_X87_Y19_N2
\lcd|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add1~0_combout\ = (\lcd|Mux5~20_combout\) # ((\lcd|Mux6~11_combout\) # ((\lcd|Mux5~1_combout\ & \lcd|Mux5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~20_combout\,
	datab => \lcd|Mux5~1_combout\,
	datac => \lcd|Mux5~16_combout\,
	datad => \lcd|Mux6~11_combout\,
	combout => \lcd|Add1~0_combout\);

-- Location: LCCOMB_X87_Y19_N12
\lcd|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector7~1_combout\ = (\lcd|state.Print_String~q\ & (\lcd|Mux4~11_combout\ $ (((!\lcd|Add1~0_combout\ & \lcd|DATA_BUS_VALUE~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux4~11_combout\,
	datab => \lcd|Add1~0_combout\,
	datac => \lcd|state.Print_String~q\,
	datad => \lcd|DATA_BUS_VALUE~0_combout\,
	combout => \lcd|Selector7~1_combout\);

-- Location: LCCOMB_X87_Y19_N0
\lcd|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector7~2_combout\ = (\lcd|Selector7~0_combout\) # (\lcd|Selector7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|Selector7~0_combout\,
	datad => \lcd|Selector7~1_combout\,
	combout => \lcd|Selector7~2_combout\);

-- Location: FF_X87_Y19_N1
\lcd|DATA_BUS_VALUE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector7~2_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(2));

-- Location: LCCOMB_X87_Y19_N30
\lcd|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|LessThan1~0_combout\ = (\lcd|Mux5~20_combout\) # ((\lcd|Mux4~11_combout\) # ((\lcd|Mux5~1_combout\ & \lcd|Mux5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux5~20_combout\,
	datab => \lcd|Mux5~1_combout\,
	datac => \lcd|Mux4~11_combout\,
	datad => \lcd|Mux5~16_combout\,
	combout => \lcd|LessThan1~0_combout\);

-- Location: LCCOMB_X87_Y19_N10
\lcd|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector8~2_combout\ = (\lcd|state.Print_String~q\ & (\lcd|Equal0~0_combout\ & (\lcd|LessThan1~0_combout\ & \lcd|Mux3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~q\,
	datab => \lcd|Equal0~0_combout\,
	datac => \lcd|LessThan1~0_combout\,
	datad => \lcd|Mux3~11_combout\,
	combout => \lcd|Selector8~2_combout\);

-- Location: LCCOMB_X85_Y19_N12
\lcd|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector5~1_combout\ = (!\lcd|state.DISPLAY_ON~q\ & !\lcd|state.DISPLAY_OFF~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|state.DISPLAY_ON~q\,
	datad => \lcd|state.DISPLAY_OFF~q\,
	combout => \lcd|Selector5~1_combout\);

-- Location: LCCOMB_X86_Y19_N10
\lcd|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector6~1_combout\ = ((\lcd|state.RESET3~q\) # ((\lcd|state.RESET2~q\) # (\lcd|state.FUNC_SET~q\))) # (!\lcd|Selector5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Selector5~1_combout\,
	datab => \lcd|state.RESET3~q\,
	datac => \lcd|state.RESET2~q\,
	datad => \lcd|state.FUNC_SET~q\,
	combout => \lcd|Selector6~1_combout\);

-- Location: LCCOMB_X86_Y19_N24
\lcd|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector6~2_combout\ = ((\lcd|Selector6~1_combout\) # ((!\lcd|LCD_RS~0_combout\ & !\lcd|DATA_BUS_VALUE\(3)))) # (!\lcd|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.RESET1~q\,
	datab => \lcd|Selector6~1_combout\,
	datac => \lcd|LCD_RS~0_combout\,
	datad => \lcd|DATA_BUS_VALUE\(3),
	combout => \lcd|Selector6~2_combout\);

-- Location: LCCOMB_X87_Y19_N4
\lcd|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector6~0_combout\ = (\lcd|state.Print_String~q\ & (\lcd|Mux3~11_combout\ & ((!\lcd|LessThan1~0_combout\) # (!\lcd|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~q\,
	datab => \lcd|Equal0~0_combout\,
	datac => \lcd|LessThan1~0_combout\,
	datad => \lcd|Mux3~11_combout\,
	combout => \lcd|Selector6~0_combout\);

-- Location: LCCOMB_X87_Y19_N28
\lcd|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Add1~1_combout\ = \lcd|Mux3~11_combout\ $ (((\lcd|Mux4~11_combout\) # (\lcd|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux3~11_combout\,
	datac => \lcd|Mux4~11_combout\,
	datad => \lcd|Add1~0_combout\,
	combout => \lcd|Add1~1_combout\);

-- Location: LCCOMB_X87_Y19_N14
\lcd|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector6~3_combout\ = (!\lcd|Selector6~2_combout\ & (!\lcd|Selector6~0_combout\ & ((!\lcd|Add1~1_combout\) # (!\lcd|Selector8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Selector8~2_combout\,
	datab => \lcd|Selector6~2_combout\,
	datac => \lcd|Selector6~0_combout\,
	datad => \lcd|Add1~1_combout\,
	combout => \lcd|Selector6~3_combout\);

-- Location: FF_X87_Y19_N15
\lcd|DATA_BUS_VALUE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector6~3_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(3));

-- Location: LCCOMB_X86_Y19_N28
\lcd|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector5~2_combout\ = (\lcd|state.Print_String~q\ & \lcd|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|state.Print_String~q\,
	datad => \lcd|Equal0~0_combout\,
	combout => \lcd|Selector5~2_combout\);

-- Location: LCCOMB_X86_Y19_N12
\lcd|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector5~3_combout\ = (\lcd|Selector5~1_combout\ & (!\lcd|state.Print_String~q\ & (!\lcd|state.DISPLAY_CLEAR~q\ & \lcd|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Selector5~1_combout\,
	datab => \lcd|state.Print_String~q\,
	datac => \lcd|state.DISPLAY_CLEAR~q\,
	datad => \lcd|Selector5~0_combout\,
	combout => \lcd|Selector5~3_combout\);

-- Location: LCCOMB_X87_Y19_N6
\lcd|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector5~4_combout\ = (!\lcd|Selector5~3_combout\ & (((\lcd|LessThan1~0_combout\ & \lcd|Mux3~11_combout\)) # (!\lcd|Selector5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Selector5~2_combout\,
	datab => \lcd|Selector5~3_combout\,
	datac => \lcd|LessThan1~0_combout\,
	datad => \lcd|Mux3~11_combout\,
	combout => \lcd|Selector5~4_combout\);

-- Location: LCCOMB_X87_Y19_N16
\lcd|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector5~5_combout\ = (\lcd|Selector5~4_combout\ & ((!\lcd|state.Print_String~q\) # (!\lcd|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Mux2~1_combout\,
	datac => \lcd|state.Print_String~q\,
	datad => \lcd|Selector5~4_combout\,
	combout => \lcd|Selector5~5_combout\);

-- Location: FF_X87_Y19_N17
\lcd|DATA_BUS_VALUE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector5~5_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|LCD_RW_INT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(4));

-- Location: LCCOMB_X87_Y19_N22
\lcd|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector4~0_combout\ = (\lcd|Selector5~4_combout\ & ((!\lcd|state.Print_String~q\) # (!\lcd|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Mux1~2_combout\,
	datac => \lcd|state.Print_String~q\,
	datad => \lcd|Selector5~4_combout\,
	combout => \lcd|Selector4~0_combout\);

-- Location: FF_X87_Y19_N23
\lcd|DATA_BUS_VALUE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector4~0_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|LCD_RW_INT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(5));

-- Location: LCCOMB_X88_Y19_N22
\lcd|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector3~1_combout\ = (!\lcd|Mux0~0_combout\ & !\lcd|CHAR_COUNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Mux0~0_combout\,
	datac => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Selector3~1_combout\);

-- Location: LCCOMB_X84_Y19_N28
\lcd|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector3~0_combout\ = (\lcd|state.LINE2~q\) # ((\lcd|DATA_BUS_VALUE\(6) & ((\lcd|state.DROP_LCD_E~q\) # (\lcd|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|DATA_BUS_VALUE\(6),
	datab => \lcd|state.LINE2~q\,
	datac => \lcd|state.DROP_LCD_E~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|Selector3~0_combout\);

-- Location: LCCOMB_X87_Y19_N24
\lcd|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector3~2_combout\ = (\lcd|Selector3~0_combout\) # ((\lcd|Selector8~2_combout\) # ((\lcd|state.Print_String~q\ & \lcd|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~q\,
	datab => \lcd|Selector3~1_combout\,
	datac => \lcd|Selector3~0_combout\,
	datad => \lcd|Selector8~2_combout\,
	combout => \lcd|Selector3~2_combout\);

-- Location: FF_X87_Y19_N25
\lcd|DATA_BUS_VALUE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector3~2_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(6));

-- Location: LCCOMB_X85_Y19_N18
\lcd|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector2~0_combout\ = (\lcd|state.RETURN_HOME~q\) # ((\lcd|state.LINE2~q\) # ((\lcd|DATA_BUS_VALUE\(7) & !\lcd|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.RETURN_HOME~q\,
	datab => \lcd|state.LINE2~q\,
	datac => \lcd|DATA_BUS_VALUE\(7),
	datad => \lcd|LCD_RS~0_combout\,
	combout => \lcd|Selector2~0_combout\);

-- Location: FF_X85_Y19_N19
\lcd|DATA_BUS_VALUE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector2~0_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|DATA_BUS_VALUE\(7));

-- Location: LCCOMB_X85_Y19_N0
\lcd|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|Selector1~0_combout\ = (\lcd|state.Print_String~q\) # ((\lcd|LCD_RS~q\ & ((\lcd|state.HOLD~q\) # (\lcd|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~q\,
	datab => \lcd|state.DROP_LCD_E~q\,
	datac => \lcd|LCD_RS~q\,
	datad => \lcd|state.Print_String~q\,
	combout => \lcd|Selector1~0_combout\);

-- Location: FF_X85_Y19_N1
\lcd|LCD_RS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|Selector1~0_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	ena => \lcd|CLK_400HZ_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|LCD_RS~q\);

-- Location: LCCOMB_X86_Y19_N0
\lcd|LCD_E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd|LCD_E~0_combout\ = (\lcd|CLK_400HZ_Enable~q\ & ((\lcd|state.HOLD~q\ & ((\lcd|LCD_E~q\))) # (!\lcd|state.HOLD~q\ & (\lcd|state.DROP_LCD_E~q\)))) # (!\lcd|CLK_400HZ_Enable~q\ & (((\lcd|LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DROP_LCD_E~q\,
	datab => \lcd|CLK_400HZ_Enable~q\,
	datac => \lcd|LCD_E~q\,
	datad => \lcd|state.HOLD~q\,
	combout => \lcd|LCD_E~0_combout\);

-- Location: FF_X86_Y19_N1
\lcd|LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \lcd|LCD_E~0_combout\,
	clrn => \reset_synkroniseres_3|reset_sync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd|LCD_E~q\);

-- Location: LCCOMB_X90_Y20_N8
\digital_klokke|dekoder_0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_0|Mux6~0_combout\ = (\digital_klokke|bin2bcd_0|Add1~4_combout\ & (\digital_klokke|sekund_std\(0) & (\digital_klokke|bin2bcd_0|Add1~1_combout\ $ (\digital_klokke|bin2bcd_0|Add1~2_combout\)))) # 
-- (!\digital_klokke|bin2bcd_0|Add1~4_combout\ & (!\digital_klokke|bin2bcd_0|Add1~1_combout\ & (\digital_klokke|sekund_std\(0) $ (\digital_klokke|bin2bcd_0|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Add1~1_combout\,
	datab => \digital_klokke|sekund_std\(0),
	datac => \digital_klokke|bin2bcd_0|Add1~4_combout\,
	datad => \digital_klokke|bin2bcd_0|Add1~2_combout\,
	combout => \digital_klokke|dekoder_0|Mux6~0_combout\);

-- Location: LCCOMB_X90_Y20_N2
\digital_klokke|dekoder_0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_0|Mux5~0_combout\ = (\digital_klokke|bin2bcd_0|Add1~1_combout\ & ((\digital_klokke|sekund_std\(0) & (\digital_klokke|bin2bcd_0|Add1~4_combout\)) # (!\digital_klokke|sekund_std\(0) & ((\digital_klokke|bin2bcd_0|Add1~2_combout\))))) 
-- # (!\digital_klokke|bin2bcd_0|Add1~1_combout\ & (\digital_klokke|bin2bcd_0|Add1~2_combout\ & (\digital_klokke|sekund_std\(0) $ (\digital_klokke|bin2bcd_0|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Add1~1_combout\,
	datab => \digital_klokke|sekund_std\(0),
	datac => \digital_klokke|bin2bcd_0|Add1~4_combout\,
	datad => \digital_klokke|bin2bcd_0|Add1~2_combout\,
	combout => \digital_klokke|dekoder_0|Mux5~0_combout\);

-- Location: LCCOMB_X90_Y20_N0
\digital_klokke|dekoder_0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_0|Mux4~0_combout\ = (\digital_klokke|bin2bcd_0|Add1~4_combout\ & (\digital_klokke|bin2bcd_0|Add1~2_combout\ & ((\digital_klokke|bin2bcd_0|Add1~1_combout\) # (!\digital_klokke|sekund_std\(0))))) # 
-- (!\digital_klokke|bin2bcd_0|Add1~4_combout\ & (\digital_klokke|bin2bcd_0|Add1~1_combout\ & (!\digital_klokke|sekund_std\(0) & !\digital_klokke|bin2bcd_0|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Add1~1_combout\,
	datab => \digital_klokke|sekund_std\(0),
	datac => \digital_klokke|bin2bcd_0|Add1~4_combout\,
	datad => \digital_klokke|bin2bcd_0|Add1~2_combout\,
	combout => \digital_klokke|dekoder_0|Mux4~0_combout\);

-- Location: LCCOMB_X90_Y20_N14
\digital_klokke|dekoder_0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_0|Mux3~0_combout\ = (\digital_klokke|bin2bcd_0|Add1~1_combout\ & ((\digital_klokke|sekund_std\(0) & ((\digital_klokke|bin2bcd_0|Add1~2_combout\))) # (!\digital_klokke|sekund_std\(0) & (\digital_klokke|bin2bcd_0|Add1~4_combout\ & 
-- !\digital_klokke|bin2bcd_0|Add1~2_combout\)))) # (!\digital_klokke|bin2bcd_0|Add1~1_combout\ & (!\digital_klokke|bin2bcd_0|Add1~4_combout\ & (\digital_klokke|sekund_std\(0) $ (\digital_klokke|bin2bcd_0|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Add1~1_combout\,
	datab => \digital_klokke|sekund_std\(0),
	datac => \digital_klokke|bin2bcd_0|Add1~4_combout\,
	datad => \digital_klokke|bin2bcd_0|Add1~2_combout\,
	combout => \digital_klokke|dekoder_0|Mux3~0_combout\);

-- Location: LCCOMB_X90_Y20_N26
\digital_klokke|dekoder_0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_0|Mux2~0_combout\ = (\digital_klokke|bin2bcd_0|Add1~1_combout\ & (\digital_klokke|sekund_std\(0) & (!\digital_klokke|bin2bcd_0|Add1~4_combout\))) # (!\digital_klokke|bin2bcd_0|Add1~1_combout\ & 
-- ((\digital_klokke|bin2bcd_0|Add1~2_combout\ & ((!\digital_klokke|bin2bcd_0|Add1~4_combout\))) # (!\digital_klokke|bin2bcd_0|Add1~2_combout\ & (\digital_klokke|sekund_std\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Add1~1_combout\,
	datab => \digital_klokke|sekund_std\(0),
	datac => \digital_klokke|bin2bcd_0|Add1~4_combout\,
	datad => \digital_klokke|bin2bcd_0|Add1~2_combout\,
	combout => \digital_klokke|dekoder_0|Mux2~0_combout\);

-- Location: LCCOMB_X90_Y20_N4
\digital_klokke|dekoder_0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_0|Mux1~0_combout\ = (\digital_klokke|bin2bcd_0|Add1~1_combout\ & (!\digital_klokke|bin2bcd_0|Add1~4_combout\ & ((\digital_klokke|sekund_std\(0)) # (!\digital_klokke|bin2bcd_0|Add1~2_combout\)))) # 
-- (!\digital_klokke|bin2bcd_0|Add1~1_combout\ & (\digital_klokke|sekund_std\(0) & (\digital_klokke|bin2bcd_0|Add1~4_combout\ $ (!\digital_klokke|bin2bcd_0|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Add1~1_combout\,
	datab => \digital_klokke|sekund_std\(0),
	datac => \digital_klokke|bin2bcd_0|Add1~4_combout\,
	datad => \digital_klokke|bin2bcd_0|Add1~2_combout\,
	combout => \digital_klokke|dekoder_0|Mux1~0_combout\);

-- Location: LCCOMB_X90_Y20_N30
\digital_klokke|dekoder_0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_0|Mux0~0_combout\ = (\digital_klokke|sekund_std\(0) & ((\digital_klokke|bin2bcd_0|Add1~4_combout\) # (\digital_klokke|bin2bcd_0|Add1~1_combout\ $ (\digital_klokke|bin2bcd_0|Add1~2_combout\)))) # (!\digital_klokke|sekund_std\(0) & 
-- ((\digital_klokke|bin2bcd_0|Add1~1_combout\) # (\digital_klokke|bin2bcd_0|Add1~4_combout\ $ (\digital_klokke|bin2bcd_0|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Add1~1_combout\,
	datab => \digital_klokke|sekund_std\(0),
	datac => \digital_klokke|bin2bcd_0|Add1~4_combout\,
	datad => \digital_klokke|bin2bcd_0|Add1~2_combout\,
	combout => \digital_klokke|dekoder_0|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y20_N4
\digital_klokke|dekoder_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_1|Mux6~0_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y20_N18
\digital_klokke|dekoder_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_1|Mux5~0_combout\ = (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y20_N0
\digital_klokke|dekoder_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_1|Mux4~0_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y20_N22
\digital_klokke|dekoder_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_1|Mux3~0_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_1|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y20_N12
\digital_klokke|dekoder_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_1|Mux2~0_combout\ = ((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y20_N10
\digital_klokke|dekoder_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_1|Mux1~0_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y20_N16
\digital_klokke|dekoder_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_1|Mux0~0_combout\ = (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # 
-- (!\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # 
-- (\digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_1|Mux0~0_combout\);

-- Location: LCCOMB_X107_Y16_N18
\digital_klokke|bin2bcd_1|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Add1~7_combout\ = \digital_klokke|minutt_std\(2) $ (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (\digital_klokke|minutt_std\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \digital_klokke|minutt_std\(2),
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|minutt_std\(1),
	combout => \digital_klokke|bin2bcd_1|Add1~7_combout\);

-- Location: LCCOMB_X107_Y16_N28
\digital_klokke|bin2bcd_1|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|bin2bcd_1|Add1~3_combout\ = \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\digital_klokke|minutt_std\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \digital_klokke|minutt_std\(1),
	combout => \digital_klokke|bin2bcd_1|Add1~3_combout\);

-- Location: LCCOMB_X107_Y16_N2
\digital_klokke|dekoder_2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_2|Mux6~0_combout\ = (\digital_klokke|bin2bcd_1|Add1~7_combout\ & (\digital_klokke|bin2bcd_1|Add1~3_combout\ & (\digital_klokke|minutt_std\(0) $ (\digital_klokke|bin2bcd_1|Add1~6_combout\)))) # 
-- (!\digital_klokke|bin2bcd_1|Add1~7_combout\ & (\digital_klokke|minutt_std\(0) & (\digital_klokke|bin2bcd_1|Add1~6_combout\ $ (!\digital_klokke|bin2bcd_1|Add1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|minutt_std\(0),
	datab => \digital_klokke|bin2bcd_1|Add1~7_combout\,
	datac => \digital_klokke|bin2bcd_1|Add1~6_combout\,
	datad => \digital_klokke|bin2bcd_1|Add1~3_combout\,
	combout => \digital_klokke|dekoder_2|Mux6~0_combout\);

-- Location: LCCOMB_X107_Y16_N0
\digital_klokke|dekoder_2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_2|Mux5~0_combout\ = (\digital_klokke|bin2bcd_1|Add1~6_combout\ & (\digital_klokke|bin2bcd_1|Add1~7_combout\ & (\digital_klokke|minutt_std\(0) $ (!\digital_klokke|bin2bcd_1|Add1~3_combout\)))) # 
-- (!\digital_klokke|bin2bcd_1|Add1~6_combout\ & ((\digital_klokke|minutt_std\(0) & ((!\digital_klokke|bin2bcd_1|Add1~3_combout\))) # (!\digital_klokke|minutt_std\(0) & (\digital_klokke|bin2bcd_1|Add1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|minutt_std\(0),
	datab => \digital_klokke|bin2bcd_1|Add1~7_combout\,
	datac => \digital_klokke|bin2bcd_1|Add1~6_combout\,
	datad => \digital_klokke|bin2bcd_1|Add1~3_combout\,
	combout => \digital_klokke|dekoder_2|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y16_N10
\digital_klokke|dekoder_2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_2|Mux4~0_combout\ = (\digital_klokke|bin2bcd_1|Add1~7_combout\ & (!\digital_klokke|bin2bcd_1|Add1~6_combout\ & ((!\digital_klokke|bin2bcd_1|Add1~3_combout\) # (!\digital_klokke|minutt_std\(0))))) # 
-- (!\digital_klokke|bin2bcd_1|Add1~7_combout\ & (!\digital_klokke|minutt_std\(0) & (\digital_klokke|bin2bcd_1|Add1~6_combout\ & !\digital_klokke|bin2bcd_1|Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|minutt_std\(0),
	datab => \digital_klokke|bin2bcd_1|Add1~7_combout\,
	datac => \digital_klokke|bin2bcd_1|Add1~6_combout\,
	datad => \digital_klokke|bin2bcd_1|Add1~3_combout\,
	combout => \digital_klokke|dekoder_2|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y16_N4
\digital_klokke|dekoder_2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_2|Mux3~0_combout\ = (\digital_klokke|bin2bcd_1|Add1~3_combout\ & (\digital_klokke|bin2bcd_1|Add1~6_combout\ & (\digital_klokke|minutt_std\(0) $ (\digital_klokke|bin2bcd_1|Add1~7_combout\)))) # 
-- (!\digital_klokke|bin2bcd_1|Add1~3_combout\ & ((\digital_klokke|minutt_std\(0) & (\digital_klokke|bin2bcd_1|Add1~7_combout\)) # (!\digital_klokke|minutt_std\(0) & (!\digital_klokke|bin2bcd_1|Add1~7_combout\ & !\digital_klokke|bin2bcd_1|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|minutt_std\(0),
	datab => \digital_klokke|bin2bcd_1|Add1~7_combout\,
	datac => \digital_klokke|bin2bcd_1|Add1~6_combout\,
	datad => \digital_klokke|bin2bcd_1|Add1~3_combout\,
	combout => \digital_klokke|dekoder_2|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y16_N22
\digital_klokke|dekoder_2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_2|Mux2~0_combout\ = (\digital_klokke|bin2bcd_1|Add1~3_combout\ & ((\digital_klokke|bin2bcd_1|Add1~7_combout\ & ((\digital_klokke|bin2bcd_1|Add1~6_combout\))) # (!\digital_klokke|bin2bcd_1|Add1~7_combout\ & 
-- (\digital_klokke|minutt_std\(0))))) # (!\digital_klokke|bin2bcd_1|Add1~3_combout\ & (\digital_klokke|minutt_std\(0) & ((\digital_klokke|bin2bcd_1|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|minutt_std\(0),
	datab => \digital_klokke|bin2bcd_1|Add1~7_combout\,
	datac => \digital_klokke|bin2bcd_1|Add1~6_combout\,
	datad => \digital_klokke|bin2bcd_1|Add1~3_combout\,
	combout => \digital_klokke|dekoder_2|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y16_N16
\digital_klokke|dekoder_2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_2|Mux1~0_combout\ = (\digital_klokke|minutt_std\(0) & (\digital_klokke|bin2bcd_1|Add1~6_combout\ $ (((\digital_klokke|bin2bcd_1|Add1~7_combout\ & \digital_klokke|bin2bcd_1|Add1~3_combout\))))) # (!\digital_klokke|minutt_std\(0) & 
-- (!\digital_klokke|bin2bcd_1|Add1~7_combout\ & (\digital_klokke|bin2bcd_1|Add1~6_combout\ & !\digital_klokke|bin2bcd_1|Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|minutt_std\(0),
	datab => \digital_klokke|bin2bcd_1|Add1~7_combout\,
	datac => \digital_klokke|bin2bcd_1|Add1~6_combout\,
	datad => \digital_klokke|bin2bcd_1|Add1~3_combout\,
	combout => \digital_klokke|dekoder_2|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y16_N6
\digital_klokke|dekoder_2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_2|Mux0~0_combout\ = (\digital_klokke|minutt_std\(0) & ((\digital_klokke|bin2bcd_1|Add1~7_combout\ $ (!\digital_klokke|bin2bcd_1|Add1~3_combout\)) # (!\digital_klokke|bin2bcd_1|Add1~6_combout\))) # (!\digital_klokke|minutt_std\(0) & 
-- ((\digital_klokke|bin2bcd_1|Add1~7_combout\ $ (!\digital_klokke|bin2bcd_1|Add1~6_combout\)) # (!\digital_klokke|bin2bcd_1|Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|minutt_std\(0),
	datab => \digital_klokke|bin2bcd_1|Add1~7_combout\,
	datac => \digital_klokke|bin2bcd_1|Add1~6_combout\,
	datad => \digital_klokke|bin2bcd_1|Add1~3_combout\,
	combout => \digital_klokke|dekoder_2|Mux0~0_combout\);

-- Location: LCCOMB_X107_Y16_N8
\digital_klokke|dekoder_3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_3|Mux6~0_combout\ = (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_3|Mux6~0_combout\);

-- Location: LCCOMB_X107_Y16_N30
\digital_klokke|dekoder_3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_3|Mux5~0_combout\ = (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_3|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y16_N20
\digital_klokke|dekoder_3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_3|Mux4~0_combout\ = (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_3|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y16_N14
\digital_klokke|dekoder_3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_3|Mux3~0_combout\ = (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_3|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y16_N12
\digital_klokke|dekoder_3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_3|Mux2~0_combout\ = ((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_3|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y16_N26
\digital_klokke|dekoder_3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_3|Mux1~0_combout\ = (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_3|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y16_N24
\digital_klokke|dekoder_3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_3|Mux0~0_combout\ = (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # 
-- (!\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # 
-- (\digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_3|Mux0~0_combout\);

-- Location: LCCOMB_X87_Y16_N18
\digital_klokke|dekoder_4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_4|Mux6~0_combout\ = (\digital_klokke|bin2bcd_2|Add1~4_combout\ & (\digital_klokke|bin2bcd_2|Add1~1_combout\ & (\digital_klokke|bin2bcd_2|Add1~2_combout\ $ (\digital_klokke|timer_std\(0))))) # 
-- (!\digital_klokke|bin2bcd_2|Add1~4_combout\ & (\digital_klokke|timer_std\(0) & (\digital_klokke|bin2bcd_2|Add1~2_combout\ $ (!\digital_klokke|bin2bcd_2|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_2|Add1~4_combout\,
	datab => \digital_klokke|bin2bcd_2|Add1~2_combout\,
	datac => \digital_klokke|bin2bcd_2|Add1~1_combout\,
	datad => \digital_klokke|timer_std\(0),
	combout => \digital_klokke|dekoder_4|Mux6~0_combout\);

-- Location: LCCOMB_X87_Y16_N20
\digital_klokke|dekoder_4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_4|Mux5~0_combout\ = (\digital_klokke|bin2bcd_2|Add1~4_combout\ & (\digital_klokke|bin2bcd_2|Add1~2_combout\ & (\digital_klokke|bin2bcd_2|Add1~1_combout\ $ (!\digital_klokke|timer_std\(0))))) # 
-- (!\digital_klokke|bin2bcd_2|Add1~4_combout\ & ((\digital_klokke|timer_std\(0) & ((!\digital_klokke|bin2bcd_2|Add1~1_combout\))) # (!\digital_klokke|timer_std\(0) & (\digital_klokke|bin2bcd_2|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|bin2bcd_2|Add1~4_combout\,
	datab => \digital_klokke|bin2bcd_2|Add1~2_combout\,
	datac => \digital_klokke|bin2bcd_2|Add1~1_combout\,
	datad => \digital_klokke|timer_std\(0),
	combout => \digital_klokke|dekoder_4|Mux5~0_combout\);

-- Location: LCCOMB_X86_Y16_N4
\digital_klokke|dekoder_4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_4|Mux4~0_combout\ = (\digital_klokke|bin2bcd_2|Add1~4_combout\ & (!\digital_klokke|timer_std\(0) & (!\digital_klokke|bin2bcd_2|Add1~1_combout\ & !\digital_klokke|bin2bcd_2|Add1~2_combout\))) # 
-- (!\digital_klokke|bin2bcd_2|Add1~4_combout\ & (\digital_klokke|bin2bcd_2|Add1~2_combout\ & ((!\digital_klokke|bin2bcd_2|Add1~1_combout\) # (!\digital_klokke|timer_std\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|timer_std\(0),
	datab => \digital_klokke|bin2bcd_2|Add1~1_combout\,
	datac => \digital_klokke|bin2bcd_2|Add1~4_combout\,
	datad => \digital_klokke|bin2bcd_2|Add1~2_combout\,
	combout => \digital_klokke|dekoder_4|Mux4~0_combout\);

-- Location: LCCOMB_X86_Y16_N10
\digital_klokke|dekoder_4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_4|Mux3~0_combout\ = (\digital_klokke|bin2bcd_2|Add1~1_combout\ & (\digital_klokke|bin2bcd_2|Add1~4_combout\ & (\digital_klokke|timer_std\(0) $ (\digital_klokke|bin2bcd_2|Add1~2_combout\)))) # 
-- (!\digital_klokke|bin2bcd_2|Add1~1_combout\ & ((\digital_klokke|timer_std\(0) & ((\digital_klokke|bin2bcd_2|Add1~2_combout\))) # (!\digital_klokke|timer_std\(0) & (!\digital_klokke|bin2bcd_2|Add1~4_combout\ & !\digital_klokke|bin2bcd_2|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|timer_std\(0),
	datab => \digital_klokke|bin2bcd_2|Add1~1_combout\,
	datac => \digital_klokke|bin2bcd_2|Add1~4_combout\,
	datad => \digital_klokke|bin2bcd_2|Add1~2_combout\,
	combout => \digital_klokke|dekoder_4|Mux3~0_combout\);

-- Location: LCCOMB_X86_Y16_N20
\digital_klokke|dekoder_4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_4|Mux2~0_combout\ = (\digital_klokke|bin2bcd_2|Add1~1_combout\ & ((\digital_klokke|bin2bcd_2|Add1~2_combout\ & ((\digital_klokke|bin2bcd_2|Add1~4_combout\))) # (!\digital_klokke|bin2bcd_2|Add1~2_combout\ & 
-- (\digital_klokke|timer_std\(0))))) # (!\digital_klokke|bin2bcd_2|Add1~1_combout\ & (\digital_klokke|timer_std\(0) & (\digital_klokke|bin2bcd_2|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|timer_std\(0),
	datab => \digital_klokke|bin2bcd_2|Add1~1_combout\,
	datac => \digital_klokke|bin2bcd_2|Add1~4_combout\,
	datad => \digital_klokke|bin2bcd_2|Add1~2_combout\,
	combout => \digital_klokke|dekoder_4|Mux2~0_combout\);

-- Location: LCCOMB_X86_Y16_N26
\digital_klokke|dekoder_4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_4|Mux1~0_combout\ = (\digital_klokke|timer_std\(0) & (\digital_klokke|bin2bcd_2|Add1~4_combout\ $ (((\digital_klokke|bin2bcd_2|Add1~1_combout\ & \digital_klokke|bin2bcd_2|Add1~2_combout\))))) # (!\digital_klokke|timer_std\(0) & 
-- (!\digital_klokke|bin2bcd_2|Add1~1_combout\ & (\digital_klokke|bin2bcd_2|Add1~4_combout\ & !\digital_klokke|bin2bcd_2|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|timer_std\(0),
	datab => \digital_klokke|bin2bcd_2|Add1~1_combout\,
	datac => \digital_klokke|bin2bcd_2|Add1~4_combout\,
	datad => \digital_klokke|bin2bcd_2|Add1~2_combout\,
	combout => \digital_klokke|dekoder_4|Mux1~0_combout\);

-- Location: LCCOMB_X86_Y16_N12
\digital_klokke|dekoder_4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_4|Mux0~0_combout\ = (\digital_klokke|timer_std\(0) & ((\digital_klokke|bin2bcd_2|Add1~1_combout\ $ (!\digital_klokke|bin2bcd_2|Add1~2_combout\)) # (!\digital_klokke|bin2bcd_2|Add1~4_combout\))) # (!\digital_klokke|timer_std\(0) & 
-- ((\digital_klokke|bin2bcd_2|Add1~4_combout\ $ (!\digital_klokke|bin2bcd_2|Add1~2_combout\)) # (!\digital_klokke|bin2bcd_2|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digital_klokke|timer_std\(0),
	datab => \digital_klokke|bin2bcd_2|Add1~1_combout\,
	datac => \digital_klokke|bin2bcd_2|Add1~4_combout\,
	datad => \digital_klokke|bin2bcd_2|Add1~2_combout\,
	combout => \digital_klokke|dekoder_4|Mux0~0_combout\);

-- Location: LCCOMB_X73_Y1_N0
\digital_klokke|dekoder_5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_5|Mux6~0_combout\ = (\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_5|Mux6~0_combout\);

-- Location: LCCOMB_X88_Y3_N20
\digital_klokke|dekoder_5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_5|Mux4~0_combout\ = (\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_5|Mux4~0_combout\);

-- Location: LCCOMB_X73_Y1_N10
\digital_klokke|dekoder_5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digital_klokke|dekoder_5|Mux1~0_combout\ = (!\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \digital_klokke|bin2bcd_2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \digital_klokke|dekoder_5|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y19_N6
\enable_gen_1|teller[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[0]~26_combout\ = \enable_gen_1|teller\(0) $ (VCC)
-- \enable_gen_1|teller[0]~27\ = CARRY(\enable_gen_1|teller\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(0),
	datad => VCC,
	combout => \enable_gen_1|teller[0]~26_combout\,
	cout => \enable_gen_1|teller[0]~27\);

-- Location: LCCOMB_X106_Y18_N16
\enable_gen_1|teller[10]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[10]~28_combout\ = (\enable_gen_1|Equal0~8_combout\) # (!\reset_synkroniseres_2|reset_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synkroniseres_2|reset_sync~q\,
	datad => \enable_gen_1|Equal0~8_combout\,
	combout => \enable_gen_1|teller[10]~28_combout\);

-- Location: FF_X107_Y19_N7
\enable_gen_1|teller[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[0]~26_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(0));

-- Location: LCCOMB_X107_Y19_N8
\enable_gen_1|teller[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[1]~29_combout\ = (\enable_gen_1|teller\(1) & (!\enable_gen_1|teller[0]~27\)) # (!\enable_gen_1|teller\(1) & ((\enable_gen_1|teller[0]~27\) # (GND)))
-- \enable_gen_1|teller[1]~30\ = CARRY((!\enable_gen_1|teller[0]~27\) # (!\enable_gen_1|teller\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(1),
	datad => VCC,
	cin => \enable_gen_1|teller[0]~27\,
	combout => \enable_gen_1|teller[1]~29_combout\,
	cout => \enable_gen_1|teller[1]~30\);

-- Location: FF_X107_Y19_N9
\enable_gen_1|teller[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[1]~29_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(1));

-- Location: LCCOMB_X107_Y19_N10
\enable_gen_1|teller[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[2]~31_combout\ = (\enable_gen_1|teller\(2) & (\enable_gen_1|teller[1]~30\ $ (GND))) # (!\enable_gen_1|teller\(2) & (!\enable_gen_1|teller[1]~30\ & VCC))
-- \enable_gen_1|teller[2]~32\ = CARRY((\enable_gen_1|teller\(2) & !\enable_gen_1|teller[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(2),
	datad => VCC,
	cin => \enable_gen_1|teller[1]~30\,
	combout => \enable_gen_1|teller[2]~31_combout\,
	cout => \enable_gen_1|teller[2]~32\);

-- Location: FF_X107_Y19_N11
\enable_gen_1|teller[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[2]~31_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(2));

-- Location: LCCOMB_X107_Y19_N12
\enable_gen_1|teller[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[3]~33_combout\ = (\enable_gen_1|teller\(3) & (!\enable_gen_1|teller[2]~32\)) # (!\enable_gen_1|teller\(3) & ((\enable_gen_1|teller[2]~32\) # (GND)))
-- \enable_gen_1|teller[3]~34\ = CARRY((!\enable_gen_1|teller[2]~32\) # (!\enable_gen_1|teller\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(3),
	datad => VCC,
	cin => \enable_gen_1|teller[2]~32\,
	combout => \enable_gen_1|teller[3]~33_combout\,
	cout => \enable_gen_1|teller[3]~34\);

-- Location: FF_X107_Y19_N13
\enable_gen_1|teller[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[3]~33_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(3));

-- Location: LCCOMB_X107_Y19_N14
\enable_gen_1|teller[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[4]~35_combout\ = (\enable_gen_1|teller\(4) & (\enable_gen_1|teller[3]~34\ $ (GND))) # (!\enable_gen_1|teller\(4) & (!\enable_gen_1|teller[3]~34\ & VCC))
-- \enable_gen_1|teller[4]~36\ = CARRY((\enable_gen_1|teller\(4) & !\enable_gen_1|teller[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(4),
	datad => VCC,
	cin => \enable_gen_1|teller[3]~34\,
	combout => \enable_gen_1|teller[4]~35_combout\,
	cout => \enable_gen_1|teller[4]~36\);

-- Location: FF_X107_Y19_N15
\enable_gen_1|teller[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[4]~35_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(4));

-- Location: LCCOMB_X107_Y19_N16
\enable_gen_1|teller[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[5]~37_combout\ = (\enable_gen_1|teller\(5) & (!\enable_gen_1|teller[4]~36\)) # (!\enable_gen_1|teller\(5) & ((\enable_gen_1|teller[4]~36\) # (GND)))
-- \enable_gen_1|teller[5]~38\ = CARRY((!\enable_gen_1|teller[4]~36\) # (!\enable_gen_1|teller\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(5),
	datad => VCC,
	cin => \enable_gen_1|teller[4]~36\,
	combout => \enable_gen_1|teller[5]~37_combout\,
	cout => \enable_gen_1|teller[5]~38\);

-- Location: FF_X107_Y19_N17
\enable_gen_1|teller[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[5]~37_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(5));

-- Location: LCCOMB_X107_Y19_N18
\enable_gen_1|teller[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[6]~39_combout\ = (\enable_gen_1|teller\(6) & (\enable_gen_1|teller[5]~38\ $ (GND))) # (!\enable_gen_1|teller\(6) & (!\enable_gen_1|teller[5]~38\ & VCC))
-- \enable_gen_1|teller[6]~40\ = CARRY((\enable_gen_1|teller\(6) & !\enable_gen_1|teller[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(6),
	datad => VCC,
	cin => \enable_gen_1|teller[5]~38\,
	combout => \enable_gen_1|teller[6]~39_combout\,
	cout => \enable_gen_1|teller[6]~40\);

-- Location: FF_X107_Y19_N19
\enable_gen_1|teller[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[6]~39_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(6));

-- Location: LCCOMB_X107_Y19_N20
\enable_gen_1|teller[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[7]~41_combout\ = (\enable_gen_1|teller\(7) & (!\enable_gen_1|teller[6]~40\)) # (!\enable_gen_1|teller\(7) & ((\enable_gen_1|teller[6]~40\) # (GND)))
-- \enable_gen_1|teller[7]~42\ = CARRY((!\enable_gen_1|teller[6]~40\) # (!\enable_gen_1|teller\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(7),
	datad => VCC,
	cin => \enable_gen_1|teller[6]~40\,
	combout => \enable_gen_1|teller[7]~41_combout\,
	cout => \enable_gen_1|teller[7]~42\);

-- Location: FF_X107_Y19_N21
\enable_gen_1|teller[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[7]~41_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(7));

-- Location: LCCOMB_X107_Y19_N22
\enable_gen_1|teller[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[8]~43_combout\ = (\enable_gen_1|teller\(8) & (\enable_gen_1|teller[7]~42\ $ (GND))) # (!\enable_gen_1|teller\(8) & (!\enable_gen_1|teller[7]~42\ & VCC))
-- \enable_gen_1|teller[8]~44\ = CARRY((\enable_gen_1|teller\(8) & !\enable_gen_1|teller[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(8),
	datad => VCC,
	cin => \enable_gen_1|teller[7]~42\,
	combout => \enable_gen_1|teller[8]~43_combout\,
	cout => \enable_gen_1|teller[8]~44\);

-- Location: FF_X107_Y19_N23
\enable_gen_1|teller[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[8]~43_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(8));

-- Location: LCCOMB_X107_Y19_N24
\enable_gen_1|teller[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[9]~45_combout\ = (\enable_gen_1|teller\(9) & (!\enable_gen_1|teller[8]~44\)) # (!\enable_gen_1|teller\(9) & ((\enable_gen_1|teller[8]~44\) # (GND)))
-- \enable_gen_1|teller[9]~46\ = CARRY((!\enable_gen_1|teller[8]~44\) # (!\enable_gen_1|teller\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(9),
	datad => VCC,
	cin => \enable_gen_1|teller[8]~44\,
	combout => \enable_gen_1|teller[9]~45_combout\,
	cout => \enable_gen_1|teller[9]~46\);

-- Location: FF_X107_Y19_N25
\enable_gen_1|teller[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[9]~45_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(9));

-- Location: LCCOMB_X107_Y19_N26
\enable_gen_1|teller[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[10]~47_combout\ = (\enable_gen_1|teller\(10) & (\enable_gen_1|teller[9]~46\ $ (GND))) # (!\enable_gen_1|teller\(10) & (!\enable_gen_1|teller[9]~46\ & VCC))
-- \enable_gen_1|teller[10]~48\ = CARRY((\enable_gen_1|teller\(10) & !\enable_gen_1|teller[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(10),
	datad => VCC,
	cin => \enable_gen_1|teller[9]~46\,
	combout => \enable_gen_1|teller[10]~47_combout\,
	cout => \enable_gen_1|teller[10]~48\);

-- Location: FF_X107_Y19_N27
\enable_gen_1|teller[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[10]~47_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(10));

-- Location: LCCOMB_X107_Y19_N28
\enable_gen_1|teller[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[11]~49_combout\ = (\enable_gen_1|teller\(11) & (!\enable_gen_1|teller[10]~48\)) # (!\enable_gen_1|teller\(11) & ((\enable_gen_1|teller[10]~48\) # (GND)))
-- \enable_gen_1|teller[11]~50\ = CARRY((!\enable_gen_1|teller[10]~48\) # (!\enable_gen_1|teller\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(11),
	datad => VCC,
	cin => \enable_gen_1|teller[10]~48\,
	combout => \enable_gen_1|teller[11]~49_combout\,
	cout => \enable_gen_1|teller[11]~50\);

-- Location: FF_X107_Y19_N29
\enable_gen_1|teller[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[11]~49_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(11));

-- Location: LCCOMB_X107_Y19_N30
\enable_gen_1|teller[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[12]~51_combout\ = (\enable_gen_1|teller\(12) & (\enable_gen_1|teller[11]~50\ $ (GND))) # (!\enable_gen_1|teller\(12) & (!\enable_gen_1|teller[11]~50\ & VCC))
-- \enable_gen_1|teller[12]~52\ = CARRY((\enable_gen_1|teller\(12) & !\enable_gen_1|teller[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(12),
	datad => VCC,
	cin => \enable_gen_1|teller[11]~50\,
	combout => \enable_gen_1|teller[12]~51_combout\,
	cout => \enable_gen_1|teller[12]~52\);

-- Location: FF_X107_Y19_N31
\enable_gen_1|teller[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[12]~51_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(12));

-- Location: LCCOMB_X107_Y18_N0
\enable_gen_1|teller[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[13]~53_combout\ = (\enable_gen_1|teller\(13) & (!\enable_gen_1|teller[12]~52\)) # (!\enable_gen_1|teller\(13) & ((\enable_gen_1|teller[12]~52\) # (GND)))
-- \enable_gen_1|teller[13]~54\ = CARRY((!\enable_gen_1|teller[12]~52\) # (!\enable_gen_1|teller\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(13),
	datad => VCC,
	cin => \enable_gen_1|teller[12]~52\,
	combout => \enable_gen_1|teller[13]~53_combout\,
	cout => \enable_gen_1|teller[13]~54\);

-- Location: FF_X107_Y18_N1
\enable_gen_1|teller[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[13]~53_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(13));

-- Location: LCCOMB_X107_Y18_N2
\enable_gen_1|teller[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[14]~55_combout\ = (\enable_gen_1|teller\(14) & (\enable_gen_1|teller[13]~54\ $ (GND))) # (!\enable_gen_1|teller\(14) & (!\enable_gen_1|teller[13]~54\ & VCC))
-- \enable_gen_1|teller[14]~56\ = CARRY((\enable_gen_1|teller\(14) & !\enable_gen_1|teller[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(14),
	datad => VCC,
	cin => \enable_gen_1|teller[13]~54\,
	combout => \enable_gen_1|teller[14]~55_combout\,
	cout => \enable_gen_1|teller[14]~56\);

-- Location: FF_X107_Y18_N3
\enable_gen_1|teller[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[14]~55_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(14));

-- Location: LCCOMB_X107_Y18_N4
\enable_gen_1|teller[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[15]~57_combout\ = (\enable_gen_1|teller\(15) & (!\enable_gen_1|teller[14]~56\)) # (!\enable_gen_1|teller\(15) & ((\enable_gen_1|teller[14]~56\) # (GND)))
-- \enable_gen_1|teller[15]~58\ = CARRY((!\enable_gen_1|teller[14]~56\) # (!\enable_gen_1|teller\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(15),
	datad => VCC,
	cin => \enable_gen_1|teller[14]~56\,
	combout => \enable_gen_1|teller[15]~57_combout\,
	cout => \enable_gen_1|teller[15]~58\);

-- Location: FF_X107_Y18_N5
\enable_gen_1|teller[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[15]~57_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(15));

-- Location: LCCOMB_X107_Y18_N6
\enable_gen_1|teller[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[16]~59_combout\ = (\enable_gen_1|teller\(16) & (\enable_gen_1|teller[15]~58\ $ (GND))) # (!\enable_gen_1|teller\(16) & (!\enable_gen_1|teller[15]~58\ & VCC))
-- \enable_gen_1|teller[16]~60\ = CARRY((\enable_gen_1|teller\(16) & !\enable_gen_1|teller[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(16),
	datad => VCC,
	cin => \enable_gen_1|teller[15]~58\,
	combout => \enable_gen_1|teller[16]~59_combout\,
	cout => \enable_gen_1|teller[16]~60\);

-- Location: FF_X107_Y18_N7
\enable_gen_1|teller[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[16]~59_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(16));

-- Location: LCCOMB_X107_Y18_N8
\enable_gen_1|teller[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[17]~61_combout\ = (\enable_gen_1|teller\(17) & (!\enable_gen_1|teller[16]~60\)) # (!\enable_gen_1|teller\(17) & ((\enable_gen_1|teller[16]~60\) # (GND)))
-- \enable_gen_1|teller[17]~62\ = CARRY((!\enable_gen_1|teller[16]~60\) # (!\enable_gen_1|teller\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(17),
	datad => VCC,
	cin => \enable_gen_1|teller[16]~60\,
	combout => \enable_gen_1|teller[17]~61_combout\,
	cout => \enable_gen_1|teller[17]~62\);

-- Location: FF_X107_Y18_N9
\enable_gen_1|teller[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[17]~61_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(17));

-- Location: LCCOMB_X107_Y18_N10
\enable_gen_1|teller[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[18]~63_combout\ = (\enable_gen_1|teller\(18) & (\enable_gen_1|teller[17]~62\ $ (GND))) # (!\enable_gen_1|teller\(18) & (!\enable_gen_1|teller[17]~62\ & VCC))
-- \enable_gen_1|teller[18]~64\ = CARRY((\enable_gen_1|teller\(18) & !\enable_gen_1|teller[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(18),
	datad => VCC,
	cin => \enable_gen_1|teller[17]~62\,
	combout => \enable_gen_1|teller[18]~63_combout\,
	cout => \enable_gen_1|teller[18]~64\);

-- Location: FF_X107_Y18_N11
\enable_gen_1|teller[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[18]~63_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(18));

-- Location: LCCOMB_X107_Y18_N12
\enable_gen_1|teller[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[19]~65_combout\ = (\enable_gen_1|teller\(19) & (!\enable_gen_1|teller[18]~64\)) # (!\enable_gen_1|teller\(19) & ((\enable_gen_1|teller[18]~64\) # (GND)))
-- \enable_gen_1|teller[19]~66\ = CARRY((!\enable_gen_1|teller[18]~64\) # (!\enable_gen_1|teller\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(19),
	datad => VCC,
	cin => \enable_gen_1|teller[18]~64\,
	combout => \enable_gen_1|teller[19]~65_combout\,
	cout => \enable_gen_1|teller[19]~66\);

-- Location: FF_X107_Y18_N13
\enable_gen_1|teller[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[19]~65_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(19));

-- Location: LCCOMB_X107_Y18_N14
\enable_gen_1|teller[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[20]~67_combout\ = (\enable_gen_1|teller\(20) & (\enable_gen_1|teller[19]~66\ $ (GND))) # (!\enable_gen_1|teller\(20) & (!\enable_gen_1|teller[19]~66\ & VCC))
-- \enable_gen_1|teller[20]~68\ = CARRY((\enable_gen_1|teller\(20) & !\enable_gen_1|teller[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(20),
	datad => VCC,
	cin => \enable_gen_1|teller[19]~66\,
	combout => \enable_gen_1|teller[20]~67_combout\,
	cout => \enable_gen_1|teller[20]~68\);

-- Location: FF_X107_Y18_N15
\enable_gen_1|teller[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[20]~67_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(20));

-- Location: LCCOMB_X107_Y18_N16
\enable_gen_1|teller[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[21]~69_combout\ = (\enable_gen_1|teller\(21) & (!\enable_gen_1|teller[20]~68\)) # (!\enable_gen_1|teller\(21) & ((\enable_gen_1|teller[20]~68\) # (GND)))
-- \enable_gen_1|teller[21]~70\ = CARRY((!\enable_gen_1|teller[20]~68\) # (!\enable_gen_1|teller\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(21),
	datad => VCC,
	cin => \enable_gen_1|teller[20]~68\,
	combout => \enable_gen_1|teller[21]~69_combout\,
	cout => \enable_gen_1|teller[21]~70\);

-- Location: FF_X107_Y18_N17
\enable_gen_1|teller[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[21]~69_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(21));

-- Location: LCCOMB_X107_Y18_N18
\enable_gen_1|teller[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[22]~71_combout\ = (\enable_gen_1|teller\(22) & (\enable_gen_1|teller[21]~70\ $ (GND))) # (!\enable_gen_1|teller\(22) & (!\enable_gen_1|teller[21]~70\ & VCC))
-- \enable_gen_1|teller[22]~72\ = CARRY((\enable_gen_1|teller\(22) & !\enable_gen_1|teller[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(22),
	datad => VCC,
	cin => \enable_gen_1|teller[21]~70\,
	combout => \enable_gen_1|teller[22]~71_combout\,
	cout => \enable_gen_1|teller[22]~72\);

-- Location: FF_X107_Y18_N19
\enable_gen_1|teller[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[22]~71_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(22));

-- Location: LCCOMB_X107_Y18_N20
\enable_gen_1|teller[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[23]~73_combout\ = (\enable_gen_1|teller\(23) & (!\enable_gen_1|teller[22]~72\)) # (!\enable_gen_1|teller\(23) & ((\enable_gen_1|teller[22]~72\) # (GND)))
-- \enable_gen_1|teller[23]~74\ = CARRY((!\enable_gen_1|teller[22]~72\) # (!\enable_gen_1|teller\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(23),
	datad => VCC,
	cin => \enable_gen_1|teller[22]~72\,
	combout => \enable_gen_1|teller[23]~73_combout\,
	cout => \enable_gen_1|teller[23]~74\);

-- Location: FF_X107_Y18_N21
\enable_gen_1|teller[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[23]~73_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(23));

-- Location: LCCOMB_X107_Y18_N22
\enable_gen_1|teller[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[24]~75_combout\ = (\enable_gen_1|teller\(24) & (\enable_gen_1|teller[23]~74\ $ (GND))) # (!\enable_gen_1|teller\(24) & (!\enable_gen_1|teller[23]~74\ & VCC))
-- \enable_gen_1|teller[24]~76\ = CARRY((\enable_gen_1|teller\(24) & !\enable_gen_1|teller[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(24),
	datad => VCC,
	cin => \enable_gen_1|teller[23]~74\,
	combout => \enable_gen_1|teller[24]~75_combout\,
	cout => \enable_gen_1|teller[24]~76\);

-- Location: FF_X107_Y18_N23
\enable_gen_1|teller[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[24]~75_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(24));

-- Location: LCCOMB_X107_Y18_N24
\enable_gen_1|teller[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[25]~77_combout\ = \enable_gen_1|teller[24]~76\ $ (\enable_gen_1|teller\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \enable_gen_1|teller\(25),
	cin => \enable_gen_1|teller[24]~76\,
	combout => \enable_gen_1|teller[25]~77_combout\);

-- Location: FF_X107_Y18_N25
\enable_gen_1|teller[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[25]~77_combout\,
	sclr => \enable_gen_1|teller[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(25));

-- Location: LCCOMB_X106_Y18_N6
\enable_gen_1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~7_combout\ = (\enable_gen_1|teller\(24)) # (!\enable_gen_1|teller\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(25),
	datad => \enable_gen_1|teller\(24),
	combout => \enable_gen_1|Equal0~7_combout\);

-- Location: LCCOMB_X107_Y18_N26
\enable_gen_1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~6_combout\ = (((!\enable_gen_1|teller\(21)) # (!\enable_gen_1|teller\(20))) # (!\enable_gen_1|teller\(23))) # (!\enable_gen_1|teller\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(22),
	datab => \enable_gen_1|teller\(23),
	datac => \enable_gen_1|teller\(20),
	datad => \enable_gen_1|teller\(21),
	combout => \enable_gen_1|Equal0~6_combout\);

-- Location: LCCOMB_X107_Y19_N4
\enable_gen_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~2_combout\ = (\enable_gen_1|teller\(10)) # ((\enable_gen_1|teller\(11)) # ((\enable_gen_1|teller\(8)) # (\enable_gen_1|teller\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(10),
	datab => \enable_gen_1|teller\(11),
	datac => \enable_gen_1|teller\(8),
	datad => \enable_gen_1|teller\(9),
	combout => \enable_gen_1|Equal0~2_combout\);

-- Location: LCCOMB_X107_Y19_N0
\enable_gen_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~0_combout\ = (\enable_gen_1|teller\(2)) # ((\enable_gen_1|teller\(3)) # ((\enable_gen_1|teller\(1)) # (\enable_gen_1|teller\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(2),
	datab => \enable_gen_1|teller\(3),
	datac => \enable_gen_1|teller\(1),
	datad => \enable_gen_1|teller\(0),
	combout => \enable_gen_1|Equal0~0_combout\);

-- Location: LCCOMB_X107_Y18_N30
\enable_gen_1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~3_combout\ = (((!\enable_gen_1|teller\(13)) # (!\enable_gen_1|teller\(15))) # (!\enable_gen_1|teller\(14))) # (!\enable_gen_1|teller\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(12),
	datab => \enable_gen_1|teller\(14),
	datac => \enable_gen_1|teller\(15),
	datad => \enable_gen_1|teller\(13),
	combout => \enable_gen_1|Equal0~3_combout\);

-- Location: LCCOMB_X107_Y19_N2
\enable_gen_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~1_combout\ = ((\enable_gen_1|teller\(6)) # ((\enable_gen_1|teller\(4)) # (\enable_gen_1|teller\(5)))) # (!\enable_gen_1|teller\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(7),
	datab => \enable_gen_1|teller\(6),
	datac => \enable_gen_1|teller\(4),
	datad => \enable_gen_1|teller\(5),
	combout => \enable_gen_1|Equal0~1_combout\);

-- Location: LCCOMB_X106_Y19_N8
\enable_gen_1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~4_combout\ = (\enable_gen_1|Equal0~2_combout\) # ((\enable_gen_1|Equal0~0_combout\) # ((\enable_gen_1|Equal0~3_combout\) # (\enable_gen_1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|Equal0~2_combout\,
	datab => \enable_gen_1|Equal0~0_combout\,
	datac => \enable_gen_1|Equal0~3_combout\,
	datad => \enable_gen_1|Equal0~1_combout\,
	combout => \enable_gen_1|Equal0~4_combout\);

-- Location: LCCOMB_X107_Y18_N28
\enable_gen_1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~5_combout\ = (\enable_gen_1|teller\(18)) # (((\enable_gen_1|teller\(16)) # (!\enable_gen_1|teller\(17))) # (!\enable_gen_1|teller\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(18),
	datab => \enable_gen_1|teller\(19),
	datac => \enable_gen_1|teller\(17),
	datad => \enable_gen_1|teller\(16),
	combout => \enable_gen_1|Equal0~5_combout\);

-- Location: LCCOMB_X106_Y18_N24
\enable_gen_1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~8_combout\ = (!\enable_gen_1|Equal0~7_combout\ & (!\enable_gen_1|Equal0~6_combout\ & (!\enable_gen_1|Equal0~4_combout\ & !\enable_gen_1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|Equal0~7_combout\,
	datab => \enable_gen_1|Equal0~6_combout\,
	datac => \enable_gen_1|Equal0~4_combout\,
	datad => \enable_gen_1|Equal0~5_combout\,
	combout => \enable_gen_1|Equal0~8_combout\);

-- Location: FF_X106_Y18_N25
\enable_gen_1|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \enable_gen_1|Equal0~8_combout\,
	ena => \reset_synkroniseres_2|reset_sync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|enable~q\);

-- Location: LCCOMB_X105_Y18_N20
\hallo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hallo~0_combout\ = \hallo~q\ $ (\enable_gen_1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hallo~q\,
	datad => \enable_gen_1|enable~q\,
	combout => \hallo~0_combout\);

-- Location: FF_X105_Y18_N21
hallo : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \hallo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hallo~q\);

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

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

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

LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

LCD_DATA(7) <= \LCD_DATA[7]~output_o\;
END structure;


