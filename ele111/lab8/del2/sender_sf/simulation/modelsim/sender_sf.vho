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

-- DATE "11/13/2019 23:47:14"

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

ENTITY 	sender_sf IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	GPIO : BUFFER std_logic_vector(35 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END sender_sf;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sender_sf IS
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
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_GPIO : std_logic_vector(35 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
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
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \GPIO[5]~input_o\ : std_logic;
SIGNAL \GPIO[7]~input_o\ : std_logic;
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
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable_gen_1|teller[0]~26_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[23]~75\ : std_logic;
SIGNAL \enable_gen_1|teller[24]~76_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[24]~77\ : std_logic;
SIGNAL \enable_gen_1|teller[25]~78_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~7_combout\ : std_logic;
SIGNAL \reset_syncher|dff~feeder_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \reset_syncher|dff~q\ : std_logic;
SIGNAL \reset_syncher|rst_clk_n~feeder_combout\ : std_logic;
SIGNAL \reset_syncher|rst_clk_n~q\ : std_logic;
SIGNAL \enable_gen_1|Equal0~5_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[25]~28_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~3_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~1_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~0_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~2_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~4_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[25]~29_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[0]~27\ : std_logic;
SIGNAL \enable_gen_1|teller[1]~30_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[1]~31\ : std_logic;
SIGNAL \enable_gen_1|teller[2]~32_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[2]~33\ : std_logic;
SIGNAL \enable_gen_1|teller[3]~34_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[3]~35\ : std_logic;
SIGNAL \enable_gen_1|teller[4]~36_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[4]~37\ : std_logic;
SIGNAL \enable_gen_1|teller[5]~38_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[5]~39\ : std_logic;
SIGNAL \enable_gen_1|teller[6]~40_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[6]~41\ : std_logic;
SIGNAL \enable_gen_1|teller[7]~42_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[7]~43\ : std_logic;
SIGNAL \enable_gen_1|teller[8]~44_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[8]~45\ : std_logic;
SIGNAL \enable_gen_1|teller[9]~46_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[9]~47\ : std_logic;
SIGNAL \enable_gen_1|teller[10]~48_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[10]~49\ : std_logic;
SIGNAL \enable_gen_1|teller[11]~50_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[11]~51\ : std_logic;
SIGNAL \enable_gen_1|teller[12]~52_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[12]~53\ : std_logic;
SIGNAL \enable_gen_1|teller[13]~54_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[13]~55\ : std_logic;
SIGNAL \enable_gen_1|teller[14]~56_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[14]~57\ : std_logic;
SIGNAL \enable_gen_1|teller[15]~58_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[15]~59\ : std_logic;
SIGNAL \enable_gen_1|teller[16]~60_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[16]~61\ : std_logic;
SIGNAL \enable_gen_1|teller[17]~62_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[17]~63\ : std_logic;
SIGNAL \enable_gen_1|teller[18]~64_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[18]~65\ : std_logic;
SIGNAL \enable_gen_1|teller[19]~66_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[19]~67\ : std_logic;
SIGNAL \enable_gen_1|teller[20]~68_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[20]~69\ : std_logic;
SIGNAL \enable_gen_1|teller[21]~70_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[21]~71\ : std_logic;
SIGNAL \enable_gen_1|teller[22]~72_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[22]~73\ : std_logic;
SIGNAL \enable_gen_1|teller[23]~74_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~6_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~8_combout\ : std_logic;
SIGNAL \enable_gen_1|enable~q\ : std_logic;
SIGNAL \hallo~0_combout\ : std_logic;
SIGNAL \hallo~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \start_q~0_combout\ : std_logic;
SIGNAL \start_qq~1_combout\ : std_logic;
SIGNAL \start_q~q\ : std_logic;
SIGNAL \start_qq~0_combout\ : std_logic;
SIGNAL \start_qq~q\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state.s_idle~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \shiftreg[1]~0_combout\ : std_logic;
SIGNAL \shiftreg[1]~1_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \state.s_shift_out~q\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state.s_finish~q\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state.s_wait~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \state.s_transmit~q\ : std_logic;
SIGNAL \start_teller~q\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \baud_gen|Mux0~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux2~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux3~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux5~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux6~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux7~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux4~0_combout\ : std_logic;
SIGNAL \baud_gen|Mux9~0_combout\ : std_logic;
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
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~22_combout\ : std_logic;
SIGNAL \baud_gen|Mux3~1_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~23_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~25_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~27_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~29_combout\ : std_logic;
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
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~30_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~31_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~32_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~33_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~34_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~35_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~36_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~37_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~38_combout\ : std_logic;
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
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~39_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~40_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~41_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~42_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~43_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~44_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~45_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~46_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~47_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~48_combout\ : std_logic;
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
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~49_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~50_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~51_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~52_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~53_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~54_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~55_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~56_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~57_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~58_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~59_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_6~24_combout\ : std_logic;
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
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~60_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~61_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~62_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~63_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~64_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~65_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~66_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~67_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~68_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~69_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~70_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~71_combout\ : std_logic;
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
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~25\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~72_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~73_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~74_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~75_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~76_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~77_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~78_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~79_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~80_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~81_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~82_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~83_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~84_combout\ : std_logic;
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
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~85_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~86_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~87_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~88_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~89_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~90_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~91_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~92_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~93_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~94_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~95_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~96_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~97_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~98_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~99_combout\ : std_logic;
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
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~30_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~114_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~113_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~115_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~100_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~101_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~102_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~103_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~104_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~105_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~106_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~107_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~108_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~109_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~110_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~111_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~112_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~190_combout\ : std_logic;
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
SIGNAL \baud_gen|teller[0]~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~191_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~30_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~117_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~116_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~118_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~119_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~120_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~121_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~122_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~123_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~124_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~125_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~126_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~127_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~128_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~129_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~130_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~192_combout\ : std_logic;
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
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~193_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~30_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~131_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~132_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_13~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\ : std_logic;
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
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~194_combout\ : std_logic;
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
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~25\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~27\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~29\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~31_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ : std_logic;
SIGNAL \baud_gen|teller[4]~35\ : std_logic;
SIGNAL \baud_gen|teller[5]~36_combout\ : std_logic;
SIGNAL \baud_gen|teller[5]~37\ : std_logic;
SIGNAL \baud_gen|teller[6]~38_combout\ : std_logic;
SIGNAL \baud_gen|baud_enable_s~0_combout\ : std_logic;
SIGNAL \baud_gen|baud_enable_s~1_combout\ : std_logic;
SIGNAL \baud_gen|teller[6]~39\ : std_logic;
SIGNAL \baud_gen|teller[7]~40_combout\ : std_logic;
SIGNAL \baud_gen|teller[7]~41\ : std_logic;
SIGNAL \baud_gen|teller[8]~42_combout\ : std_logic;
SIGNAL \baud_gen|teller[8]~43\ : std_logic;
SIGNAL \baud_gen|teller[9]~44_combout\ : std_logic;
SIGNAL \baud_gen|Equal1~1_combout\ : std_logic;
SIGNAL \baud_gen|teller[9]~45\ : std_logic;
SIGNAL \baud_gen|teller[10]~46_combout\ : std_logic;
SIGNAL \baud_gen|teller[10]~47\ : std_logic;
SIGNAL \baud_gen|teller[11]~48_combout\ : std_logic;
SIGNAL \baud_gen|teller[11]~49\ : std_logic;
SIGNAL \baud_gen|teller[12]~50_combout\ : std_logic;
SIGNAL \baud_gen|Equal1~0_combout\ : std_logic;
SIGNAL \baud_gen|baud_enable_s~2_combout\ : std_logic;
SIGNAL \baud_gen|baud_enable_s~3_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~146_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~147_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~148_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~149_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~150_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~151_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~152_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~153_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~154_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~155_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~156_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~157_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~0_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~158_combout\ : std_logic;
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
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~159_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~195_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_14~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~160_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~29\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~31\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~33_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~161_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~163_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~164_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~165_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~166_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~167_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~168_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~169_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~170_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~171_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~172_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~173_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~174_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~197_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~198_combout\ : std_logic;
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
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~196_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_15~30_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~162_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~31\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~33_cout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~175_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~199_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~28_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[522]~176_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~26_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[521]~177_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~24_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[520]~178_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~22_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[519]~179_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~20_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[518]~180_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~18_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[517]~181_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~16_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[516]~182_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~14_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[515]~183_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~12_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[514]~184_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~10_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[513]~185_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[512]~186_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[511]~187_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~4_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[510]~188_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|op_16~2_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[509]~189_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut[508]~200_combout\ : std_logic;
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
SIGNAL \baud_gen|baud_enable_s~4_combout\ : std_logic;
SIGNAL \baud_gen|baud_enable_s~6_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|selnose[324]~9_combout\ : std_logic;
SIGNAL \baud_gen|teller[12]~51\ : std_logic;
SIGNAL \baud_gen|teller[13]~52_combout\ : std_logic;
SIGNAL \baud_gen|baud_enable_s~5_combout\ : std_logic;
SIGNAL \baud_gen|baud_enable_s~7_combout\ : std_logic;
SIGNAL \baud_gen|teller[13]~53\ : std_logic;
SIGNAL \baud_gen|teller[14]~54_combout\ : std_logic;
SIGNAL \baud_gen|teller[14]~55\ : std_logic;
SIGNAL \baud_gen|teller[15]~58_combout\ : std_logic;
SIGNAL \baud_gen|teller[15]~59\ : std_logic;
SIGNAL \baud_gen|teller[16]~60_combout\ : std_logic;
SIGNAL \baud_gen|teller[16]~61\ : std_logic;
SIGNAL \baud_gen|teller[17]~62_combout\ : std_logic;
SIGNAL \baud_gen|teller[17]~63\ : std_logic;
SIGNAL \baud_gen|teller[18]~64_combout\ : std_logic;
SIGNAL \baud_gen|teller[18]~65\ : std_logic;
SIGNAL \baud_gen|teller[19]~66_combout\ : std_logic;
SIGNAL \baud_gen|teller[19]~67\ : std_logic;
SIGNAL \baud_gen|teller[20]~68_combout\ : std_logic;
SIGNAL \baud_gen|teller[20]~69\ : std_logic;
SIGNAL \baud_gen|teller[21]~70_combout\ : std_logic;
SIGNAL \baud_gen|teller[21]~71\ : std_logic;
SIGNAL \baud_gen|teller[22]~72_combout\ : std_logic;
SIGNAL \baud_gen|teller[22]~73\ : std_logic;
SIGNAL \baud_gen|teller[23]~74_combout\ : std_logic;
SIGNAL \baud_gen|teller[23]~75\ : std_logic;
SIGNAL \baud_gen|teller[24]~76_combout\ : std_logic;
SIGNAL \baud_gen|teller[24]~77\ : std_logic;
SIGNAL \baud_gen|teller[25]~78_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~2_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~0_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~1_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~3_combout\ : std_logic;
SIGNAL \baud_gen|baud_enable_s~8_combout\ : std_logic;
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|selnose[351]~8_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~11_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~12_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~8_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~9_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~10_combout\ : std_logic;
SIGNAL \baud_gen|teller[25]~56_combout\ : std_logic;
SIGNAL \baud_gen|teller[25]~57_combout\ : std_logic;
SIGNAL \baud_gen|teller[0]~27\ : std_logic;
SIGNAL \baud_gen|teller[1]~28_combout\ : std_logic;
SIGNAL \baud_gen|teller[1]~29\ : std_logic;
SIGNAL \baud_gen|teller[2]~30_combout\ : std_logic;
SIGNAL \baud_gen|teller[2]~31\ : std_logic;
SIGNAL \baud_gen|teller[3]~32_combout\ : std_logic;
SIGNAL \baud_gen|teller[3]~33\ : std_logic;
SIGNAL \baud_gen|teller[4]~34_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~6_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~5_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~4_combout\ : std_logic;
SIGNAL \baud_gen|Equal0~7_combout\ : std_logic;
SIGNAL \baud_gen|baud_enable_s~9_combout\ : std_logic;
SIGNAL \baud_gen|baud_enable_s~10_combout\ : std_logic;
SIGNAL \baud_gen|baud_enable_s~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \dout~q\ : std_logic;
SIGNAL shiftreg : std_logic_vector(9 DOWNTO 0);
SIGNAL \baud_gen|teller\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \enable_gen_1|teller\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|StageOut\ : std_logic_vector(545 DOWNTO 0);
SIGNAL \baud_gen|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(701 DOWNTO 0);
SIGNAL \reset_syncher|ALT_INV_rst_clk_n~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
GPIO <= ww_GPIO;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\reset_syncher|ALT_INV_rst_clk_n~q\ <= NOT \reset_syncher|rst_clk_n~q\;
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
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hallo~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO[1]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\GPIO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reset_syncher|rst_clk_n~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO[5]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\GPIO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dout~q\,
	oe => VCC,
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
	i => shiftreg(0),
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
	i => shiftreg(1),
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
	i => shiftreg(2),
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
	i => shiftreg(3),
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
	i => shiftreg(4),
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
	i => shiftreg(5),
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
	i => shiftreg(6),
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
	i => shiftreg(7),
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
	i => shiftreg(8),
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
	i => shiftreg(9),
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

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

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

-- Location: LCCOMB_X74_Y14_N6
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

-- Location: LCCOMB_X74_Y13_N20
\enable_gen_1|teller[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[23]~74_combout\ = (\enable_gen_1|teller\(23) & (!\enable_gen_1|teller[22]~73\)) # (!\enable_gen_1|teller\(23) & ((\enable_gen_1|teller[22]~73\) # (GND)))
-- \enable_gen_1|teller[23]~75\ = CARRY((!\enable_gen_1|teller[22]~73\) # (!\enable_gen_1|teller\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(23),
	datad => VCC,
	cin => \enable_gen_1|teller[22]~73\,
	combout => \enable_gen_1|teller[23]~74_combout\,
	cout => \enable_gen_1|teller[23]~75\);

-- Location: LCCOMB_X74_Y13_N22
\enable_gen_1|teller[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[24]~76_combout\ = (\enable_gen_1|teller\(24) & (\enable_gen_1|teller[23]~75\ $ (GND))) # (!\enable_gen_1|teller\(24) & (!\enable_gen_1|teller[23]~75\ & VCC))
-- \enable_gen_1|teller[24]~77\ = CARRY((\enable_gen_1|teller\(24) & !\enable_gen_1|teller[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(24),
	datad => VCC,
	cin => \enable_gen_1|teller[23]~75\,
	combout => \enable_gen_1|teller[24]~76_combout\,
	cout => \enable_gen_1|teller[24]~77\);

-- Location: FF_X74_Y13_N23
\enable_gen_1|teller[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[24]~76_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(24));

-- Location: LCCOMB_X74_Y13_N24
\enable_gen_1|teller[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[25]~78_combout\ = \enable_gen_1|teller[24]~77\ $ (\enable_gen_1|teller\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \enable_gen_1|teller\(25),
	cin => \enable_gen_1|teller[24]~77\,
	combout => \enable_gen_1|teller[25]~78_combout\);

-- Location: FF_X74_Y13_N25
\enable_gen_1|teller[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[25]~78_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(25));

-- Location: LCCOMB_X74_Y13_N30
\enable_gen_1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~7_combout\ = (\enable_gen_1|teller\(24)) # (!\enable_gen_1|teller\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable_gen_1|teller\(24),
	datad => \enable_gen_1|teller\(25),
	combout => \enable_gen_1|Equal0~7_combout\);

-- Location: LCCOMB_X102_Y15_N20
\reset_syncher|dff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_syncher|dff~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \reset_syncher|dff~feeder_combout\);

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

-- Location: FF_X102_Y15_N21
\reset_syncher|dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_syncher|dff~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_syncher|dff~q\);

-- Location: LCCOMB_X102_Y15_N16
\reset_syncher|rst_clk_n~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_syncher|rst_clk_n~feeder_combout\ = \reset_syncher|dff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_syncher|dff~q\,
	combout => \reset_syncher|rst_clk_n~feeder_combout\);

-- Location: FF_X102_Y15_N17
\reset_syncher|rst_clk_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_syncher|rst_clk_n~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_syncher|rst_clk_n~q\);

-- Location: LCCOMB_X74_Y13_N26
\enable_gen_1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~5_combout\ = (\enable_gen_1|teller\(18)) # (((\enable_gen_1|teller\(16)) # (!\enable_gen_1|teller\(19))) # (!\enable_gen_1|teller\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(18),
	datab => \enable_gen_1|teller\(17),
	datac => \enable_gen_1|teller\(16),
	datad => \enable_gen_1|teller\(19),
	combout => \enable_gen_1|Equal0~5_combout\);

-- Location: LCCOMB_X75_Y13_N30
\enable_gen_1|teller[25]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[25]~28_combout\ = (\enable_gen_1|Equal0~5_combout\) # (\enable_gen_1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable_gen_1|Equal0~5_combout\,
	datad => \enable_gen_1|Equal0~6_combout\,
	combout => \enable_gen_1|teller[25]~28_combout\);

-- Location: LCCOMB_X75_Y13_N10
\enable_gen_1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~3_combout\ = (((!\enable_gen_1|teller\(14)) # (!\enable_gen_1|teller\(12))) # (!\enable_gen_1|teller\(15))) # (!\enable_gen_1|teller\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(13),
	datab => \enable_gen_1|teller\(15),
	datac => \enable_gen_1|teller\(12),
	datad => \enable_gen_1|teller\(14),
	combout => \enable_gen_1|Equal0~3_combout\);

-- Location: LCCOMB_X74_Y14_N2
\enable_gen_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~1_combout\ = (\enable_gen_1|teller\(6)) # ((\enable_gen_1|teller\(5)) # ((\enable_gen_1|teller\(4)) # (!\enable_gen_1|teller\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(6),
	datab => \enable_gen_1|teller\(5),
	datac => \enable_gen_1|teller\(4),
	datad => \enable_gen_1|teller\(7),
	combout => \enable_gen_1|Equal0~1_combout\);

-- Location: LCCOMB_X74_Y14_N4
\enable_gen_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~0_combout\ = (\enable_gen_1|teller\(3)) # ((\enable_gen_1|teller\(1)) # ((\enable_gen_1|teller\(0)) # (\enable_gen_1|teller\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(3),
	datab => \enable_gen_1|teller\(1),
	datac => \enable_gen_1|teller\(0),
	datad => \enable_gen_1|teller\(2),
	combout => \enable_gen_1|Equal0~0_combout\);

-- Location: LCCOMB_X74_Y14_N0
\enable_gen_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~2_combout\ = (\enable_gen_1|teller\(8)) # ((\enable_gen_1|teller\(11)) # ((\enable_gen_1|teller\(10)) # (\enable_gen_1|teller\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(8),
	datab => \enable_gen_1|teller\(11),
	datac => \enable_gen_1|teller\(10),
	datad => \enable_gen_1|teller\(9),
	combout => \enable_gen_1|Equal0~2_combout\);

-- Location: LCCOMB_X75_Y13_N28
\enable_gen_1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~4_combout\ = (\enable_gen_1|Equal0~3_combout\) # ((\enable_gen_1|Equal0~1_combout\) # ((\enable_gen_1|Equal0~0_combout\) # (\enable_gen_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|Equal0~3_combout\,
	datab => \enable_gen_1|Equal0~1_combout\,
	datac => \enable_gen_1|Equal0~0_combout\,
	datad => \enable_gen_1|Equal0~2_combout\,
	combout => \enable_gen_1|Equal0~4_combout\);

-- Location: LCCOMB_X75_Y13_N0
\enable_gen_1|teller[25]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[25]~29_combout\ = ((!\enable_gen_1|Equal0~7_combout\ & (!\enable_gen_1|teller[25]~28_combout\ & !\enable_gen_1|Equal0~4_combout\))) # (!\reset_syncher|rst_clk_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|Equal0~7_combout\,
	datab => \reset_syncher|rst_clk_n~q\,
	datac => \enable_gen_1|teller[25]~28_combout\,
	datad => \enable_gen_1|Equal0~4_combout\,
	combout => \enable_gen_1|teller[25]~29_combout\);

-- Location: FF_X74_Y14_N7
\enable_gen_1|teller[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[0]~26_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(0));

-- Location: LCCOMB_X74_Y14_N8
\enable_gen_1|teller[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[1]~30_combout\ = (\enable_gen_1|teller\(1) & (!\enable_gen_1|teller[0]~27\)) # (!\enable_gen_1|teller\(1) & ((\enable_gen_1|teller[0]~27\) # (GND)))
-- \enable_gen_1|teller[1]~31\ = CARRY((!\enable_gen_1|teller[0]~27\) # (!\enable_gen_1|teller\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(1),
	datad => VCC,
	cin => \enable_gen_1|teller[0]~27\,
	combout => \enable_gen_1|teller[1]~30_combout\,
	cout => \enable_gen_1|teller[1]~31\);

-- Location: FF_X74_Y14_N9
\enable_gen_1|teller[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[1]~30_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(1));

-- Location: LCCOMB_X74_Y14_N10
\enable_gen_1|teller[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[2]~32_combout\ = (\enable_gen_1|teller\(2) & (\enable_gen_1|teller[1]~31\ $ (GND))) # (!\enable_gen_1|teller\(2) & (!\enable_gen_1|teller[1]~31\ & VCC))
-- \enable_gen_1|teller[2]~33\ = CARRY((\enable_gen_1|teller\(2) & !\enable_gen_1|teller[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(2),
	datad => VCC,
	cin => \enable_gen_1|teller[1]~31\,
	combout => \enable_gen_1|teller[2]~32_combout\,
	cout => \enable_gen_1|teller[2]~33\);

-- Location: FF_X74_Y14_N11
\enable_gen_1|teller[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[2]~32_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(2));

-- Location: LCCOMB_X74_Y14_N12
\enable_gen_1|teller[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[3]~34_combout\ = (\enable_gen_1|teller\(3) & (!\enable_gen_1|teller[2]~33\)) # (!\enable_gen_1|teller\(3) & ((\enable_gen_1|teller[2]~33\) # (GND)))
-- \enable_gen_1|teller[3]~35\ = CARRY((!\enable_gen_1|teller[2]~33\) # (!\enable_gen_1|teller\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(3),
	datad => VCC,
	cin => \enable_gen_1|teller[2]~33\,
	combout => \enable_gen_1|teller[3]~34_combout\,
	cout => \enable_gen_1|teller[3]~35\);

-- Location: FF_X74_Y14_N13
\enable_gen_1|teller[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[3]~34_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(3));

-- Location: LCCOMB_X74_Y14_N14
\enable_gen_1|teller[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[4]~36_combout\ = (\enable_gen_1|teller\(4) & (\enable_gen_1|teller[3]~35\ $ (GND))) # (!\enable_gen_1|teller\(4) & (!\enable_gen_1|teller[3]~35\ & VCC))
-- \enable_gen_1|teller[4]~37\ = CARRY((\enable_gen_1|teller\(4) & !\enable_gen_1|teller[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(4),
	datad => VCC,
	cin => \enable_gen_1|teller[3]~35\,
	combout => \enable_gen_1|teller[4]~36_combout\,
	cout => \enable_gen_1|teller[4]~37\);

-- Location: FF_X74_Y14_N15
\enable_gen_1|teller[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[4]~36_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(4));

-- Location: LCCOMB_X74_Y14_N16
\enable_gen_1|teller[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[5]~38_combout\ = (\enable_gen_1|teller\(5) & (!\enable_gen_1|teller[4]~37\)) # (!\enable_gen_1|teller\(5) & ((\enable_gen_1|teller[4]~37\) # (GND)))
-- \enable_gen_1|teller[5]~39\ = CARRY((!\enable_gen_1|teller[4]~37\) # (!\enable_gen_1|teller\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(5),
	datad => VCC,
	cin => \enable_gen_1|teller[4]~37\,
	combout => \enable_gen_1|teller[5]~38_combout\,
	cout => \enable_gen_1|teller[5]~39\);

-- Location: FF_X74_Y14_N17
\enable_gen_1|teller[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[5]~38_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(5));

-- Location: LCCOMB_X74_Y14_N18
\enable_gen_1|teller[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[6]~40_combout\ = (\enable_gen_1|teller\(6) & (\enable_gen_1|teller[5]~39\ $ (GND))) # (!\enable_gen_1|teller\(6) & (!\enable_gen_1|teller[5]~39\ & VCC))
-- \enable_gen_1|teller[6]~41\ = CARRY((\enable_gen_1|teller\(6) & !\enable_gen_1|teller[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(6),
	datad => VCC,
	cin => \enable_gen_1|teller[5]~39\,
	combout => \enable_gen_1|teller[6]~40_combout\,
	cout => \enable_gen_1|teller[6]~41\);

-- Location: FF_X74_Y14_N19
\enable_gen_1|teller[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[6]~40_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(6));

-- Location: LCCOMB_X74_Y14_N20
\enable_gen_1|teller[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[7]~42_combout\ = (\enable_gen_1|teller\(7) & (!\enable_gen_1|teller[6]~41\)) # (!\enable_gen_1|teller\(7) & ((\enable_gen_1|teller[6]~41\) # (GND)))
-- \enable_gen_1|teller[7]~43\ = CARRY((!\enable_gen_1|teller[6]~41\) # (!\enable_gen_1|teller\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(7),
	datad => VCC,
	cin => \enable_gen_1|teller[6]~41\,
	combout => \enable_gen_1|teller[7]~42_combout\,
	cout => \enable_gen_1|teller[7]~43\);

-- Location: FF_X74_Y14_N21
\enable_gen_1|teller[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[7]~42_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(7));

-- Location: LCCOMB_X74_Y14_N22
\enable_gen_1|teller[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[8]~44_combout\ = (\enable_gen_1|teller\(8) & (\enable_gen_1|teller[7]~43\ $ (GND))) # (!\enable_gen_1|teller\(8) & (!\enable_gen_1|teller[7]~43\ & VCC))
-- \enable_gen_1|teller[8]~45\ = CARRY((\enable_gen_1|teller\(8) & !\enable_gen_1|teller[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(8),
	datad => VCC,
	cin => \enable_gen_1|teller[7]~43\,
	combout => \enable_gen_1|teller[8]~44_combout\,
	cout => \enable_gen_1|teller[8]~45\);

-- Location: FF_X74_Y14_N23
\enable_gen_1|teller[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[8]~44_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(8));

-- Location: LCCOMB_X74_Y14_N24
\enable_gen_1|teller[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[9]~46_combout\ = (\enable_gen_1|teller\(9) & (!\enable_gen_1|teller[8]~45\)) # (!\enable_gen_1|teller\(9) & ((\enable_gen_1|teller[8]~45\) # (GND)))
-- \enable_gen_1|teller[9]~47\ = CARRY((!\enable_gen_1|teller[8]~45\) # (!\enable_gen_1|teller\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(9),
	datad => VCC,
	cin => \enable_gen_1|teller[8]~45\,
	combout => \enable_gen_1|teller[9]~46_combout\,
	cout => \enable_gen_1|teller[9]~47\);

-- Location: FF_X74_Y14_N25
\enable_gen_1|teller[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[9]~46_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(9));

-- Location: LCCOMB_X74_Y14_N26
\enable_gen_1|teller[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[10]~48_combout\ = (\enable_gen_1|teller\(10) & (\enable_gen_1|teller[9]~47\ $ (GND))) # (!\enable_gen_1|teller\(10) & (!\enable_gen_1|teller[9]~47\ & VCC))
-- \enable_gen_1|teller[10]~49\ = CARRY((\enable_gen_1|teller\(10) & !\enable_gen_1|teller[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(10),
	datad => VCC,
	cin => \enable_gen_1|teller[9]~47\,
	combout => \enable_gen_1|teller[10]~48_combout\,
	cout => \enable_gen_1|teller[10]~49\);

-- Location: FF_X74_Y14_N27
\enable_gen_1|teller[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[10]~48_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(10));

-- Location: LCCOMB_X74_Y14_N28
\enable_gen_1|teller[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[11]~50_combout\ = (\enable_gen_1|teller\(11) & (!\enable_gen_1|teller[10]~49\)) # (!\enable_gen_1|teller\(11) & ((\enable_gen_1|teller[10]~49\) # (GND)))
-- \enable_gen_1|teller[11]~51\ = CARRY((!\enable_gen_1|teller[10]~49\) # (!\enable_gen_1|teller\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(11),
	datad => VCC,
	cin => \enable_gen_1|teller[10]~49\,
	combout => \enable_gen_1|teller[11]~50_combout\,
	cout => \enable_gen_1|teller[11]~51\);

-- Location: FF_X74_Y14_N29
\enable_gen_1|teller[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[11]~50_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(11));

-- Location: LCCOMB_X74_Y14_N30
\enable_gen_1|teller[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[12]~52_combout\ = (\enable_gen_1|teller\(12) & (\enable_gen_1|teller[11]~51\ $ (GND))) # (!\enable_gen_1|teller\(12) & (!\enable_gen_1|teller[11]~51\ & VCC))
-- \enable_gen_1|teller[12]~53\ = CARRY((\enable_gen_1|teller\(12) & !\enable_gen_1|teller[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(12),
	datad => VCC,
	cin => \enable_gen_1|teller[11]~51\,
	combout => \enable_gen_1|teller[12]~52_combout\,
	cout => \enable_gen_1|teller[12]~53\);

-- Location: FF_X74_Y14_N31
\enable_gen_1|teller[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[12]~52_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(12));

-- Location: LCCOMB_X74_Y13_N0
\enable_gen_1|teller[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[13]~54_combout\ = (\enable_gen_1|teller\(13) & (!\enable_gen_1|teller[12]~53\)) # (!\enable_gen_1|teller\(13) & ((\enable_gen_1|teller[12]~53\) # (GND)))
-- \enable_gen_1|teller[13]~55\ = CARRY((!\enable_gen_1|teller[12]~53\) # (!\enable_gen_1|teller\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(13),
	datad => VCC,
	cin => \enable_gen_1|teller[12]~53\,
	combout => \enable_gen_1|teller[13]~54_combout\,
	cout => \enable_gen_1|teller[13]~55\);

-- Location: FF_X74_Y13_N1
\enable_gen_1|teller[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[13]~54_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(13));

-- Location: LCCOMB_X74_Y13_N2
\enable_gen_1|teller[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[14]~56_combout\ = (\enable_gen_1|teller\(14) & (\enable_gen_1|teller[13]~55\ $ (GND))) # (!\enable_gen_1|teller\(14) & (!\enable_gen_1|teller[13]~55\ & VCC))
-- \enable_gen_1|teller[14]~57\ = CARRY((\enable_gen_1|teller\(14) & !\enable_gen_1|teller[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(14),
	datad => VCC,
	cin => \enable_gen_1|teller[13]~55\,
	combout => \enable_gen_1|teller[14]~56_combout\,
	cout => \enable_gen_1|teller[14]~57\);

-- Location: FF_X74_Y13_N3
\enable_gen_1|teller[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[14]~56_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(14));

-- Location: LCCOMB_X74_Y13_N4
\enable_gen_1|teller[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[15]~58_combout\ = (\enable_gen_1|teller\(15) & (!\enable_gen_1|teller[14]~57\)) # (!\enable_gen_1|teller\(15) & ((\enable_gen_1|teller[14]~57\) # (GND)))
-- \enable_gen_1|teller[15]~59\ = CARRY((!\enable_gen_1|teller[14]~57\) # (!\enable_gen_1|teller\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(15),
	datad => VCC,
	cin => \enable_gen_1|teller[14]~57\,
	combout => \enable_gen_1|teller[15]~58_combout\,
	cout => \enable_gen_1|teller[15]~59\);

-- Location: FF_X74_Y13_N5
\enable_gen_1|teller[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[15]~58_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(15));

-- Location: LCCOMB_X74_Y13_N6
\enable_gen_1|teller[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[16]~60_combout\ = (\enable_gen_1|teller\(16) & (\enable_gen_1|teller[15]~59\ $ (GND))) # (!\enable_gen_1|teller\(16) & (!\enable_gen_1|teller[15]~59\ & VCC))
-- \enable_gen_1|teller[16]~61\ = CARRY((\enable_gen_1|teller\(16) & !\enable_gen_1|teller[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(16),
	datad => VCC,
	cin => \enable_gen_1|teller[15]~59\,
	combout => \enable_gen_1|teller[16]~60_combout\,
	cout => \enable_gen_1|teller[16]~61\);

-- Location: FF_X74_Y13_N7
\enable_gen_1|teller[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[16]~60_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(16));

-- Location: LCCOMB_X74_Y13_N8
\enable_gen_1|teller[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[17]~62_combout\ = (\enable_gen_1|teller\(17) & (!\enable_gen_1|teller[16]~61\)) # (!\enable_gen_1|teller\(17) & ((\enable_gen_1|teller[16]~61\) # (GND)))
-- \enable_gen_1|teller[17]~63\ = CARRY((!\enable_gen_1|teller[16]~61\) # (!\enable_gen_1|teller\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(17),
	datad => VCC,
	cin => \enable_gen_1|teller[16]~61\,
	combout => \enable_gen_1|teller[17]~62_combout\,
	cout => \enable_gen_1|teller[17]~63\);

-- Location: FF_X74_Y13_N9
\enable_gen_1|teller[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[17]~62_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(17));

-- Location: LCCOMB_X74_Y13_N10
\enable_gen_1|teller[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[18]~64_combout\ = (\enable_gen_1|teller\(18) & (\enable_gen_1|teller[17]~63\ $ (GND))) # (!\enable_gen_1|teller\(18) & (!\enable_gen_1|teller[17]~63\ & VCC))
-- \enable_gen_1|teller[18]~65\ = CARRY((\enable_gen_1|teller\(18) & !\enable_gen_1|teller[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(18),
	datad => VCC,
	cin => \enable_gen_1|teller[17]~63\,
	combout => \enable_gen_1|teller[18]~64_combout\,
	cout => \enable_gen_1|teller[18]~65\);

-- Location: FF_X74_Y13_N11
\enable_gen_1|teller[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[18]~64_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(18));

-- Location: LCCOMB_X74_Y13_N12
\enable_gen_1|teller[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[19]~66_combout\ = (\enable_gen_1|teller\(19) & (!\enable_gen_1|teller[18]~65\)) # (!\enable_gen_1|teller\(19) & ((\enable_gen_1|teller[18]~65\) # (GND)))
-- \enable_gen_1|teller[19]~67\ = CARRY((!\enable_gen_1|teller[18]~65\) # (!\enable_gen_1|teller\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(19),
	datad => VCC,
	cin => \enable_gen_1|teller[18]~65\,
	combout => \enable_gen_1|teller[19]~66_combout\,
	cout => \enable_gen_1|teller[19]~67\);

-- Location: FF_X74_Y13_N13
\enable_gen_1|teller[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[19]~66_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(19));

-- Location: LCCOMB_X74_Y13_N14
\enable_gen_1|teller[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[20]~68_combout\ = (\enable_gen_1|teller\(20) & (\enable_gen_1|teller[19]~67\ $ (GND))) # (!\enable_gen_1|teller\(20) & (!\enable_gen_1|teller[19]~67\ & VCC))
-- \enable_gen_1|teller[20]~69\ = CARRY((\enable_gen_1|teller\(20) & !\enable_gen_1|teller[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(20),
	datad => VCC,
	cin => \enable_gen_1|teller[19]~67\,
	combout => \enable_gen_1|teller[20]~68_combout\,
	cout => \enable_gen_1|teller[20]~69\);

-- Location: FF_X74_Y13_N15
\enable_gen_1|teller[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[20]~68_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(20));

-- Location: LCCOMB_X74_Y13_N16
\enable_gen_1|teller[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[21]~70_combout\ = (\enable_gen_1|teller\(21) & (!\enable_gen_1|teller[20]~69\)) # (!\enable_gen_1|teller\(21) & ((\enable_gen_1|teller[20]~69\) # (GND)))
-- \enable_gen_1|teller[21]~71\ = CARRY((!\enable_gen_1|teller[20]~69\) # (!\enable_gen_1|teller\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(21),
	datad => VCC,
	cin => \enable_gen_1|teller[20]~69\,
	combout => \enable_gen_1|teller[21]~70_combout\,
	cout => \enable_gen_1|teller[21]~71\);

-- Location: FF_X74_Y13_N17
\enable_gen_1|teller[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[21]~70_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(21));

-- Location: LCCOMB_X74_Y13_N18
\enable_gen_1|teller[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[22]~72_combout\ = (\enable_gen_1|teller\(22) & (\enable_gen_1|teller[21]~71\ $ (GND))) # (!\enable_gen_1|teller\(22) & (!\enable_gen_1|teller[21]~71\ & VCC))
-- \enable_gen_1|teller[22]~73\ = CARRY((\enable_gen_1|teller\(22) & !\enable_gen_1|teller[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_1|teller\(22),
	datad => VCC,
	cin => \enable_gen_1|teller[21]~71\,
	combout => \enable_gen_1|teller[22]~72_combout\,
	cout => \enable_gen_1|teller[22]~73\);

-- Location: FF_X74_Y13_N19
\enable_gen_1|teller[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[22]~72_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(22));

-- Location: FF_X74_Y13_N21
\enable_gen_1|teller[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[23]~74_combout\,
	sclr => \enable_gen_1|teller[25]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(23));

-- Location: LCCOMB_X74_Y13_N28
\enable_gen_1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~6_combout\ = (((!\enable_gen_1|teller\(21)) # (!\enable_gen_1|teller\(20))) # (!\enable_gen_1|teller\(22))) # (!\enable_gen_1|teller\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(23),
	datab => \enable_gen_1|teller\(22),
	datac => \enable_gen_1|teller\(20),
	datad => \enable_gen_1|teller\(21),
	combout => \enable_gen_1|Equal0~6_combout\);

-- Location: LCCOMB_X75_Y13_N8
\enable_gen_1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~8_combout\ = (!\enable_gen_1|Equal0~6_combout\ & (!\enable_gen_1|Equal0~7_combout\ & (!\enable_gen_1|Equal0~5_combout\ & !\enable_gen_1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|Equal0~6_combout\,
	datab => \enable_gen_1|Equal0~7_combout\,
	datac => \enable_gen_1|Equal0~5_combout\,
	datad => \enable_gen_1|Equal0~4_combout\,
	combout => \enable_gen_1|Equal0~8_combout\);

-- Location: FF_X75_Y13_N9
\enable_gen_1|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|Equal0~8_combout\,
	ena => \reset_syncher|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|enable~q\);

-- Location: LCCOMB_X67_Y13_N16
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

-- Location: FF_X67_Y13_N17
hallo : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hallo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hallo~q\);

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

-- Location: LCCOMB_X99_Y15_N18
\start_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \start_q~0_combout\ = (\reset_syncher|rst_clk_n~q\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_syncher|rst_clk_n~q\,
	datad => \KEY[0]~input_o\,
	combout => \start_q~0_combout\);

-- Location: LCCOMB_X99_Y15_N16
\start_qq~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \start_qq~1_combout\ = (!\state.s_idle~q\) # (!\reset_syncher|rst_clk_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_syncher|rst_clk_n~q\,
	datad => \state.s_idle~q\,
	combout => \start_qq~1_combout\);

-- Location: FF_X99_Y15_N19
start_q : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \start_q~0_combout\,
	ena => \start_qq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_q~q\);

-- Location: LCCOMB_X99_Y15_N24
\start_qq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \start_qq~0_combout\ = (\reset_syncher|rst_clk_n~q\ & \start_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_syncher|rst_clk_n~q\,
	datad => \start_q~q\,
	combout => \start_qq~0_combout\);

-- Location: FF_X99_Y15_N25
start_qq : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \start_qq~0_combout\,
	ena => \start_qq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_qq~q\);

-- Location: LCCOMB_X102_Y15_N10
\state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (\reset_syncher|rst_clk_n~q\ & ((\state.s_idle~q\) # (!\start_qq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_qq~q\,
	datab => \reset_syncher|rst_clk_n~q\,
	datac => \state.s_idle~q\,
	combout => \state~14_combout\);

-- Location: FF_X102_Y15_N11
\state.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_idle~q\);

-- Location: LCCOMB_X102_Y15_N22
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.s_finish~q\) # ((\state.s_wait~q\) # ((!\baud_gen|baud_enable_s~q\ & \state.s_shift_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_finish~q\,
	datab => \baud_gen|baud_enable_s~q\,
	datac => \state.s_shift_out~q\,
	datad => \state.s_wait~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X103_Y15_N10
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\state.s_transmit~q\) # ((shiftreg(9) & \Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_transmit~q\,
	datac => shiftreg(9),
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X103_Y15_N11
\shiftreg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	ena => \reset_syncher|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(9));

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

-- Location: LCCOMB_X103_Y15_N4
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.s_shift_out~q\ & (shiftreg(9))) # (!\state.s_shift_out~q\ & (((\state.s_transmit~q\ & \SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(9),
	datab => \state.s_transmit~q\,
	datac => \state.s_shift_out~q\,
	datad => \SW[8]~input_o\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X102_Y15_N14
\shiftreg[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftreg[1]~0_combout\ = (\reset_syncher|rst_clk_n~q\ & (!\state.s_finish~q\ & !\state.s_wait~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_syncher|rst_clk_n~q\,
	datac => \state.s_finish~q\,
	datad => \state.s_wait~q\,
	combout => \shiftreg[1]~0_combout\);

-- Location: LCCOMB_X103_Y15_N26
\shiftreg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftreg[1]~1_combout\ = (\shiftreg[1]~0_combout\ & (((\baud_gen|baud_enable_s~q\ & !\Equal0~2_combout\)) # (!\state.s_shift_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftreg[1]~0_combout\,
	datab => \state.s_shift_out~q\,
	datac => \baud_gen|baud_enable_s~q\,
	datad => \Equal0~2_combout\,
	combout => \shiftreg[1]~1_combout\);

-- Location: FF_X103_Y15_N5
\shiftreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \shiftreg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(8));

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

-- Location: LCCOMB_X103_Y15_N18
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.s_shift_out~q\ & (((shiftreg(8))))) # (!\state.s_shift_out~q\ & (\SW[7]~input_o\ & ((\state.s_transmit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \state.s_shift_out~q\,
	datac => shiftreg(8),
	datad => \state.s_transmit~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X103_Y15_N19
\shiftreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \shiftreg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(7));

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

-- Location: LCCOMB_X103_Y15_N16
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.s_shift_out~q\ & (((shiftreg(7))))) # (!\state.s_shift_out~q\ & (\SW[6]~input_o\ & (\state.s_transmit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \state.s_transmit~q\,
	datac => \state.s_shift_out~q\,
	datad => shiftreg(7),
	combout => \Selector4~0_combout\);

-- Location: FF_X103_Y15_N17
\shiftreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \shiftreg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(6));

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

-- Location: LCCOMB_X103_Y15_N14
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.s_shift_out~q\ & (((shiftreg(6))))) # (!\state.s_shift_out~q\ & (\SW[5]~input_o\ & (\state.s_transmit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \state.s_transmit~q\,
	datac => \state.s_shift_out~q\,
	datad => shiftreg(6),
	combout => \Selector5~0_combout\);

-- Location: FF_X103_Y15_N15
\shiftreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \shiftreg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(5));

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

-- Location: LCCOMB_X103_Y15_N0
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.s_shift_out~q\ & (((shiftreg(5))))) # (!\state.s_shift_out~q\ & (\SW[4]~input_o\ & ((\state.s_transmit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \state.s_shift_out~q\,
	datac => shiftreg(5),
	datad => \state.s_transmit~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X103_Y15_N1
\shiftreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \shiftreg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(4));

-- Location: LCCOMB_X103_Y15_N22
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!shiftreg(7) & (!shiftreg(6) & (!shiftreg(5) & !shiftreg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(7),
	datab => shiftreg(6),
	datac => shiftreg(5),
	datad => shiftreg(4),
	combout => \Equal0~1_combout\);

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

-- Location: LCCOMB_X103_Y15_N30
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.s_shift_out~q\ & (((shiftreg(4))))) # (!\state.s_shift_out~q\ & (\SW[3]~input_o\ & (\state.s_transmit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \state.s_transmit~q\,
	datac => \state.s_shift_out~q\,
	datad => shiftreg(4),
	combout => \Selector7~0_combout\);

-- Location: FF_X103_Y15_N31
\shiftreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \shiftreg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(3));

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

-- Location: LCCOMB_X103_Y15_N28
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.s_shift_out~q\ & (shiftreg(3))) # (!\state.s_shift_out~q\ & (((\state.s_transmit~q\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(3),
	datab => \state.s_transmit~q\,
	datac => \state.s_shift_out~q\,
	datad => \SW[2]~input_o\,
	combout => \Selector8~0_combout\);

-- Location: FF_X103_Y15_N29
\shiftreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \shiftreg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(2));

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

-- Location: LCCOMB_X103_Y15_N2
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.s_shift_out~q\ & (((shiftreg(2))))) # (!\state.s_shift_out~q\ & (\SW[1]~input_o\ & (\state.s_transmit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \state.s_transmit~q\,
	datac => \state.s_shift_out~q\,
	datad => shiftreg(2),
	combout => \Selector9~0_combout\);

-- Location: FF_X103_Y15_N3
\shiftreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \shiftreg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(1));

-- Location: LCCOMB_X102_Y15_N28
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\baud_gen|baud_enable_s~q\ & (\state.s_shift_out~q\ & shiftreg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|baud_enable_s~q\,
	datac => \state.s_shift_out~q\,
	datad => shiftreg(1),
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X103_Y15_N8
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\) # ((\Selector1~0_combout\ & shiftreg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~0_combout\,
	datac => shiftreg(0),
	datad => \Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X103_Y15_N9
\shiftreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	ena => \reset_syncher|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(0));

-- Location: LCCOMB_X103_Y15_N20
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!shiftreg(3) & (!shiftreg(2) & (!shiftreg(0) & !shiftreg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(3),
	datab => shiftreg(2),
	datac => shiftreg(0),
	datad => shiftreg(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X103_Y15_N24
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!shiftreg(9) & (!shiftreg(8) & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(9),
	datab => shiftreg(8),
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X102_Y15_N4
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.s_transmit~q\) # ((\state.s_shift_out~q\ & !\Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_transmit~q\,
	datac => \state.s_shift_out~q\,
	datad => \Equal0~2_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X102_Y15_N5
\state.s_shift_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	sclr => \reset_syncher|ALT_INV_rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_shift_out~q\);

-- Location: LCCOMB_X102_Y15_N26
\state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (\reset_syncher|rst_clk_n~q\ & (\state.s_shift_out~q\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_syncher|rst_clk_n~q\,
	datac => \state.s_shift_out~q\,
	datad => \Equal0~2_combout\,
	combout => \state~12_combout\);

-- Location: FF_X102_Y15_N27
\state.s_finish\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_finish~q\);

-- Location: LCCOMB_X102_Y15_N24
\state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (\reset_syncher|rst_clk_n~q\ & \state.s_finish~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_syncher|rst_clk_n~q\,
	datac => \state.s_finish~q\,
	combout => \state~13_combout\);

-- Location: FF_X102_Y15_N25
\state.s_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_wait~q\);

-- Location: LCCOMB_X102_Y15_N30
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.s_wait~q\) # ((!\state.s_idle~q\ & !\start_qq~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_idle~q\,
	datac => \start_qq~q\,
	datad => \state.s_wait~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X102_Y15_N31
\state.s_transmit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	sclr => \reset_syncher|ALT_INV_rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_transmit~q\);

-- Location: FF_X98_Y11_N1
start_teller : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \state.s_transmit~q\,
	sload => VCC,
	ena => \reset_syncher|rst_clk_n~q\,
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

-- Location: LCCOMB_X101_Y13_N2
\baud_gen|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux0~0_combout\ = (\SW[14]~input_o\ & (\SW[15]~input_o\ & \SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Mux0~0_combout\);

-- Location: LCCOMB_X101_Y13_N20
\baud_gen|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux2~0_combout\ = (\SW[14]~input_o\ & (\SW[15]~input_o\ & !\SW[16]~input_o\)) # (!\SW[14]~input_o\ & ((\SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Mux2~0_combout\);

-- Location: LCCOMB_X101_Y13_N12
\baud_gen|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux3~0_combout\ = (\SW[14]~input_o\ & (\SW[15]~input_o\ & \SW[16]~input_o\)) # (!\SW[14]~input_o\ & ((\SW[15]~input_o\) # (\SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Mux3~0_combout\);

-- Location: LCCOMB_X99_Y11_N12
\baud_gen|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux5~0_combout\ = (!\SW[14]~input_o\ & (!\SW[15]~input_o\ & !\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Mux5~0_combout\);

-- Location: LCCOMB_X99_Y11_N6
\baud_gen|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux6~0_combout\ = (!\SW[14]~input_o\ & (\SW[15]~input_o\ & !\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Mux6~0_combout\);

-- Location: LCCOMB_X96_Y11_N26
\baud_gen|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux7~0_combout\ = ((\SW[15]~input_o\ & \SW[16]~input_o\)) # (!\SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Mux7~0_combout\);

-- Location: LCCOMB_X99_Y11_N28
\baud_gen|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux4~0_combout\ = (\SW[15]~input_o\) # ((!\SW[14]~input_o\ & !\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Mux4~0_combout\);

-- Location: LCCOMB_X95_Y15_N10
\baud_gen|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux9~0_combout\ = \SW[16]~input_o\ $ (((\SW[15]~input_o\) # (\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \baud_gen|Mux9~0_combout\);

-- Location: LCCOMB_X101_Y13_N30
\baud_gen|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux11~0_combout\ = (\SW[14]~input_o\ & (\SW[15]~input_o\)) # (!\SW[14]~input_o\ & (!\SW[15]~input_o\ & !\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Mux11~0_combout\);

-- Location: LCCOMB_X99_Y11_N30
\baud_gen|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux12~0_combout\ = (\SW[14]~input_o\ & (\SW[15]~input_o\ & !\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Mux12~0_combout\);

-- Location: LCCOMB_X99_Y12_N6
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\ = \baud_gen|Mux12~0_combout\ $ (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\ = CARRY(!\baud_gen|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\);

-- Location: LCCOMB_X99_Y12_N8
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

-- Location: LCCOMB_X99_Y12_N10
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\ = (\baud_gen|Mux3~0_combout\ & ((GND) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\))) # (!\baud_gen|Mux3~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\ $ (GND)))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\ = CARRY((\baud_gen|Mux3~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\);

-- Location: LCCOMB_X99_Y12_N12
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\ = (\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\)) # (!\baud_gen|Mux9~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\ & VCC))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\ = CARRY((\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\);

-- Location: LCCOMB_X99_Y12_N14
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

-- Location: LCCOMB_X99_Y12_N16
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\ = (\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\ & VCC)) # (!\baud_gen|Mux7~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\ = CARRY((!\baud_gen|Mux7~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux7~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\);

-- Location: LCCOMB_X99_Y12_N18
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\ = (\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\ & VCC)) # (!\baud_gen|Mux6~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\ $ (GND)))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\ = CARRY((!\baud_gen|Mux6~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\);

-- Location: LCCOMB_X99_Y12_N20
\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14_combout\ = (\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\)) # (!\baud_gen|Mux5~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\ & VCC))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~15\ = CARRY((\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~15\);

-- Location: LCCOMB_X99_Y12_N22
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

-- Location: LCCOMB_X98_Y12_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~22_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\)) # 
-- (!\baud_gen|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux5~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~22_combout\);

-- Location: LCCOMB_X97_Y12_N24
\baud_gen|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Mux3~1_combout\ = (!\SW[15]~input_o\ & !\SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	combout => \baud_gen|Mux3~1_combout\);

-- Location: LCCOMB_X99_Y12_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~23_combout\ = (\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\ & 
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux5~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~23_combout\);

-- Location: LCCOMB_X99_Y12_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~24_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\)) # 
-- (!\baud_gen|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux5~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~24_combout\);

-- Location: LCCOMB_X99_Y12_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~25_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8_combout\) # 
-- (!\baud_gen|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~25_combout\);

-- Location: LCCOMB_X99_Y12_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~26_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\)) # 
-- (!\baud_gen|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux5~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~26_combout\);

-- Location: LCCOMB_X99_Y12_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~27_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\)) # 
-- (!\baud_gen|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux5~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~27_combout\);

-- Location: LCCOMB_X98_Y12_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~28_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\)) # 
-- (!\baud_gen|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux5~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~28_combout\);

-- Location: LCCOMB_X96_Y12_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~29_combout\ = (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\ & (\baud_gen|Mux5~0_combout\ & 
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datac => \baud_gen|Mux5~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~29_combout\);

-- Location: LCCOMB_X95_Y12_N28
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

-- Location: LCCOMB_X95_Y12_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[256]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut\(256) = ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~18_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\)) # 
-- (!\baud_gen|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~18_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(256));

-- Location: LCCOMB_X98_Y12_N10
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

-- Location: LCCOMB_X98_Y12_N12
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

-- Location: LCCOMB_X98_Y12_N14
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~29_combout\ $ (\baud_gen|Mux11~0_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~29_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\) # 
-- (!\baud_gen|Mux11~0_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~29_combout\ & (!\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~29_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\);

-- Location: LCCOMB_X98_Y12_N16
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~28_combout\ & ((\baud_gen|Mux3~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\ & VCC)) # (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~28_combout\ & ((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\)) # (!\baud_gen|Mux3~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~28_combout\ & (!\baud_gen|Mux3~0_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~28_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\) # 
-- (!\baud_gen|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~28_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\);

-- Location: LCCOMB_X98_Y12_N18
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~27_combout\ $ (\baud_gen|Mux9~0_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~27_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\) # 
-- (!\baud_gen|Mux9~0_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~27_combout\ & (!\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~27_combout\,
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\);

-- Location: LCCOMB_X98_Y12_N20
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~26_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~26_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\) # (GND))))) # 
-- (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~26_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\ = CARRY((\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~26_combout\))) # (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~26_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~26_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\);

-- Location: LCCOMB_X98_Y12_N22
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\ = ((\baud_gen|Mux7~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~25_combout\ $ 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~25_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\))) # (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~25_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~25_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\);

-- Location: LCCOMB_X98_Y12_N24
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~24_combout\ & ((\baud_gen|Mux6~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\)) # (!\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\ & VCC)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~24_combout\ & ((\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\) # (GND))) # (!\baud_gen|Mux6~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~24_combout\ & (\baud_gen|Mux6~0_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~24_combout\ & ((\baud_gen|Mux6~0_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~24_combout\,
	datab => \baud_gen|Mux6~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\);

-- Location: LCCOMB_X98_Y12_N26
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~23_combout\ $ (\baud_gen|Mux5~0_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~23_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\) # 
-- (!\baud_gen|Mux5~0_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~23_combout\ & (!\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~23_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\);

-- Location: LCCOMB_X98_Y12_N28
\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~22_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~22_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\)))) # 
-- (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~22_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~22_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\ = CARRY((\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~22_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\)) # (!\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~22_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\);

-- Location: LCCOMB_X98_Y12_N30
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

-- Location: LCCOMB_X97_Y12_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~30_combout\ = (\baud_gen|Mux3~1_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~22_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\))))) 
-- # (!\baud_gen|Mux3~1_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[264]~22_combout\,
	datab => \baud_gen|Mux3~1_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~30_combout\);

-- Location: LCCOMB_X99_Y12_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~31_combout\ = (\baud_gen|Mux3~1_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~23_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\)))) 
-- # (!\baud_gen|Mux3~1_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[263]~23_combout\,
	datac => \baud_gen|Mux3~1_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~31_combout\);

-- Location: LCCOMB_X98_Y12_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~32_combout\ = (\baud_gen|Mux3~1_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~24_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\))))) 
-- # (!\baud_gen|Mux3~1_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[262]~24_combout\,
	datab => \baud_gen|Mux3~1_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~32_combout\);

-- Location: LCCOMB_X98_Y12_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~33_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~25_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baud_gen|Mux3~1_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\))) # (!\baud_gen|Mux3~1_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[261]~25_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\,
	datad => \baud_gen|Mux3~1_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~33_combout\);

-- Location: LCCOMB_X98_Y12_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~34_combout\ = (\baud_gen|Mux3~1_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~26_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\)))) 
-- # (!\baud_gen|Mux3~1_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\,
	datab => \baud_gen|Mux3~1_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[260]~26_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~34_combout\);

-- Location: LCCOMB_X99_Y12_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~35_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~27_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baud_gen|Mux3~1_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\))) # (!\baud_gen|Mux3~1_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[259]~27_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \baud_gen|Mux3~1_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~35_combout\);

-- Location: LCCOMB_X97_Y12_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~36_combout\ = (\baud_gen|Mux3~1_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~28_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\))))) # 
-- (!\baud_gen|Mux3~1_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[258]~28_combout\,
	datab => \baud_gen|Mux3~1_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~36_combout\);

-- Location: LCCOMB_X97_Y12_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~37_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~29_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baud_gen|Mux3~1_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\))) # (!\baud_gen|Mux3~1_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[257]~29_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\,
	datad => \baud_gen|Mux3~1_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~37_combout\);

-- Location: LCCOMB_X97_Y12_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~38_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(256))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baud_gen|Mux3~1_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\))) # (!\baud_gen|Mux3~1_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(256)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(256),
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datad => \baud_gen|Mux3~1_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~38_combout\);

-- Location: LCCOMB_X97_Y12_N2
\baud_gen|Div0|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~0_combout\ = \baud_gen|Mux12~0_combout\ $ (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~1\ = CARRY(!\baud_gen|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X97_Y12_N4
\baud_gen|Div0|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~38_combout\ & ((\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~1\)) # 
-- (!\baud_gen|Mux11~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~1\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~38_combout\ & ((\baud_gen|Mux11~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_5~1\) # (GND))) # (!\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~1\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~3\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~38_combout\ & (\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~1\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~38_combout\ & ((\baud_gen|Mux11~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~38_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~1\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X97_Y12_N6
\baud_gen|Div0|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~4_combout\ = ((\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~37_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_5~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~5\ = CARRY((\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~37_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_5~3\))) # 
-- (!\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~37_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~37_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X97_Y12_N8
\baud_gen|Div0|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~36_combout\ & ((\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~5\)) # 
-- (!\baud_gen|Mux9~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~5\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~36_combout\ & ((\baud_gen|Mux9~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_5~5\) # (GND))) # (!\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~5\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~7\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~36_combout\ & (\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~5\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~36_combout\ & ((\baud_gen|Mux9~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_5~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~36_combout\,
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X97_Y12_N10
\baud_gen|Div0|auto_generated|divider|divider|op_5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~8_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~35_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_5~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~9\ = CARRY((\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~35_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~7\)) # (!\baud_gen|Mux4~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~35_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_5~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~35_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X97_Y12_N12
\baud_gen|Div0|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~10_combout\ = (\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~9\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~34_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~9\)))) # (!\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~34_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_5~9\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~9\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~11\ = CARRY((\baud_gen|Mux7~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~34_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~9\)) # (!\baud_gen|Mux7~0_combout\ 
-- & ((!\baud_gen|Div0|auto_generated|divider|divider|op_5~9\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~34_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~11\);

-- Location: LCCOMB_X97_Y12_N14
\baud_gen|Div0|auto_generated|divider|divider|op_5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~12_combout\ = ((\baud_gen|Mux6~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~33_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_5~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~13\ = CARRY((\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~33_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~11\)) # (!\baud_gen|Mux6~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~33_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_5~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~33_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~13\);

-- Location: LCCOMB_X97_Y12_N16
\baud_gen|Div0|auto_generated|divider|divider|op_5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~14_combout\ = (\baud_gen|Mux5~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~32_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~13\) # (GND))))) # (!\baud_gen|Mux5~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~32_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_5~13\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~32_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~15\ = CARRY((\baud_gen|Mux5~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_5~13\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~32_combout\))) # 
-- (!\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~32_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~32_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~15\);

-- Location: LCCOMB_X97_Y12_N18
\baud_gen|Div0|auto_generated|divider|divider|op_5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~16_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~31_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_5~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~17\ = CARRY((\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~31_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_5~15\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~31_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~31_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~17\);

-- Location: LCCOMB_X97_Y12_N20
\baud_gen|Div0|auto_generated|divider|divider|op_5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~18_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~30_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~30_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~17\) # (GND))))) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~30_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_5~17\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~30_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_5~17\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~19\ = CARRY((\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_5~17\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~30_combout\))) # 
-- (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~30_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_5~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~30_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_5~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_5~19\);

-- Location: LCCOMB_X97_Y12_N22
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

-- Location: LCCOMB_X96_Y11_N24
\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_5~20_combout\) # ((\SW[16]~input_o\) # ((\SW[15]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_5~20_combout\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\);

-- Location: LCCOMB_X96_Y12_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~39_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~30_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_5~18_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[286]~30_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~39_combout\);

-- Location: LCCOMB_X96_Y12_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~40_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~31_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[285]~31_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_5~16_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~40_combout\);

-- Location: LCCOMB_X96_Y12_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~41_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~32_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_5~14_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[284]~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~41_combout\);

-- Location: LCCOMB_X96_Y12_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~42_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~33_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[283]~33_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_5~12_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~42_combout\);

-- Location: LCCOMB_X96_Y12_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~43_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~34_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[282]~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~43_combout\);

-- Location: LCCOMB_X96_Y12_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~44_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~35_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_5~8_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[281]~35_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~44_combout\);

-- Location: LCCOMB_X96_Y12_N14
\baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~45_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~36_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_5~6_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[280]~36_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~45_combout\);

-- Location: LCCOMB_X96_Y12_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~46_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~37_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_5~4_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[279]~37_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~46_combout\);

-- Location: LCCOMB_X96_Y12_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~47_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~38_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_5~2_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[278]~38_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~47_combout\);

-- Location: LCCOMB_X96_Y11_N10
\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ = ((!\SW[14]~input_o\ & !\SW[15]~input_o\)) # (!\SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\);

-- Location: LCCOMB_X96_Y11_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~48_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_5~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_5~20_combout\ & !\baud_gen|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_5~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_5~20_combout\,
	datad => \baud_gen|Mux2~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~48_combout\);

-- Location: LCCOMB_X95_Y14_N30
\baud_gen|Div0|auto_generated|divider|divider|op_5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_5~22_combout\ = !\baud_gen|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baud_gen|Mux12~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_5~22_combout\);

-- Location: LCCOMB_X95_Y14_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[298]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut\(298) = (\baud_gen|Div0|auto_generated|divider|divider|op_5~20_combout\) # (((\baud_gen|Div0|auto_generated|divider|divider|op_5~22_combout\) # (\baud_gen|Mux2~0_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_5~20_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_5~22_combout\,
	datad => \baud_gen|Mux2~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(298));

-- Location: LCCOMB_X95_Y12_N4
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

-- Location: LCCOMB_X95_Y12_N6
\baud_gen|Div0|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~48_combout\ & ((\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~1\)) # 
-- (!\baud_gen|Mux11~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_6~1\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~48_combout\ & ((\baud_gen|Mux11~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_6~1\) # (GND))) # (!\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~1\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~3\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~48_combout\ & (\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~1\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~48_combout\ & ((\baud_gen|Mux11~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~48_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~1\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X95_Y12_N8
\baud_gen|Div0|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~4_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~47_combout\ $ (\baud_gen|Mux3~0_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_6~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~5\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~47_combout\ & ((\baud_gen|Mux3~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~3\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~47_combout\ & (\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~47_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X95_Y12_N10
\baud_gen|Div0|auto_generated|divider|divider|op_6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~6_combout\ = (\baud_gen|Mux9~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~46_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~5\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~46_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~5\) # (GND))))) # (!\baud_gen|Mux9~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~46_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_6~5\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~46_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~5\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~7\ = CARRY((\baud_gen|Mux9~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_6~5\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~46_combout\))) # 
-- (!\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~46_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux9~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~46_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X95_Y12_N12
\baud_gen|Div0|auto_generated|divider|divider|op_6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~8_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~45_combout\ $ (\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_6~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~9\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~45_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_6~7\) # (!\baud_gen|Mux4~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~45_combout\ & (!\baud_gen|Mux4~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~45_combout\,
	datab => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X95_Y12_N14
\baud_gen|Div0|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~10_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~44_combout\ & ((\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_6~9\ & VCC)) # 
-- (!\baud_gen|Mux7~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~9\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~44_combout\ & ((\baud_gen|Mux7~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~9\)) 
-- # (!\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~9\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~11\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~44_combout\ & (!\baud_gen|Mux7~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~44_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_6~9\) # (!\baud_gen|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~44_combout\,
	datab => \baud_gen|Mux7~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X95_Y12_N16
\baud_gen|Div0|auto_generated|divider|divider|op_6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~12_combout\ = ((\baud_gen|Mux6~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~43_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_6~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~13\ = CARRY((\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~43_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~11\)) # (!\baud_gen|Mux6~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~43_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~43_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~13\);

-- Location: LCCOMB_X95_Y12_N18
\baud_gen|Div0|auto_generated|divider|divider|op_6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~14_combout\ = (\baud_gen|Mux5~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~42_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~42_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~13\) # (GND))))) # (!\baud_gen|Mux5~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~42_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_6~13\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~42_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~15\ = CARRY((\baud_gen|Mux5~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_6~13\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~42_combout\))) # 
-- (!\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~42_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~42_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~15\);

-- Location: LCCOMB_X95_Y12_N20
\baud_gen|Div0|auto_generated|divider|divider|op_6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~16_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~41_combout\ $ (\baud_gen|Mux4~0_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_6~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~17\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~41_combout\ & ((\baud_gen|Mux4~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~15\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~41_combout\ & (\baud_gen|Mux4~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~41_combout\,
	datab => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~17\);

-- Location: LCCOMB_X95_Y12_N22
\baud_gen|Div0|auto_generated|divider|divider|op_6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~18_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~40_combout\ & ((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~17\)) # 
-- (!\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_6~17\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~40_combout\ & ((\baud_gen|Mux3~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_6~17\) # (GND))) # (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_6~17\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~19\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~40_combout\ & (\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~40_combout\ & ((\baud_gen|Mux3~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~40_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~19\);

-- Location: LCCOMB_X95_Y12_N24
\baud_gen|Div0|auto_generated|divider|divider|op_6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~20_combout\ = ((\baud_gen|Mux2~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~39_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_6~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_6~21\ = CARRY((\baud_gen|Mux2~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~39_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_6~19\)) # (!\baud_gen|Mux2~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~39_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux2~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~39_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_6~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_6~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_6~21\);

-- Location: LCCOMB_X95_Y12_N26
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

-- Location: LCCOMB_X96_Y12_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~49_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~39_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_6~20_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_6~20_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[308]~39_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~49_combout\);

-- Location: LCCOMB_X95_Y13_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~50_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~40_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~18_combout\))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[307]~40_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~50_combout\);

-- Location: LCCOMB_X96_Y12_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~51_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~41_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~16_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[306]~41_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~51_combout\);

-- Location: LCCOMB_X96_Y12_N16
\baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~52_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~42_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~14_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[305]~42_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~14_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~52_combout\);

-- Location: LCCOMB_X95_Y12_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~53_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~43_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_6~12_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[304]~43_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~53_combout\);

-- Location: LCCOMB_X96_Y12_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~54_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~44_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_6~10_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_6~10_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[303]~44_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~54_combout\);

-- Location: LCCOMB_X96_Y12_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~55_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~45_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~8_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[302]~45_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~8_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~55_combout\);

-- Location: LCCOMB_X95_Y12_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~56_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~46_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~6_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[301]~46_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~56_combout\);

-- Location: LCCOMB_X96_Y12_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~57_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~47_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~4_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[300]~47_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~4_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~57_combout\);

-- Location: LCCOMB_X95_Y13_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~58_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~48_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_6~2_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_6~2_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[299]~48_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~58_combout\);

-- Location: LCCOMB_X95_Y13_N16
\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~59_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(298))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_6~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(298)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(298),
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_6~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~59_combout\);

-- Location: LCCOMB_X97_Y13_N20
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

-- Location: LCCOMB_X96_Y13_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[319]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut\(319) = ((\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|op_6~24_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_6~24_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(319));

-- Location: LCCOMB_X96_Y13_N2
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

-- Location: LCCOMB_X96_Y13_N4
\baud_gen|Div0|auto_generated|divider|divider|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~59_combout\ & ((\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~1\)) # 
-- (!\baud_gen|Mux11~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_7~1\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~59_combout\ & ((\baud_gen|Mux11~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~1\) # (GND))) # (!\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~1\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~3\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~59_combout\ & (\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~1\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~59_combout\ & ((\baud_gen|Mux11~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~59_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~1\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X96_Y13_N6
\baud_gen|Div0|auto_generated|divider|divider|op_7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~4_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~58_combout\ $ (\baud_gen|Mux3~0_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_7~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~5\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~58_combout\ & ((\baud_gen|Mux3~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~3\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~58_combout\ & (\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~58_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X96_Y13_N8
\baud_gen|Div0|auto_generated|divider|divider|op_7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~57_combout\ & ((\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~5\)) # 
-- (!\baud_gen|Mux9~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_7~5\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~57_combout\ & ((\baud_gen|Mux9~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~5\) # (GND))) # (!\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~5\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~7\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~57_combout\ & (\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~5\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~57_combout\ & ((\baud_gen|Mux9~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~57_combout\,
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X96_Y13_N10
\baud_gen|Div0|auto_generated|divider|divider|op_7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~8_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~56_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_7~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~9\ = CARRY((\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~56_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~7\)) # (!\baud_gen|Mux4~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~56_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~56_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X96_Y13_N12
\baud_gen|Div0|auto_generated|divider|divider|op_7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~10_combout\ = (\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~55_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_7~9\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~55_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~9\)))) # (!\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~55_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_7~9\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~55_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_7~9\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~11\ = CARRY((\baud_gen|Mux7~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~55_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~9\)) # (!\baud_gen|Mux7~0_combout\ 
-- & ((!\baud_gen|Div0|auto_generated|divider|divider|op_7~9\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~55_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X96_Y13_N14
\baud_gen|Div0|auto_generated|divider|divider|op_7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~12_combout\ = ((\baud_gen|Mux6~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~54_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_7~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~13\ = CARRY((\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~54_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~11\)) # (!\baud_gen|Mux6~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~54_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~54_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~13\);

-- Location: LCCOMB_X96_Y13_N16
\baud_gen|Div0|auto_generated|divider|divider|op_7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~14_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~53_combout\ & ((\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~13\)) # 
-- (!\baud_gen|Mux5~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_7~13\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~53_combout\ & ((\baud_gen|Mux5~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~13\) # (GND))) # (!\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~15\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~53_combout\ & (\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~53_combout\ & ((\baud_gen|Mux5~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~53_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~15\);

-- Location: LCCOMB_X96_Y13_N18
\baud_gen|Div0|auto_generated|divider|divider|op_7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~16_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~52_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_7~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~17\ = CARRY((\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~52_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~15\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~52_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~52_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~17\);

-- Location: LCCOMB_X96_Y13_N20
\baud_gen|Div0|auto_generated|divider|divider|op_7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~18_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~51_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~51_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_7~17\) # (GND))))) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~51_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~17\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~51_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~17\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~19\ = CARRY((\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_7~17\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~51_combout\))) # 
-- (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~51_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~51_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~19\);

-- Location: LCCOMB_X96_Y13_N22
\baud_gen|Div0|auto_generated|divider|divider|op_7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~20_combout\ = ((\baud_gen|Mux2~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~50_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_7~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~21\ = CARRY((\baud_gen|Mux2~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~50_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_7~19\)) # (!\baud_gen|Mux2~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~50_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux2~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~50_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~21\);

-- Location: LCCOMB_X96_Y13_N24
\baud_gen|Div0|auto_generated|divider|divider|op_7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~22_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~49_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~21\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~49_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~21\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~49_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_7~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~49_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_7~21\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_7~23\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~49_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|op_7~21\)) # (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_7~21\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~49_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_7~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_7~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_7~23\);

-- Location: LCCOMB_X96_Y13_N26
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

-- Location: LCCOMB_X97_Y13_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~60_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~49_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~49_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[330]~49_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~22_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~60_combout\);

-- Location: LCCOMB_X97_Y13_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~61_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~50_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~50_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[329]~50_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~61_combout\);

-- Location: LCCOMB_X97_Y13_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~62_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~51_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~51_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[328]~51_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~62_combout\);

-- Location: LCCOMB_X97_Y13_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~63_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~52_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~52_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[327]~52_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~16_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~63_combout\);

-- Location: LCCOMB_X96_Y13_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~64_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~53_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~53_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[326]~53_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_7~14_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~64_combout\);

-- Location: LCCOMB_X97_Y13_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~65_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~54_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~54_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[325]~54_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~12_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~65_combout\);

-- Location: LCCOMB_X97_Y13_N16
\baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~66_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~55_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~55_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[324]~55_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~10_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~66_combout\);

-- Location: LCCOMB_X96_Y13_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~67_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~56_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~56_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_7~8_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[323]~56_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~67_combout\);

-- Location: LCCOMB_X97_Y13_N14
\baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~68_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~57_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~57_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[322]~57_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~68_combout\);

-- Location: LCCOMB_X97_Y13_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~69_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~58_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~58_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~4_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[321]~58_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~69_combout\);

-- Location: LCCOMB_X95_Y13_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~70_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~59_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~59_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_7~2_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[320]~59_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~70_combout\);

-- Location: LCCOMB_X97_Y13_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~71_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(319))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(319)))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_7~0_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(319),
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~71_combout\);

-- Location: LCCOMB_X99_Y11_N26
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

-- Location: LCCOMB_X99_Y13_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[340]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut\(340) = (\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|op_7~26_combout\) # (\baud_gen|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \baud_gen|Mux0~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(340));

-- Location: LCCOMB_X98_Y13_N4
\baud_gen|Div0|auto_generated|divider|divider|op_8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~0_combout\ = (\baud_gen|Mux12~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(340) $ (VCC))) # (!\baud_gen|Mux12~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(340)) # (GND)))
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~1\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut\(340)) # (!\baud_gen|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux12~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(340),
	datad => VCC,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~0_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X98_Y13_N6
\baud_gen|Div0|auto_generated|divider|divider|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~71_combout\ & ((\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~1\)) # 
-- (!\baud_gen|Mux11~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_8~1\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~71_combout\ & ((\baud_gen|Mux11~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~1\) # (GND))) # (!\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~1\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~3\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~71_combout\ & (\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~1\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~71_combout\ & ((\baud_gen|Mux11~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~71_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~1\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X98_Y13_N8
\baud_gen|Div0|auto_generated|divider|divider|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~4_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~70_combout\ $ (\baud_gen|Mux3~0_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_8~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~5\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~70_combout\ & ((\baud_gen|Mux3~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~3\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~70_combout\ & (\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~70_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X98_Y13_N10
\baud_gen|Div0|auto_generated|divider|divider|op_8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~69_combout\ & ((\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~5\)) # 
-- (!\baud_gen|Mux9~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_8~5\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~69_combout\ & ((\baud_gen|Mux9~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~5\) # (GND))) # (!\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~5\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~7\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~69_combout\ & (\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~5\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~69_combout\ & ((\baud_gen|Mux9~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~69_combout\,
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X98_Y13_N12
\baud_gen|Div0|auto_generated|divider|divider|op_8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~8_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~68_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_8~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~9\ = CARRY((\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~68_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~7\)) # (!\baud_gen|Mux4~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~68_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~68_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X98_Y13_N14
\baud_gen|Div0|auto_generated|divider|divider|op_8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~10_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~67_combout\ & ((\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_8~9\ & VCC)) # 
-- (!\baud_gen|Mux7~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~9\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~67_combout\ & ((\baud_gen|Mux7~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~9\)) 
-- # (!\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_8~9\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~11\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~67_combout\ & (!\baud_gen|Mux7~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~67_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_8~9\) # (!\baud_gen|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~67_combout\,
	datab => \baud_gen|Mux7~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~11\);

-- Location: LCCOMB_X98_Y13_N16
\baud_gen|Div0|auto_generated|divider|divider|op_8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~12_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~66_combout\ $ (\baud_gen|Mux6~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_8~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~13\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~66_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_8~11\) # (!\baud_gen|Mux6~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~66_combout\ & (!\baud_gen|Mux6~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~66_combout\,
	datab => \baud_gen|Mux6~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~13\);

-- Location: LCCOMB_X98_Y13_N18
\baud_gen|Div0|auto_generated|divider|divider|op_8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~14_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~65_combout\ & ((\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~13\)) # 
-- (!\baud_gen|Mux5~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_8~13\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~65_combout\ & ((\baud_gen|Mux5~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~13\) # (GND))) # (!\baud_gen|Mux5~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~15\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~65_combout\ & (\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~65_combout\ & ((\baud_gen|Mux5~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~65_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~15\);

-- Location: LCCOMB_X98_Y13_N20
\baud_gen|Div0|auto_generated|divider|divider|op_8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~16_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~64_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_8~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~17\ = CARRY((\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~64_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~15\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~64_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~64_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~17\);

-- Location: LCCOMB_X98_Y13_N22
\baud_gen|Div0|auto_generated|divider|divider|op_8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~18_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~63_combout\ & ((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~17\)) # 
-- (!\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_8~17\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~63_combout\ & ((\baud_gen|Mux3~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~17\) # (GND))) # (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~17\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~19\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~63_combout\ & (\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~63_combout\ & ((\baud_gen|Mux3~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~63_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~19\);

-- Location: LCCOMB_X98_Y13_N24
\baud_gen|Div0|auto_generated|divider|divider|op_8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~20_combout\ = ((\baud_gen|Mux2~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~62_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_8~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~21\ = CARRY((\baud_gen|Mux2~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~62_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~19\)) # (!\baud_gen|Mux2~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~62_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux2~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~62_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~21\);

-- Location: LCCOMB_X98_Y13_N26
\baud_gen|Div0|auto_generated|divider|divider|op_8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~22_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~61_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_8~21\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~21\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~61_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_8~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_8~21\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~23\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~61_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|op_8~21\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~61_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_8~21\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~61_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~23\);

-- Location: LCCOMB_X98_Y13_N28
\baud_gen|Div0|auto_generated|divider|divider|op_8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~24_combout\ = ((\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~60_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_8~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_8~25\ = CARRY((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~60_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_8~23\)) # (!\baud_gen|Mux0~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~60_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~60_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_8~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_8~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_8~25\);

-- Location: LCCOMB_X98_Y13_N30
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

-- Location: LCCOMB_X97_Y13_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~72_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~60_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~60_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[352]~60_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~24_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~72_combout\);

-- Location: LCCOMB_X97_Y13_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~73_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~61_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~61_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_8~22_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[351]~61_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~73_combout\);

-- Location: LCCOMB_X99_Y13_N16
\baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~74_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~62_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~62_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[350]~62_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_8~20_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~74_combout\);

-- Location: LCCOMB_X97_Y13_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~75_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~63_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~63_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[349]~63_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~75_combout\);

-- Location: LCCOMB_X99_Y13_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~76_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~64_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~64_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_8~16_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[348]~64_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~76_combout\);

-- Location: LCCOMB_X97_Y13_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~77_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~65_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~65_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_8~14_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[347]~65_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~77_combout\);

-- Location: LCCOMB_X98_Y13_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~78_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~66_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~66_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_8~12_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[346]~66_combout\,
	datad => \baud_gen|Mux0~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~78_combout\);

-- Location: LCCOMB_X99_Y13_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~79_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~67_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~67_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[345]~67_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~79_combout\);

-- Location: LCCOMB_X98_Y13_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~80_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~68_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~68_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_8~8_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[344]~68_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baud_gen|Mux0~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~80_combout\);

-- Location: LCCOMB_X97_Y13_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~81_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~69_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~69_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_8~6_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[343]~69_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~81_combout\);

-- Location: LCCOMB_X99_Y13_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~82_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~70_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~70_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[342]~70_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~4_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~82_combout\);

-- Location: LCCOMB_X99_Y13_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~83_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~71_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~71_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[341]~71_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_8~2_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~83_combout\);

-- Location: LCCOMB_X99_Y13_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~84_combout\ = (\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(340))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(340))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(340),
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_8~0_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~84_combout\);

-- Location: LCCOMB_X99_Y13_N24
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

-- Location: LCCOMB_X99_Y13_N0
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

-- Location: LCCOMB_X100_Y13_N0
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

-- Location: LCCOMB_X100_Y13_N2
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

-- Location: LCCOMB_X100_Y13_N4
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~84_combout\ $ (\baud_gen|Mux11~0_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~84_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\) # 
-- (!\baud_gen|Mux11~0_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~84_combout\ & (!\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~84_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\);

-- Location: LCCOMB_X100_Y13_N6
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~83_combout\ & ((\baud_gen|Mux3~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\ & VCC)) # (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~83_combout\ & ((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\)) # (!\baud_gen|Mux3~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~83_combout\ & (!\baud_gen|Mux3~0_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~83_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\) # 
-- (!\baud_gen|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~83_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\);

-- Location: LCCOMB_X100_Y13_N8
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\ = ((\baud_gen|Mux9~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~82_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\ = CARRY((\baud_gen|Mux9~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~82_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\)) # (!\baud_gen|Mux9~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~82_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux9~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~82_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\);

-- Location: LCCOMB_X100_Y13_N10
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~81_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~81_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\) # (GND))))) # 
-- (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~81_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~81_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\ = CARRY((\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~81_combout\))) # (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~81_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~81_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\);

-- Location: LCCOMB_X100_Y13_N12
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\ = ((\baud_gen|Mux7~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~80_combout\ $ 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~80_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\))) # (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~80_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~80_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\);

-- Location: LCCOMB_X100_Y13_N14
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\ = (\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~79_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~79_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\) # (GND))))) # 
-- (!\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~79_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~79_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\ = CARRY((\baud_gen|Mux6~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~79_combout\))) # (!\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~79_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~79_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\);

-- Location: LCCOMB_X100_Y13_N16
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\ = ((\baud_gen|Mux5~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~78_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\ = CARRY((\baud_gen|Mux5~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~78_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\)) # (!\baud_gen|Mux5~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~78_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~78_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\);

-- Location: LCCOMB_X100_Y13_N18
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~77_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~77_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\)))) # 
-- (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~77_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~77_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\ = CARRY((\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~77_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\)) # (!\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~77_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\);

-- Location: LCCOMB_X100_Y13_N20
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~76_combout\ $ (\baud_gen|Mux3~0_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~76_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\) # 
-- (!\baud_gen|Mux3~0_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~76_combout\ & (!\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~76_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\);

-- Location: LCCOMB_X100_Y13_N22
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\ = (\baud_gen|Mux2~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~75_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~75_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\) # (GND))))) # 
-- (!\baud_gen|Mux2~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~75_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~75_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\ = CARRY((\baud_gen|Mux2~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~75_combout\))) # (!\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~75_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux2~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~75_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\);

-- Location: LCCOMB_X100_Y13_N24
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~74_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ $ 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~74_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~74_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~74_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\);

-- Location: LCCOMB_X100_Y13_N26
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~73_combout\ & ((\baud_gen|Mux0~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\)) # (!\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\ & VCC)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~73_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\) # (GND))) # (!\baud_gen|Mux0~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\))))
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~73_combout\ & (\baud_gen|Mux0~0_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~73_combout\ & ((\baud_gen|Mux0~0_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~73_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\);

-- Location: LCCOMB_X100_Y13_N28
\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~72_combout\ $ (\baud_gen|Mux0~0_combout\ $ 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~72_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\) # 
-- (!\baud_gen|Mux0~0_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~72_combout\ & (!\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~72_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\);

-- Location: LCCOMB_X100_Y13_N30
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

-- Location: LCCOMB_X101_Y13_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~85_combout\ = (\baud_gen|Mux0~0_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~72_combout\)))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~72_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[374]~72_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~85_combout\);

-- Location: LCCOMB_X101_Y13_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~86_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~73_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~73_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[373]~73_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\,
	datad => \baud_gen|Mux0~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~86_combout\);

-- Location: LCCOMB_X99_Y13_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~87_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~74_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~74_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[372]~74_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~87_combout\);

-- Location: LCCOMB_X99_Y10_N16
\baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~88_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~75_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~75_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[371]~75_combout\,
	datad => \baud_gen|Mux0~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~88_combout\);

-- Location: LCCOMB_X99_Y13_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~89_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~76_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~76_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[370]~76_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~89_combout\);

-- Location: LCCOMB_X101_Y13_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~90_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~77_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~77_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[369]~77_combout\,
	datad => \baud_gen|Mux0~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~90_combout\);

-- Location: LCCOMB_X101_Y13_N14
\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~91_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~78_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~78_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[368]~78_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\,
	datad => \baud_gen|Mux0~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~91_combout\);

-- Location: LCCOMB_X99_Y13_N14
\baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~92_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~79_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~79_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[367]~79_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~92_combout\);

-- Location: LCCOMB_X101_Y13_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~93_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~80_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~80_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[366]~80_combout\,
	datad => \baud_gen|Mux0~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~93_combout\);

-- Location: LCCOMB_X101_Y13_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~94_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~81_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~81_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[365]~81_combout\,
	datad => \baud_gen|Mux0~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~94_combout\);

-- Location: LCCOMB_X99_Y13_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~95_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~82_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~82_combout\))) # (!\baud_gen|Mux0~0_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[364]~82_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~95_combout\);

-- Location: LCCOMB_X99_Y13_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~96_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~83_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~83_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[363]~83_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~96_combout\);

-- Location: LCCOMB_X99_Y13_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~97_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~84_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~84_combout\)) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[362]~84_combout\,
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~97_combout\);

-- Location: LCCOMB_X99_Y13_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~98_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(361))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut\(361))) # (!\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(361),
	datac => \baud_gen|Mux0~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~98_combout\);

-- Location: LCCOMB_X99_Y11_N16
\baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~99_combout\ = (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (!\baud_gen|Mux0~0_combout\ & \baud_gen|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Mux12~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~99_combout\);

-- Location: LCCOMB_X100_Y11_N16
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

-- Location: LCCOMB_X100_Y11_N18
\baud_gen|Div0|auto_generated|divider|divider|op_10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~99_combout\ & ((\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\)) # 
-- (!\baud_gen|Mux12~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~99_combout\ & ((\baud_gen|Mux12~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\) # (GND))) # (!\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~3\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~99_combout\ & (\baud_gen|Mux12~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~99_combout\ & ((\baud_gen|Mux12~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~99_combout\,
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~1_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X100_Y11_N20
\baud_gen|Div0|auto_generated|divider|divider|op_10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~4_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~98_combout\ $ (\baud_gen|Mux11~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_10~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~5\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~98_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~3\) # (!\baud_gen|Mux11~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~98_combout\ & (!\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~98_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~5\);

-- Location: LCCOMB_X100_Y11_N22
\baud_gen|Div0|auto_generated|divider|divider|op_10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~97_combout\ & ((\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~5\ & VCC)) # 
-- (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~5\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~97_combout\ & ((\baud_gen|Mux3~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~5\)) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~5\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~7\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~97_combout\ & (!\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~5\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~97_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~5\) # (!\baud_gen|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~97_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~7\);

-- Location: LCCOMB_X100_Y11_N24
\baud_gen|Div0|auto_generated|divider|divider|op_10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~8_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~96_combout\ $ (\baud_gen|Mux9~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_10~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~9\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~96_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~7\) # (!\baud_gen|Mux9~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~96_combout\ & (!\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~96_combout\,
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~9\);

-- Location: LCCOMB_X100_Y11_N26
\baud_gen|Div0|auto_generated|divider|divider|op_10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~10_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~95_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~95_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~9\) # (GND))))) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~95_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_10~9\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~95_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~9\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~11\ = CARRY((\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~9\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~95_combout\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~95_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~95_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~11\);

-- Location: LCCOMB_X100_Y11_N28
\baud_gen|Div0|auto_generated|divider|divider|op_10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~12_combout\ = ((\baud_gen|Mux7~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~94_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_10~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~13\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~94_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~11\))) # 
-- (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~94_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~94_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~13\);

-- Location: LCCOMB_X100_Y11_N30
\baud_gen|Div0|auto_generated|divider|divider|op_10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~14_combout\ = (\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~93_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~93_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~13\) # (GND))))) # (!\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~93_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_10~13\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~93_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~15\ = CARRY((\baud_gen|Mux6~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~13\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~93_combout\))) # 
-- (!\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~93_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~93_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~15\);

-- Location: LCCOMB_X100_Y10_N0
\baud_gen|Div0|auto_generated|divider|divider|op_10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~16_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~92_combout\ $ (\baud_gen|Mux5~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_10~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~17\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~92_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~15\) # (!\baud_gen|Mux5~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~92_combout\ & (!\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~92_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~17\);

-- Location: LCCOMB_X100_Y10_N2
\baud_gen|Div0|auto_generated|divider|divider|op_10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~18_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~91_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~17\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~91_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~17\)))) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~91_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~17\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~91_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~17\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~19\ = CARRY((\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~91_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~17\)) # 
-- (!\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~17\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~91_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~19\);

-- Location: LCCOMB_X100_Y10_N4
\baud_gen|Div0|auto_generated|divider|divider|op_10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~20_combout\ = ((\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~90_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_10~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~21\ = CARRY((\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~90_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~19\)) # 
-- (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~90_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~90_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~21\);

-- Location: LCCOMB_X100_Y10_N6
\baud_gen|Div0|auto_generated|divider|divider|op_10~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~22_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~89_combout\ & ((\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~21\)) # 
-- (!\baud_gen|Mux2~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~21\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~89_combout\ & ((\baud_gen|Mux2~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_10~21\) # (GND))) # (!\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~21\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~23\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~89_combout\ & (\baud_gen|Mux2~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~89_combout\ & ((\baud_gen|Mux2~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~89_combout\,
	datab => \baud_gen|Mux2~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~23\);

-- Location: LCCOMB_X100_Y10_N8
\baud_gen|Div0|auto_generated|divider|divider|op_10~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~24_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~88_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ $ 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~25\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~88_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~23\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~88_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|op_10~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~88_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~25\);

-- Location: LCCOMB_X100_Y10_N10
\baud_gen|Div0|auto_generated|divider|divider|op_10~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~26_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~87_combout\ & ((\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~25\)) # 
-- (!\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~25\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~87_combout\ & ((\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_10~25\) # (GND))) # (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~25\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~27\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~87_combout\ & (\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~25\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~87_combout\ & ((\baud_gen|Mux0~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~87_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~25\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~26_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~27\);

-- Location: LCCOMB_X100_Y10_N12
\baud_gen|Div0|auto_generated|divider|divider|op_10~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~28_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~86_combout\ $ (\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_10~27\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~29\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~86_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_10~27\) # (!\baud_gen|Mux0~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~86_combout\ & (!\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~86_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~27\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~28_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~29\);

-- Location: LCCOMB_X100_Y10_N14
\baud_gen|Div0|auto_generated|divider|divider|op_10~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~30_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~85_combout\ & ((\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~29\)) # 
-- (!\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~29\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~85_combout\ & ((\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_10~29\) # (GND))) # (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~29\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_10~31\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~85_combout\ & (\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~29\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~85_combout\ & ((\baud_gen|Mux0~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~85_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_10~29\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_10~30_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_10~31\);

-- Location: LCCOMB_X100_Y10_N16
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

-- Location: LCCOMB_X100_Y10_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~114_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~30_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~30_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~114_combout\);

-- Location: LCCOMB_X101_Y13_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~113_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & \baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[396]~85_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~113_combout\);

-- Location: LCCOMB_X101_Y13_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~115_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~86_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~86_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~115_combout\);

-- Location: LCCOMB_X100_Y10_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~100_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~87_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[394]~87_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~100_combout\);

-- Location: LCCOMB_X100_Y10_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~101_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~88_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[393]~88_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~24_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~101_combout\);

-- Location: LCCOMB_X100_Y10_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~102_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~89_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[392]~89_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~22_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~102_combout\);

-- Location: LCCOMB_X100_Y10_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~103_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~90_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[391]~90_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~103_combout\);

-- Location: LCCOMB_X100_Y10_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~104_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~91_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~18_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[390]~91_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~104_combout\);

-- Location: LCCOMB_X100_Y10_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~105_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~92_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[389]~92_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~16_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~105_combout\);

-- Location: LCCOMB_X100_Y11_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~106_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~93_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~14_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[388]~93_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~106_combout\);

-- Location: LCCOMB_X100_Y11_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~107_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~94_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~12_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[387]~94_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~107_combout\);

-- Location: LCCOMB_X100_Y11_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~108_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~95_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~10_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[386]~95_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~108_combout\);

-- Location: LCCOMB_X100_Y11_N14
\baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~109_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~96_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[385]~96_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~109_combout\);

-- Location: LCCOMB_X100_Y11_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~110_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~97_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[384]~97_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~110_combout\);

-- Location: LCCOMB_X100_Y11_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~111_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~98_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[383]~98_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~4_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~111_combout\);

-- Location: LCCOMB_X100_Y11_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~112_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~99_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[382]~99_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_10~2_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~112_combout\);

-- Location: LCCOMB_X99_Y11_N14
\baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~190_combout\ = (\SW[15]~input_o\ & (\SW[14]~input_o\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & !\SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~190_combout\);

-- Location: LCCOMB_X101_Y11_N14
\baud_gen|Div0|auto_generated|divider|divider|op_12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\ = CARRY(!\baud_gen|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\);

-- Location: LCCOMB_X101_Y11_N16
\baud_gen|Div0|auto_generated|divider|divider|op_12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~2_combout\ = (\baud_gen|Mux12~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~190_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~190_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\) # (GND))))) # (!\baud_gen|Mux12~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~190_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~190_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~3\ = CARRY((\baud_gen|Mux12~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~190_combout\))) # 
-- (!\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~190_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux12~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~190_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~1_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X101_Y11_N18
\baud_gen|Div0|auto_generated|divider|divider|op_12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~4_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~112_combout\ $ (\baud_gen|Mux11~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_12~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~5\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~112_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~3\) # (!\baud_gen|Mux11~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~112_combout\ & (!\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~112_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~5\);

-- Location: LCCOMB_X101_Y11_N20
\baud_gen|Div0|auto_generated|divider|divider|op_12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~6_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~111_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~5\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~111_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~5\)))) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~111_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~5\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~111_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~5\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~7\ = CARRY((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~111_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~5\)) # 
-- (!\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~5\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~111_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~7\);

-- Location: LCCOMB_X101_Y11_N22
\baud_gen|Div0|auto_generated|divider|divider|op_12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~8_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~110_combout\ $ (\baud_gen|Mux9~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_12~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~9\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~110_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~7\) # (!\baud_gen|Mux9~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~110_combout\ & (!\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~110_combout\,
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~9\);

-- Location: LCCOMB_X101_Y11_N24
\baud_gen|Div0|auto_generated|divider|divider|op_12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~10_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~109_combout\ & ((\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~9\)) # 
-- (!\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~9\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~109_combout\ & ((\baud_gen|Mux4~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_12~9\) # (GND))) # (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~9\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~11\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~109_combout\ & (\baud_gen|Mux4~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~109_combout\ & ((\baud_gen|Mux4~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_12~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~109_combout\,
	datab => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~11\);

-- Location: LCCOMB_X101_Y11_N26
\baud_gen|Div0|auto_generated|divider|divider|op_12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~12_combout\ = ((\baud_gen|Mux7~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~108_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_12~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~13\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~108_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_12~11\))) # 
-- (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~108_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~108_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~13\);

-- Location: LCCOMB_X101_Y11_N28
\baud_gen|Div0|auto_generated|divider|divider|op_12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~14_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~107_combout\ & ((\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~13\)) # 
-- (!\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~13\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~107_combout\ & ((\baud_gen|Mux6~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_12~13\) # (GND))) # (!\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~15\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~107_combout\ & (\baud_gen|Mux6~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~107_combout\ & ((\baud_gen|Mux6~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_12~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~107_combout\,
	datab => \baud_gen|Mux6~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~15\);

-- Location: LCCOMB_X101_Y11_N30
\baud_gen|Div0|auto_generated|divider|divider|op_12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~16_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~106_combout\ $ (\baud_gen|Mux5~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_12~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~17\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~106_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~15\) # (!\baud_gen|Mux5~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~106_combout\ & (!\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~106_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~17\);

-- Location: LCCOMB_X101_Y10_N0
\baud_gen|Div0|auto_generated|divider|divider|op_12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~18_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~105_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~17\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~105_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~17\)))) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~105_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~17\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~105_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~17\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~19\ = CARRY((\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~105_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~17\)) # 
-- (!\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~17\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~105_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~19\);

-- Location: LCCOMB_X101_Y10_N2
\baud_gen|Div0|auto_generated|divider|divider|op_12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~20_combout\ = ((\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~104_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_12~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~21\ = CARRY((\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~104_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~19\)) # 
-- (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~104_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_12~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~104_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~21\);

-- Location: LCCOMB_X101_Y10_N4
\baud_gen|Div0|auto_generated|divider|divider|op_12~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~22_combout\ = (\baud_gen|Mux2~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~103_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~103_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~21\) # (GND))))) # (!\baud_gen|Mux2~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~103_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_12~21\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~103_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~21\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~23\ = CARRY((\baud_gen|Mux2~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~21\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~103_combout\))) # 
-- (!\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~103_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux2~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~103_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~23\);

-- Location: LCCOMB_X101_Y10_N6
\baud_gen|Div0|auto_generated|divider|divider|op_12~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~24_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~102_combout\ $ 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~25\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~102_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~23\))) # (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~102_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|op_12~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~102_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~25\);

-- Location: LCCOMB_X101_Y10_N8
\baud_gen|Div0|auto_generated|divider|divider|op_12~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~26_combout\ = (\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~101_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~25\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~101_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~25\) # (GND))))) # (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~101_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_12~25\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~101_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~25\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~27\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~25\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~101_combout\))) # 
-- (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~101_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~101_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~25\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~26_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~27\);

-- Location: LCCOMB_X101_Y10_N10
\baud_gen|Div0|auto_generated|divider|divider|op_12~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~28_combout\ = ((\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~100_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_12~27\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~29\ = CARRY((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~100_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~27\)) # 
-- (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~100_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_12~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~100_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~27\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~28_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~29\);

-- Location: LCCOMB_X101_Y10_N12
\baud_gen|Div0|auto_generated|divider|divider|op_12~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~30_combout\ = (\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~115_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~29\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~115_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~29\) # (GND))))) # (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~115_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_12~29\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~115_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~29\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~31\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_12~29\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~115_combout\))) # 
-- (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~115_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_12~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[417]~115_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~29\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_12~30_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~31\);

-- Location: LCCOMB_X101_Y10_N14
\baud_gen|Div0|auto_generated|divider|divider|op_12~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_12~33_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~114_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~113_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~114_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[418]~113_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_12~31\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_12~33_cout\);

-- Location: LCCOMB_X101_Y10_N16
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

-- Location: LCCOMB_X97_Y11_N6
\baud_gen|teller[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[0]~26_combout\ = \baud_gen|teller\(0) $ (VCC)
-- \baud_gen|teller[0]~27\ = CARRY(\baud_gen|teller\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(0),
	datad => VCC,
	combout => \baud_gen|teller[0]~26_combout\,
	cout => \baud_gen|teller[0]~27\);

-- Location: LCCOMB_X101_Y13_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~191_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~86_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[395]~86_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~191_combout\);

-- Location: LCCOMB_X101_Y13_N16
\baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~117_combout\ = (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & \baud_gen|Div0|auto_generated|divider|divider|op_12~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~30_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~117_combout\);

-- Location: LCCOMB_X101_Y10_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~116_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~100_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~100_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~116_combout\);

-- Location: LCCOMB_X101_Y10_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~118_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~101_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[415]~101_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~118_combout\);

-- Location: LCCOMB_X101_Y10_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~119_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~102_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~24_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[414]~102_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~119_combout\);

-- Location: LCCOMB_X101_Y10_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~120_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~103_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[413]~103_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~22_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~120_combout\);

-- Location: LCCOMB_X101_Y10_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~121_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~104_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~20_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[412]~104_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~121_combout\);

-- Location: LCCOMB_X101_Y10_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~122_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~105_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~18_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[411]~105_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~122_combout\);

-- Location: LCCOMB_X101_Y11_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~123_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~106_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[410]~106_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~123_combout\);

-- Location: LCCOMB_X100_Y11_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~124_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~107_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[409]~107_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~124_combout\);

-- Location: LCCOMB_X101_Y11_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~125_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~108_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[408]~108_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~12_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~125_combout\);

-- Location: LCCOMB_X101_Y11_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~126_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~109_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[407]~109_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~10_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~126_combout\);

-- Location: LCCOMB_X101_Y11_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~127_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~110_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[406]~110_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~8_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~127_combout\);

-- Location: LCCOMB_X101_Y11_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~128_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~111_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[405]~111_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~128_combout\);

-- Location: LCCOMB_X101_Y11_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~129_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~112_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[404]~112_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~4_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~129_combout\);

-- Location: LCCOMB_X101_Y11_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~130_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~190_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[403]~190_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~2_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~130_combout\);

-- Location: LCCOMB_X99_Y11_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~192_combout\ = (\SW[15]~input_o\ & (\SW[14]~input_o\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & !\SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~192_combout\);

-- Location: LCCOMB_X101_Y15_N14
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

-- Location: LCCOMB_X101_Y15_N16
\baud_gen|Div0|auto_generated|divider|divider|op_13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~2_combout\ = (\baud_gen|Mux12~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~192_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~192_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\) # (GND))))) # (!\baud_gen|Mux12~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~192_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~192_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~3\ = CARRY((\baud_gen|Mux12~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~192_combout\))) # 
-- (!\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~192_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux12~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~192_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~1_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~3\);

-- Location: LCCOMB_X101_Y15_N18
\baud_gen|Div0|auto_generated|divider|divider|op_13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~4_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~130_combout\ $ (\baud_gen|Mux11~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_13~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~5\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~130_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~3\) # (!\baud_gen|Mux11~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~130_combout\ & (!\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~130_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~5\);

-- Location: LCCOMB_X101_Y15_N20
\baud_gen|Div0|auto_generated|divider|divider|op_13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~129_combout\ & ((\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~5\ & VCC)) # 
-- (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~5\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~129_combout\ & ((\baud_gen|Mux3~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~5\)) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~5\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~7\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~129_combout\ & (!\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~5\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~129_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~5\) # (!\baud_gen|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~129_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~7\);

-- Location: LCCOMB_X101_Y15_N22
\baud_gen|Div0|auto_generated|divider|divider|op_13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~8_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~128_combout\ $ (\baud_gen|Mux9~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_13~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~9\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~128_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~7\) # (!\baud_gen|Mux9~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~128_combout\ & (!\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~128_combout\,
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~9\);

-- Location: LCCOMB_X101_Y15_N24
\baud_gen|Div0|auto_generated|divider|divider|op_13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~10_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~127_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~127_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~9\) # (GND))))) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~127_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_13~9\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~127_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~9\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~11\ = CARRY((\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~9\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~127_combout\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~127_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~127_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~11\);

-- Location: LCCOMB_X101_Y15_N26
\baud_gen|Div0|auto_generated|divider|divider|op_13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~12_combout\ = ((\baud_gen|Mux7~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~126_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_13~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~13\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~126_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~11\))) # 
-- (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~126_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~126_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~13\);

-- Location: LCCOMB_X101_Y15_N28
\baud_gen|Div0|auto_generated|divider|divider|op_13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~14_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~125_combout\ & ((\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~13\)) # 
-- (!\baud_gen|Mux6~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~13\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~125_combout\ & ((\baud_gen|Mux6~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_13~13\) # (GND))) # (!\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~15\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~125_combout\ & (\baud_gen|Mux6~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~125_combout\ & ((\baud_gen|Mux6~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~125_combout\,
	datab => \baud_gen|Mux6~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~15\);

-- Location: LCCOMB_X101_Y15_N30
\baud_gen|Div0|auto_generated|divider|divider|op_13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~16_combout\ = ((\baud_gen|Mux5~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~124_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_13~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~17\ = CARRY((\baud_gen|Mux5~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~124_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~15\)) # 
-- (!\baud_gen|Mux5~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~124_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux5~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~124_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~17\);

-- Location: LCCOMB_X101_Y14_N0
\baud_gen|Div0|auto_generated|divider|divider|op_13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~18_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~123_combout\ & ((\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~17\ & VCC)) # 
-- (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~17\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~123_combout\ & ((\baud_gen|Mux4~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~17\)) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~17\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~19\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~123_combout\ & (!\baud_gen|Mux4~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~123_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~17\) # (!\baud_gen|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~123_combout\,
	datab => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~19\);

-- Location: LCCOMB_X101_Y14_N2
\baud_gen|Div0|auto_generated|divider|divider|op_13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~20_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~122_combout\ $ (\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_13~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~21\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~122_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~19\) # (!\baud_gen|Mux3~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~122_combout\ & (!\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~122_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~21\);

-- Location: LCCOMB_X101_Y14_N4
\baud_gen|Div0|auto_generated|divider|divider|op_13~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~22_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~121_combout\ & ((\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~21\)) # 
-- (!\baud_gen|Mux2~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~21\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~121_combout\ & ((\baud_gen|Mux2~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_13~21\) # (GND))) # (!\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~21\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~23\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~121_combout\ & (\baud_gen|Mux2~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~121_combout\ & ((\baud_gen|Mux2~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~121_combout\,
	datab => \baud_gen|Mux2~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~23\);

-- Location: LCCOMB_X101_Y14_N6
\baud_gen|Div0|auto_generated|divider|divider|op_13~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~24_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~120_combout\ $ 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~25\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~120_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~23\))) # (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~120_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|op_13~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~120_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~25\);

-- Location: LCCOMB_X101_Y14_N8
\baud_gen|Div0|auto_generated|divider|divider|op_13~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~26_combout\ = (\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~119_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~25\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~119_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~25\) # (GND))))) # (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~119_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_13~25\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~119_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~25\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~27\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~25\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~119_combout\))) # 
-- (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~119_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~119_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~25\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~26_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~27\);

-- Location: LCCOMB_X101_Y14_N10
\baud_gen|Div0|auto_generated|divider|divider|op_13~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~28_combout\ = ((\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~118_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_13~27\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~29\ = CARRY((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~118_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~27\)) # 
-- (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~118_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~118_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~27\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~28_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~29\);

-- Location: LCCOMB_X101_Y14_N12
\baud_gen|Div0|auto_generated|divider|divider|op_13~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~30_combout\ = (\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~116_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~29\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~116_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~29\) # (GND))))) # (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~116_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_13~29\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~116_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~29\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~31\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_13~29\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~116_combout\))) # 
-- (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~116_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[438]~116_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~29\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_13~30_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~31\);

-- Location: LCCOMB_X101_Y14_N14
\baud_gen|Div0|auto_generated|divider|divider|op_13~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_13~33_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~191_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~117_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~191_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[439]~117_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_13~31\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_13~33_cout\);

-- Location: LCCOMB_X101_Y14_N16
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

-- Location: LCCOMB_X101_Y10_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~193_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~100_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[416]~100_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~193_combout\);

-- Location: LCCOMB_X100_Y14_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~131_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~30_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~30_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~131_combout\);

-- Location: LCCOMB_X101_Y14_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~132_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~118_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~118_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~132_combout\);

-- Location: LCCOMB_X101_Y14_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~119_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[436]~119_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\);

-- Location: LCCOMB_X101_Y14_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~120_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~24_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[435]~120_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\);

-- Location: LCCOMB_X101_Y14_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~121_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[434]~121_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~22_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\);

-- Location: LCCOMB_X101_Y14_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~122_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~20_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[433]~122_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\);

-- Location: LCCOMB_X101_Y14_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~123_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[432]~123_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\);

-- Location: LCCOMB_X100_Y14_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~124_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[431]~124_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~16_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\);

-- Location: LCCOMB_X101_Y15_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~125_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[430]~125_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~14_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139_combout\);

-- Location: LCCOMB_X101_Y15_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~126_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[429]~126_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~12_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\);

-- Location: LCCOMB_X101_Y15_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~127_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[428]~127_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~10_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\);

-- Location: LCCOMB_X101_Y15_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~128_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[427]~128_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~8_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\);

-- Location: LCCOMB_X101_Y15_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~129_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[426]~129_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\);

-- Location: LCCOMB_X101_Y15_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~130_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[425]~130_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~4_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144_combout\);

-- Location: LCCOMB_X101_Y15_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~192_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[424]~192_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~2_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\);

-- Location: LCCOMB_X95_Y15_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~194_combout\ = (\SW[14]~input_o\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (!\SW[16]~input_o\ & \SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \SW[16]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~194_combout\);

-- Location: LCCOMB_X98_Y15_N16
\baud_gen|Div0|auto_generated|divider|divider|op_14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~0_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~194_combout\ & ((GND) # (!\baud_gen|Mux12~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~194_combout\ & (\baud_gen|Mux12~0_combout\ $ (GND)))
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~1\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~194_combout\) # (!\baud_gen|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~194_combout\,
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~0_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~1\);

-- Location: LCCOMB_X98_Y15_N18
\baud_gen|Div0|auto_generated|divider|divider|op_14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\ & ((\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~1\)) # 
-- (!\baud_gen|Mux11~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~1\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\ & ((\baud_gen|Mux11~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_14~1\) # (GND))) # (!\baud_gen|Mux11~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~1\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~3\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\ & (\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~1\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\ & ((\baud_gen|Mux11~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_14~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~1\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~3\);

-- Location: LCCOMB_X98_Y15_N20
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

-- Location: LCCOMB_X98_Y15_N22
\baud_gen|Div0|auto_generated|divider|divider|op_14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\ & ((\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~5\)) # 
-- (!\baud_gen|Mux9~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~5\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\ & ((\baud_gen|Mux9~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_14~5\) # (GND))) # (!\baud_gen|Mux9~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~5\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~7\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\ & (\baud_gen|Mux9~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~5\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\ & ((\baud_gen|Mux9~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_14~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\,
	datab => \baud_gen|Mux9~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~7\);

-- Location: LCCOMB_X98_Y15_N24
\baud_gen|Div0|auto_generated|divider|divider|op_14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~8_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\ $ (\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_14~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~9\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_14~7\) # (!\baud_gen|Mux4~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\ & (!\baud_gen|Mux4~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\,
	datab => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~9\);

-- Location: LCCOMB_X98_Y15_N26
\baud_gen|Div0|auto_generated|divider|divider|op_14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~10_combout\ = (\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~9\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~9\)))) # (!\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~9\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~9\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~11\ = CARRY((\baud_gen|Mux7~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~9\)) # 
-- (!\baud_gen|Mux7~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_14~9\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~11\);

-- Location: LCCOMB_X98_Y15_N28
\baud_gen|Div0|auto_generated|divider|divider|op_14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~12_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\ $ (\baud_gen|Mux6~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_14~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~13\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_14~11\) # (!\baud_gen|Mux6~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\ & (!\baud_gen|Mux6~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\,
	datab => \baud_gen|Mux6~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~13\);

-- Location: LCCOMB_X98_Y15_N30
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

-- Location: LCCOMB_X98_Y14_N0
\baud_gen|Div0|auto_generated|divider|divider|op_14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~16_combout\ = ((\baud_gen|Mux4~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_14~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~17\ = CARRY((\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_14~15\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~17\);

-- Location: LCCOMB_X98_Y14_N2
\baud_gen|Div0|auto_generated|divider|divider|op_14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~18_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\ & ((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~17\)) # 
-- (!\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~17\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\ & ((\baud_gen|Mux3~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_14~17\) # (GND))) # (!\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~17\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~19\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\ & (\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\ & ((\baud_gen|Mux3~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_14~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~19\);

-- Location: LCCOMB_X98_Y14_N4
\baud_gen|Div0|auto_generated|divider|divider|op_14~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~20_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\ $ (\baud_gen|Mux2~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_14~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~21\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_14~19\) # (!\baud_gen|Mux2~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\ & (!\baud_gen|Mux2~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\,
	datab => \baud_gen|Mux2~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~21\);

-- Location: LCCOMB_X98_Y14_N6
\baud_gen|Div0|auto_generated|divider|divider|op_14~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~22_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_14~21\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~21\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_14~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~21\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~23\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|op_14~21\)) # (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_14~21\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~23\);

-- Location: LCCOMB_X98_Y14_N8
\baud_gen|Div0|auto_generated|divider|divider|op_14~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~24_combout\ = ((\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_14~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~25\ = CARRY((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~23\)) # 
-- (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_14~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~25\);

-- Location: LCCOMB_X98_Y14_N10
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

-- Location: LCCOMB_X98_Y14_N12
\baud_gen|Div0|auto_generated|divider|divider|op_14~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~28_combout\ = ((\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~132_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_14~27\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~29\ = CARRY((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~132_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~27\)) # 
-- (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~132_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_14~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[459]~132_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~27\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_14~28_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~29\);

-- Location: LCCOMB_X98_Y14_N14
\baud_gen|Div0|auto_generated|divider|divider|op_14~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_14~31_cout\ = CARRY((!\baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~193_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~131_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|op_14~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~193_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[460]~131_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_14~29\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_14~31_cout\);

-- Location: LCCOMB_X98_Y14_N16
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

-- Location: LCCOMB_X97_Y11_N14
\baud_gen|teller[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[4]~34_combout\ = (\baud_gen|teller\(4) & (\baud_gen|teller[3]~33\ $ (GND))) # (!\baud_gen|teller\(4) & (!\baud_gen|teller[3]~33\ & VCC))
-- \baud_gen|teller[4]~35\ = CARRY((\baud_gen|teller\(4) & !\baud_gen|teller[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(4),
	datad => VCC,
	cin => \baud_gen|teller[3]~33\,
	combout => \baud_gen|teller[4]~34_combout\,
	cout => \baud_gen|teller[4]~35\);

-- Location: LCCOMB_X97_Y11_N16
\baud_gen|teller[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[5]~36_combout\ = (\baud_gen|teller\(5) & (!\baud_gen|teller[4]~35\)) # (!\baud_gen|teller\(5) & ((\baud_gen|teller[4]~35\) # (GND)))
-- \baud_gen|teller[5]~37\ = CARRY((!\baud_gen|teller[4]~35\) # (!\baud_gen|teller\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(5),
	datad => VCC,
	cin => \baud_gen|teller[4]~35\,
	combout => \baud_gen|teller[5]~36_combout\,
	cout => \baud_gen|teller[5]~37\);

-- Location: FF_X97_Y11_N17
\baud_gen|teller[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[5]~36_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(5));

-- Location: LCCOMB_X97_Y11_N18
\baud_gen|teller[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[6]~38_combout\ = (\baud_gen|teller\(6) & (\baud_gen|teller[5]~37\ $ (GND))) # (!\baud_gen|teller\(6) & (!\baud_gen|teller[5]~37\ & VCC))
-- \baud_gen|teller[6]~39\ = CARRY((\baud_gen|teller\(6) & !\baud_gen|teller[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(6),
	datad => VCC,
	cin => \baud_gen|teller[5]~37\,
	combout => \baud_gen|teller[6]~38_combout\,
	cout => \baud_gen|teller[6]~39\);

-- Location: FF_X97_Y11_N19
\baud_gen|teller[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[6]~38_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(6));

-- Location: LCCOMB_X98_Y11_N2
\baud_gen|baud_enable_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|baud_enable_s~0_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (!\baud_gen|teller\(3) & (\baud_gen|teller\(6) $ (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|teller\(3) & (\baud_gen|teller\(6) $ (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datab => \baud_gen|teller\(6),
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datad => \baud_gen|teller\(3),
	combout => \baud_gen|baud_enable_s~0_combout\);

-- Location: LCCOMB_X97_Y11_N0
\baud_gen|baud_enable_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|baud_enable_s~1_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (!\baud_gen|teller\(4) & (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ $ (\baud_gen|teller\(5))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|teller\(4) & (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ $ (\baud_gen|teller\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baud_gen|teller\(4),
	datad => \baud_gen|teller\(5),
	combout => \baud_gen|baud_enable_s~1_combout\);

-- Location: LCCOMB_X97_Y11_N20
\baud_gen|teller[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[7]~40_combout\ = (\baud_gen|teller\(7) & (!\baud_gen|teller[6]~39\)) # (!\baud_gen|teller\(7) & ((\baud_gen|teller[6]~39\) # (GND)))
-- \baud_gen|teller[7]~41\ = CARRY((!\baud_gen|teller[6]~39\) # (!\baud_gen|teller\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(7),
	datad => VCC,
	cin => \baud_gen|teller[6]~39\,
	combout => \baud_gen|teller[7]~40_combout\,
	cout => \baud_gen|teller[7]~41\);

-- Location: FF_X97_Y11_N21
\baud_gen|teller[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[7]~40_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(7));

-- Location: LCCOMB_X97_Y11_N22
\baud_gen|teller[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[8]~42_combout\ = (\baud_gen|teller\(8) & (\baud_gen|teller[7]~41\ $ (GND))) # (!\baud_gen|teller\(8) & (!\baud_gen|teller[7]~41\ & VCC))
-- \baud_gen|teller[8]~43\ = CARRY((\baud_gen|teller\(8) & !\baud_gen|teller[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(8),
	datad => VCC,
	cin => \baud_gen|teller[7]~41\,
	combout => \baud_gen|teller[8]~42_combout\,
	cout => \baud_gen|teller[8]~43\);

-- Location: FF_X97_Y11_N23
\baud_gen|teller[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[8]~42_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(8));

-- Location: LCCOMB_X97_Y11_N24
\baud_gen|teller[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[9]~44_combout\ = (\baud_gen|teller\(9) & (!\baud_gen|teller[8]~43\)) # (!\baud_gen|teller\(9) & ((\baud_gen|teller[8]~43\) # (GND)))
-- \baud_gen|teller[9]~45\ = CARRY((!\baud_gen|teller[8]~43\) # (!\baud_gen|teller\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(9),
	datad => VCC,
	cin => \baud_gen|teller[8]~43\,
	combout => \baud_gen|teller[9]~44_combout\,
	cout => \baud_gen|teller[9]~45\);

-- Location: FF_X97_Y11_N25
\baud_gen|teller[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[9]~44_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(9));

-- Location: LCCOMB_X98_Y11_N16
\baud_gen|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal1~1_combout\ = \baud_gen|teller\(9) $ (((\baud_gen|Mux0~0_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baud_gen|teller\(9),
	combout => \baud_gen|Equal1~1_combout\);

-- Location: LCCOMB_X97_Y11_N26
\baud_gen|teller[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[10]~46_combout\ = (\baud_gen|teller\(10) & (\baud_gen|teller[9]~45\ $ (GND))) # (!\baud_gen|teller\(10) & (!\baud_gen|teller[9]~45\ & VCC))
-- \baud_gen|teller[10]~47\ = CARRY((\baud_gen|teller\(10) & !\baud_gen|teller[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(10),
	datad => VCC,
	cin => \baud_gen|teller[9]~45\,
	combout => \baud_gen|teller[10]~46_combout\,
	cout => \baud_gen|teller[10]~47\);

-- Location: FF_X97_Y11_N27
\baud_gen|teller[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[10]~46_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(10));

-- Location: LCCOMB_X97_Y11_N28
\baud_gen|teller[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[11]~48_combout\ = (\baud_gen|teller\(11) & (!\baud_gen|teller[10]~47\)) # (!\baud_gen|teller\(11) & ((\baud_gen|teller[10]~47\) # (GND)))
-- \baud_gen|teller[11]~49\ = CARRY((!\baud_gen|teller[10]~47\) # (!\baud_gen|teller\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(11),
	datad => VCC,
	cin => \baud_gen|teller[10]~47\,
	combout => \baud_gen|teller[11]~48_combout\,
	cout => \baud_gen|teller[11]~49\);

-- Location: FF_X97_Y11_N29
\baud_gen|teller[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[11]~48_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(11));

-- Location: LCCOMB_X97_Y11_N30
\baud_gen|teller[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[12]~50_combout\ = (\baud_gen|teller\(12) & (\baud_gen|teller[11]~49\ $ (GND))) # (!\baud_gen|teller\(12) & (!\baud_gen|teller[11]~49\ & VCC))
-- \baud_gen|teller[12]~51\ = CARRY((\baud_gen|teller\(12) & !\baud_gen|teller[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(12),
	datad => VCC,
	cin => \baud_gen|teller[11]~49\,
	combout => \baud_gen|teller[12]~50_combout\,
	cout => \baud_gen|teller[12]~51\);

-- Location: FF_X97_Y11_N31
\baud_gen|teller[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[12]~50_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(12));

-- Location: LCCOMB_X98_Y11_N8
\baud_gen|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal1~0_combout\ = \baud_gen|teller\(12) $ (((\SW[15]~input_o\) # ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\) # (\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \SW[16]~input_o\,
	datad => \baud_gen|teller\(12),
	combout => \baud_gen|Equal1~0_combout\);

-- Location: LCCOMB_X99_Y11_N4
\baud_gen|Div0|auto_generated|divider|divider|selnose[486]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|selnose\(486) = (\baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\) # ((\SW[15]~input_o\ & (\SW[14]~input_o\ & \SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|selnose\(486));

-- Location: LCCOMB_X99_Y11_N10
\baud_gen|Div0|auto_generated|divider|divider|selnose[459]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|selnose\(459) = (\baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\) # ((\SW[15]~input_o\ & (\SW[14]~input_o\ & \SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|selnose\(459));

-- Location: LCCOMB_X98_Y11_N6
\baud_gen|baud_enable_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|baud_enable_s~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(486) & (!\baud_gen|teller\(7) & (\baud_gen|teller\(8) $ (\baud_gen|Div0|auto_generated|divider|divider|selnose\(459))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(486) & (\baud_gen|teller\(7) & (\baud_gen|teller\(8) $ (\baud_gen|Div0|auto_generated|divider|divider|selnose\(459)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose\(486),
	datab => \baud_gen|teller\(8),
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose\(459),
	datad => \baud_gen|teller\(7),
	combout => \baud_gen|baud_enable_s~2_combout\);

-- Location: LCCOMB_X98_Y11_N18
\baud_gen|baud_enable_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|baud_enable_s~3_combout\ = (\baud_gen|baud_enable_s~1_combout\ & (\baud_gen|Equal1~1_combout\ & (\baud_gen|Equal1~0_combout\ & \baud_gen|baud_enable_s~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|baud_enable_s~1_combout\,
	datab => \baud_gen|Equal1~1_combout\,
	datac => \baud_gen|Equal1~0_combout\,
	datad => \baud_gen|baud_enable_s~2_combout\,
	combout => \baud_gen|baud_enable_s~3_combout\);

-- Location: LCCOMB_X98_Y14_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~146_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_14~24_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[457]~134_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~146_combout\);

-- Location: LCCOMB_X98_Y14_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~147_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[456]~135_combout\))) # 
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
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~147_combout\);

-- Location: LCCOMB_X98_Y14_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~148_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[455]~136_combout\))) # 
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
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~148_combout\);

-- Location: LCCOMB_X98_Y14_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~149_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[454]~137_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~149_combout\);

-- Location: LCCOMB_X98_Y14_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~150_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[453]~138_combout\))) # 
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
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~150_combout\);

-- Location: LCCOMB_X98_Y15_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~151_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[452]~139_combout\))) # 
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
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~151_combout\);

-- Location: LCCOMB_X98_Y15_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~152_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~12_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[451]~140_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~152_combout\);

-- Location: LCCOMB_X98_Y15_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~153_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[450]~141_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_14~10_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~153_combout\);

-- Location: LCCOMB_X98_Y15_N14
\baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~154_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~8_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[449]~142_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~154_combout\);

-- Location: LCCOMB_X98_Y15_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~155_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_14~6_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[448]~143_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~155_combout\);

-- Location: LCCOMB_X98_Y15_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~156_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~4_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[447]~144_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~156_combout\);

-- Location: LCCOMB_X98_Y15_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~157_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~2_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[446]~145_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~157_combout\);

-- Location: LCCOMB_X98_Y15_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~158_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~194_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[445]~194_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_14~0_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~158_combout\);

-- Location: LCCOMB_X95_Y15_N12
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

-- Location: LCCOMB_X96_Y15_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[466]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut\(466) = (\baud_gen|Div0|auto_generated|divider|divider|op_14~34_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut\(466));

-- Location: LCCOMB_X97_Y15_N14
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

-- Location: LCCOMB_X97_Y15_N16
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

-- Location: LCCOMB_X97_Y15_N18
\baud_gen|Div0|auto_generated|divider|divider|op_15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~4_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~158_combout\ $ (\baud_gen|Mux11~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_15~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~5\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~158_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_15~3\) # (!\baud_gen|Mux11~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~158_combout\ & (!\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~158_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~5\);

-- Location: LCCOMB_X97_Y15_N20
\baud_gen|Div0|auto_generated|divider|divider|op_15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~6_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~157_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~5\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~157_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~5\)))) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~157_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~5\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~157_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~5\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~7\ = CARRY((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~157_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~5\)) # 
-- (!\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_15~5\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~157_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~7\);

-- Location: LCCOMB_X97_Y15_N22
\baud_gen|Div0|auto_generated|divider|divider|op_15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~8_combout\ = ((\baud_gen|Mux9~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~156_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_15~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~9\ = CARRY((\baud_gen|Mux9~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~156_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~7\)) # (!\baud_gen|Mux9~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~156_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux9~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~156_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~9\);

-- Location: LCCOMB_X97_Y15_N24
\baud_gen|Div0|auto_generated|divider|divider|op_15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~10_combout\ = (\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~155_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~155_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~9\) # (GND))))) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~155_combout\ & 
-- (\baud_gen|Div0|auto_generated|divider|divider|op_15~9\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~155_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~9\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~11\ = CARRY((\baud_gen|Mux4~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_15~9\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~155_combout\))) # 
-- (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~155_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux4~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~155_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~11\);

-- Location: LCCOMB_X97_Y15_N26
\baud_gen|Div0|auto_generated|divider|divider|op_15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~12_combout\ = ((\baud_gen|Mux7~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~154_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_15~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~13\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~154_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~11\))) # 
-- (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~154_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~154_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~13\);

-- Location: LCCOMB_X97_Y15_N28
\baud_gen|Div0|auto_generated|divider|divider|op_15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~14_combout\ = (\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~153_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~153_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~13\) # (GND))))) # (!\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~153_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_15~13\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~153_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~15\ = CARRY((\baud_gen|Mux6~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_15~13\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~153_combout\))) # 
-- (!\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~153_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~153_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~15\);

-- Location: LCCOMB_X97_Y15_N30
\baud_gen|Div0|auto_generated|divider|divider|op_15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~16_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~152_combout\ $ (\baud_gen|Mux5~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_15~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~17\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~152_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_15~15\) # (!\baud_gen|Mux5~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~152_combout\ & (!\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~152_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~17\);

-- Location: LCCOMB_X97_Y14_N0
\baud_gen|Div0|auto_generated|divider|divider|op_15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~18_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~151_combout\ & ((\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~17\ & VCC)) # 
-- (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~17\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~151_combout\ & ((\baud_gen|Mux4~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~17\)) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~17\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~19\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~151_combout\ & (!\baud_gen|Mux4~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~151_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_15~17\) # (!\baud_gen|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~151_combout\,
	datab => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~19\);

-- Location: LCCOMB_X97_Y14_N2
\baud_gen|Div0|auto_generated|divider|divider|op_15~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~20_combout\ = ((\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~150_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_15~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~21\ = CARRY((\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~150_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~19\)) # 
-- (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~150_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~150_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~21\);

-- Location: LCCOMB_X97_Y14_N4
\baud_gen|Div0|auto_generated|divider|divider|op_15~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~22_combout\ = (\baud_gen|Mux2~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~149_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~149_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~21\) # (GND))))) # (!\baud_gen|Mux2~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~149_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_15~21\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~149_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~21\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~23\ = CARRY((\baud_gen|Mux2~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_15~21\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~149_combout\))) # 
-- (!\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~149_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux2~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~149_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~23\);

-- Location: LCCOMB_X97_Y14_N6
\baud_gen|Div0|auto_generated|divider|divider|op_15~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~24_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~148_combout\ $ 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~25\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~148_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~23\))) # (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~148_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|op_15~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~148_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~25\);

-- Location: LCCOMB_X97_Y14_N8
\baud_gen|Div0|auto_generated|divider|divider|op_15~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~26_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~147_combout\ & ((\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~25\)) # 
-- (!\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~25\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~147_combout\ & ((\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_15~25\) # (GND))) # (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~25\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~27\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~147_combout\ & (\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~25\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~147_combout\ & ((\baud_gen|Mux0~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~147_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~25\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~26_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~27\);

-- Location: LCCOMB_X97_Y14_N10
\baud_gen|Div0|auto_generated|divider|divider|op_15~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~28_combout\ = ((\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~146_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_15~27\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~29\ = CARRY((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~146_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~27\)) # 
-- (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~146_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~146_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~27\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~28_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~29\);

-- Location: LCCOMB_X98_Y14_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~159_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~28_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~28_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~159_combout\);

-- Location: LCCOMB_X101_Y14_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~195_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~118_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[437]~118_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~195_combout\);

-- Location: LCCOMB_X98_Y14_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~160_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\))) # 
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
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~160_combout\);

-- Location: LCCOMB_X97_Y14_N12
\baud_gen|Div0|auto_generated|divider|divider|op_15~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~30_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~160_combout\ & ((\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~29\)) # 
-- (!\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~29\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~160_combout\ & ((\baud_gen|Mux0~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_15~29\) # (GND))) # (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_15~29\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~31\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~160_combout\ & (\baud_gen|Mux0~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~29\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~160_combout\ & ((\baud_gen|Mux0~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[480]~160_combout\,
	datab => \baud_gen|Mux0~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~29\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_15~30_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~31\);

-- Location: LCCOMB_X97_Y14_N14
\baud_gen|Div0|auto_generated|divider|divider|op_15~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_15~33_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~159_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~195_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~159_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[481]~195_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_15~31\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_15~33_cout\);

-- Location: LCCOMB_X97_Y14_N16
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

-- Location: LCCOMB_X97_Y14_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~161_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~146_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~28_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~146_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~161_combout\);

-- Location: LCCOMB_X97_Y14_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~163_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~147_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~26_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[478]~147_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~163_combout\);

-- Location: LCCOMB_X97_Y14_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~164_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~148_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~24_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[477]~148_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~164_combout\);

-- Location: LCCOMB_X97_Y14_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~165_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~149_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~22_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[476]~149_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~165_combout\);

-- Location: LCCOMB_X96_Y14_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~166_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~150_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~20_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[475]~150_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~166_combout\);

-- Location: LCCOMB_X97_Y14_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~167_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~151_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~18_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[474]~151_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~167_combout\);

-- Location: LCCOMB_X97_Y15_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~168_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~152_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~16_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[473]~152_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~168_combout\);

-- Location: LCCOMB_X97_Y15_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~169_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~153_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[472]~153_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_15~14_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~169_combout\);

-- Location: LCCOMB_X97_Y15_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~170_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~154_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[471]~154_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~12_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~170_combout\);

-- Location: LCCOMB_X97_Y15_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~171_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~155_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[470]~155_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_15~10_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~171_combout\);

-- Location: LCCOMB_X97_Y15_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~172_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~156_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[469]~156_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~8_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~172_combout\);

-- Location: LCCOMB_X97_Y15_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~173_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~157_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~6_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[468]~157_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~173_combout\);

-- Location: LCCOMB_X97_Y15_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~174_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~158_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~4_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[467]~158_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~174_combout\);

-- Location: LCCOMB_X96_Y15_N12
\baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~197_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\) # 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_14~34_combout\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (((\baud_gen|Div0|auto_generated|divider|divider|op_15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~2_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~197_combout\);

-- Location: LCCOMB_X95_Y15_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~198_combout\ = (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\SW[15]~input_o\ & (!\SW[16]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~198_combout\);

-- Location: LCCOMB_X96_Y15_N14
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

-- Location: LCCOMB_X96_Y15_N16
\baud_gen|Div0|auto_generated|divider|divider|op_16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~2_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~198_combout\ & ((\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\)) # 
-- (!\baud_gen|Mux12~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~198_combout\ & ((\baud_gen|Mux12~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\) # (GND))) # (!\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~3\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~198_combout\ & (\baud_gen|Mux12~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~198_combout\ & ((\baud_gen|Mux12~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~198_combout\,
	datab => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~1_cout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~2_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~3\);

-- Location: LCCOMB_X96_Y15_N18
\baud_gen|Div0|auto_generated|divider|divider|op_16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~4_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~197_combout\ $ (\baud_gen|Mux11~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_16~3\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~5\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~197_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_16~3\) # (!\baud_gen|Mux11~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~197_combout\ & (!\baud_gen|Mux11~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~197_combout\,
	datab => \baud_gen|Mux11~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~3\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~4_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~5\);

-- Location: LCCOMB_X96_Y15_N20
\baud_gen|Div0|auto_generated|divider|divider|op_16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~6_combout\ = (\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~174_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~5\ & VCC)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~174_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~5\)))) # (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~174_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~5\)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~174_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~5\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~7\ = CARRY((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~174_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~5\)) # 
-- (!\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_16~5\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~174_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~5\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~6_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~7\);

-- Location: LCCOMB_X96_Y15_N22
\baud_gen|Div0|auto_generated|divider|divider|op_16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~8_combout\ = ((\baud_gen|Mux9~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~173_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_16~7\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~9\ = CARRY((\baud_gen|Mux9~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~173_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~7\)) # (!\baud_gen|Mux9~0_combout\ 
-- & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~173_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux9~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~173_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~7\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~8_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~9\);

-- Location: LCCOMB_X96_Y15_N24
\baud_gen|Div0|auto_generated|divider|divider|op_16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~10_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~172_combout\ & ((\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~9\)) # 
-- (!\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~9\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~172_combout\ & ((\baud_gen|Mux4~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_16~9\) # (GND))) # (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~9\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~11\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~172_combout\ & (\baud_gen|Mux4~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~9\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~172_combout\ & ((\baud_gen|Mux4~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~172_combout\,
	datab => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~9\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~10_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~11\);

-- Location: LCCOMB_X96_Y15_N26
\baud_gen|Div0|auto_generated|divider|divider|op_16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~12_combout\ = ((\baud_gen|Mux7~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~171_combout\ $ (!\baud_gen|Div0|auto_generated|divider|divider|op_16~11\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~13\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~171_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~11\))) # 
-- (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~171_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~171_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~11\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~12_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~13\);

-- Location: LCCOMB_X96_Y15_N28
\baud_gen|Div0|auto_generated|divider|divider|op_16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~14_combout\ = (\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~170_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~13\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~170_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~13\) # (GND))))) # (!\baud_gen|Mux6~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~170_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_16~13\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~170_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~13\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~15\ = CARRY((\baud_gen|Mux6~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_16~13\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~170_combout\))) # 
-- (!\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~170_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~170_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~13\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~14_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~15\);

-- Location: LCCOMB_X96_Y15_N30
\baud_gen|Div0|auto_generated|divider|divider|op_16~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~16_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~169_combout\ $ (\baud_gen|Mux5~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_16~15\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~17\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~169_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_16~15\) # (!\baud_gen|Mux5~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~169_combout\ & (!\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~169_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~15\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~16_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~17\);

-- Location: LCCOMB_X96_Y14_N0
\baud_gen|Div0|auto_generated|divider|divider|op_16~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~18_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~168_combout\ & ((\baud_gen|Mux4~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~17\ & VCC)) # 
-- (!\baud_gen|Mux4~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~17\)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~168_combout\ & ((\baud_gen|Mux4~0_combout\ & 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~17\)) # (!\baud_gen|Mux4~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~17\) # (GND)))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~19\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~168_combout\ & (!\baud_gen|Mux4~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~17\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~168_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_16~17\) # (!\baud_gen|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~168_combout\,
	datab => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~17\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~18_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~19\);

-- Location: LCCOMB_X96_Y14_N2
\baud_gen|Div0|auto_generated|divider|divider|op_16~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~20_combout\ = ((\baud_gen|Mux3~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~167_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_16~19\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~21\ = CARRY((\baud_gen|Mux3~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~167_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~19\)) # 
-- (!\baud_gen|Mux3~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~167_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~167_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~19\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~20_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~21\);

-- Location: LCCOMB_X96_Y14_N4
\baud_gen|Div0|auto_generated|divider|divider|op_16~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~22_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~166_combout\ & ((\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~21\)) # 
-- (!\baud_gen|Mux2~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~21\ & VCC)))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~166_combout\ & ((\baud_gen|Mux2~0_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|op_16~21\) # (GND))) # (!\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~21\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~23\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~166_combout\ & (\baud_gen|Mux2~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~21\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~166_combout\ & ((\baud_gen|Mux2~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~166_combout\,
	datab => \baud_gen|Mux2~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~21\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~22_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~23\);

-- Location: LCCOMB_X96_Y14_N6
\baud_gen|Div0|auto_generated|divider|divider|op_16~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~24_combout\ = ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~165_combout\ $ 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~23\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~25\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~165_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~23\))) # (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~165_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|op_16~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~165_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~23\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~24_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~25\);

-- Location: LCCOMB_X96_Y14_N8
\baud_gen|Div0|auto_generated|divider|divider|op_16~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~26_combout\ = (\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~164_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~25\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~164_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~25\) # (GND))))) # (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~164_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_16~25\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~164_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~25\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~27\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_16~25\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~164_combout\))) # 
-- (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~164_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~164_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~25\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~26_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~27\);

-- Location: LCCOMB_X96_Y14_N10
\baud_gen|Div0|auto_generated|divider|divider|op_16~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~28_combout\ = ((\baud_gen|Mux0~0_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~163_combout\ $ (\baud_gen|Div0|auto_generated|divider|divider|op_16~27\)))) # (GND)
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~29\ = CARRY((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~163_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~27\)) # 
-- (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~163_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_16~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~163_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~27\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~28_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~29\);

-- Location: LCCOMB_X96_Y14_N12
\baud_gen|Div0|auto_generated|divider|divider|op_16~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~30_combout\ = (\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~161_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~29\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~161_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~29\) # (GND))))) # (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~161_combout\ 
-- & (\baud_gen|Div0|auto_generated|divider|divider|op_16~29\ & VCC)) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~161_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~29\))))
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~31\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_16~29\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~161_combout\))) # 
-- (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~161_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[501]~161_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~29\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|op_16~30_combout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~31\);

-- Location: LCCOMB_X97_Y14_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~196_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[458]~133_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~196_combout\);

-- Location: LCCOMB_X96_Y11_N14
\baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~162_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_15~30_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_15~30_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~162_combout\);

-- Location: LCCOMB_X96_Y14_N14
\baud_gen|Div0|auto_generated|divider|divider|op_16~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_16~33_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~196_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~162_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~196_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[502]~162_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_16~31\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_16~33_cout\);

-- Location: LCCOMB_X96_Y14_N16
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

-- Location: LCCOMB_X95_Y14_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~175_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~30_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~30_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~175_combout\);

-- Location: LCCOMB_X97_Y14_N26
\baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~199_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & 
-- ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~146_combout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_15~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_15~28_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[479]~146_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~199_combout\);

-- Location: LCCOMB_X96_Y14_N28
\baud_gen|Div0|auto_generated|divider|divider|StageOut[522]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[522]~176_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~163_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_16~28_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[500]~163_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[522]~176_combout\);

-- Location: LCCOMB_X96_Y14_N22
\baud_gen|Div0|auto_generated|divider|divider|StageOut[521]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[521]~177_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~164_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~26_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[499]~164_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[521]~177_combout\);

-- Location: LCCOMB_X96_Y14_N24
\baud_gen|Div0|auto_generated|divider|divider|StageOut[520]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[520]~178_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~165_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_16~24_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[498]~165_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[520]~178_combout\);

-- Location: LCCOMB_X95_Y14_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[519]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[519]~179_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~166_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[497]~166_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~22_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[519]~179_combout\);

-- Location: LCCOMB_X96_Y14_N18
\baud_gen|Div0|auto_generated|divider|divider|StageOut[518]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[518]~180_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~167_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~20_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[496]~167_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[518]~180_combout\);

-- Location: LCCOMB_X96_Y14_N20
\baud_gen|Div0|auto_generated|divider|divider|StageOut[517]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[517]~181_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~168_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~18_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[495]~168_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[517]~181_combout\);

-- Location: LCCOMB_X96_Y14_N30
\baud_gen|Div0|auto_generated|divider|divider|StageOut[516]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[516]~182_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~169_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~16_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[494]~169_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[516]~182_combout\);

-- Location: LCCOMB_X96_Y15_N6
\baud_gen|Div0|auto_generated|divider|divider|StageOut[515]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[515]~183_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~170_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~14_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[493]~170_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[515]~183_combout\);

-- Location: LCCOMB_X96_Y15_N8
\baud_gen|Div0|auto_generated|divider|divider|StageOut[514]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[514]~184_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~171_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[492]~171_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~12_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[514]~184_combout\);

-- Location: LCCOMB_X96_Y15_N10
\baud_gen|Div0|auto_generated|divider|divider|StageOut[513]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[513]~185_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~172_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|op_16~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~10_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|StageOut[491]~172_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[513]~185_combout\);

-- Location: LCCOMB_X96_Y15_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[512]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[512]~186_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~173_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[490]~173_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_16~8_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[512]~186_combout\);

-- Location: LCCOMB_X96_Y15_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[511]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[511]~187_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~174_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[489]~174_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~6_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[511]~187_combout\);

-- Location: LCCOMB_X95_Y15_N0
\baud_gen|Div0|auto_generated|divider|divider|StageOut[510]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[510]~188_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~197_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|StageOut[488]~197_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~4_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[510]~188_combout\);

-- Location: LCCOMB_X95_Y15_N2
\baud_gen|Div0|auto_generated|divider|divider|StageOut[509]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[509]~189_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~198_combout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|op_16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[487]~198_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_16~2_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[509]~189_combout\);

-- Location: LCCOMB_X95_Y15_N4
\baud_gen|Div0|auto_generated|divider|divider|StageOut[508]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|StageOut[508]~200_combout\ = (\SW[14]~input_o\ & (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (!\SW[16]~input_o\ & \SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \SW[16]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|StageOut[508]~200_combout\);

-- Location: LCCOMB_X95_Y15_N14
\baud_gen|Div0|auto_generated|divider|divider|op_17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~1_cout\ = CARRY(!\baud_gen|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux12~0_combout\,
	datad => VCC,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~1_cout\);

-- Location: LCCOMB_X95_Y15_N16
\baud_gen|Div0|auto_generated|divider|divider|op_17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~3_cout\ = CARRY((\baud_gen|Mux12~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~1_cout\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[508]~200_combout\))) # 
-- (!\baud_gen|Mux12~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[508]~200_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux12~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[508]~200_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~1_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~3_cout\);

-- Location: LCCOMB_X95_Y15_N18
\baud_gen|Div0|auto_generated|divider|divider|op_17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~5_cout\ = CARRY((\baud_gen|Mux11~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[509]~189_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~3_cout\)) # 
-- (!\baud_gen|Mux11~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[509]~189_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_17~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux11~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[509]~189_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~3_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~5_cout\);

-- Location: LCCOMB_X95_Y15_N20
\baud_gen|Div0|auto_generated|divider|divider|op_17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~7_cout\ = CARRY((\baud_gen|Mux3~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[510]~188_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~5_cout\)) # 
-- (!\baud_gen|Mux3~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~5_cout\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[510]~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux3~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[510]~188_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~5_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~7_cout\);

-- Location: LCCOMB_X95_Y15_N22
\baud_gen|Div0|auto_generated|divider|divider|op_17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~9_cout\ = CARRY((\baud_gen|Mux9~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[511]~187_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~7_cout\)) # 
-- (!\baud_gen|Mux9~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[511]~187_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_17~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux9~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[511]~187_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~7_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~9_cout\);

-- Location: LCCOMB_X95_Y15_N24
\baud_gen|Div0|auto_generated|divider|divider|op_17~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~11_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[512]~186_combout\ & (\baud_gen|Mux4~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~9_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[512]~186_combout\ & ((\baud_gen|Mux4~0_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_17~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[512]~186_combout\,
	datab => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~9_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~11_cout\);

-- Location: LCCOMB_X95_Y15_N26
\baud_gen|Div0|auto_generated|divider|divider|op_17~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~13_cout\ = CARRY((\baud_gen|Mux7~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[513]~185_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_17~11_cout\))) # 
-- (!\baud_gen|Mux7~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[513]~185_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux7~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[513]~185_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~11_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~13_cout\);

-- Location: LCCOMB_X95_Y15_N28
\baud_gen|Div0|auto_generated|divider|divider|op_17~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~15_cout\ = CARRY((\baud_gen|Mux6~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~13_cout\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[514]~184_combout\))) # 
-- (!\baud_gen|Mux6~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[514]~184_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux6~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[514]~184_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~13_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~15_cout\);

-- Location: LCCOMB_X95_Y15_N30
\baud_gen|Div0|auto_generated|divider|divider|op_17~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~17_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[515]~183_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~15_cout\) # (!\baud_gen|Mux5~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[515]~183_combout\ & (!\baud_gen|Mux5~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[515]~183_combout\,
	datab => \baud_gen|Mux5~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~15_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~17_cout\);

-- Location: LCCOMB_X95_Y14_N0
\baud_gen|Div0|auto_generated|divider|divider|op_17~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~19_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[516]~182_combout\ & (!\baud_gen|Mux4~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~17_cout\)) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[516]~182_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~17_cout\) # (!\baud_gen|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[516]~182_combout\,
	datab => \baud_gen|Mux4~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~17_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~19_cout\);

-- Location: LCCOMB_X95_Y14_N2
\baud_gen|Div0|auto_generated|divider|divider|op_17~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~21_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[517]~181_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~19_cout\) # (!\baud_gen|Mux3~0_combout\))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[517]~181_combout\ & (!\baud_gen|Mux3~0_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[517]~181_combout\,
	datab => \baud_gen|Mux3~0_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~19_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~21_cout\);

-- Location: LCCOMB_X95_Y14_N4
\baud_gen|Div0|auto_generated|divider|divider|op_17~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~23_cout\ = CARRY((\baud_gen|Mux2~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~21_cout\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[518]~180_combout\))) # 
-- (!\baud_gen|Mux2~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[518]~180_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux2~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[518]~180_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~21_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~23_cout\);

-- Location: LCCOMB_X95_Y14_N6
\baud_gen|Div0|auto_generated|divider|divider|op_17~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~25_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[519]~179_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_17~23_cout\))) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[519]~179_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\ & 
-- !\baud_gen|Div0|auto_generated|divider|divider|op_17~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[519]~179_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~23_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~25_cout\);

-- Location: LCCOMB_X95_Y14_N8
\baud_gen|Div0|auto_generated|divider|divider|op_17~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~27_cout\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~25_cout\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[520]~178_combout\))) # 
-- (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[520]~178_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[520]~178_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~25_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~27_cout\);

-- Location: LCCOMB_X95_Y14_N10
\baud_gen|Div0|auto_generated|divider|divider|op_17~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~29_cout\ = CARRY((\baud_gen|Mux0~0_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|StageOut[521]~177_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~27_cout\)) # 
-- (!\baud_gen|Mux0~0_combout\ & ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[521]~177_combout\) # (!\baud_gen|Div0|auto_generated|divider|divider|op_17~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[521]~177_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~27_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~29_cout\);

-- Location: LCCOMB_X95_Y14_N12
\baud_gen|Div0|auto_generated|divider|divider|op_17~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~31_cout\ = CARRY((\baud_gen|Mux0~0_combout\ & ((!\baud_gen|Div0|auto_generated|divider|divider|op_17~29_cout\) # (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[522]~176_combout\))) # 
-- (!\baud_gen|Mux0~0_combout\ & (!\baud_gen|Div0|auto_generated|divider|divider|StageOut[522]~176_combout\ & !\baud_gen|Div0|auto_generated|divider|divider|op_17~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Mux0~0_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[522]~176_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~29_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~31_cout\);

-- Location: LCCOMB_X95_Y14_N14
\baud_gen|Div0|auto_generated|divider|divider|op_17~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|op_17~33_cout\ = CARRY((\baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~175_combout\) # ((\baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~199_combout\) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_17~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~175_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|StageOut[523]~199_combout\,
	datad => VCC,
	cin => \baud_gen|Div0|auto_generated|divider|divider|op_17~31_cout\,
	cout => \baud_gen|Div0|auto_generated|divider|divider|op_17~33_cout\);

-- Location: LCCOMB_X95_Y14_N16
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

-- Location: LCCOMB_X97_Y11_N2
\baud_gen|baud_enable_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|baud_enable_s~4_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_17~34_combout\ & (!\baud_gen|teller\(0) & (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ $ (\baud_gen|teller\(1))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_17~34_combout\ & (\baud_gen|teller\(0) & (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ $ (\baud_gen|teller\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_17~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baud_gen|teller\(1),
	datad => \baud_gen|teller\(0),
	combout => \baud_gen|baud_enable_s~4_combout\);

-- Location: LCCOMB_X96_Y11_N16
\baud_gen|Div0|auto_generated|divider|divider|selnose[405]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|selnose\(405) = ((\baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\) # (\baud_gen|Mux0~0_combout\)) # (!\baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[405]~7_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datad => \baud_gen|Mux0~0_combout\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405));

-- Location: LCCOMB_X97_Y11_N4
\baud_gen|baud_enable_s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|baud_enable_s~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (!\baud_gen|teller\(10) & (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ $ (\baud_gen|teller\(2))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) & (\baud_gen|teller\(10) & (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ $ (\baud_gen|teller\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|teller\(10),
	datad => \baud_gen|teller\(2),
	combout => \baud_gen|baud_enable_s~6_combout\);

-- Location: LCCOMB_X99_Y11_N22
\baud_gen|Div0|auto_generated|divider|divider|selnose[324]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|selnose[324]~9_combout\ = (!\baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\ & (!\SW[14]~input_o\ & (!\SW[15]~input_o\ & !\SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|selnose[324]~9_combout\);

-- Location: LCCOMB_X97_Y10_N0
\baud_gen|teller[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[13]~52_combout\ = (\baud_gen|teller\(13) & (!\baud_gen|teller[12]~51\)) # (!\baud_gen|teller\(13) & ((\baud_gen|teller[12]~51\) # (GND)))
-- \baud_gen|teller[13]~53\ = CARRY((!\baud_gen|teller[12]~51\) # (!\baud_gen|teller\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(13),
	datad => VCC,
	cin => \baud_gen|teller[12]~51\,
	combout => \baud_gen|teller[13]~52_combout\,
	cout => \baud_gen|teller[13]~53\);

-- Location: FF_X96_Y11_N29
\baud_gen|teller[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \baud_gen|teller[13]~52_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(13));

-- Location: LCCOMB_X98_Y11_N12
\baud_gen|baud_enable_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|baud_enable_s~5_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & (!\baud_gen|teller\(11) & (\baud_gen|Div0|auto_generated|divider|divider|selnose[324]~9_combout\ $ (!\baud_gen|teller\(13))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & (\baud_gen|teller\(11) & (\baud_gen|Div0|auto_generated|divider|divider|selnose[324]~9_combout\ $ (!\baud_gen|teller\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose[324]~9_combout\,
	datac => \baud_gen|teller\(13),
	datad => \baud_gen|teller\(11),
	combout => \baud_gen|baud_enable_s~5_combout\);

-- Location: LCCOMB_X98_Y11_N26
\baud_gen|baud_enable_s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|baud_enable_s~7_combout\ = (\baud_gen|baud_enable_s~4_combout\ & (\baud_gen|baud_enable_s~6_combout\ & \baud_gen|baud_enable_s~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|baud_enable_s~4_combout\,
	datac => \baud_gen|baud_enable_s~6_combout\,
	datad => \baud_gen|baud_enable_s~5_combout\,
	combout => \baud_gen|baud_enable_s~7_combout\);

-- Location: LCCOMB_X97_Y10_N2
\baud_gen|teller[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[14]~54_combout\ = (\baud_gen|teller\(14) & (\baud_gen|teller[13]~53\ $ (GND))) # (!\baud_gen|teller\(14) & (!\baud_gen|teller[13]~53\ & VCC))
-- \baud_gen|teller[14]~55\ = CARRY((\baud_gen|teller\(14) & !\baud_gen|teller[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(14),
	datad => VCC,
	cin => \baud_gen|teller[13]~53\,
	combout => \baud_gen|teller[14]~54_combout\,
	cout => \baud_gen|teller[14]~55\);

-- Location: FF_X97_Y10_N3
\baud_gen|teller[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[14]~54_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(14));

-- Location: LCCOMB_X97_Y10_N4
\baud_gen|teller[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[15]~58_combout\ = (\baud_gen|teller\(15) & (!\baud_gen|teller[14]~55\)) # (!\baud_gen|teller\(15) & ((\baud_gen|teller[14]~55\) # (GND)))
-- \baud_gen|teller[15]~59\ = CARRY((!\baud_gen|teller[14]~55\) # (!\baud_gen|teller\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(15),
	datad => VCC,
	cin => \baud_gen|teller[14]~55\,
	combout => \baud_gen|teller[15]~58_combout\,
	cout => \baud_gen|teller[15]~59\);

-- Location: FF_X97_Y10_N5
\baud_gen|teller[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[15]~58_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(15));

-- Location: LCCOMB_X97_Y10_N6
\baud_gen|teller[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[16]~60_combout\ = (\baud_gen|teller\(16) & (\baud_gen|teller[15]~59\ $ (GND))) # (!\baud_gen|teller\(16) & (!\baud_gen|teller[15]~59\ & VCC))
-- \baud_gen|teller[16]~61\ = CARRY((\baud_gen|teller\(16) & !\baud_gen|teller[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(16),
	datad => VCC,
	cin => \baud_gen|teller[15]~59\,
	combout => \baud_gen|teller[16]~60_combout\,
	cout => \baud_gen|teller[16]~61\);

-- Location: FF_X97_Y10_N7
\baud_gen|teller[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[16]~60_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(16));

-- Location: LCCOMB_X97_Y10_N8
\baud_gen|teller[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[17]~62_combout\ = (\baud_gen|teller\(17) & (!\baud_gen|teller[16]~61\)) # (!\baud_gen|teller\(17) & ((\baud_gen|teller[16]~61\) # (GND)))
-- \baud_gen|teller[17]~63\ = CARRY((!\baud_gen|teller[16]~61\) # (!\baud_gen|teller\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(17),
	datad => VCC,
	cin => \baud_gen|teller[16]~61\,
	combout => \baud_gen|teller[17]~62_combout\,
	cout => \baud_gen|teller[17]~63\);

-- Location: FF_X97_Y10_N9
\baud_gen|teller[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[17]~62_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(17));

-- Location: LCCOMB_X97_Y10_N10
\baud_gen|teller[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[18]~64_combout\ = (\baud_gen|teller\(18) & (\baud_gen|teller[17]~63\ $ (GND))) # (!\baud_gen|teller\(18) & (!\baud_gen|teller[17]~63\ & VCC))
-- \baud_gen|teller[18]~65\ = CARRY((\baud_gen|teller\(18) & !\baud_gen|teller[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(18),
	datad => VCC,
	cin => \baud_gen|teller[17]~63\,
	combout => \baud_gen|teller[18]~64_combout\,
	cout => \baud_gen|teller[18]~65\);

-- Location: FF_X97_Y10_N11
\baud_gen|teller[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[18]~64_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(18));

-- Location: LCCOMB_X97_Y10_N12
\baud_gen|teller[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[19]~66_combout\ = (\baud_gen|teller\(19) & (!\baud_gen|teller[18]~65\)) # (!\baud_gen|teller\(19) & ((\baud_gen|teller[18]~65\) # (GND)))
-- \baud_gen|teller[19]~67\ = CARRY((!\baud_gen|teller[18]~65\) # (!\baud_gen|teller\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(19),
	datad => VCC,
	cin => \baud_gen|teller[18]~65\,
	combout => \baud_gen|teller[19]~66_combout\,
	cout => \baud_gen|teller[19]~67\);

-- Location: FF_X97_Y10_N13
\baud_gen|teller[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[19]~66_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(19));

-- Location: LCCOMB_X97_Y10_N14
\baud_gen|teller[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[20]~68_combout\ = (\baud_gen|teller\(20) & (\baud_gen|teller[19]~67\ $ (GND))) # (!\baud_gen|teller\(20) & (!\baud_gen|teller[19]~67\ & VCC))
-- \baud_gen|teller[20]~69\ = CARRY((\baud_gen|teller\(20) & !\baud_gen|teller[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(20),
	datad => VCC,
	cin => \baud_gen|teller[19]~67\,
	combout => \baud_gen|teller[20]~68_combout\,
	cout => \baud_gen|teller[20]~69\);

-- Location: FF_X97_Y10_N15
\baud_gen|teller[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[20]~68_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(20));

-- Location: LCCOMB_X97_Y10_N16
\baud_gen|teller[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[21]~70_combout\ = (\baud_gen|teller\(21) & (!\baud_gen|teller[20]~69\)) # (!\baud_gen|teller\(21) & ((\baud_gen|teller[20]~69\) # (GND)))
-- \baud_gen|teller[21]~71\ = CARRY((!\baud_gen|teller[20]~69\) # (!\baud_gen|teller\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(21),
	datad => VCC,
	cin => \baud_gen|teller[20]~69\,
	combout => \baud_gen|teller[21]~70_combout\,
	cout => \baud_gen|teller[21]~71\);

-- Location: FF_X97_Y10_N17
\baud_gen|teller[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[21]~70_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(21));

-- Location: LCCOMB_X97_Y10_N18
\baud_gen|teller[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[22]~72_combout\ = (\baud_gen|teller\(22) & (\baud_gen|teller[21]~71\ $ (GND))) # (!\baud_gen|teller\(22) & (!\baud_gen|teller[21]~71\ & VCC))
-- \baud_gen|teller[22]~73\ = CARRY((\baud_gen|teller\(22) & !\baud_gen|teller[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(22),
	datad => VCC,
	cin => \baud_gen|teller[21]~71\,
	combout => \baud_gen|teller[22]~72_combout\,
	cout => \baud_gen|teller[22]~73\);

-- Location: FF_X97_Y10_N19
\baud_gen|teller[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[22]~72_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(22));

-- Location: LCCOMB_X97_Y10_N20
\baud_gen|teller[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[23]~74_combout\ = (\baud_gen|teller\(23) & (!\baud_gen|teller[22]~73\)) # (!\baud_gen|teller\(23) & ((\baud_gen|teller[22]~73\) # (GND)))
-- \baud_gen|teller[23]~75\ = CARRY((!\baud_gen|teller[22]~73\) # (!\baud_gen|teller\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(23),
	datad => VCC,
	cin => \baud_gen|teller[22]~73\,
	combout => \baud_gen|teller[23]~74_combout\,
	cout => \baud_gen|teller[23]~75\);

-- Location: FF_X97_Y10_N21
\baud_gen|teller[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[23]~74_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(23));

-- Location: LCCOMB_X97_Y10_N22
\baud_gen|teller[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[24]~76_combout\ = (\baud_gen|teller\(24) & (\baud_gen|teller[23]~75\ $ (GND))) # (!\baud_gen|teller\(24) & (!\baud_gen|teller[23]~75\ & VCC))
-- \baud_gen|teller[24]~77\ = CARRY((\baud_gen|teller\(24) & !\baud_gen|teller[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(24),
	datad => VCC,
	cin => \baud_gen|teller[23]~75\,
	combout => \baud_gen|teller[24]~76_combout\,
	cout => \baud_gen|teller[24]~77\);

-- Location: FF_X97_Y10_N23
\baud_gen|teller[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[24]~76_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(24));

-- Location: LCCOMB_X97_Y10_N24
\baud_gen|teller[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[25]~78_combout\ = \baud_gen|teller[24]~77\ $ (\baud_gen|teller\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \baud_gen|teller\(25),
	cin => \baud_gen|teller[24]~77\,
	combout => \baud_gen|teller[25]~78_combout\);

-- Location: FF_X97_Y10_N25
\baud_gen|teller[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[25]~78_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(25));

-- Location: LCCOMB_X97_Y10_N26
\baud_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~2_combout\ = (!\baud_gen|teller\(24) & (!\baud_gen|teller\(22) & (!\baud_gen|teller\(23) & !\baud_gen|teller\(25))))

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
	combout => \baud_gen|Equal0~2_combout\);

-- Location: LCCOMB_X97_Y10_N30
\baud_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~0_combout\ = (!\baud_gen|teller\(16) & (!\baud_gen|teller\(17) & (!\baud_gen|teller\(15) & !\baud_gen|teller\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(16),
	datab => \baud_gen|teller\(17),
	datac => \baud_gen|teller\(15),
	datad => \baud_gen|teller\(14),
	combout => \baud_gen|Equal0~0_combout\);

-- Location: LCCOMB_X97_Y10_N28
\baud_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~1_combout\ = (!\baud_gen|teller\(19) & (!\baud_gen|teller\(21) & (!\baud_gen|teller\(20) & !\baud_gen|teller\(18))))

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
	combout => \baud_gen|Equal0~1_combout\);

-- Location: LCCOMB_X98_Y11_N28
\baud_gen|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~3_combout\ = (\baud_gen|Equal0~2_combout\ & (\baud_gen|Equal0~0_combout\ & \baud_gen|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Equal0~2_combout\,
	datac => \baud_gen|Equal0~0_combout\,
	datad => \baud_gen|Equal0~1_combout\,
	combout => \baud_gen|Equal0~3_combout\);

-- Location: LCCOMB_X98_Y11_N20
\baud_gen|baud_enable_s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|baud_enable_s~8_combout\ = (\baud_gen|baud_enable_s~0_combout\ & (\baud_gen|baud_enable_s~3_combout\ & (\baud_gen|baud_enable_s~7_combout\ & \baud_gen|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|baud_enable_s~0_combout\,
	datab => \baud_gen|baud_enable_s~3_combout\,
	datac => \baud_gen|baud_enable_s~7_combout\,
	datad => \baud_gen|Equal0~3_combout\,
	combout => \baud_gen|baud_enable_s~8_combout\);

-- Location: LCCOMB_X99_Y11_N2
\baud_gen|Div0|auto_generated|divider|divider|selnose[351]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Div0|auto_generated|divider|divider|selnose[351]~8_combout\ = (\SW[15]~input_o\) # ((\baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\) # (\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datad => \SW[16]~input_o\,
	combout => \baud_gen|Div0|auto_generated|divider|divider|selnose[351]~8_combout\);

-- Location: LCCOMB_X98_Y11_N4
\baud_gen|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~11_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & (!\baud_gen|teller\(10) & (\baud_gen|Div0|auto_generated|divider|divider|selnose[324]~9_combout\ $ (!\baud_gen|teller\(12))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\ & (\baud_gen|teller\(10) & (\baud_gen|Div0|auto_generated|divider|divider|selnose[324]~9_combout\ $ (!\baud_gen|teller\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[378]~6_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|selnose[324]~9_combout\,
	datac => \baud_gen|teller\(10),
	datad => \baud_gen|teller\(12),
	combout => \baud_gen|Equal0~11_combout\);

-- Location: LCCOMB_X98_Y11_N22
\baud_gen|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~12_combout\ = (\baud_gen|Equal0~11_combout\ & (\baud_gen|Equal0~3_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|selnose[351]~8_combout\ $ (\baud_gen|teller\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose[351]~8_combout\,
	datab => \baud_gen|teller\(11),
	datac => \baud_gen|Equal0~11_combout\,
	datad => \baud_gen|Equal0~3_combout\,
	combout => \baud_gen|Equal0~12_combout\);

-- Location: LCCOMB_X98_Y11_N14
\baud_gen|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~8_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|selnose\(486) & (!\baud_gen|teller\(6) & (\baud_gen|teller\(7) $ (\baud_gen|Div0|auto_generated|divider|divider|selnose\(459))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|selnose\(486) & (\baud_gen|teller\(6) & (\baud_gen|teller\(7) $ (\baud_gen|Div0|auto_generated|divider|divider|selnose\(459)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose\(486),
	datab => \baud_gen|teller\(7),
	datac => \baud_gen|Div0|auto_generated|divider|divider|selnose\(459),
	datad => \baud_gen|teller\(6),
	combout => \baud_gen|Equal0~8_combout\);

-- Location: LCCOMB_X98_Y11_N24
\baud_gen|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~9_combout\ = \baud_gen|teller\(8) $ (((\baud_gen|Mux0~0_combout\) # (\baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|Mux0~0_combout\,
	datac => \baud_gen|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baud_gen|teller\(8),
	combout => \baud_gen|Equal0~9_combout\);

-- Location: LCCOMB_X98_Y11_N10
\baud_gen|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~10_combout\ = (\baud_gen|Equal0~8_combout\ & (\baud_gen|Equal0~9_combout\ & (\baud_gen|Div0|auto_generated|divider|divider|selnose\(405) $ (\baud_gen|teller\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|selnose\(405),
	datab => \baud_gen|teller\(9),
	datac => \baud_gen|Equal0~8_combout\,
	datad => \baud_gen|Equal0~9_combout\,
	combout => \baud_gen|Equal0~10_combout\);

-- Location: LCCOMB_X98_Y11_N0
\baud_gen|teller[25]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[25]~56_combout\ = (\reset_syncher|rst_clk_n~q\ & (!\start_teller~q\ & ((\baud_gen|Equal0~10_combout\) # (!\baud_gen|baud_enable_s~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Equal0~10_combout\,
	datab => \reset_syncher|rst_clk_n~q\,
	datac => \start_teller~q\,
	datad => \baud_gen|baud_enable_s~8_combout\,
	combout => \baud_gen|teller[25]~56_combout\);

-- Location: LCCOMB_X98_Y11_N30
\baud_gen|teller[25]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[25]~57_combout\ = ((\baud_gen|baud_enable_s~8_combout\ & ((!\baud_gen|Equal0~12_combout\) # (!\baud_gen|Equal0~7_combout\)))) # (!\baud_gen|teller[25]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Equal0~7_combout\,
	datab => \baud_gen|baud_enable_s~8_combout\,
	datac => \baud_gen|Equal0~12_combout\,
	datad => \baud_gen|teller[25]~56_combout\,
	combout => \baud_gen|teller[25]~57_combout\);

-- Location: FF_X97_Y11_N7
\baud_gen|teller[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[0]~26_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(0));

-- Location: LCCOMB_X97_Y11_N8
\baud_gen|teller[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[1]~28_combout\ = (\baud_gen|teller\(1) & (!\baud_gen|teller[0]~27\)) # (!\baud_gen|teller\(1) & ((\baud_gen|teller[0]~27\) # (GND)))
-- \baud_gen|teller[1]~29\ = CARRY((!\baud_gen|teller[0]~27\) # (!\baud_gen|teller\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_gen|teller\(1),
	datad => VCC,
	cin => \baud_gen|teller[0]~27\,
	combout => \baud_gen|teller[1]~28_combout\,
	cout => \baud_gen|teller[1]~29\);

-- Location: FF_X97_Y11_N9
\baud_gen|teller[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[1]~28_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(1));

-- Location: LCCOMB_X97_Y11_N10
\baud_gen|teller[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[2]~30_combout\ = (\baud_gen|teller\(2) & (\baud_gen|teller[1]~29\ $ (GND))) # (!\baud_gen|teller\(2) & (!\baud_gen|teller[1]~29\ & VCC))
-- \baud_gen|teller[2]~31\ = CARRY((\baud_gen|teller\(2) & !\baud_gen|teller[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(2),
	datad => VCC,
	cin => \baud_gen|teller[1]~29\,
	combout => \baud_gen|teller[2]~30_combout\,
	cout => \baud_gen|teller[2]~31\);

-- Location: FF_X97_Y11_N11
\baud_gen|teller[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[2]~30_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(2));

-- Location: LCCOMB_X97_Y11_N12
\baud_gen|teller[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|teller[3]~32_combout\ = (\baud_gen|teller\(3) & (!\baud_gen|teller[2]~31\)) # (!\baud_gen|teller\(3) & ((\baud_gen|teller[2]~31\) # (GND)))
-- \baud_gen|teller[3]~33\ = CARRY((!\baud_gen|teller[2]~31\) # (!\baud_gen|teller\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|teller\(3),
	datad => VCC,
	cin => \baud_gen|teller[2]~31\,
	combout => \baud_gen|teller[3]~32_combout\,
	cout => \baud_gen|teller[3]~33\);

-- Location: FF_X97_Y11_N13
\baud_gen|teller[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[3]~32_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(3));

-- Location: FF_X97_Y11_N15
\baud_gen|teller[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|teller[4]~34_combout\,
	sclr => \baud_gen|teller[25]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|teller\(4));

-- Location: LCCOMB_X96_Y11_N22
\baud_gen|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~6_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (!\baud_gen|teller\(5) & (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ $ (\baud_gen|teller\(4))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baud_gen|teller\(5) & (\baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\ $ (\baud_gen|teller\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baud_gen|teller\(4),
	datad => \baud_gen|teller\(5),
	combout => \baud_gen|Equal0~6_combout\);

-- Location: LCCOMB_X96_Y11_N8
\baud_gen|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~5_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (!\baud_gen|teller\(3) & (\baud_gen|teller\(2) $ (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\)))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baud_gen|teller\(3) & (\baud_gen|teller\(2) $ (\baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datab => \baud_gen|teller\(2),
	datac => \baud_gen|teller\(3),
	datad => \baud_gen|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baud_gen|Equal0~5_combout\);

-- Location: LCCOMB_X96_Y11_N18
\baud_gen|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~4_combout\ = (\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (!\baud_gen|teller\(0) & (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ $ (\baud_gen|teller\(1))))) # 
-- (!\baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baud_gen|teller\(0) & (\baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\ $ (\baud_gen|teller\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datab => \baud_gen|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baud_gen|teller\(1),
	datad => \baud_gen|teller\(0),
	combout => \baud_gen|Equal0~4_combout\);

-- Location: LCCOMB_X96_Y11_N20
\baud_gen|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|Equal0~7_combout\ = (\baud_gen|Equal0~6_combout\ & (!\baud_gen|teller\(13) & (\baud_gen|Equal0~5_combout\ & \baud_gen|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Equal0~6_combout\,
	datab => \baud_gen|teller\(13),
	datac => \baud_gen|Equal0~5_combout\,
	datad => \baud_gen|Equal0~4_combout\,
	combout => \baud_gen|Equal0~7_combout\);

-- Location: LCCOMB_X99_Y11_N20
\baud_gen|baud_enable_s~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|baud_enable_s~9_combout\ = (\baud_gen|baud_enable_s~8_combout\ & (((!\baud_gen|Equal0~12_combout\) # (!\baud_gen|Equal0~10_combout\)) # (!\baud_gen|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|Equal0~7_combout\,
	datab => \baud_gen|Equal0~10_combout\,
	datac => \baud_gen|baud_enable_s~8_combout\,
	datad => \baud_gen|Equal0~12_combout\,
	combout => \baud_gen|baud_enable_s~9_combout\);

-- Location: LCCOMB_X99_Y11_N24
\baud_gen|baud_enable_s~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_gen|baud_enable_s~10_combout\ = (!\start_teller~q\ & \baud_gen|baud_enable_s~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start_teller~q\,
	datad => \baud_gen|baud_enable_s~9_combout\,
	combout => \baud_gen|baud_enable_s~10_combout\);

-- Location: FF_X99_Y11_N25
\baud_gen|baud_enable_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baud_gen|baud_enable_s~10_combout\,
	sclr => \reset_syncher|ALT_INV_rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_gen|baud_enable_s~q\);

-- Location: LCCOMB_X103_Y15_N6
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.s_shift_out~q\ & ((\baud_gen|baud_enable_s~q\ & (!shiftreg(0))) # (!\baud_gen|baud_enable_s~q\ & ((!\dout~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_gen|baud_enable_s~q\,
	datab => \state.s_shift_out~q\,
	datac => shiftreg(0),
	datad => \dout~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X103_Y15_N12
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\ & (((\dout~q\ & \Equal0~2_combout\)))) # (!\Selector0~0_combout\ & (((\dout~q\)) # (!\state.s_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \state.s_wait~q\,
	datac => \dout~q\,
	datad => \Equal0~2_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X103_Y15_N13
dout : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	ena => \reset_syncher|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dout~q\);

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

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

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


