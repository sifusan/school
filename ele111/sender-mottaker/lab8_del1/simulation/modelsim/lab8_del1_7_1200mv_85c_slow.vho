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

-- DATE "11/14/2019 09:28:50"

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

ENTITY 	lab8_del2 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	GPIO : INOUT std_logic_vector(35 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab8_del2;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[0]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[3]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[4]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[5]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- GPIO[7]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab8_del2 IS
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
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \GPIO[0]~input_o\ : std_logic;
SIGNAL \GPIO[2]~input_o\ : std_logic;
SIGNAL \GPIO[3]~input_o\ : std_logic;
SIGNAL \GPIO[4]~input_o\ : std_logic;
SIGNAL \GPIO[5]~input_o\ : std_logic;
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
SIGNAL \GPIO[5]~output_o\ : std_logic;
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
SIGNAL \Enable_gen_inst|teller[0]~28_combout\ : std_logic;
SIGNAL \reset_synchronizer_inst|dff~feeder_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \reset_synchronizer_inst|dff~q\ : std_logic;
SIGNAL \reset_synchronizer_inst|rst_clk_n~feeder_combout\ : std_logic;
SIGNAL \reset_synchronizer_inst|rst_clk_n~q\ : std_logic;
SIGNAL \Enable_gen_inst|Equal0~6_combout\ : std_logic;
SIGNAL \Enable_gen_inst|Equal0~1_combout\ : std_logic;
SIGNAL \Enable_gen_inst|Equal0~3_combout\ : std_logic;
SIGNAL \Enable_gen_inst|Equal0~0_combout\ : std_logic;
SIGNAL \Enable_gen_inst|Equal0~2_combout\ : std_logic;
SIGNAL \Enable_gen_inst|Equal0~4_combout\ : std_logic;
SIGNAL \Enable_gen_inst|Equal0~5_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[10]~81_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[10]~30_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[0]~29\ : std_logic;
SIGNAL \Enable_gen_inst|teller[1]~31_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[1]~32\ : std_logic;
SIGNAL \Enable_gen_inst|teller[2]~33_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[2]~34\ : std_logic;
SIGNAL \Enable_gen_inst|teller[3]~35_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[3]~36\ : std_logic;
SIGNAL \Enable_gen_inst|teller[4]~37_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[4]~38\ : std_logic;
SIGNAL \Enable_gen_inst|teller[5]~39_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[5]~40\ : std_logic;
SIGNAL \Enable_gen_inst|teller[6]~41_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[6]~42\ : std_logic;
SIGNAL \Enable_gen_inst|teller[7]~43_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[7]~44\ : std_logic;
SIGNAL \Enable_gen_inst|teller[8]~45_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[8]~46\ : std_logic;
SIGNAL \Enable_gen_inst|teller[9]~47_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[9]~48\ : std_logic;
SIGNAL \Enable_gen_inst|teller[10]~49_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[10]~50\ : std_logic;
SIGNAL \Enable_gen_inst|teller[11]~51_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[11]~52\ : std_logic;
SIGNAL \Enable_gen_inst|teller[12]~53_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[12]~54\ : std_logic;
SIGNAL \Enable_gen_inst|teller[13]~55_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[13]~56\ : std_logic;
SIGNAL \Enable_gen_inst|teller[14]~57_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[14]~58\ : std_logic;
SIGNAL \Enable_gen_inst|teller[15]~59_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[15]~60\ : std_logic;
SIGNAL \Enable_gen_inst|teller[16]~61_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[16]~62\ : std_logic;
SIGNAL \Enable_gen_inst|teller[17]~63_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[17]~64\ : std_logic;
SIGNAL \Enable_gen_inst|teller[18]~65_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[18]~66\ : std_logic;
SIGNAL \Enable_gen_inst|teller[19]~67_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[19]~68\ : std_logic;
SIGNAL \Enable_gen_inst|teller[20]~69_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[20]~70\ : std_logic;
SIGNAL \Enable_gen_inst|teller[21]~71_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[21]~72\ : std_logic;
SIGNAL \Enable_gen_inst|teller[22]~73_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[22]~74\ : std_logic;
SIGNAL \Enable_gen_inst|teller[23]~75_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[23]~76\ : std_logic;
SIGNAL \Enable_gen_inst|teller[24]~77_combout\ : std_logic;
SIGNAL \Enable_gen_inst|teller[24]~78\ : std_logic;
SIGNAL \Enable_gen_inst|teller[25]~79_combout\ : std_logic;
SIGNAL \Enable_gen_inst|Equal0~7_combout\ : std_logic;
SIGNAL \Enable_gen_inst|Equal0~8_combout\ : std_logic;
SIGNAL \Enable_gen_inst|enable~q\ : std_logic;
SIGNAL \hallo~0_combout\ : std_logic;
SIGNAL \hallo~q\ : std_logic;
SIGNAL \GPIO[1]~reg0feeder_combout\ : std_logic;
SIGNAL \GPIO[1]~reg0_q\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \GPIO[1]~enfeeder_combout\ : std_logic;
SIGNAL \GPIO[1]~en_q\ : std_logic;
SIGNAL \GPIO[7]~input_o\ : std_logic;
SIGNAL \data_inn~0_combout\ : std_logic;
SIGNAL \data_inn_q~q\ : std_logic;
SIGNAL \data_inn_qq~0_combout\ : std_logic;
SIGNAL \data_inn_qq~q\ : std_logic;
SIGNAL \mottak_state~16_combout\ : std_logic;
SIGNAL \mottak_state~17_combout\ : std_logic;
SIGNAL \mottak_state.s_error~q\ : std_logic;
SIGNAL \data_inn_qqq~0_combout\ : std_logic;
SIGNAL \data_inn_qqq~q\ : std_logic;
SIGNAL \start_teller~1_combout\ : std_logic;
SIGNAL \start_teller~q\ : std_logic;
SIGNAL \mottak_state~12_combout\ : std_logic;
SIGNAL \mottak_state~13_combout\ : std_logic;
SIGNAL \mottak_state~14_combout\ : std_logic;
SIGNAL \mottak_state~11_combout\ : std_logic;
SIGNAL \mottak_state~15_combout\ : std_logic;
SIGNAL \mottak_state.s_offload~q\ : std_logic;
SIGNAL \mottak_state~18_combout\ : std_logic;
SIGNAL \mottak_state~19_combout\ : std_logic;
SIGNAL \mottak_state.s_idle~q\ : std_logic;
SIGNAL \mottak_state~21_combout\ : std_logic;
SIGNAL \mottak_state~22_combout\ : std_logic;
SIGNAL \mottak_state.s_wait_for_sender~q\ : std_logic;
SIGNAL \mottak_state~20_combout\ : std_logic;
SIGNAL \mottak_state.s_shift_in~q\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[0]~28_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \baudrate_gen_inst|Mux0~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Mux1~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Mux2~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Mux5~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Mux6~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Mux7~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Mux3~1_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Mux9~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Mux3~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Mux11~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Mux12~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Mux4~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~15\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~29_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~30_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~31_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[257]~32_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~18_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~33_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~26_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~27_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~28_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~37_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~38_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~39_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~40_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~41_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~42_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~34_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~35_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~36_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~11\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~13\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~15\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~17\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~19\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~20_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[304]~46_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[303]~47_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~48_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~49_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~50_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~51_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~22_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~18_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~52_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~16_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~43_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~14_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~44_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[305]~45_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~13\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~15\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~17\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~19\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~21\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~22_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~56_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~57_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~58_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~59_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~60_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~24_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~11\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~13\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~14_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~20_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~61_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~18_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~53_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~16_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~54_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~55_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~15\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~17\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~19\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~21\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~23\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~65_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~22_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[352]~73_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~20_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[351]~62_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~18_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~63_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~16_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~64_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~66_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~67_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~68_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~69_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~70_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~71_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~72_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~26_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~9\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~11\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~13\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~15\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~17\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~19\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~21\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~23\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~25\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~16_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[370]~77_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~24_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[374]~86_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~22_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[373]~74_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~20_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[372]~75_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~18_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[371]~76_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~14_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[369]~78_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[368]~79_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[367]~80_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[366]~81_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[365]~82_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[364]~83_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[363]~84_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[362]~85_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[392]~90_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[391]~91_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[390]~92_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[389]~93_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[388]~94_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[387]~95_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[386]~96_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[385]~97_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[384]~98_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[383]~99_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[382]~100_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~5\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~7\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~9\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~11\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~13\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~15\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~17\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~19\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~21\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~22_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[396]~101_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[395]~87_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[394]~88_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[393]~89_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~23\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~25\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~27\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~29\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~31\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~20_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~18_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~16_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~14_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~12_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~6_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~4_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~3\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~5\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~7\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~9\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~11\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~13\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~15\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~17\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~19\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~21\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~23\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~24_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[418]~103_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~30_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[418]~104_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[417]~102_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~26_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~24_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~25\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~27\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~29\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~31\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~33_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[436]~121_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~22_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[435]~122_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~20_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[434]~123_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~18_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[433]~124_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~16_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[432]~125_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~14_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[431]~126_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~12_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[430]~127_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[429]~128_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[428]~129_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~6_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[427]~130_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~4_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[426]~131_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[425]~132_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[424]~196_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~3\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~5\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~7\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~9\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~11\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~13\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~15\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~17\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~19\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~21\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~23\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~25\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~26_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[439]~195_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~30_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[439]~118_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[438]~119_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~26_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[437]~120_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~27\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~29\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~31\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~33_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~24_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[457]~136_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~22_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[456]~137_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~20_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[455]~138_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~18_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[454]~139_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~16_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[453]~140_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~14_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[452]~141_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~12_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[451]~142_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[450]~143_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[449]~144_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~6_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[448]~145_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~4_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[447]~146_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~2_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[446]~147_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[445]~198_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~1\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~3\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~5\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~7\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~9\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~11\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~13\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~15\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~17\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~19\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~21\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~23\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~25\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[459]~134_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~27\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~28_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~30_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[460]~133_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[460]~197_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~29\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~31_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[481]~149_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[481]~199_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~24_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~22_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~20_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~18_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~16_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~14_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~12_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~6_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~4_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~2_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~34_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~1_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~3\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~5\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~7\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~9\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~11\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~13\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~15\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~17\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~19\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~21\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~23\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~25\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~27\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~29\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~31\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~33_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[502]~200_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~30_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[502]~163_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~28_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~26_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~24_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~22_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~20_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~18_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~16_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~14_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~12_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~6_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~4_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~2_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~1_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~3\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~5\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~7\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~9\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~11\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~13\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~15\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~17\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~19\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~21\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~23\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~25\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~27\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~29\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~31\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~33_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~30_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[523]~177_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[523]~203_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~28_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[522]~178_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~26_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[521]~179_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~24_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[520]~180_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~22_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[519]~181_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~20_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[518]~182_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~18_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[517]~183_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~16_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[516]~184_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~14_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[515]~185_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~12_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[514]~186_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[513]~187_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[512]~188_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~6_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[511]~189_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~4_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[510]~190_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~2_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[509]~191_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[508]~204_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~1_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~3_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~5_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~7_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~9_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~11_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~13_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~15_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~17_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~19_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~21_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~23_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~25_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~27_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~29_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~31_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~33_cout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~34_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller~58_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[3]~35\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[4]~36_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[4]~37\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[5]~38_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[5]~39\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[6]~40_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[6]~41\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[7]~42_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[7]~43\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[8]~44_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller~62_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[324]~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[8]~45\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[9]~46_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[9]~47\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[10]~48_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[10]~49\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[11]~50_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[11]~51\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[12]~52_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[12]~53\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[13]~54_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller~63_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller~64_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller~90_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller~65_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller~59_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller~60_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller~61_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[13]~55\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[14]~56_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[14]~57\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[15]~68_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[15]~69\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[16]~70_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[16]~71\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[17]~72_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[17]~73\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[18]~74_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[18]~75\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[19]~76_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[19]~77\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[20]~78_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[20]~79\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[21]~80_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[21]~81\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[22]~82_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[22]~83\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[23]~84_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[23]~85\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[24]~86_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[24]~87\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[25]~88_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Equal0~2_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Equal0~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Equal0~1_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Equal0~3_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller~66_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[20]~67_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[0]~29\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[1]~30_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[1]~31\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[2]~32_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[2]~33\ : std_logic;
SIGNAL \baudrate_gen_inst|teller[3]~34_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Equal0~4_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[351]~9_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Equal0~10_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Equal0~7_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Equal0~8_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Equal0~9_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Equal0~11_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Equal0~5_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Equal0~6_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|Equal0~12_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|baud_enable_m~0_combout\ : std_logic;
SIGNAL \baudrate_gen_inst|baud_enable_m~q\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \mottatt_data[3]~1_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \mottak_shiftreg~8_combout\ : std_logic;
SIGNAL \mottak_shiftreg[8]~7_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \mottak_shiftreg[7]~6_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \mottak_shiftreg[6]~5_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \mottak_shiftreg[5]~4_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \mottak_shiftreg[4]~3_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \mottak_shiftreg[3]~2_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \mottak_shiftreg[2]~1_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \mottak_shiftreg[1]~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \mottatt_data[0]~feeder_combout\ : std_logic;
SIGNAL \mottatt_data[0]~0_combout\ : std_logic;
SIGNAL \mottatt_data[1]~feeder_combout\ : std_logic;
SIGNAL \mottatt_data[2]~feeder_combout\ : std_logic;
SIGNAL \mottatt_data[3]~feeder_combout\ : std_logic;
SIGNAL \mottatt_data[4]~feeder_combout\ : std_logic;
SIGNAL \mottatt_data[5]~feeder_combout\ : std_logic;
SIGNAL \mottatt_data[6]~feeder_combout\ : std_logic;
SIGNAL \mottatt_data[7]~feeder_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \error_signal~q\ : std_logic;
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \vippe_a~feeder_combout\ : std_logic;
SIGNAL \vippe_a~q\ : std_logic;
SIGNAL \vippe_b~feeder_combout\ : std_logic;
SIGNAL \vippe_b~q\ : std_logic;
SIGNAL \mottatt_blink~0_combout\ : std_logic;
SIGNAL \mottatt_blink~q\ : std_logic;
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(701 DOWNTO 0);
SIGNAL mottak_shiftreg : std_logic_vector(9 DOWNTO 0);
SIGNAL \Enable_gen_inst|teller\ : std_logic_vector(25 DOWNTO 0);
SIGNAL mottatt_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \baudrate_gen_inst|teller\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\ : std_logic_vector(545 DOWNTO 0);
SIGNAL \ALT_INV_mottak_state.s_shift_in~q\ : std_logic;
SIGNAL \ALT_INV_SW[17]~input_o\ : std_logic;
SIGNAL \reset_synchronizer_inst|ALT_INV_rst_clk_n~q\ : std_logic;

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
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_mottak_state.s_shift_in~q\ <= NOT \mottak_state.s_shift_in~q\;
\ALT_INV_SW[17]~input_o\ <= NOT \SW[17]~input_o\;
\reset_synchronizer_inst|ALT_INV_rst_clk_n~q\ <= NOT \reset_synchronizer_inst|rst_clk_n~q\;
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
	i => \GPIO[1]~reg0_q\,
	oe => \GPIO[1]~en_q\,
	devoe => ww_devoe,
	o => \GPIO[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\GPIO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => \SW[17]~input_o\,
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
	i => mottatt_data(0),
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
	i => mottatt_data(1),
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
	i => mottatt_data(2),
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
	i => mottatt_data(3),
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
	i => mottatt_data(4),
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
	i => mottatt_data(5),
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
	i => mottatt_data(6),
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
	i => mottatt_data(7),
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
	i => \SW[17]~input_o\,
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
	i => \mottatt_blink~q\,
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

-- Location: LCCOMB_X81_Y32_N6
\Enable_gen_inst|teller[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[0]~28_combout\ = \Enable_gen_inst|teller\(0) $ (VCC)
-- \Enable_gen_inst|teller[0]~29\ = CARRY(\Enable_gen_inst|teller\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(0),
	datad => VCC,
	combout => \Enable_gen_inst|teller[0]~28_combout\,
	cout => \Enable_gen_inst|teller[0]~29\);

-- Location: LCCOMB_X83_Y32_N10
\reset_synchronizer_inst|dff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_synchronizer_inst|dff~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \reset_synchronizer_inst|dff~feeder_combout\);

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

-- Location: FF_X83_Y32_N11
\reset_synchronizer_inst|dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_synchronizer_inst|dff~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_synchronizer_inst|dff~q\);

-- Location: LCCOMB_X83_Y32_N16
\reset_synchronizer_inst|rst_clk_n~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_synchronizer_inst|rst_clk_n~feeder_combout\ = \reset_synchronizer_inst|dff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_synchronizer_inst|dff~q\,
	combout => \reset_synchronizer_inst|rst_clk_n~feeder_combout\);

-- Location: FF_X83_Y32_N17
\reset_synchronizer_inst|rst_clk_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_synchronizer_inst|rst_clk_n~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_synchronizer_inst|rst_clk_n~q\);

-- Location: LCCOMB_X81_Y31_N28
\Enable_gen_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|Equal0~6_combout\ = (((!\Enable_gen_inst|teller\(22)) # (!\Enable_gen_inst|teller\(20))) # (!\Enable_gen_inst|teller\(21))) # (!\Enable_gen_inst|teller\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(23),
	datab => \Enable_gen_inst|teller\(21),
	datac => \Enable_gen_inst|teller\(20),
	datad => \Enable_gen_inst|teller\(22),
	combout => \Enable_gen_inst|Equal0~6_combout\);

-- Location: LCCOMB_X81_Y32_N2
\Enable_gen_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|Equal0~1_combout\ = ((\Enable_gen_inst|teller\(6)) # ((\Enable_gen_inst|teller\(4)) # (\Enable_gen_inst|teller\(5)))) # (!\Enable_gen_inst|teller\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(7),
	datab => \Enable_gen_inst|teller\(6),
	datac => \Enable_gen_inst|teller\(4),
	datad => \Enable_gen_inst|teller\(5),
	combout => \Enable_gen_inst|Equal0~1_combout\);

-- Location: LCCOMB_X82_Y31_N28
\Enable_gen_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|Equal0~3_combout\ = (((!\Enable_gen_inst|teller\(14)) # (!\Enable_gen_inst|teller\(12))) # (!\Enable_gen_inst|teller\(15))) # (!\Enable_gen_inst|teller\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(13),
	datab => \Enable_gen_inst|teller\(15),
	datac => \Enable_gen_inst|teller\(12),
	datad => \Enable_gen_inst|teller\(14),
	combout => \Enable_gen_inst|Equal0~3_combout\);

-- Location: LCCOMB_X81_Y32_N4
\Enable_gen_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|Equal0~0_combout\ = (\Enable_gen_inst|teller\(0)) # ((\Enable_gen_inst|teller\(1)) # ((\Enable_gen_inst|teller\(2)) # (\Enable_gen_inst|teller\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(0),
	datab => \Enable_gen_inst|teller\(1),
	datac => \Enable_gen_inst|teller\(2),
	datad => \Enable_gen_inst|teller\(3),
	combout => \Enable_gen_inst|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y32_N0
\Enable_gen_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|Equal0~2_combout\ = (\Enable_gen_inst|teller\(10)) # ((\Enable_gen_inst|teller\(11)) # ((\Enable_gen_inst|teller\(8)) # (\Enable_gen_inst|teller\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(10),
	datab => \Enable_gen_inst|teller\(11),
	datac => \Enable_gen_inst|teller\(8),
	datad => \Enable_gen_inst|teller\(9),
	combout => \Enable_gen_inst|Equal0~2_combout\);

-- Location: LCCOMB_X82_Y31_N14
\Enable_gen_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|Equal0~4_combout\ = (\Enable_gen_inst|Equal0~1_combout\) # ((\Enable_gen_inst|Equal0~3_combout\) # ((\Enable_gen_inst|Equal0~0_combout\) # (\Enable_gen_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|Equal0~1_combout\,
	datab => \Enable_gen_inst|Equal0~3_combout\,
	datac => \Enable_gen_inst|Equal0~0_combout\,
	datad => \Enable_gen_inst|Equal0~2_combout\,
	combout => \Enable_gen_inst|Equal0~4_combout\);

-- Location: LCCOMB_X81_Y31_N30
\Enable_gen_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|Equal0~5_combout\ = (\Enable_gen_inst|teller\(16)) # (((\Enable_gen_inst|teller\(18)) # (!\Enable_gen_inst|teller\(19))) # (!\Enable_gen_inst|teller\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(16),
	datab => \Enable_gen_inst|teller\(17),
	datac => \Enable_gen_inst|teller\(18),
	datad => \Enable_gen_inst|teller\(19),
	combout => \Enable_gen_inst|Equal0~5_combout\);

-- Location: LCCOMB_X82_Y31_N16
\Enable_gen_inst|teller[10]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[10]~81_combout\ = (\Enable_gen_inst|teller\(24)) # ((\Enable_gen_inst|Equal0~5_combout\) # (!\Enable_gen_inst|teller\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(24),
	datac => \Enable_gen_inst|teller\(25),
	datad => \Enable_gen_inst|Equal0~5_combout\,
	combout => \Enable_gen_inst|teller[10]~81_combout\);

-- Location: LCCOMB_X82_Y31_N10
\Enable_gen_inst|teller[10]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[10]~30_combout\ = ((!\Enable_gen_inst|Equal0~6_combout\ & (!\Enable_gen_inst|Equal0~4_combout\ & !\Enable_gen_inst|teller[10]~81_combout\))) # (!\reset_synchronizer_inst|rst_clk_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synchronizer_inst|rst_clk_n~q\,
	datab => \Enable_gen_inst|Equal0~6_combout\,
	datac => \Enable_gen_inst|Equal0~4_combout\,
	datad => \Enable_gen_inst|teller[10]~81_combout\,
	combout => \Enable_gen_inst|teller[10]~30_combout\);

-- Location: FF_X81_Y32_N7
\Enable_gen_inst|teller[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[0]~28_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(0));

-- Location: LCCOMB_X81_Y32_N8
\Enable_gen_inst|teller[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[1]~31_combout\ = (\Enable_gen_inst|teller\(1) & (!\Enable_gen_inst|teller[0]~29\)) # (!\Enable_gen_inst|teller\(1) & ((\Enable_gen_inst|teller[0]~29\) # (GND)))
-- \Enable_gen_inst|teller[1]~32\ = CARRY((!\Enable_gen_inst|teller[0]~29\) # (!\Enable_gen_inst|teller\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(1),
	datad => VCC,
	cin => \Enable_gen_inst|teller[0]~29\,
	combout => \Enable_gen_inst|teller[1]~31_combout\,
	cout => \Enable_gen_inst|teller[1]~32\);

-- Location: FF_X81_Y32_N9
\Enable_gen_inst|teller[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[1]~31_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(1));

-- Location: LCCOMB_X81_Y32_N10
\Enable_gen_inst|teller[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[2]~33_combout\ = (\Enable_gen_inst|teller\(2) & (\Enable_gen_inst|teller[1]~32\ $ (GND))) # (!\Enable_gen_inst|teller\(2) & (!\Enable_gen_inst|teller[1]~32\ & VCC))
-- \Enable_gen_inst|teller[2]~34\ = CARRY((\Enable_gen_inst|teller\(2) & !\Enable_gen_inst|teller[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(2),
	datad => VCC,
	cin => \Enable_gen_inst|teller[1]~32\,
	combout => \Enable_gen_inst|teller[2]~33_combout\,
	cout => \Enable_gen_inst|teller[2]~34\);

-- Location: FF_X81_Y32_N11
\Enable_gen_inst|teller[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[2]~33_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(2));

-- Location: LCCOMB_X81_Y32_N12
\Enable_gen_inst|teller[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[3]~35_combout\ = (\Enable_gen_inst|teller\(3) & (!\Enable_gen_inst|teller[2]~34\)) # (!\Enable_gen_inst|teller\(3) & ((\Enable_gen_inst|teller[2]~34\) # (GND)))
-- \Enable_gen_inst|teller[3]~36\ = CARRY((!\Enable_gen_inst|teller[2]~34\) # (!\Enable_gen_inst|teller\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(3),
	datad => VCC,
	cin => \Enable_gen_inst|teller[2]~34\,
	combout => \Enable_gen_inst|teller[3]~35_combout\,
	cout => \Enable_gen_inst|teller[3]~36\);

-- Location: FF_X81_Y32_N13
\Enable_gen_inst|teller[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[3]~35_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(3));

-- Location: LCCOMB_X81_Y32_N14
\Enable_gen_inst|teller[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[4]~37_combout\ = (\Enable_gen_inst|teller\(4) & (\Enable_gen_inst|teller[3]~36\ $ (GND))) # (!\Enable_gen_inst|teller\(4) & (!\Enable_gen_inst|teller[3]~36\ & VCC))
-- \Enable_gen_inst|teller[4]~38\ = CARRY((\Enable_gen_inst|teller\(4) & !\Enable_gen_inst|teller[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(4),
	datad => VCC,
	cin => \Enable_gen_inst|teller[3]~36\,
	combout => \Enable_gen_inst|teller[4]~37_combout\,
	cout => \Enable_gen_inst|teller[4]~38\);

-- Location: FF_X81_Y32_N15
\Enable_gen_inst|teller[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[4]~37_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(4));

-- Location: LCCOMB_X81_Y32_N16
\Enable_gen_inst|teller[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[5]~39_combout\ = (\Enable_gen_inst|teller\(5) & (!\Enable_gen_inst|teller[4]~38\)) # (!\Enable_gen_inst|teller\(5) & ((\Enable_gen_inst|teller[4]~38\) # (GND)))
-- \Enable_gen_inst|teller[5]~40\ = CARRY((!\Enable_gen_inst|teller[4]~38\) # (!\Enable_gen_inst|teller\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(5),
	datad => VCC,
	cin => \Enable_gen_inst|teller[4]~38\,
	combout => \Enable_gen_inst|teller[5]~39_combout\,
	cout => \Enable_gen_inst|teller[5]~40\);

-- Location: FF_X81_Y32_N17
\Enable_gen_inst|teller[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[5]~39_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(5));

-- Location: LCCOMB_X81_Y32_N18
\Enable_gen_inst|teller[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[6]~41_combout\ = (\Enable_gen_inst|teller\(6) & (\Enable_gen_inst|teller[5]~40\ $ (GND))) # (!\Enable_gen_inst|teller\(6) & (!\Enable_gen_inst|teller[5]~40\ & VCC))
-- \Enable_gen_inst|teller[6]~42\ = CARRY((\Enable_gen_inst|teller\(6) & !\Enable_gen_inst|teller[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(6),
	datad => VCC,
	cin => \Enable_gen_inst|teller[5]~40\,
	combout => \Enable_gen_inst|teller[6]~41_combout\,
	cout => \Enable_gen_inst|teller[6]~42\);

-- Location: FF_X81_Y32_N19
\Enable_gen_inst|teller[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[6]~41_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(6));

-- Location: LCCOMB_X81_Y32_N20
\Enable_gen_inst|teller[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[7]~43_combout\ = (\Enable_gen_inst|teller\(7) & (!\Enable_gen_inst|teller[6]~42\)) # (!\Enable_gen_inst|teller\(7) & ((\Enable_gen_inst|teller[6]~42\) # (GND)))
-- \Enable_gen_inst|teller[7]~44\ = CARRY((!\Enable_gen_inst|teller[6]~42\) # (!\Enable_gen_inst|teller\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(7),
	datad => VCC,
	cin => \Enable_gen_inst|teller[6]~42\,
	combout => \Enable_gen_inst|teller[7]~43_combout\,
	cout => \Enable_gen_inst|teller[7]~44\);

-- Location: FF_X81_Y32_N21
\Enable_gen_inst|teller[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[7]~43_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(7));

-- Location: LCCOMB_X81_Y32_N22
\Enable_gen_inst|teller[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[8]~45_combout\ = (\Enable_gen_inst|teller\(8) & (\Enable_gen_inst|teller[7]~44\ $ (GND))) # (!\Enable_gen_inst|teller\(8) & (!\Enable_gen_inst|teller[7]~44\ & VCC))
-- \Enable_gen_inst|teller[8]~46\ = CARRY((\Enable_gen_inst|teller\(8) & !\Enable_gen_inst|teller[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(8),
	datad => VCC,
	cin => \Enable_gen_inst|teller[7]~44\,
	combout => \Enable_gen_inst|teller[8]~45_combout\,
	cout => \Enable_gen_inst|teller[8]~46\);

-- Location: FF_X81_Y32_N23
\Enable_gen_inst|teller[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[8]~45_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(8));

-- Location: LCCOMB_X81_Y32_N24
\Enable_gen_inst|teller[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[9]~47_combout\ = (\Enable_gen_inst|teller\(9) & (!\Enable_gen_inst|teller[8]~46\)) # (!\Enable_gen_inst|teller\(9) & ((\Enable_gen_inst|teller[8]~46\) # (GND)))
-- \Enable_gen_inst|teller[9]~48\ = CARRY((!\Enable_gen_inst|teller[8]~46\) # (!\Enable_gen_inst|teller\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(9),
	datad => VCC,
	cin => \Enable_gen_inst|teller[8]~46\,
	combout => \Enable_gen_inst|teller[9]~47_combout\,
	cout => \Enable_gen_inst|teller[9]~48\);

-- Location: FF_X81_Y32_N25
\Enable_gen_inst|teller[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[9]~47_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(9));

-- Location: LCCOMB_X81_Y32_N26
\Enable_gen_inst|teller[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[10]~49_combout\ = (\Enable_gen_inst|teller\(10) & (\Enable_gen_inst|teller[9]~48\ $ (GND))) # (!\Enable_gen_inst|teller\(10) & (!\Enable_gen_inst|teller[9]~48\ & VCC))
-- \Enable_gen_inst|teller[10]~50\ = CARRY((\Enable_gen_inst|teller\(10) & !\Enable_gen_inst|teller[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(10),
	datad => VCC,
	cin => \Enable_gen_inst|teller[9]~48\,
	combout => \Enable_gen_inst|teller[10]~49_combout\,
	cout => \Enable_gen_inst|teller[10]~50\);

-- Location: FF_X81_Y32_N27
\Enable_gen_inst|teller[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[10]~49_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(10));

-- Location: LCCOMB_X81_Y32_N28
\Enable_gen_inst|teller[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[11]~51_combout\ = (\Enable_gen_inst|teller\(11) & (!\Enable_gen_inst|teller[10]~50\)) # (!\Enable_gen_inst|teller\(11) & ((\Enable_gen_inst|teller[10]~50\) # (GND)))
-- \Enable_gen_inst|teller[11]~52\ = CARRY((!\Enable_gen_inst|teller[10]~50\) # (!\Enable_gen_inst|teller\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(11),
	datad => VCC,
	cin => \Enable_gen_inst|teller[10]~50\,
	combout => \Enable_gen_inst|teller[11]~51_combout\,
	cout => \Enable_gen_inst|teller[11]~52\);

-- Location: FF_X81_Y32_N29
\Enable_gen_inst|teller[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[11]~51_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(11));

-- Location: LCCOMB_X81_Y32_N30
\Enable_gen_inst|teller[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[12]~53_combout\ = (\Enable_gen_inst|teller\(12) & (\Enable_gen_inst|teller[11]~52\ $ (GND))) # (!\Enable_gen_inst|teller\(12) & (!\Enable_gen_inst|teller[11]~52\ & VCC))
-- \Enable_gen_inst|teller[12]~54\ = CARRY((\Enable_gen_inst|teller\(12) & !\Enable_gen_inst|teller[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(12),
	datad => VCC,
	cin => \Enable_gen_inst|teller[11]~52\,
	combout => \Enable_gen_inst|teller[12]~53_combout\,
	cout => \Enable_gen_inst|teller[12]~54\);

-- Location: FF_X81_Y32_N31
\Enable_gen_inst|teller[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[12]~53_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(12));

-- Location: LCCOMB_X81_Y31_N0
\Enable_gen_inst|teller[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[13]~55_combout\ = (\Enable_gen_inst|teller\(13) & (!\Enable_gen_inst|teller[12]~54\)) # (!\Enable_gen_inst|teller\(13) & ((\Enable_gen_inst|teller[12]~54\) # (GND)))
-- \Enable_gen_inst|teller[13]~56\ = CARRY((!\Enable_gen_inst|teller[12]~54\) # (!\Enable_gen_inst|teller\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(13),
	datad => VCC,
	cin => \Enable_gen_inst|teller[12]~54\,
	combout => \Enable_gen_inst|teller[13]~55_combout\,
	cout => \Enable_gen_inst|teller[13]~56\);

-- Location: FF_X81_Y31_N1
\Enable_gen_inst|teller[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[13]~55_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(13));

-- Location: LCCOMB_X81_Y31_N2
\Enable_gen_inst|teller[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[14]~57_combout\ = (\Enable_gen_inst|teller\(14) & (\Enable_gen_inst|teller[13]~56\ $ (GND))) # (!\Enable_gen_inst|teller\(14) & (!\Enable_gen_inst|teller[13]~56\ & VCC))
-- \Enable_gen_inst|teller[14]~58\ = CARRY((\Enable_gen_inst|teller\(14) & !\Enable_gen_inst|teller[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(14),
	datad => VCC,
	cin => \Enable_gen_inst|teller[13]~56\,
	combout => \Enable_gen_inst|teller[14]~57_combout\,
	cout => \Enable_gen_inst|teller[14]~58\);

-- Location: FF_X81_Y31_N3
\Enable_gen_inst|teller[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[14]~57_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(14));

-- Location: LCCOMB_X81_Y31_N4
\Enable_gen_inst|teller[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[15]~59_combout\ = (\Enable_gen_inst|teller\(15) & (!\Enable_gen_inst|teller[14]~58\)) # (!\Enable_gen_inst|teller\(15) & ((\Enable_gen_inst|teller[14]~58\) # (GND)))
-- \Enable_gen_inst|teller[15]~60\ = CARRY((!\Enable_gen_inst|teller[14]~58\) # (!\Enable_gen_inst|teller\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(15),
	datad => VCC,
	cin => \Enable_gen_inst|teller[14]~58\,
	combout => \Enable_gen_inst|teller[15]~59_combout\,
	cout => \Enable_gen_inst|teller[15]~60\);

-- Location: FF_X81_Y31_N5
\Enable_gen_inst|teller[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[15]~59_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(15));

-- Location: LCCOMB_X81_Y31_N6
\Enable_gen_inst|teller[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[16]~61_combout\ = (\Enable_gen_inst|teller\(16) & (\Enable_gen_inst|teller[15]~60\ $ (GND))) # (!\Enable_gen_inst|teller\(16) & (!\Enable_gen_inst|teller[15]~60\ & VCC))
-- \Enable_gen_inst|teller[16]~62\ = CARRY((\Enable_gen_inst|teller\(16) & !\Enable_gen_inst|teller[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(16),
	datad => VCC,
	cin => \Enable_gen_inst|teller[15]~60\,
	combout => \Enable_gen_inst|teller[16]~61_combout\,
	cout => \Enable_gen_inst|teller[16]~62\);

-- Location: FF_X81_Y31_N7
\Enable_gen_inst|teller[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[16]~61_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(16));

-- Location: LCCOMB_X81_Y31_N8
\Enable_gen_inst|teller[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[17]~63_combout\ = (\Enable_gen_inst|teller\(17) & (!\Enable_gen_inst|teller[16]~62\)) # (!\Enable_gen_inst|teller\(17) & ((\Enable_gen_inst|teller[16]~62\) # (GND)))
-- \Enable_gen_inst|teller[17]~64\ = CARRY((!\Enable_gen_inst|teller[16]~62\) # (!\Enable_gen_inst|teller\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(17),
	datad => VCC,
	cin => \Enable_gen_inst|teller[16]~62\,
	combout => \Enable_gen_inst|teller[17]~63_combout\,
	cout => \Enable_gen_inst|teller[17]~64\);

-- Location: FF_X81_Y31_N9
\Enable_gen_inst|teller[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[17]~63_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(17));

-- Location: LCCOMB_X81_Y31_N10
\Enable_gen_inst|teller[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[18]~65_combout\ = (\Enable_gen_inst|teller\(18) & (\Enable_gen_inst|teller[17]~64\ $ (GND))) # (!\Enable_gen_inst|teller\(18) & (!\Enable_gen_inst|teller[17]~64\ & VCC))
-- \Enable_gen_inst|teller[18]~66\ = CARRY((\Enable_gen_inst|teller\(18) & !\Enable_gen_inst|teller[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(18),
	datad => VCC,
	cin => \Enable_gen_inst|teller[17]~64\,
	combout => \Enable_gen_inst|teller[18]~65_combout\,
	cout => \Enable_gen_inst|teller[18]~66\);

-- Location: FF_X81_Y31_N11
\Enable_gen_inst|teller[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[18]~65_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(18));

-- Location: LCCOMB_X81_Y31_N12
\Enable_gen_inst|teller[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[19]~67_combout\ = (\Enable_gen_inst|teller\(19) & (!\Enable_gen_inst|teller[18]~66\)) # (!\Enable_gen_inst|teller\(19) & ((\Enable_gen_inst|teller[18]~66\) # (GND)))
-- \Enable_gen_inst|teller[19]~68\ = CARRY((!\Enable_gen_inst|teller[18]~66\) # (!\Enable_gen_inst|teller\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(19),
	datad => VCC,
	cin => \Enable_gen_inst|teller[18]~66\,
	combout => \Enable_gen_inst|teller[19]~67_combout\,
	cout => \Enable_gen_inst|teller[19]~68\);

-- Location: FF_X81_Y31_N13
\Enable_gen_inst|teller[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[19]~67_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(19));

-- Location: LCCOMB_X81_Y31_N14
\Enable_gen_inst|teller[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[20]~69_combout\ = (\Enable_gen_inst|teller\(20) & (\Enable_gen_inst|teller[19]~68\ $ (GND))) # (!\Enable_gen_inst|teller\(20) & (!\Enable_gen_inst|teller[19]~68\ & VCC))
-- \Enable_gen_inst|teller[20]~70\ = CARRY((\Enable_gen_inst|teller\(20) & !\Enable_gen_inst|teller[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(20),
	datad => VCC,
	cin => \Enable_gen_inst|teller[19]~68\,
	combout => \Enable_gen_inst|teller[20]~69_combout\,
	cout => \Enable_gen_inst|teller[20]~70\);

-- Location: FF_X81_Y31_N15
\Enable_gen_inst|teller[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[20]~69_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(20));

-- Location: LCCOMB_X81_Y31_N16
\Enable_gen_inst|teller[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[21]~71_combout\ = (\Enable_gen_inst|teller\(21) & (!\Enable_gen_inst|teller[20]~70\)) # (!\Enable_gen_inst|teller\(21) & ((\Enable_gen_inst|teller[20]~70\) # (GND)))
-- \Enable_gen_inst|teller[21]~72\ = CARRY((!\Enable_gen_inst|teller[20]~70\) # (!\Enable_gen_inst|teller\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(21),
	datad => VCC,
	cin => \Enable_gen_inst|teller[20]~70\,
	combout => \Enable_gen_inst|teller[21]~71_combout\,
	cout => \Enable_gen_inst|teller[21]~72\);

-- Location: FF_X81_Y31_N17
\Enable_gen_inst|teller[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[21]~71_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(21));

-- Location: LCCOMB_X81_Y31_N18
\Enable_gen_inst|teller[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[22]~73_combout\ = (\Enable_gen_inst|teller\(22) & (\Enable_gen_inst|teller[21]~72\ $ (GND))) # (!\Enable_gen_inst|teller\(22) & (!\Enable_gen_inst|teller[21]~72\ & VCC))
-- \Enable_gen_inst|teller[22]~74\ = CARRY((\Enable_gen_inst|teller\(22) & !\Enable_gen_inst|teller[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(22),
	datad => VCC,
	cin => \Enable_gen_inst|teller[21]~72\,
	combout => \Enable_gen_inst|teller[22]~73_combout\,
	cout => \Enable_gen_inst|teller[22]~74\);

-- Location: FF_X81_Y31_N19
\Enable_gen_inst|teller[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[22]~73_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(22));

-- Location: LCCOMB_X81_Y31_N20
\Enable_gen_inst|teller[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[23]~75_combout\ = (\Enable_gen_inst|teller\(23) & (!\Enable_gen_inst|teller[22]~74\)) # (!\Enable_gen_inst|teller\(23) & ((\Enable_gen_inst|teller[22]~74\) # (GND)))
-- \Enable_gen_inst|teller[23]~76\ = CARRY((!\Enable_gen_inst|teller[22]~74\) # (!\Enable_gen_inst|teller\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(23),
	datad => VCC,
	cin => \Enable_gen_inst|teller[22]~74\,
	combout => \Enable_gen_inst|teller[23]~75_combout\,
	cout => \Enable_gen_inst|teller[23]~76\);

-- Location: FF_X81_Y31_N21
\Enable_gen_inst|teller[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[23]~75_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(23));

-- Location: LCCOMB_X81_Y31_N22
\Enable_gen_inst|teller[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[24]~77_combout\ = (\Enable_gen_inst|teller\(24) & (\Enable_gen_inst|teller[23]~76\ $ (GND))) # (!\Enable_gen_inst|teller\(24) & (!\Enable_gen_inst|teller[23]~76\ & VCC))
-- \Enable_gen_inst|teller[24]~78\ = CARRY((\Enable_gen_inst|teller\(24) & !\Enable_gen_inst|teller[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|teller\(24),
	datad => VCC,
	cin => \Enable_gen_inst|teller[23]~76\,
	combout => \Enable_gen_inst|teller[24]~77_combout\,
	cout => \Enable_gen_inst|teller[24]~78\);

-- Location: FF_X81_Y31_N23
\Enable_gen_inst|teller[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[24]~77_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(24));

-- Location: LCCOMB_X81_Y31_N24
\Enable_gen_inst|teller[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|teller[25]~79_combout\ = \Enable_gen_inst|teller[24]~78\ $ (\Enable_gen_inst|teller\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Enable_gen_inst|teller\(25),
	cin => \Enable_gen_inst|teller[24]~78\,
	combout => \Enable_gen_inst|teller[25]~79_combout\);

-- Location: FF_X81_Y31_N25
\Enable_gen_inst|teller[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|teller[25]~79_combout\,
	sclr => \Enable_gen_inst|teller[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|teller\(25));

-- Location: LCCOMB_X82_Y31_N12
\Enable_gen_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|Equal0~7_combout\ = (\Enable_gen_inst|teller\(24)) # (!\Enable_gen_inst|teller\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_inst|teller\(25),
	datac => \Enable_gen_inst|teller\(24),
	combout => \Enable_gen_inst|Equal0~7_combout\);

-- Location: LCCOMB_X82_Y31_N18
\Enable_gen_inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_inst|Equal0~8_combout\ = (!\Enable_gen_inst|Equal0~7_combout\ & (!\Enable_gen_inst|Equal0~5_combout\ & (!\Enable_gen_inst|Equal0~4_combout\ & !\Enable_gen_inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_inst|Equal0~7_combout\,
	datab => \Enable_gen_inst|Equal0~5_combout\,
	datac => \Enable_gen_inst|Equal0~4_combout\,
	datad => \Enable_gen_inst|Equal0~6_combout\,
	combout => \Enable_gen_inst|Equal0~8_combout\);

-- Location: FF_X82_Y31_N19
\Enable_gen_inst|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_inst|Equal0~8_combout\,
	ena => \reset_synchronizer_inst|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_inst|enable~q\);

-- Location: LCCOMB_X82_Y31_N8
\hallo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hallo~0_combout\ = \hallo~q\ $ (\Enable_gen_inst|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hallo~q\,
	datad => \Enable_gen_inst|enable~q\,
	combout => \hallo~0_combout\);

-- Location: FF_X82_Y31_N9
hallo : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hallo~0_combout\,
	sclr => \reset_synchronizer_inst|ALT_INV_rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hallo~q\);

-- Location: LCCOMB_X60_Y32_N4
\GPIO[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO[1]~reg0feeder_combout\ = \hallo~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hallo~q\,
	combout => \GPIO[1]~reg0feeder_combout\);

-- Location: FF_X60_Y32_N5
\GPIO[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GPIO[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GPIO[1]~reg0_q\);

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

-- Location: LCCOMB_X65_Y1_N4
\GPIO[1]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO[1]~enfeeder_combout\ = \SW[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[17]~input_o\,
	combout => \GPIO[1]~enfeeder_combout\);

-- Location: FF_X65_Y1_N5
\GPIO[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GPIO[1]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GPIO[1]~en_q\);

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

-- Location: LCCOMB_X83_Y32_N4
\data_inn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_inn~0_combout\ = (\SW[17]~input_o\) # (\GPIO[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \GPIO[7]~input_o\,
	combout => \data_inn~0_combout\);

-- Location: FF_X83_Y32_N5
data_inn_q : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_inn~0_combout\,
	sclr => \reset_synchronizer_inst|ALT_INV_rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_inn_q~q\);

-- Location: LCCOMB_X83_Y32_N24
\data_inn_qq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_inn_qq~0_combout\ = (\data_inn_q~q\ & \reset_synchronizer_inst|rst_clk_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_inn_q~q\,
	datad => \reset_synchronizer_inst|rst_clk_n~q\,
	combout => \data_inn_qq~0_combout\);

-- Location: FF_X83_Y32_N25
data_inn_qq : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_inn_qq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_inn_qq~q\);

-- Location: LCCOMB_X84_Y32_N28
\mottak_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_state~16_combout\ = (mottak_shiftreg(0) & (\mottak_state.s_shift_in~q\ & (!mottak_shiftreg(9) & !\mottak_state~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mottak_shiftreg(0),
	datab => \mottak_state.s_shift_in~q\,
	datac => mottak_shiftreg(9),
	datad => \mottak_state~14_combout\,
	combout => \mottak_state~16_combout\);

-- Location: LCCOMB_X83_Y32_N30
\mottak_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_state~17_combout\ = (\reset_synchronizer_inst|rst_clk_n~q\ & ((\mottak_state.s_error~q\) # (\mottak_state~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synchronizer_inst|rst_clk_n~q\,
	datac => \mottak_state.s_error~q\,
	datad => \mottak_state~16_combout\,
	combout => \mottak_state~17_combout\);

-- Location: FF_X83_Y32_N31
\mottak_state.s_error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottak_state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mottak_state.s_error~q\);

-- Location: LCCOMB_X83_Y32_N22
\data_inn_qqq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_inn_qqq~0_combout\ = (\data_inn_qq~q\ & \reset_synchronizer_inst|rst_clk_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_inn_qq~q\,
	datad => \reset_synchronizer_inst|rst_clk_n~q\,
	combout => \data_inn_qqq~0_combout\);

-- Location: FF_X83_Y32_N23
data_inn_qqq : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_inn_qqq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_inn_qqq~q\);

-- Location: LCCOMB_X83_Y32_N14
\start_teller~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \start_teller~1_combout\ = (\mottak_state.s_wait_for_sender~q\ & (\data_inn_qqq~q\ & !\data_inn_qq~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mottak_state.s_wait_for_sender~q\,
	datac => \data_inn_qqq~q\,
	datad => \data_inn_qq~q\,
	combout => \start_teller~1_combout\);

-- Location: FF_X83_Y32_N15
start_teller : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \start_teller~1_combout\,
	sclr => \reset_synchronizer_inst|ALT_INV_rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_teller~q\);

-- Location: LCCOMB_X83_Y32_N6
\mottak_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_state~12_combout\ = (!\mottak_state.s_error~q\ & (!\SW[17]~input_o\ & ((\start_teller~q\) # (!\mottak_state.s_wait_for_sender~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mottak_state.s_error~q\,
	datab => \SW[17]~input_o\,
	datac => \start_teller~q\,
	datad => \mottak_state.s_wait_for_sender~q\,
	combout => \mottak_state~12_combout\);

-- Location: LCCOMB_X84_Y32_N18
\mottak_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_state~13_combout\ = (\mottak_state~12_combout\ & ((\mottak_state.s_wait_for_sender~q\) # ((\mottak_state.s_idle~q\) # (\data_inn_qq~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mottak_state.s_wait_for_sender~q\,
	datab => \mottak_state~12_combout\,
	datac => \mottak_state.s_idle~q\,
	datad => \data_inn_qq~q\,
	combout => \mottak_state~13_combout\);

-- Location: LCCOMB_X84_Y32_N20
\mottak_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_state~14_combout\ = (\reset_synchronizer_inst|rst_clk_n~q\ & (((!mottak_shiftreg(0) & \mottak_state.s_shift_in~q\)) # (!\mottak_state~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mottak_shiftreg(0),
	datab => \mottak_state.s_shift_in~q\,
	datac => \reset_synchronizer_inst|rst_clk_n~q\,
	datad => \mottak_state~13_combout\,
	combout => \mottak_state~14_combout\);

-- Location: LCCOMB_X84_Y32_N24
\mottak_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_state~11_combout\ = (\reset_synchronizer_inst|rst_clk_n~q\ & ((mottak_shiftreg(9)) # (!mottak_shiftreg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synchronizer_inst|rst_clk_n~q\,
	datac => mottak_shiftreg(9),
	datad => mottak_shiftreg(0),
	combout => \mottak_state~11_combout\);

-- Location: LCCOMB_X83_Y32_N18
\mottak_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_state~15_combout\ = (\mottak_state~14_combout\ & (((\mottak_state.s_offload~q\)))) # (!\mottak_state~14_combout\ & (\mottak_state.s_shift_in~q\ & ((\mottak_state~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mottak_state~14_combout\,
	datab => \mottak_state.s_shift_in~q\,
	datac => \mottak_state.s_offload~q\,
	datad => \mottak_state~11_combout\,
	combout => \mottak_state~15_combout\);

-- Location: FF_X83_Y32_N19
\mottak_state.s_offload\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottak_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mottak_state.s_offload~q\);

-- Location: LCCOMB_X84_Y32_N14
\mottak_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_state~18_combout\ = (\reset_synchronizer_inst|rst_clk_n~q\ & !\mottak_state.s_offload~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_synchronizer_inst|rst_clk_n~q\,
	datad => \mottak_state.s_offload~q\,
	combout => \mottak_state~18_combout\);

-- Location: LCCOMB_X84_Y32_N2
\mottak_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_state~19_combout\ = ((\mottak_state~12_combout\ & ((\mottak_state.s_idle~q\) # (\data_inn_qq~q\)))) # (!\reset_synchronizer_inst|rst_clk_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_synchronizer_inst|rst_clk_n~q\,
	datab => \mottak_state.s_idle~q\,
	datac => \mottak_state~12_combout\,
	datad => \data_inn_qq~q\,
	combout => \mottak_state~19_combout\);

-- Location: FF_X84_Y32_N15
\mottak_state.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottak_state~18_combout\,
	ena => \mottak_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mottak_state.s_idle~q\);

-- Location: LCCOMB_X83_Y32_N12
\mottak_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_state~21_combout\ = ((!\data_inn_qq~q\ & !\mottak_state.s_idle~q\)) # (!\mottak_state~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_inn_qq~q\,
	datac => \mottak_state.s_idle~q\,
	datad => \mottak_state~12_combout\,
	combout => \mottak_state~21_combout\);

-- Location: LCCOMB_X83_Y32_N20
\mottak_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_state~22_combout\ = (\mottak_state~21_combout\ & (((\mottak_state.s_wait_for_sender~q\)))) # (!\mottak_state~21_combout\ & (!\mottak_state.s_shift_in~q\ & (!\mottak_state.s_wait_for_sender~q\ & !\mottak_state.s_offload~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mottak_state~21_combout\,
	datab => \mottak_state.s_shift_in~q\,
	datac => \mottak_state.s_wait_for_sender~q\,
	datad => \mottak_state.s_offload~q\,
	combout => \mottak_state~22_combout\);

-- Location: FF_X83_Y32_N21
\mottak_state.s_wait_for_sender\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottak_state~22_combout\,
	sclr => \reset_synchronizer_inst|ALT_INV_rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mottak_state.s_wait_for_sender~q\);

-- Location: LCCOMB_X84_Y32_N0
\mottak_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_state~20_combout\ = (\mottak_state.s_shift_in~q\ & (!mottak_shiftreg(0))) # (!\mottak_state.s_shift_in~q\ & (((\mottak_state.s_wait_for_sender~q\ & !\mottak_state.s_offload~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mottak_shiftreg(0),
	datab => \mottak_state.s_wait_for_sender~q\,
	datac => \mottak_state.s_shift_in~q\,
	datad => \mottak_state.s_offload~q\,
	combout => \mottak_state~20_combout\);

-- Location: FF_X84_Y32_N1
\mottak_state.s_shift_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottak_state~20_combout\,
	sclr => \reset_synchronizer_inst|ALT_INV_rst_clk_n~q\,
	ena => \mottak_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mottak_state.s_shift_in~q\);

-- Location: LCCOMB_X84_Y32_N8
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (mottak_shiftreg(0) & ((\mottak_state.s_shift_in~q\) # (\mottak_state.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mottak_shiftreg(0),
	datab => \mottak_state.s_shift_in~q\,
	datac => \mottak_state.s_idle~q\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X87_Y29_N6
\baudrate_gen_inst|teller[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[0]~28_combout\ = \baudrate_gen_inst|teller\(0) $ (VCC)
-- \baudrate_gen_inst|teller[0]~29\ = CARRY(\baudrate_gen_inst|teller\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(0),
	datad => VCC,
	combout => \baudrate_gen_inst|teller[0]~28_combout\,
	cout => \baudrate_gen_inst|teller[0]~29\);

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

-- Location: LCCOMB_X94_Y25_N26
\baudrate_gen_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Mux0~0_combout\ = (\SW[15]~input_o\ & (\SW[14]~input_o\ & \SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baudrate_gen_inst|Mux0~0_combout\);

-- Location: LCCOMB_X94_Y25_N28
\baudrate_gen_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Mux1~0_combout\ = ((!\SW[15]~input_o\ & !\SW[14]~input_o\)) # (!\SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baudrate_gen_inst|Mux1~0_combout\);

-- Location: LCCOMB_X92_Y28_N24
\baudrate_gen_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Mux2~0_combout\ = (\SW[14]~input_o\ & (!\SW[16]~input_o\ & \SW[15]~input_o\)) # (!\SW[14]~input_o\ & (\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	combout => \baudrate_gen_inst|Mux2~0_combout\);

-- Location: LCCOMB_X94_Y25_N2
\baudrate_gen_inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Mux5~0_combout\ = (!\SW[15]~input_o\ & (!\SW[14]~input_o\ & !\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baudrate_gen_inst|Mux5~0_combout\);

-- Location: LCCOMB_X91_Y30_N6
\baudrate_gen_inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Mux6~0_combout\ = (!\SW[16]~input_o\ & (!\SW[14]~input_o\ & \SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	combout => \baudrate_gen_inst|Mux6~0_combout\);

-- Location: LCCOMB_X92_Y28_N28
\baudrate_gen_inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Mux7~0_combout\ = ((\SW[16]~input_o\ & \SW[15]~input_o\)) # (!\SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	combout => \baudrate_gen_inst|Mux7~0_combout\);

-- Location: LCCOMB_X94_Y25_N30
\baudrate_gen_inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Mux3~1_combout\ = (!\SW[15]~input_o\ & !\SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baudrate_gen_inst|Mux3~1_combout\);

-- Location: LCCOMB_X92_Y28_N20
\baudrate_gen_inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Mux9~0_combout\ = \SW[16]~input_o\ $ (((\SW[14]~input_o\) # (\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	combout => \baudrate_gen_inst|Mux9~0_combout\);

-- Location: LCCOMB_X92_Y28_N6
\baudrate_gen_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Mux3~0_combout\ = (\SW[14]~input_o\ & (\SW[16]~input_o\ & \SW[15]~input_o\)) # (!\SW[14]~input_o\ & ((\SW[16]~input_o\) # (\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	combout => \baudrate_gen_inst|Mux3~0_combout\);

-- Location: LCCOMB_X92_Y28_N8
\baudrate_gen_inst|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Mux11~0_combout\ = (\SW[14]~input_o\ & ((\SW[15]~input_o\))) # (!\SW[14]~input_o\ & (!\SW[16]~input_o\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	combout => \baudrate_gen_inst|Mux11~0_combout\);

-- Location: LCCOMB_X94_Y25_N0
\baudrate_gen_inst|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Mux12~0_combout\ = (\SW[15]~input_o\ & (\SW[14]~input_o\ & !\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baudrate_gen_inst|Mux12~0_combout\);

-- Location: LCCOMB_X95_Y24_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\ = \baudrate_gen_inst|Mux12~0_combout\ $ (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\ = CARRY(!\baudrate_gen_inst|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\);

-- Location: LCCOMB_X95_Y24_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2_combout\ = (\baudrate_gen_inst|Mux11~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\)) # 
-- (!\baudrate_gen_inst|Mux11~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\ & VCC))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\ = CARRY((\baudrate_gen_inst|Mux11~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Mux11~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~1\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\);

-- Location: LCCOMB_X95_Y24_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\ = (\baudrate_gen_inst|Mux3~0_combout\ & ((GND) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\))) # 
-- (!\baudrate_gen_inst|Mux3~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\ $ (GND)))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Mux3~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~3\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\);

-- Location: LCCOMB_X95_Y24_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\ = (\baudrate_gen_inst|Mux9~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\)) # 
-- (!\baudrate_gen_inst|Mux9~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\ & VCC))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\ = CARRY((\baudrate_gen_inst|Mux9~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Mux9~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~5\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\);

-- Location: LCCOMB_X92_Y28_N2
\baudrate_gen_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Mux4~0_combout\ = (\SW[15]~input_o\) # ((!\SW[14]~input_o\ & !\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	combout => \baudrate_gen_inst|Mux4~0_combout\);

-- Location: LCCOMB_X95_Y24_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8_combout\ = (\baudrate_gen_inst|Mux4~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\ $ (GND))) # 
-- (!\baudrate_gen_inst|Mux4~0_combout\ & ((GND) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\)))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\ = CARRY((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\) # (!\baudrate_gen_inst|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Mux4~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~7\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\);

-- Location: LCCOMB_X95_Y24_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\ = (\baudrate_gen_inst|Mux7~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\ & VCC)) # 
-- (!\baudrate_gen_inst|Mux7~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\ = CARRY((!\baudrate_gen_inst|Mux7~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Mux7~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~9\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\);

-- Location: LCCOMB_X95_Y24_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\ = (\baudrate_gen_inst|Mux6~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\ & VCC)) # 
-- (!\baudrate_gen_inst|Mux6~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\ $ (GND)))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\ = CARRY((!\baudrate_gen_inst|Mux6~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Mux6~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~11\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\);

-- Location: LCCOMB_X95_Y24_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14_combout\ = (\baudrate_gen_inst|Mux5~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\)) # 
-- (!\baudrate_gen_inst|Mux5~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\ & VCC))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~15\ = CARRY((\baudrate_gen_inst|Mux5~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux5~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~13\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~15\);

-- Location: LCCOMB_X95_Y24_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\ = \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~15\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\);

-- Location: LCCOMB_X91_Y24_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~29_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\) # 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # (!\baudrate_gen_inst|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~6_combout\,
	datac => \baudrate_gen_inst|Mux5~0_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~29_combout\);

-- Location: LCCOMB_X95_Y24_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~30_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\)) # (!\baudrate_gen_inst|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux5~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~4_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~30_combout\);

-- Location: LCCOMB_X95_Y24_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~31_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2_combout\) # 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # (!\baudrate_gen_inst|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~2_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datad => \baudrate_gen_inst|Mux5~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~31_combout\);

-- Location: LCCOMB_X95_Y24_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[257]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[257]~32_combout\ = (\baudrate_gen_inst|Mux5~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\ & 
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux5~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[257]~32_combout\);

-- Location: LCCOMB_X91_Y24_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~18_combout\ = !\baudrate_gen_inst|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baudrate_gen_inst|Mux12~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~18_combout\);

-- Location: LCCOMB_X91_Y24_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[256]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(256) = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~18_combout\) # 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # (!\baudrate_gen_inst|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~18_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datac => \baudrate_gen_inst|Mux5~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(256));

-- Location: LCCOMB_X94_Y24_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\ = CARRY(!\baudrate_gen_inst|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\);

-- Location: LCCOMB_X94_Y24_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(256) & ((\baudrate_gen_inst|Mux12~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\)) # (!\baudrate_gen_inst|Mux12~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(256) & ((\baudrate_gen_inst|Mux12~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\) # (GND))) # (!\baudrate_gen_inst|Mux12~0_combout\ 
-- & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(256) & (\baudrate_gen_inst|Mux12~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(256) & ((\baudrate_gen_inst|Mux12~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(256),
	datab => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~1_cout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\);

-- Location: LCCOMB_X94_Y24_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\ = ((\baudrate_gen_inst|Mux11~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[257]~32_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\ = CARRY((\baudrate_gen_inst|Mux11~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[257]~32_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\)) # (!\baudrate_gen_inst|Mux11~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[257]~32_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux11~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[257]~32_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~3\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\);

-- Location: LCCOMB_X94_Y24_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~31_combout\ & ((\baudrate_gen_inst|Mux3~0_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\ & VCC)) # (!\baudrate_gen_inst|Mux3~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~31_combout\ & ((\baudrate_gen_inst|Mux3~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\)) # (!\baudrate_gen_inst|Mux3~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~31_combout\ & (!\baudrate_gen_inst|Mux3~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~31_combout\ & 
-- ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\) # (!\baudrate_gen_inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~31_combout\,
	datab => \baudrate_gen_inst|Mux3~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~5\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\);

-- Location: LCCOMB_X94_Y24_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~30_combout\ $ (\baudrate_gen_inst|Mux9~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~30_combout\ & 
-- ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\) # (!\baudrate_gen_inst|Mux9~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~30_combout\ & (!\baudrate_gen_inst|Mux9~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~30_combout\,
	datab => \baudrate_gen_inst|Mux9~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~7\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\);

-- Location: LCCOMB_X94_Y24_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~29_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~29_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\) # (GND))) # 
-- (!\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~29_combout\ & (\baudrate_gen_inst|Mux4~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~29_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~29_combout\,
	datab => \baudrate_gen_inst|Mux4~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~9\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\);

-- Location: LCCOMB_X95_Y24_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~33_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14_combout\)) # (!\baudrate_gen_inst|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux5~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~14_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~33_combout\);

-- Location: LCCOMB_X95_Y24_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~26_combout\ = (\baudrate_gen_inst|Mux5~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\ & 
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux5~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~12_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~26_combout\);

-- Location: LCCOMB_X95_Y24_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~27_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\)) # (!\baudrate_gen_inst|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux5~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~10_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~27_combout\);

-- Location: LCCOMB_X95_Y24_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~28_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8_combout\) # 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\) # (!\baudrate_gen_inst|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~8_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datad => \baudrate_gen_inst|Mux5~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~28_combout\);

-- Location: LCCOMB_X94_Y24_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\ = ((\baudrate_gen_inst|Mux7~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~28_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\ = CARRY((\baudrate_gen_inst|Mux7~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~28_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\))) # (!\baudrate_gen_inst|Mux7~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~28_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux7~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~28_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~11\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\);

-- Location: LCCOMB_X94_Y24_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\ = (\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~27_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~27_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\) # (GND))))) # (!\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~27_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~27_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\ = CARRY((\baudrate_gen_inst|Mux6~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~27_combout\))) # (!\baudrate_gen_inst|Mux6~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~27_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux6~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~27_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~13\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\);

-- Location: LCCOMB_X94_Y24_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~26_combout\ $ (\baudrate_gen_inst|Mux5~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~26_combout\ & 
-- ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\) # (!\baudrate_gen_inst|Mux5~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~26_combout\ & (!\baudrate_gen_inst|Mux5~0_combout\ 
-- & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~26_combout\,
	datab => \baudrate_gen_inst|Mux5~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~15\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\);

-- Location: LCCOMB_X94_Y24_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~33_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\ & VCC)) # (!\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~33_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~33_combout\ & (!\baudrate_gen_inst|Mux4~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~33_combout\ & 
-- ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\) # (!\baudrate_gen_inst|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~33_combout\,
	datab => \baudrate_gen_inst|Mux4~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~17\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\);

-- Location: LCCOMB_X94_Y24_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ = \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~19\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\);

-- Location: LCCOMB_X91_Y24_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~37_combout\ = (\baudrate_gen_inst|Mux3~1_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~29_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\)))) # (!\baudrate_gen_inst|Mux3~1_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~1_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~10_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~29_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~37_combout\);

-- Location: LCCOMB_X94_Y24_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~38_combout\ = (\baudrate_gen_inst|Mux3~1_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~30_combout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\))))) # (!\baudrate_gen_inst|Mux3~1_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~30_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~8_combout\,
	datac => \baudrate_gen_inst|Mux3~1_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~38_combout\);

-- Location: LCCOMB_X94_Y24_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~39_combout\ = (\baudrate_gen_inst|Mux3~1_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~31_combout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\))))) # (!\baudrate_gen_inst|Mux3~1_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~31_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~6_combout\,
	datac => \baudrate_gen_inst|Mux3~1_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~39_combout\);

-- Location: LCCOMB_X94_Y24_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~40_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[257]~32_combout\)))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baudrate_gen_inst|Mux3~1_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\)) # (!\baudrate_gen_inst|Mux3~1_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[257]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~4_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \baudrate_gen_inst|Mux3~1_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[257]~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~40_combout\);

-- Location: LCCOMB_X91_Y24_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~41_combout\ = (\baudrate_gen_inst|Mux3~1_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(256)))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\)))) # (!\baudrate_gen_inst|Mux3~1_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(256)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~1_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~2_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(256),
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~41_combout\);

-- Location: LCCOMB_X92_Y24_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~0_combout\ = \baudrate_gen_inst|Mux12~0_combout\ $ (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~1\ = CARRY(!\baudrate_gen_inst|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X92_Y24_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~2_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~41_combout\ & ((\baudrate_gen_inst|Mux11~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~1\)) # (!\baudrate_gen_inst|Mux11~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~1\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~41_combout\ & ((\baudrate_gen_inst|Mux11~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~1\) # (GND))) # (!\baudrate_gen_inst|Mux11~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~1\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~3\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~41_combout\ & (\baudrate_gen_inst|Mux11~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~1\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~41_combout\ & ((\baudrate_gen_inst|Mux11~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~41_combout\,
	datab => \baudrate_gen_inst|Mux11~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~1\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X92_Y24_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~4_combout\ = ((\baudrate_gen_inst|Mux3~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~40_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~3\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~5\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~40_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~3\))) # (!\baudrate_gen_inst|Mux3~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~40_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~40_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~3\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X92_Y24_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~6_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~39_combout\ & ((\baudrate_gen_inst|Mux9~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~5\)) # (!\baudrate_gen_inst|Mux9~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~5\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~39_combout\ & ((\baudrate_gen_inst|Mux9~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~5\) # (GND))) # (!\baudrate_gen_inst|Mux9~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~5\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~7\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~39_combout\ & (\baudrate_gen_inst|Mux9~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~5\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~39_combout\ & ((\baudrate_gen_inst|Mux9~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~39_combout\,
	datab => \baudrate_gen_inst|Mux9~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~5\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~6_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X92_Y24_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~8_combout\ = ((\baudrate_gen_inst|Mux4~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~38_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~7\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~9\ = CARRY((\baudrate_gen_inst|Mux4~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~38_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~7\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~38_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux4~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~38_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~7\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~8_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X92_Y24_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~10_combout\ = (\baudrate_gen_inst|Mux7~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~37_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~9\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~37_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~9\)))) # 
-- (!\baudrate_gen_inst|Mux7~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~37_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~9\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~37_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~9\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~11\ = CARRY((\baudrate_gen_inst|Mux7~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~37_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~9\)) # (!\baudrate_gen_inst|Mux7~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~9\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux7~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~37_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~9\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~10_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~11\);

-- Location: LCCOMB_X94_Y24_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~42_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~33_combout\)))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baudrate_gen_inst|Mux3~1_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\)) # (!\baudrate_gen_inst|Mux3~1_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~18_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \baudrate_gen_inst|Mux3~1_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~33_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~42_combout\);

-- Location: LCCOMB_X91_Y24_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~34_combout\ = (\baudrate_gen_inst|Mux3~1_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~26_combout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\))))) # (!\baudrate_gen_inst|Mux3~1_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~1_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~26_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~16_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~34_combout\);

-- Location: LCCOMB_X91_Y24_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~35_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~27_combout\)))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & ((\baudrate_gen_inst|Mux3~1_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\)) # (!\baudrate_gen_inst|Mux3~1_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~14_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~27_combout\,
	datad => \baudrate_gen_inst|Mux3~1_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~35_combout\);

-- Location: LCCOMB_X94_Y24_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~36_combout\ = (\baudrate_gen_inst|Mux3~1_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~28_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\)))) # (!\baudrate_gen_inst|Mux3~1_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~12_combout\,
	datab => \baudrate_gen_inst|Mux3~1_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~28_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~36_combout\);

-- Location: LCCOMB_X92_Y24_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~12_combout\ = ((\baudrate_gen_inst|Mux6~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~36_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~11\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~13\ = CARRY((\baudrate_gen_inst|Mux6~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~36_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~11\)) # (!\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~36_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux6~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~36_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~11\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~12_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~13\);

-- Location: LCCOMB_X92_Y24_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~14_combout\ = (\baudrate_gen_inst|Mux5~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~35_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~13\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~35_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~13\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux5~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~35_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~13\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~35_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~13\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~15\ = CARRY((\baudrate_gen_inst|Mux5~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~13\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~35_combout\))) # (!\baudrate_gen_inst|Mux5~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~35_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux5~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~35_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~13\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~14_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~15\);

-- Location: LCCOMB_X92_Y24_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~16_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~34_combout\ $ (\baudrate_gen_inst|Mux4~0_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~15\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~17\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~34_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~15\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~34_combout\ & (\baudrate_gen_inst|Mux4~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~34_combout\,
	datab => \baudrate_gen_inst|Mux4~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~15\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~16_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~17\);

-- Location: LCCOMB_X92_Y24_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~18_combout\ = (\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~42_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~17\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~42_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~17\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~42_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~17\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~42_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~17\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~19\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~17\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~42_combout\))) # (!\baudrate_gen_inst|Mux3~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~42_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~42_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~17\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~18_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~19\);

-- Location: LCCOMB_X92_Y24_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~20_combout\ = \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~19\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~20_combout\);

-- Location: LCCOMB_X92_Y28_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ = (\SW[16]~input_o\) # ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~20_combout\) # ((\SW[15]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~20_combout\,
	datad => \SW[14]~input_o\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\);

-- Location: LCCOMB_X92_Y24_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[304]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[304]~46_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~37_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~37_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[304]~46_combout\);

-- Location: LCCOMB_X92_Y24_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[303]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[303]~47_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~38_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~38_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~8_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[303]~47_combout\);

-- Location: LCCOMB_X92_Y24_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~48_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~39_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~6_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~39_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~48_combout\);

-- Location: LCCOMB_X91_Y24_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~49_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~40_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~4_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~40_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~49_combout\);

-- Location: LCCOMB_X91_Y24_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~50_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~41_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~41_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~2_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~50_combout\);

-- Location: LCCOMB_X92_Y25_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~51_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~0_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~51_combout\);

-- Location: LCCOMB_X92_Y25_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~22_combout\ = !\baudrate_gen_inst|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baudrate_gen_inst|Mux12~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~22_combout\);

-- Location: LCCOMB_X92_Y25_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(298) = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~22_combout\) # (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~22_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(298));

-- Location: LCCOMB_X91_Y25_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~0_combout\ = (\baudrate_gen_inst|Mux12~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(298) $ (VCC))) # (!\baudrate_gen_inst|Mux12~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(298)) # (GND)))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~1\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(298)) # (!\baudrate_gen_inst|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux12~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(298),
	datad => VCC,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X91_Y25_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~2_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~51_combout\ & ((\baudrate_gen_inst|Mux11~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~1\)) # (!\baudrate_gen_inst|Mux11~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~1\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~51_combout\ & ((\baudrate_gen_inst|Mux11~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~1\) # (GND))) # (!\baudrate_gen_inst|Mux11~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~1\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~3\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~51_combout\ & (\baudrate_gen_inst|Mux11~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~1\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~51_combout\ & ((\baudrate_gen_inst|Mux11~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~51_combout\,
	datab => \baudrate_gen_inst|Mux11~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~1\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X91_Y25_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~4_combout\ = ((\baudrate_gen_inst|Mux3~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~50_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~3\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~5\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~50_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~3\))) # (!\baudrate_gen_inst|Mux3~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~50_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~50_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~3\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X91_Y25_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~6_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~49_combout\ & ((\baudrate_gen_inst|Mux9~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~5\)) # (!\baudrate_gen_inst|Mux9~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~5\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~49_combout\ & ((\baudrate_gen_inst|Mux9~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~5\) # (GND))) # (!\baudrate_gen_inst|Mux9~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~5\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~7\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~49_combout\ & (\baudrate_gen_inst|Mux9~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~5\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~49_combout\ & ((\baudrate_gen_inst|Mux9~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~49_combout\,
	datab => \baudrate_gen_inst|Mux9~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~5\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X91_Y25_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~8_combout\ = ((\baudrate_gen_inst|Mux4~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~48_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~7\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~9\ = CARRY((\baudrate_gen_inst|Mux4~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~48_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~7\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~48_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux4~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~48_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~7\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~8_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X91_Y25_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~10_combout\ = (\baudrate_gen_inst|Mux7~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[303]~47_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~9\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[303]~47_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~9\)))) # 
-- (!\baudrate_gen_inst|Mux7~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[303]~47_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~9\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[303]~47_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~9\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~11\ = CARRY((\baudrate_gen_inst|Mux7~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[303]~47_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~9\)) # (!\baudrate_gen_inst|Mux7~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~9\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[303]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux7~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[303]~47_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~9\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~10_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X91_Y25_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~12_combout\ = ((\baudrate_gen_inst|Mux6~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[304]~46_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~11\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~13\ = CARRY((\baudrate_gen_inst|Mux6~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[304]~46_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~11\)) # (!\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[304]~46_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux6~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[304]~46_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~11\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~12_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~13\);

-- Location: LCCOMB_X92_Y24_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~52_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~42_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~42_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~18_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~52_combout\);

-- Location: LCCOMB_X91_Y24_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~43_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~34_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~34_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~16_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~43_combout\);

-- Location: LCCOMB_X91_Y24_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~44_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~35_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~14_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~35_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~44_combout\);

-- Location: LCCOMB_X92_Y24_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[305]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[305]~45_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~36_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~12_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~36_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[305]~45_combout\);

-- Location: LCCOMB_X91_Y25_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~14_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[305]~45_combout\ & ((\baudrate_gen_inst|Mux5~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~13\)) # (!\baudrate_gen_inst|Mux5~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~13\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[305]~45_combout\ & ((\baudrate_gen_inst|Mux5~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~13\) # (GND))) # (!\baudrate_gen_inst|Mux5~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~13\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~15\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[305]~45_combout\ & (\baudrate_gen_inst|Mux5~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~13\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[305]~45_combout\ & ((\baudrate_gen_inst|Mux5~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[305]~45_combout\,
	datab => \baudrate_gen_inst|Mux5~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~13\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~14_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~15\);

-- Location: LCCOMB_X91_Y25_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~16_combout\ = ((\baudrate_gen_inst|Mux4~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~44_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~15\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~17\ = CARRY((\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~44_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~15\))) # (!\baudrate_gen_inst|Mux4~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~44_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux4~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~44_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~15\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~16_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~17\);

-- Location: LCCOMB_X91_Y25_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~18_combout\ = (\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~43_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~17\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~43_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~17\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~43_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~17\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~43_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~17\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~19\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~17\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~43_combout\))) # (!\baudrate_gen_inst|Mux3~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~43_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~43_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~17\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~18_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~19\);

-- Location: LCCOMB_X91_Y25_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~20_combout\ = ((\baudrate_gen_inst|Mux2~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~52_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~19\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~21\ = CARRY((\baudrate_gen_inst|Mux2~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~52_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~19\)) # (!\baudrate_gen_inst|Mux2~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~52_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux2~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~52_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~19\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~20_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~21\);

-- Location: LCCOMB_X91_Y25_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~22_combout\ = !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~21\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~22_combout\);

-- Location: LCCOMB_X94_Y25_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[405]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~22_combout\) # ((\SW[16]~input_o\ & ((\SW[14]~input_o\) # (\SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datad => \SW[16]~input_o\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405));

-- Location: LCCOMB_X92_Y25_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~56_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[304]~46_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405),
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[304]~46_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~56_combout\);

-- Location: LCCOMB_X92_Y25_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~57_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[303]~47_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[303]~47_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~10_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405),
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~57_combout\);

-- Location: LCCOMB_X92_Y25_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~58_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~48_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~8_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405),
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~48_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~58_combout\);

-- Location: LCCOMB_X92_Y25_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~59_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~49_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~6_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405),
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~49_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~59_combout\);

-- Location: LCCOMB_X91_Y25_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~60_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~50_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~4_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~50_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405),
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~60_combout\);

-- Location: LCCOMB_X92_Y25_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[321]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\)))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~2_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405),
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\);

-- Location: LCCOMB_X92_Y25_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[320]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~22_combout\) # 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\)))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_5~22_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405),
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\);

-- Location: LCCOMB_X94_Y25_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~24_combout\ = !\baudrate_gen_inst|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \baudrate_gen_inst|Mux12~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~24_combout\);

-- Location: LCCOMB_X94_Y25_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[319]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(319) = (\baudrate_gen_inst|Mux0~0_combout\) # ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~24_combout\) # 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~22_combout\) # (!\baudrate_gen_inst|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~24_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datad => \baudrate_gen_inst|Mux1~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(319));

-- Location: LCCOMB_X95_Y25_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~0_combout\ = (\baudrate_gen_inst|Mux12~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(319) $ (VCC))) # (!\baudrate_gen_inst|Mux12~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(319)) # (GND)))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~1\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(319)) # (!\baudrate_gen_inst|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux12~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(319),
	datad => VCC,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~0_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X95_Y25_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~2_combout\ = (\baudrate_gen_inst|Mux11~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~1\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~1\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux11~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~1\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~1\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~3\ = CARRY((\baudrate_gen_inst|Mux11~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~1\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\))) # (!\baudrate_gen_inst|Mux11~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux11~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~1\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X95_Y25_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~4_combout\ = ((\baudrate_gen_inst|Mux3~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~3\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~5\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~3\))) # (!\baudrate_gen_inst|Mux3~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~3\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X95_Y25_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~6_combout\ = (\baudrate_gen_inst|Mux9~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~60_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~5\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~60_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~5\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux9~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~60_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~5\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~60_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~5\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~7\ = CARRY((\baudrate_gen_inst|Mux9~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~5\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~60_combout\))) # (!\baudrate_gen_inst|Mux9~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~60_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux9~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~60_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~5\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~6_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X95_Y25_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~8_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~59_combout\ $ (\baudrate_gen_inst|Mux4~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~7\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~9\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~59_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~7\) # 
-- (!\baudrate_gen_inst|Mux4~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~59_combout\ & (!\baudrate_gen_inst|Mux4~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~59_combout\,
	datab => \baudrate_gen_inst|Mux4~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~7\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~8_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X95_Y25_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~10_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~58_combout\ & ((\baudrate_gen_inst|Mux7~0_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~9\ & VCC)) # (!\baudrate_gen_inst|Mux7~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~9\)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~58_combout\ & ((\baudrate_gen_inst|Mux7~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~9\)) # (!\baudrate_gen_inst|Mux7~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~9\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~11\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~58_combout\ & (!\baudrate_gen_inst|Mux7~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~9\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~58_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~9\) # 
-- (!\baudrate_gen_inst|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~58_combout\,
	datab => \baudrate_gen_inst|Mux7~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~9\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~10_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X95_Y25_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~12_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~57_combout\ $ (\baudrate_gen_inst|Mux6~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~11\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~13\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~57_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~11\) # 
-- (!\baudrate_gen_inst|Mux6~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~57_combout\ & (!\baudrate_gen_inst|Mux6~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~57_combout\,
	datab => \baudrate_gen_inst|Mux6~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~11\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~12_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~13\);

-- Location: LCCOMB_X95_Y25_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~14_combout\ = (\baudrate_gen_inst|Mux5~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~56_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~13\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~56_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~13\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux5~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~56_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~13\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~56_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~13\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~15\ = CARRY((\baudrate_gen_inst|Mux5~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~13\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~56_combout\))) # (!\baudrate_gen_inst|Mux5~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~56_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux5~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~56_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~13\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~14_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~15\);

-- Location: LCCOMB_X91_Y25_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~61_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~52_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~20_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~52_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405),
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~61_combout\);

-- Location: LCCOMB_X91_Y25_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~53_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~43_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~43_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~18_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405),
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~53_combout\);

-- Location: LCCOMB_X91_Y25_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~54_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~44_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405),
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~16_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~44_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~54_combout\);

-- Location: LCCOMB_X92_Y25_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~55_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[305]~45_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_6~14_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405),
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[305]~45_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~55_combout\);

-- Location: LCCOMB_X95_Y25_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~16_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~55_combout\ $ (\baudrate_gen_inst|Mux4~0_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~15\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~17\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~55_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~15\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~55_combout\ & (\baudrate_gen_inst|Mux4~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~55_combout\,
	datab => \baudrate_gen_inst|Mux4~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~15\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~16_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~17\);

-- Location: LCCOMB_X95_Y25_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~18_combout\ = (\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~54_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~17\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~54_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~17\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~54_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~17\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~54_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~17\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~19\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~17\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~54_combout\))) # (!\baudrate_gen_inst|Mux3~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~54_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~54_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~17\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~18_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~19\);

-- Location: LCCOMB_X95_Y25_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~20_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~53_combout\ $ (\baudrate_gen_inst|Mux2~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~19\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~21\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~53_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~19\) # 
-- (!\baudrate_gen_inst|Mux2~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~53_combout\ & (!\baudrate_gen_inst|Mux2~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~53_combout\,
	datab => \baudrate_gen_inst|Mux2~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~19\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~20_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~21\);

-- Location: LCCOMB_X95_Y25_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~22_combout\ = (\baudrate_gen_inst|Mux1~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~61_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~21\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~61_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~21\)))) # 
-- (!\baudrate_gen_inst|Mux1~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~61_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~21\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~61_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~21\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~23\ = CARRY((\baudrate_gen_inst|Mux1~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~61_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~21\)) # (!\baudrate_gen_inst|Mux1~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~21\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux1~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~61_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~21\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~22_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~23\);

-- Location: LCCOMB_X95_Y25_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ = \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~23\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\);

-- Location: LCCOMB_X94_Y25_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~65_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~56_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~56_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~14_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~56_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~65_combout\);

-- Location: LCCOMB_X95_Y25_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[352]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[352]~73_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~61_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~61_combout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~61_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~22_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[352]~73_combout\);

-- Location: LCCOMB_X95_Y25_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[351]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[351]~62_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~53_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~53_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~20_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~53_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[351]~62_combout\);

-- Location: LCCOMB_X95_Y25_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~63_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~54_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~54_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~18_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~54_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~63_combout\);

-- Location: LCCOMB_X96_Y25_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~64_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~55_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~55_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~16_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~55_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~64_combout\);

-- Location: LCCOMB_X96_Y25_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~66_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~57_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~57_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~12_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~57_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~66_combout\);

-- Location: LCCOMB_X96_Y25_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~67_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~58_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~58_combout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~58_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~67_combout\);

-- Location: LCCOMB_X94_Y25_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~68_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~59_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~59_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~8_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~59_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~68_combout\);

-- Location: LCCOMB_X94_Y25_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~69_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~60_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~60_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~6_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~60_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~69_combout\);

-- Location: LCCOMB_X94_Y25_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~70_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~4_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[321]~192_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~70_combout\);

-- Location: LCCOMB_X94_Y25_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~71_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~2_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[320]~193_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~71_combout\);

-- Location: LCCOMB_X94_Y25_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~72_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(319))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(319))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(319),
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~72_combout\);

-- Location: LCCOMB_X94_Y26_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~26_combout\ = !\baudrate_gen_inst|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \baudrate_gen_inst|Mux12~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~26_combout\);

-- Location: LCCOMB_X94_Y25_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[340]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(340) = (\baudrate_gen_inst|Mux0~0_combout\) # ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\) # 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(340));

-- Location: LCCOMB_X95_Y27_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~0_combout\ = (\baudrate_gen_inst|Mux12~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(340) $ (VCC))) # (!\baudrate_gen_inst|Mux12~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(340)) # (GND)))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~1\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(340)) # (!\baudrate_gen_inst|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux12~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(340),
	datad => VCC,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~0_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X95_Y27_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~2_combout\ = (\baudrate_gen_inst|Mux11~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~72_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~1\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~72_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~1\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux11~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~72_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~1\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~72_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~1\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~3\ = CARRY((\baudrate_gen_inst|Mux11~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~1\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~72_combout\))) # (!\baudrate_gen_inst|Mux11~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~72_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux11~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~72_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~1\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X95_Y27_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~4_combout\ = ((\baudrate_gen_inst|Mux3~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~71_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~3\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~5\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~71_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~3\))) # (!\baudrate_gen_inst|Mux3~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~71_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~71_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~3\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X95_Y27_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~6_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~70_combout\ & ((\baudrate_gen_inst|Mux9~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~5\)) # (!\baudrate_gen_inst|Mux9~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~5\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~70_combout\ & ((\baudrate_gen_inst|Mux9~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~5\) # (GND))) # (!\baudrate_gen_inst|Mux9~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~5\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~7\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~70_combout\ & (\baudrate_gen_inst|Mux9~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~5\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~70_combout\ & ((\baudrate_gen_inst|Mux9~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~70_combout\,
	datab => \baudrate_gen_inst|Mux9~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~5\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~6_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X95_Y27_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~8_combout\ = ((\baudrate_gen_inst|Mux4~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~69_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~7\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~9\ = CARRY((\baudrate_gen_inst|Mux4~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~69_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~7\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~69_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux4~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~69_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~7\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~8_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X95_Y27_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~10_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~68_combout\ & ((\baudrate_gen_inst|Mux7~0_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~9\ & VCC)) # (!\baudrate_gen_inst|Mux7~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~9\)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~68_combout\ & ((\baudrate_gen_inst|Mux7~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~9\)) # (!\baudrate_gen_inst|Mux7~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~9\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~11\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~68_combout\ & (!\baudrate_gen_inst|Mux7~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~9\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~68_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~9\) # 
-- (!\baudrate_gen_inst|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~68_combout\,
	datab => \baudrate_gen_inst|Mux7~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~9\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~10_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~11\);

-- Location: LCCOMB_X95_Y27_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~12_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~67_combout\ $ (\baudrate_gen_inst|Mux6~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~11\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~13\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~67_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~11\) # 
-- (!\baudrate_gen_inst|Mux6~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~67_combout\ & (!\baudrate_gen_inst|Mux6~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~67_combout\,
	datab => \baudrate_gen_inst|Mux6~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~11\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~12_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~13\);

-- Location: LCCOMB_X95_Y27_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~14_combout\ = (\baudrate_gen_inst|Mux5~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~66_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~13\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~66_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~13\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux5~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~66_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~13\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~66_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~13\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~15\ = CARRY((\baudrate_gen_inst|Mux5~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~13\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~66_combout\))) # (!\baudrate_gen_inst|Mux5~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~66_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux5~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~66_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~13\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~14_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~15\);

-- Location: LCCOMB_X95_Y27_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~16_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~65_combout\ $ (\baudrate_gen_inst|Mux4~0_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~15\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~17\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~65_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~15\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~65_combout\ & (\baudrate_gen_inst|Mux4~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~65_combout\,
	datab => \baudrate_gen_inst|Mux4~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~15\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~16_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~17\);

-- Location: LCCOMB_X95_Y27_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~18_combout\ = (\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~64_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~17\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~64_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~17\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~64_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~17\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~64_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~17\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~19\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~17\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~64_combout\))) # (!\baudrate_gen_inst|Mux3~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~64_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~64_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~17\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~18_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~19\);

-- Location: LCCOMB_X95_Y27_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~20_combout\ = ((\baudrate_gen_inst|Mux2~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~63_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~19\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~21\ = CARRY((\baudrate_gen_inst|Mux2~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~63_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~19\)) # (!\baudrate_gen_inst|Mux2~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~63_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux2~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~63_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~19\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~20_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~21\);

-- Location: LCCOMB_X95_Y27_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~22_combout\ = (\baudrate_gen_inst|Mux1~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[351]~62_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~21\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[351]~62_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~21\)))) # 
-- (!\baudrate_gen_inst|Mux1~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[351]~62_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~21\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[351]~62_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~21\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~23\ = CARRY((\baudrate_gen_inst|Mux1~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[351]~62_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~21\)) # (!\baudrate_gen_inst|Mux1~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~21\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[351]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux1~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[351]~62_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~21\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~22_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~23\);

-- Location: LCCOMB_X95_Y27_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~24_combout\ = ((\baudrate_gen_inst|Mux0~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[352]~73_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~23\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~25\ = CARRY((\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[352]~73_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~23\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[352]~73_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[352]~73_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~23\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~24_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~25\);

-- Location: LCCOMB_X95_Y27_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ = !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~25\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\);

-- Location: LCCOMB_X95_Y27_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[370]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[370]~77_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~65_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~65_combout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~65_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~16_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[370]~77_combout\);

-- Location: LCCOMB_X96_Y27_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[374]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[374]~86_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[352]~73_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[352]~73_combout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[352]~73_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~24_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[374]~86_combout\);

-- Location: LCCOMB_X94_Y27_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[373]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[373]~74_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[351]~62_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[351]~62_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~22_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[351]~62_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[373]~74_combout\);

-- Location: LCCOMB_X96_Y27_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[372]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[372]~75_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~63_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~63_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~20_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~63_combout\,
	datac => \baudrate_gen_inst|Mux0~0_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[372]~75_combout\);

-- Location: LCCOMB_X96_Y27_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[371]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[371]~76_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~64_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~64_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~64_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~18_combout\,
	datad => \baudrate_gen_inst|Mux0~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[371]~76_combout\);

-- Location: LCCOMB_X96_Y27_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[369]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[369]~78_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~66_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~66_combout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~66_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~14_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[369]~78_combout\);

-- Location: LCCOMB_X96_Y27_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[368]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[368]~79_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~67_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~67_combout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~67_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~12_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[368]~79_combout\);

-- Location: LCCOMB_X95_Y27_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[367]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[367]~80_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~68_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~68_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~68_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baudrate_gen_inst|Mux0~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[367]~80_combout\);

-- Location: LCCOMB_X94_Y26_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[366]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[366]~81_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~69_combout\)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~69_combout\))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~8_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \baudrate_gen_inst|Mux0~0_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~69_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[366]~81_combout\);

-- Location: LCCOMB_X94_Y26_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[365]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[365]~82_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~70_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~70_combout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~70_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~6_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[365]~82_combout\);

-- Location: LCCOMB_X94_Y26_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[364]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[364]~83_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~71_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~71_combout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~71_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~4_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[364]~83_combout\);

-- Location: LCCOMB_X94_Y26_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[363]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[363]~84_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~72_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~72_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~72_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \baudrate_gen_inst|Mux0~0_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~2_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[363]~84_combout\);

-- Location: LCCOMB_X94_Y26_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[362]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[362]~85_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(340))))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(340)))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~0_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(340),
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[362]~85_combout\);

-- Location: LCCOMB_X94_Y26_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ = !\baudrate_gen_inst|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \baudrate_gen_inst|Mux12~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\);

-- Location: LCCOMB_X94_Y26_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[361]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(361) = (\baudrate_gen_inst|Mux0~0_combout\) # ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\) # 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(361));

-- Location: LCCOMB_X95_Y26_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\ = CARRY(!\baudrate_gen_inst|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\);

-- Location: LCCOMB_X95_Y26_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\ = (\baudrate_gen_inst|Mux12~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(361) & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(361) & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\) # (GND))))) # (!\baudrate_gen_inst|Mux12~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(361) & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(361) & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\ = CARRY((\baudrate_gen_inst|Mux12~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(361)))) # (!\baudrate_gen_inst|Mux12~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(361) & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux12~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(361),
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~1_cout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\);

-- Location: LCCOMB_X95_Y26_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\ = ((\baudrate_gen_inst|Mux11~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[362]~85_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\ = CARRY((\baudrate_gen_inst|Mux11~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[362]~85_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\)) # (!\baudrate_gen_inst|Mux11~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[362]~85_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux11~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[362]~85_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~3\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\);

-- Location: LCCOMB_X95_Y26_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\ = (\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[363]~84_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[363]~84_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\)))) # (!\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[363]~84_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[363]~84_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[363]~84_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\)) # (!\baudrate_gen_inst|Mux3~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[363]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[363]~84_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~5\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\);

-- Location: LCCOMB_X95_Y26_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[364]~83_combout\ $ (\baudrate_gen_inst|Mux9~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[364]~83_combout\ & 
-- ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\) # (!\baudrate_gen_inst|Mux9~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[364]~83_combout\ & (!\baudrate_gen_inst|Mux9~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[364]~83_combout\,
	datab => \baudrate_gen_inst|Mux9~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~7\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\);

-- Location: LCCOMB_X95_Y26_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\ = (\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[365]~82_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[365]~82_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\) # (GND))))) # (!\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[365]~82_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[365]~82_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\ = CARRY((\baudrate_gen_inst|Mux4~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[365]~82_combout\))) # (!\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[365]~82_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux4~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[365]~82_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~9\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\);

-- Location: LCCOMB_X95_Y26_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\ = ((\baudrate_gen_inst|Mux7~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[366]~81_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\ = CARRY((\baudrate_gen_inst|Mux7~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[366]~81_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\))) # (!\baudrate_gen_inst|Mux7~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[366]~81_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux7~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[366]~81_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~11\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\);

-- Location: LCCOMB_X95_Y26_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[367]~80_combout\ & ((\baudrate_gen_inst|Mux6~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\)) # (!\baudrate_gen_inst|Mux6~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[367]~80_combout\ & ((\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\) # (GND))) # 
-- (!\baudrate_gen_inst|Mux6~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[367]~80_combout\ & (\baudrate_gen_inst|Mux6~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[367]~80_combout\ & ((\baudrate_gen_inst|Mux6~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[367]~80_combout\,
	datab => \baudrate_gen_inst|Mux6~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~13\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\);

-- Location: LCCOMB_X95_Y26_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[368]~79_combout\ $ (\baudrate_gen_inst|Mux5~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[368]~79_combout\ & 
-- ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\) # (!\baudrate_gen_inst|Mux5~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[368]~79_combout\ & (!\baudrate_gen_inst|Mux5~0_combout\ 
-- & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[368]~79_combout\,
	datab => \baudrate_gen_inst|Mux5~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~15\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\);

-- Location: LCCOMB_X95_Y26_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\ = (\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[369]~78_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[369]~78_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\)))) # (!\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[369]~78_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[369]~78_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\ = CARRY((\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[369]~78_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[369]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux4~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[369]~78_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~17\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\);

-- Location: LCCOMB_X95_Y26_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\ = ((\baudrate_gen_inst|Mux3~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[370]~77_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[370]~77_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\)) # (!\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[370]~77_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[370]~77_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~19\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\);

-- Location: LCCOMB_X95_Y26_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\ = (\baudrate_gen_inst|Mux2~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[371]~76_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[371]~76_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\) # (GND))))) # (!\baudrate_gen_inst|Mux2~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[371]~76_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[371]~76_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\ = CARRY((\baudrate_gen_inst|Mux2~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[371]~76_combout\))) # (!\baudrate_gen_inst|Mux2~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[371]~76_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux2~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[371]~76_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~21\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\);

-- Location: LCCOMB_X95_Y26_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\ = ((\baudrate_gen_inst|Mux1~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[372]~75_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\ = CARRY((\baudrate_gen_inst|Mux1~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[372]~75_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\))) # (!\baudrate_gen_inst|Mux1~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[372]~75_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux1~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[372]~75_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~23\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\);

-- Location: LCCOMB_X95_Y26_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[373]~74_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[373]~74_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\) # (GND))) # 
-- (!\baudrate_gen_inst|Mux0~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[373]~74_combout\ & (\baudrate_gen_inst|Mux0~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[373]~74_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[373]~74_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~25\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\);

-- Location: LCCOMB_X95_Y26_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[374]~86_combout\ $ (\baudrate_gen_inst|Mux0~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[374]~86_combout\ & 
-- ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\) # (!\baudrate_gen_inst|Mux0~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[374]~86_combout\ & (!\baudrate_gen_inst|Mux0~0_combout\ 
-- & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[374]~86_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~27\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\);

-- Location: LCCOMB_X95_Y26_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ = !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~29\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\);

-- Location: LCCOMB_X96_Y27_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[392]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[392]~90_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[370]~77_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[370]~77_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[370]~77_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~20_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[392]~90_combout\);

-- Location: LCCOMB_X96_Y27_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[391]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[391]~91_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[369]~78_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[369]~78_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~18_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[369]~78_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[391]~91_combout\);

-- Location: LCCOMB_X96_Y27_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[390]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[390]~92_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[368]~79_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[368]~79_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[368]~79_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~16_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[390]~92_combout\);

-- Location: LCCOMB_X94_Y26_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[389]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[389]~93_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[367]~80_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[367]~80_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~14_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[367]~80_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[389]~93_combout\);

-- Location: LCCOMB_X94_Y26_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[388]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[388]~94_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[366]~81_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[366]~81_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[366]~81_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~12_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[388]~94_combout\);

-- Location: LCCOMB_X94_Y26_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[387]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[387]~95_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[365]~82_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[365]~82_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[365]~82_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~10_combout\,
	datac => \baudrate_gen_inst|Mux0~0_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[387]~95_combout\);

-- Location: LCCOMB_X94_Y26_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[386]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[386]~96_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[364]~83_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[364]~83_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[364]~83_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~8_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[386]~96_combout\);

-- Location: LCCOMB_X94_Y26_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[385]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[385]~97_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[363]~84_combout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[363]~84_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[363]~84_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baudrate_gen_inst|Mux0~0_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~6_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[385]~97_combout\);

-- Location: LCCOMB_X94_Y26_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[384]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[384]~98_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[362]~85_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[362]~85_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[362]~85_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~4_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[384]~98_combout\);

-- Location: LCCOMB_X94_Y26_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[383]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[383]~99_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(361))))) 
-- # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(361)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~2_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baudrate_gen_inst|Mux0~0_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(361),
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[383]~99_combout\);

-- Location: LCCOMB_X94_Y28_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[382]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[382]~100_combout\ = (!\baudrate_gen_inst|Mux0~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- \baudrate_gen_inst|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datad => \baudrate_gen_inst|Mux12~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[382]~100_combout\);

-- Location: LCCOMB_X94_Y28_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\ = CARRY(!\baudrate_gen_inst|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\);

-- Location: LCCOMB_X94_Y28_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~2_combout\ = (\baudrate_gen_inst|Mux12~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[382]~100_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[382]~100_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux12~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[382]~100_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[382]~100_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~3\ = CARRY((\baudrate_gen_inst|Mux12~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[382]~100_combout\))) # (!\baudrate_gen_inst|Mux12~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[382]~100_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux12~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[382]~100_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X94_Y28_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~4_combout\ = ((\baudrate_gen_inst|Mux11~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[383]~99_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~3\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~5\ = CARRY((\baudrate_gen_inst|Mux11~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[383]~99_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~3\)) # (!\baudrate_gen_inst|Mux11~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[383]~99_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux11~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[383]~99_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~3\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~4_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~5\);

-- Location: LCCOMB_X94_Y28_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~6_combout\ = (\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[384]~98_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~5\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[384]~98_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~5\)))) # 
-- (!\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[384]~98_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~5\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[384]~98_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~5\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~7\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[384]~98_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~5\)) # (!\baudrate_gen_inst|Mux3~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~5\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[384]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[384]~98_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~5\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~6_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~7\);

-- Location: LCCOMB_X94_Y28_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~8_combout\ = ((\baudrate_gen_inst|Mux9~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[385]~97_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~7\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~9\ = CARRY((\baudrate_gen_inst|Mux9~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[385]~97_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~7\)) # (!\baudrate_gen_inst|Mux9~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[385]~97_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux9~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[385]~97_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~7\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~8_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~9\);

-- Location: LCCOMB_X94_Y28_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~10_combout\ = (\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[386]~96_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~9\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[386]~96_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~9\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[386]~96_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~9\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[386]~96_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~9\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~11\ = CARRY((\baudrate_gen_inst|Mux4~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~9\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[386]~96_combout\))) # (!\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[386]~96_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux4~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[386]~96_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~9\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~10_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~11\);

-- Location: LCCOMB_X94_Y28_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~12_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[387]~95_combout\ $ (\baudrate_gen_inst|Mux7~0_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~11\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~13\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[387]~95_combout\ & ((\baudrate_gen_inst|Mux7~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~11\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[387]~95_combout\ & (\baudrate_gen_inst|Mux7~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[387]~95_combout\,
	datab => \baudrate_gen_inst|Mux7~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~11\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~12_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~13\);

-- Location: LCCOMB_X94_Y28_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~14_combout\ = (\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[388]~94_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~13\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[388]~94_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~13\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[388]~94_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~13\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[388]~94_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~13\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~15\ = CARRY((\baudrate_gen_inst|Mux6~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~13\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[388]~94_combout\))) # (!\baudrate_gen_inst|Mux6~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[388]~94_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux6~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[388]~94_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~13\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~14_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~15\);

-- Location: LCCOMB_X94_Y27_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~16_combout\ = ((\baudrate_gen_inst|Mux5~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[389]~93_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~15\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~17\ = CARRY((\baudrate_gen_inst|Mux5~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[389]~93_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~15\)) # (!\baudrate_gen_inst|Mux5~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[389]~93_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux5~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[389]~93_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~15\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~16_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~17\);

-- Location: LCCOMB_X94_Y27_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~18_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[390]~92_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~17\ & VCC)) # (!\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~17\)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[390]~92_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~17\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~17\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~19\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[390]~92_combout\ & (!\baudrate_gen_inst|Mux4~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~17\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[390]~92_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~17\) # 
-- (!\baudrate_gen_inst|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[390]~92_combout\,
	datab => \baudrate_gen_inst|Mux4~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~17\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~18_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~19\);

-- Location: LCCOMB_X94_Y27_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~20_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[391]~91_combout\ $ (\baudrate_gen_inst|Mux3~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~19\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~21\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[391]~91_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~19\) # 
-- (!\baudrate_gen_inst|Mux3~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[391]~91_combout\ & (!\baudrate_gen_inst|Mux3~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[391]~91_combout\,
	datab => \baudrate_gen_inst|Mux3~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~19\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~20_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~21\);

-- Location: LCCOMB_X94_Y27_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~22_combout\ = (\baudrate_gen_inst|Mux2~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[392]~90_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~21\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[392]~90_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~21\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux2~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[392]~90_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~21\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[392]~90_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~21\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~23\ = CARRY((\baudrate_gen_inst|Mux2~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~21\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[392]~90_combout\))) # (!\baudrate_gen_inst|Mux2~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[392]~90_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux2~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[392]~90_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~21\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~22_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~23\);

-- Location: LCCOMB_X96_Y27_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[396]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[396]~101_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[374]~86_combout\)))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[374]~86_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~28_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[374]~86_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[396]~101_combout\);

-- Location: LCCOMB_X94_Y26_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[395]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[395]~87_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[373]~74_combout\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[373]~74_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[373]~74_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~26_combout\,
	datac => \baudrate_gen_inst|Mux0~0_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[395]~87_combout\);

-- Location: LCCOMB_X96_Y27_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[394]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[394]~88_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[372]~75_combout\)))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[372]~75_combout\))) # (!\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~24_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[372]~75_combout\,
	datad => \baudrate_gen_inst|Mux0~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[394]~88_combout\);

-- Location: LCCOMB_X96_Y27_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[393]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[393]~89_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & 
-- (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[371]~76_combout\)))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[371]~76_combout\))) # (!\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~22_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[371]~76_combout\,
	datad => \baudrate_gen_inst|Mux0~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[393]~89_combout\);

-- Location: LCCOMB_X94_Y27_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~24_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[393]~89_combout\ $ (\baudrate_gen_inst|Mux1~0_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~23\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~25\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[393]~89_combout\ & ((\baudrate_gen_inst|Mux1~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~23\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[393]~89_combout\ & (\baudrate_gen_inst|Mux1~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[393]~89_combout\,
	datab => \baudrate_gen_inst|Mux1~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~23\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~24_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~25\);

-- Location: LCCOMB_X94_Y27_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~26_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[394]~88_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~25\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[394]~88_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~25\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[394]~88_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~25\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[394]~88_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~25\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~27\ = CARRY((\baudrate_gen_inst|Mux0~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~25\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[394]~88_combout\))) # (!\baudrate_gen_inst|Mux0~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[394]~88_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[394]~88_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~25\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~26_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~27\);

-- Location: LCCOMB_X94_Y27_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ = ((\baudrate_gen_inst|Mux0~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[395]~87_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~27\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~29\ = CARRY((\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[395]~87_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~27\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[395]~87_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[395]~87_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~27\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~29\);

-- Location: LCCOMB_X94_Y27_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~30_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[396]~101_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~29\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[396]~101_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~29\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[396]~101_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~29\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[396]~101_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~29\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~31\ = CARRY((\baudrate_gen_inst|Mux0~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~29\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[396]~101_combout\))) # (!\baudrate_gen_inst|Mux0~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[396]~101_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[396]~101_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~29\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~30_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~31\);

-- Location: LCCOMB_X94_Y27_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ = \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~31\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\);

-- Location: LCCOMB_X94_Y27_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[414]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[392]~90_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~22_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[392]~90_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\);

-- Location: LCCOMB_X94_Y27_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[413]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[391]~91_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[391]~91_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\);

-- Location: LCCOMB_X94_Y27_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[412]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[390]~92_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~18_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[390]~92_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\);

-- Location: LCCOMB_X94_Y27_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[411]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[389]~93_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~16_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[389]~93_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\);

-- Location: LCCOMB_X94_Y28_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[410]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[388]~94_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[388]~94_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~14_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\);

-- Location: LCCOMB_X94_Y28_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[409]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[387]~95_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[387]~95_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\);

-- Location: LCCOMB_X94_Y28_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[408]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[386]~96_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[386]~96_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~10_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\);

-- Location: LCCOMB_X94_Y28_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[407]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[385]~97_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[385]~97_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~8_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\);

-- Location: LCCOMB_X94_Y28_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[406]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[384]~98_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[384]~98_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~6_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\);

-- Location: LCCOMB_X94_Y28_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[405]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[383]~99_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[383]~99_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~4_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\);

-- Location: LCCOMB_X94_Y28_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[404]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[382]~100_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[382]~100_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~2_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\);

-- Location: LCCOMB_X92_Y28_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[403]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\ = (\SW[15]~input_o\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (!\SW[16]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \SW[16]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\);

-- Location: LCCOMB_X91_Y28_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\ = CARRY(!\baudrate_gen_inst|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\);

-- Location: LCCOMB_X91_Y28_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~2_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\ & ((\baudrate_gen_inst|Mux12~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\)) # (!\baudrate_gen_inst|Mux12~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\ & ((\baudrate_gen_inst|Mux12~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\) # (GND))) # (!\baudrate_gen_inst|Mux12~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~3\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\ & (\baudrate_gen_inst|Mux12~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\ & ((\baudrate_gen_inst|Mux12~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\,
	datab => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X91_Y28_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~4_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\ $ (\baudrate_gen_inst|Mux11~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~3\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~5\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~3\) # 
-- (!\baudrate_gen_inst|Mux11~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\ & (!\baudrate_gen_inst|Mux11~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\,
	datab => \baudrate_gen_inst|Mux11~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~3\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~4_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~5\);

-- Location: LCCOMB_X91_Y28_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~6_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\ & ((\baudrate_gen_inst|Mux3~0_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~5\ & VCC)) # (!\baudrate_gen_inst|Mux3~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~5\)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\ & ((\baudrate_gen_inst|Mux3~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~5\)) # (!\baudrate_gen_inst|Mux3~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~5\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~7\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\ & (!\baudrate_gen_inst|Mux3~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~5\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~5\) # 
-- (!\baudrate_gen_inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\,
	datab => \baudrate_gen_inst|Mux3~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~5\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~6_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~7\);

-- Location: LCCOMB_X91_Y28_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~8_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\ $ (\baudrate_gen_inst|Mux9~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~7\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~9\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~7\) # 
-- (!\baudrate_gen_inst|Mux9~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\ & (!\baudrate_gen_inst|Mux9~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\,
	datab => \baudrate_gen_inst|Mux9~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~7\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~8_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~9\);

-- Location: LCCOMB_X91_Y28_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~10_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~9\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~9\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~9\) # (GND))) # (!\baudrate_gen_inst|Mux4~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~9\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~11\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\ & (\baudrate_gen_inst|Mux4~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~9\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\,
	datab => \baudrate_gen_inst|Mux4~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~9\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~10_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~11\);

-- Location: LCCOMB_X91_Y28_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~12_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\ $ (\baudrate_gen_inst|Mux7~0_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~11\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~13\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\ & ((\baudrate_gen_inst|Mux7~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~11\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\ & (\baudrate_gen_inst|Mux7~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\,
	datab => \baudrate_gen_inst|Mux7~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~11\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~12_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~13\);

-- Location: LCCOMB_X91_Y28_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~14_combout\ = (\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~13\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~13\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~13\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~13\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~15\ = CARRY((\baudrate_gen_inst|Mux6~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~13\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\))) # (!\baudrate_gen_inst|Mux6~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux6~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~13\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~14_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~15\);

-- Location: LCCOMB_X91_Y28_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~16_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\ $ (\baudrate_gen_inst|Mux5~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~15\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~17\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~15\) # 
-- (!\baudrate_gen_inst|Mux5~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\ & (!\baudrate_gen_inst|Mux5~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\,
	datab => \baudrate_gen_inst|Mux5~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~15\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~16_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~17\);

-- Location: LCCOMB_X91_Y27_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~18_combout\ = (\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~17\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~17\)))) # 
-- (!\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~17\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~17\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~19\ = CARRY((\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~17\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~17\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux4~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~17\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~18_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~19\);

-- Location: LCCOMB_X91_Y27_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~20_combout\ = ((\baudrate_gen_inst|Mux3~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~19\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~21\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~19\)) # (!\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~19\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~20_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~21\);

-- Location: LCCOMB_X91_Y27_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~22_combout\ = (\baudrate_gen_inst|Mux2~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~21\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~21\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux2~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~21\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~21\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~23\ = CARRY((\baudrate_gen_inst|Mux2~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~21\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\))) # (!\baudrate_gen_inst|Mux2~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux2~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~21\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~22_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~23\);

-- Location: LCCOMB_X91_Y27_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~24_combout\ = ((\baudrate_gen_inst|Mux1~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~23\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~25\ = CARRY((\baudrate_gen_inst|Mux1~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~23\))) # (!\baudrate_gen_inst|Mux1~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux1~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~23\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~24_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~25\);

-- Location: LCCOMB_X92_Y27_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[418]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[418]~103_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[396]~101_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[396]~101_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[418]~103_combout\);

-- Location: LCCOMB_X92_Y27_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[418]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[418]~104_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~30_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~30_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[418]~104_combout\);

-- Location: LCCOMB_X92_Y27_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[417]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[417]~102_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[395]~87_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[395]~87_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[417]~102_combout\);

-- Location: LCCOMB_X94_Y27_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[416]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[394]~88_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[394]~88_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\);

-- Location: LCCOMB_X94_Y27_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[415]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[393]~89_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~24_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[393]~89_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\);

-- Location: LCCOMB_X91_Y27_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~26_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~25\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~25\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~25\) # (GND))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~25\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~27\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\ & (\baudrate_gen_inst|Mux0~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~25\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~25\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~26_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~27\);

-- Location: LCCOMB_X91_Y27_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\ $ (\baudrate_gen_inst|Mux0~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~27\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~29\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~27\) # 
-- (!\baudrate_gen_inst|Mux0~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\ & (!\baudrate_gen_inst|Mux0~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~27\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~29\);

-- Location: LCCOMB_X91_Y27_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~30_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[417]~102_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~29\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~29\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[417]~102_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~29\) # (GND))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~29\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~31\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[417]~102_combout\ & (\baudrate_gen_inst|Mux0~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~29\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[417]~102_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[417]~102_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~29\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~30_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~31\);

-- Location: LCCOMB_X91_Y27_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~33_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[418]~103_combout\) # ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[418]~104_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[418]~103_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[418]~104_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~31\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~33_cout\);

-- Location: LCCOMB_X91_Y27_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ = !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~33_cout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\);

-- Location: LCCOMB_X91_Y27_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[436]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[436]~121_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~24_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[414]~107_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[436]~121_combout\);

-- Location: LCCOMB_X91_Y27_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[435]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[435]~122_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~22_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[413]~108_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[435]~122_combout\);

-- Location: LCCOMB_X91_Y27_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[434]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[434]~123_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~20_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[412]~109_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[434]~123_combout\);

-- Location: LCCOMB_X91_Y27_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[433]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[433]~124_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~18_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[411]~110_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[433]~124_combout\);

-- Location: LCCOMB_X91_Y28_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[432]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[432]~125_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[410]~111_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[432]~125_combout\);

-- Location: LCCOMB_X91_Y28_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[431]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[431]~126_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[409]~112_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~14_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[431]~126_combout\);

-- Location: LCCOMB_X91_Y28_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[430]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[430]~127_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[408]~113_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~12_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[430]~127_combout\);

-- Location: LCCOMB_X91_Y28_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[429]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[429]~128_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~10_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[407]~114_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[429]~128_combout\);

-- Location: LCCOMB_X91_Y28_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[428]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[428]~129_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~8_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[406]~115_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[428]~129_combout\);

-- Location: LCCOMB_X91_Y28_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[427]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[427]~130_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~6_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[405]~116_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[427]~130_combout\);

-- Location: LCCOMB_X91_Y28_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[426]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[426]~131_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~4_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[404]~117_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[426]~131_combout\);

-- Location: LCCOMB_X92_Y28_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[425]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[425]~132_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~2_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[403]~194_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[425]~132_combout\);

-- Location: LCCOMB_X92_Y28_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[424]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[424]~196_combout\ = (\SW[15]~input_o\ & (!\SW[16]~input_o\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \SW[14]~input_o\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[424]~196_combout\);

-- Location: LCCOMB_X90_Y28_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\ = CARRY(!\baudrate_gen_inst|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\);

-- Location: LCCOMB_X90_Y28_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~2_combout\ = (\baudrate_gen_inst|Mux12~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[424]~196_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[424]~196_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux12~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[424]~196_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[424]~196_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~3\ = CARRY((\baudrate_gen_inst|Mux12~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[424]~196_combout\))) # (!\baudrate_gen_inst|Mux12~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[424]~196_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux12~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[424]~196_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~2_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~3\);

-- Location: LCCOMB_X90_Y28_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~4_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[425]~132_combout\ $ (\baudrate_gen_inst|Mux11~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~3\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~5\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[425]~132_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~3\) # 
-- (!\baudrate_gen_inst|Mux11~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[425]~132_combout\ & (!\baudrate_gen_inst|Mux11~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[425]~132_combout\,
	datab => \baudrate_gen_inst|Mux11~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~3\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~4_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~5\);

-- Location: LCCOMB_X90_Y28_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~6_combout\ = (\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[426]~131_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~5\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[426]~131_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~5\)))) # 
-- (!\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[426]~131_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~5\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[426]~131_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~5\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~7\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[426]~131_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~5\)) # (!\baudrate_gen_inst|Mux3~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~5\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[426]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[426]~131_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~5\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~6_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~7\);

-- Location: LCCOMB_X90_Y28_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~8_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[427]~130_combout\ $ (\baudrate_gen_inst|Mux9~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~7\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~9\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[427]~130_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~7\) # 
-- (!\baudrate_gen_inst|Mux9~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[427]~130_combout\ & (!\baudrate_gen_inst|Mux9~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[427]~130_combout\,
	datab => \baudrate_gen_inst|Mux9~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~7\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~8_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~9\);

-- Location: LCCOMB_X90_Y28_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~10_combout\ = (\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[428]~129_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~9\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[428]~129_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~9\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[428]~129_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~9\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[428]~129_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~9\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~11\ = CARRY((\baudrate_gen_inst|Mux4~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~9\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[428]~129_combout\))) # (!\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[428]~129_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux4~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[428]~129_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~9\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~10_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~11\);

-- Location: LCCOMB_X90_Y28_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~12_combout\ = ((\baudrate_gen_inst|Mux7~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[429]~128_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~11\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~13\ = CARRY((\baudrate_gen_inst|Mux7~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[429]~128_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~11\))) # (!\baudrate_gen_inst|Mux7~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[429]~128_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux7~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[429]~128_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~11\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~12_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~13\);

-- Location: LCCOMB_X90_Y28_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~14_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[430]~127_combout\ & ((\baudrate_gen_inst|Mux6~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~13\)) # (!\baudrate_gen_inst|Mux6~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~13\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[430]~127_combout\ & ((\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~13\) # (GND))) # (!\baudrate_gen_inst|Mux6~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~13\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~15\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[430]~127_combout\ & (\baudrate_gen_inst|Mux6~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~13\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[430]~127_combout\ & ((\baudrate_gen_inst|Mux6~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[430]~127_combout\,
	datab => \baudrate_gen_inst|Mux6~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~13\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~14_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~15\);

-- Location: LCCOMB_X90_Y28_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~16_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[431]~126_combout\ $ (\baudrate_gen_inst|Mux5~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~15\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~17\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[431]~126_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~15\) # 
-- (!\baudrate_gen_inst|Mux5~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[431]~126_combout\ & (!\baudrate_gen_inst|Mux5~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[431]~126_combout\,
	datab => \baudrate_gen_inst|Mux5~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~15\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~16_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~17\);

-- Location: LCCOMB_X90_Y27_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~18_combout\ = (\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[432]~125_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~17\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[432]~125_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~17\)))) # 
-- (!\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[432]~125_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~17\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[432]~125_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~17\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~19\ = CARRY((\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[432]~125_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~17\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~17\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[432]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux4~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[432]~125_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~17\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~18_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~19\);

-- Location: LCCOMB_X90_Y27_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~20_combout\ = ((\baudrate_gen_inst|Mux3~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[433]~124_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~19\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~21\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[433]~124_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~19\)) # (!\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[433]~124_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[433]~124_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~19\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~20_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~21\);

-- Location: LCCOMB_X90_Y27_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~22_combout\ = (\baudrate_gen_inst|Mux2~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[434]~123_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~21\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[434]~123_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~21\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux2~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[434]~123_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~21\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[434]~123_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~21\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~23\ = CARRY((\baudrate_gen_inst|Mux2~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~21\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[434]~123_combout\))) # (!\baudrate_gen_inst|Mux2~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[434]~123_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux2~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[434]~123_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~21\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~22_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~23\);

-- Location: LCCOMB_X90_Y27_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~24_combout\ = ((\baudrate_gen_inst|Mux1~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[435]~122_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~23\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~25\ = CARRY((\baudrate_gen_inst|Mux1~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[435]~122_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~23\))) # (!\baudrate_gen_inst|Mux1~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[435]~122_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux1~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[435]~122_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~23\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~24_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~25\);

-- Location: LCCOMB_X90_Y27_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~26_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[436]~121_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~25\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~25\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[436]~121_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~25\) # (GND))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~25\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~27\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[436]~121_combout\ & (\baudrate_gen_inst|Mux0~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~25\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[436]~121_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[436]~121_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~25\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~26_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~27\);

-- Location: LCCOMB_X92_Y27_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[439]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[439]~195_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[395]~87_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[395]~87_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[439]~195_combout\);

-- Location: LCCOMB_X91_Y27_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[439]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[439]~118_combout\ = (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~30_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[439]~118_combout\);

-- Location: LCCOMB_X91_Y27_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[438]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[438]~119_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[438]~119_combout\);

-- Location: LCCOMB_X91_Y27_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[437]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[437]~120_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[415]~106_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[437]~120_combout\);

-- Location: LCCOMB_X90_Y27_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[437]~120_combout\ $ (\baudrate_gen_inst|Mux0~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~27\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~29\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[437]~120_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~27\) # 
-- (!\baudrate_gen_inst|Mux0~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[437]~120_combout\ & (!\baudrate_gen_inst|Mux0~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[437]~120_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~27\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~29\);

-- Location: LCCOMB_X90_Y27_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~30_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[438]~119_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~29\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~29\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[438]~119_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~29\) # (GND))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~29\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~31\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[438]~119_combout\ & (\baudrate_gen_inst|Mux0~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~29\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[438]~119_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[438]~119_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~29\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~30_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~31\);

-- Location: LCCOMB_X90_Y27_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~33_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[439]~195_combout\) # ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[439]~118_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[439]~195_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[439]~118_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~31\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~33_cout\);

-- Location: LCCOMB_X90_Y27_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ = !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~33_cout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\);

-- Location: LCCOMB_X90_Y27_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[436]~121_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[436]~121_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~26_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135_combout\);

-- Location: LCCOMB_X90_Y27_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[457]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[457]~136_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[435]~122_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~24_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[435]~122_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[457]~136_combout\);

-- Location: LCCOMB_X90_Y27_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[456]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[456]~137_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[434]~123_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~22_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[434]~123_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[456]~137_combout\);

-- Location: LCCOMB_X90_Y27_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[455]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[455]~138_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[433]~124_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~20_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[433]~124_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[455]~138_combout\);

-- Location: LCCOMB_X90_Y27_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[454]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[454]~139_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[432]~125_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~18_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[432]~125_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[454]~139_combout\);

-- Location: LCCOMB_X90_Y28_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[453]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[453]~140_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[431]~126_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~16_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[431]~126_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[453]~140_combout\);

-- Location: LCCOMB_X90_Y28_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[452]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[452]~141_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[430]~127_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[430]~127_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~14_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[452]~141_combout\);

-- Location: LCCOMB_X90_Y28_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[451]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[451]~142_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[429]~128_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~12_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[429]~128_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[451]~142_combout\);

-- Location: LCCOMB_X90_Y28_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[450]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[450]~143_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[428]~129_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[428]~129_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~10_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[450]~143_combout\);

-- Location: LCCOMB_X90_Y28_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[449]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[449]~144_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[427]~130_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~8_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[427]~130_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[449]~144_combout\);

-- Location: LCCOMB_X90_Y28_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[448]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[448]~145_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[426]~131_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[426]~131_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~6_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[448]~145_combout\);

-- Location: LCCOMB_X90_Y28_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[447]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[447]~146_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[425]~132_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[425]~132_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~4_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[447]~146_combout\);

-- Location: LCCOMB_X89_Y28_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[446]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[446]~147_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[424]~196_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~2_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[424]~196_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[446]~147_combout\);

-- Location: LCCOMB_X92_Y28_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[445]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[445]~198_combout\ = (\SW[15]~input_o\ & (!\SW[16]~input_o\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datad => \SW[14]~input_o\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[445]~198_combout\);

-- Location: LCCOMB_X89_Y28_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~0_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[445]~198_combout\ & ((GND) # (!\baudrate_gen_inst|Mux12~0_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[445]~198_combout\ & (\baudrate_gen_inst|Mux12~0_combout\ $ (GND)))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~1\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[445]~198_combout\) # (!\baudrate_gen_inst|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[445]~198_combout\,
	datab => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~0_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~1\);

-- Location: LCCOMB_X89_Y28_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~2_combout\ = (\baudrate_gen_inst|Mux11~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[446]~147_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~1\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[446]~147_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~1\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux11~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[446]~147_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~1\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[446]~147_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~1\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~3\ = CARRY((\baudrate_gen_inst|Mux11~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~1\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[446]~147_combout\))) # (!\baudrate_gen_inst|Mux11~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[446]~147_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux11~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[446]~147_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~1\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~2_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~3\);

-- Location: LCCOMB_X89_Y28_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~4_combout\ = ((\baudrate_gen_inst|Mux3~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[447]~146_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~3\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~5\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[447]~146_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~3\))) # (!\baudrate_gen_inst|Mux3~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[447]~146_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[447]~146_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~3\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~4_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~5\);

-- Location: LCCOMB_X89_Y28_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~6_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[448]~145_combout\ & ((\baudrate_gen_inst|Mux9~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~5\)) # (!\baudrate_gen_inst|Mux9~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~5\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[448]~145_combout\ & ((\baudrate_gen_inst|Mux9~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~5\) # (GND))) # (!\baudrate_gen_inst|Mux9~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~5\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~7\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[448]~145_combout\ & (\baudrate_gen_inst|Mux9~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~5\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[448]~145_combout\ & ((\baudrate_gen_inst|Mux9~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[448]~145_combout\,
	datab => \baudrate_gen_inst|Mux9~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~5\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~6_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~7\);

-- Location: LCCOMB_X89_Y28_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~8_combout\ = ((\baudrate_gen_inst|Mux4~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[449]~144_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~7\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~9\ = CARRY((\baudrate_gen_inst|Mux4~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[449]~144_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~7\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[449]~144_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux4~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[449]~144_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~7\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~8_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~9\);

-- Location: LCCOMB_X89_Y28_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~10_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[450]~143_combout\ & ((\baudrate_gen_inst|Mux7~0_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~9\ & VCC)) # (!\baudrate_gen_inst|Mux7~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~9\)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[450]~143_combout\ & ((\baudrate_gen_inst|Mux7~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~9\)) # (!\baudrate_gen_inst|Mux7~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~9\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~11\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[450]~143_combout\ & (!\baudrate_gen_inst|Mux7~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~9\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[450]~143_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~9\) # 
-- (!\baudrate_gen_inst|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[450]~143_combout\,
	datab => \baudrate_gen_inst|Mux7~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~9\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~10_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~11\);

-- Location: LCCOMB_X89_Y28_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~12_combout\ = ((\baudrate_gen_inst|Mux6~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[451]~142_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~11\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~13\ = CARRY((\baudrate_gen_inst|Mux6~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[451]~142_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~11\)) # (!\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[451]~142_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux6~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[451]~142_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~11\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~12_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~13\);

-- Location: LCCOMB_X89_Y28_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~14_combout\ = (\baudrate_gen_inst|Mux5~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[452]~141_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~13\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[452]~141_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~13\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux5~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[452]~141_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~13\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[452]~141_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~13\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~15\ = CARRY((\baudrate_gen_inst|Mux5~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~13\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[452]~141_combout\))) # (!\baudrate_gen_inst|Mux5~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[452]~141_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux5~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[452]~141_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~13\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~14_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~15\);

-- Location: LCCOMB_X89_Y27_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~16_combout\ = ((\baudrate_gen_inst|Mux4~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[453]~140_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~15\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~17\ = CARRY((\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[453]~140_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~15\))) # (!\baudrate_gen_inst|Mux4~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[453]~140_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux4~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[453]~140_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~15\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~16_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~17\);

-- Location: LCCOMB_X89_Y27_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~18_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[454]~139_combout\ & ((\baudrate_gen_inst|Mux3~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~17\)) # (!\baudrate_gen_inst|Mux3~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~17\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[454]~139_combout\ & ((\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~17\) # (GND))) # (!\baudrate_gen_inst|Mux3~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~17\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~19\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[454]~139_combout\ & (\baudrate_gen_inst|Mux3~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~17\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[454]~139_combout\ & ((\baudrate_gen_inst|Mux3~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[454]~139_combout\,
	datab => \baudrate_gen_inst|Mux3~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~17\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~18_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~19\);

-- Location: LCCOMB_X89_Y27_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~20_combout\ = ((\baudrate_gen_inst|Mux2~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[455]~138_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~19\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~21\ = CARRY((\baudrate_gen_inst|Mux2~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[455]~138_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~19\)) # (!\baudrate_gen_inst|Mux2~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[455]~138_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux2~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[455]~138_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~19\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~20_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~21\);

-- Location: LCCOMB_X89_Y27_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~22_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[456]~137_combout\ & ((\baudrate_gen_inst|Mux1~0_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~21\ & VCC)) # (!\baudrate_gen_inst|Mux1~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~21\)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[456]~137_combout\ & ((\baudrate_gen_inst|Mux1~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~21\)) # (!\baudrate_gen_inst|Mux1~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~21\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~23\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[456]~137_combout\ & (!\baudrate_gen_inst|Mux1~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~21\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[456]~137_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~21\) # 
-- (!\baudrate_gen_inst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[456]~137_combout\,
	datab => \baudrate_gen_inst|Mux1~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~21\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~22_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~23\);

-- Location: LCCOMB_X89_Y27_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~24_combout\ = ((\baudrate_gen_inst|Mux0~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[457]~136_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~23\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~25\ = CARRY((\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[457]~136_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~23\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[457]~136_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[457]~136_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~23\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~24_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~25\);

-- Location: LCCOMB_X89_Y27_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~25\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~25\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~25\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~25\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~27\ = CARRY((\baudrate_gen_inst|Mux0~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~25\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135_combout\))) # (!\baudrate_gen_inst|Mux0~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~25\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~27\);

-- Location: LCCOMB_X90_Y27_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[459]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[459]~134_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[437]~120_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[437]~120_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[459]~134_combout\);

-- Location: LCCOMB_X89_Y27_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~28_combout\ = ((\baudrate_gen_inst|Mux0~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[459]~134_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~27\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~29\ = CARRY((\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[459]~134_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~27\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[459]~134_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[459]~134_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~27\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~28_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~29\);

-- Location: LCCOMB_X89_Y31_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[460]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[460]~133_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~30_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~30_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[460]~133_combout\);

-- Location: LCCOMB_X92_Y27_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[460]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[460]~197_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[416]~105_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[460]~197_combout\);

-- Location: LCCOMB_X89_Y27_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~31_cout\ = CARRY((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[460]~133_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[460]~197_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[460]~133_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[460]~197_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~29\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~31_cout\);

-- Location: LCCOMB_X89_Y27_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ = \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~31_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~31_cout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\);

-- Location: LCCOMB_X88_Y27_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[481]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[481]~149_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~28_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~28_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[481]~149_combout\);

-- Location: LCCOMB_X90_Y27_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[481]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[481]~199_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[437]~120_combout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[437]~120_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[481]~199_combout\);

-- Location: LCCOMB_X89_Y27_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[480]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\);

-- Location: LCCOMB_X89_Y27_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[479]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[457]~136_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~24_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[457]~136_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\);

-- Location: LCCOMB_X89_Y27_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[478]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[456]~137_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[456]~137_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~22_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\);

-- Location: LCCOMB_X89_Y27_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[477]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[455]~138_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~20_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[455]~138_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\);

-- Location: LCCOMB_X89_Y27_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[476]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[454]~139_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[454]~139_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\);

-- Location: LCCOMB_X89_Y27_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[475]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[453]~140_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~16_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[453]~140_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\);

-- Location: LCCOMB_X89_Y28_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[474]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[452]~141_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~14_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[452]~141_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\);

-- Location: LCCOMB_X89_Y28_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[473]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[451]~142_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[451]~142_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~12_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\);

-- Location: LCCOMB_X89_Y28_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[472]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[450]~143_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~10_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[450]~143_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\);

-- Location: LCCOMB_X89_Y28_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[471]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[449]~144_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[449]~144_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~8_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\);

-- Location: LCCOMB_X89_Y28_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[470]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[448]~145_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~6_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[448]~145_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\);

-- Location: LCCOMB_X89_Y28_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[469]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[447]~146_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[447]~146_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~4_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\);

-- Location: LCCOMB_X88_Y28_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[468]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[446]~147_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~2_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[446]~147_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\);

-- Location: LCCOMB_X89_Y28_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[467]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[445]~198_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[445]~198_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~0_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\);

-- Location: LCCOMB_X91_Y30_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~34_combout\ = !\baudrate_gen_inst|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \baudrate_gen_inst|Mux12~0_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~34_combout\);

-- Location: LCCOMB_X90_Y30_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[466]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(466) = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~34_combout\) # (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(466));

-- Location: LCCOMB_X89_Y30_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~1_cout\ = CARRY(!\baudrate_gen_inst|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~1_cout\);

-- Location: LCCOMB_X89_Y30_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~2_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(466) & ((\baudrate_gen_inst|Mux12~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~1_cout\)) # (!\baudrate_gen_inst|Mux12~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~1_cout\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(466) & ((\baudrate_gen_inst|Mux12~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~1_cout\) # (GND))) # (!\baudrate_gen_inst|Mux12~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~1_cout\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~3\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(466) & (\baudrate_gen_inst|Mux12~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~1_cout\)) 
-- # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(466) & ((\baudrate_gen_inst|Mux12~0_combout\) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut\(466),
	datab => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~1_cout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~2_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~3\);

-- Location: LCCOMB_X89_Y30_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~4_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\ $ (\baudrate_gen_inst|Mux11~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~3\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~5\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~3\) # 
-- (!\baudrate_gen_inst|Mux11~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\ & (!\baudrate_gen_inst|Mux11~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\,
	datab => \baudrate_gen_inst|Mux11~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~3\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~4_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~5\);

-- Location: LCCOMB_X89_Y30_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~6_combout\ = (\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~5\ & VCC)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~5\)))) # 
-- (!\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~5\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~5\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~7\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~5\)) # (!\baudrate_gen_inst|Mux3~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~5\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~5\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~6_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~7\);

-- Location: LCCOMB_X89_Y30_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~8_combout\ = ((\baudrate_gen_inst|Mux9~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~7\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~9\ = CARRY((\baudrate_gen_inst|Mux9~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~7\)) # (!\baudrate_gen_inst|Mux9~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux9~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~7\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~8_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~9\);

-- Location: LCCOMB_X89_Y30_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~10_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~9\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~9\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~9\) # (GND))) # (!\baudrate_gen_inst|Mux4~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~9\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~11\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\ & (\baudrate_gen_inst|Mux4~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~9\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\,
	datab => \baudrate_gen_inst|Mux4~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~9\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~10_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~11\);

-- Location: LCCOMB_X89_Y30_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~12_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\ $ (\baudrate_gen_inst|Mux7~0_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~11\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~13\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\ & ((\baudrate_gen_inst|Mux7~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~11\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\ & (\baudrate_gen_inst|Mux7~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\,
	datab => \baudrate_gen_inst|Mux7~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~11\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~12_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~13\);

-- Location: LCCOMB_X89_Y30_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~14_combout\ = (\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~13\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~13\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~13\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~13\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~15\ = CARRY((\baudrate_gen_inst|Mux6~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~13\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\))) # (!\baudrate_gen_inst|Mux6~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux6~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~13\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~14_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~15\);

-- Location: LCCOMB_X89_Y30_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~16_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\ $ (\baudrate_gen_inst|Mux5~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~15\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~17\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~15\) # 
-- (!\baudrate_gen_inst|Mux5~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\ & (!\baudrate_gen_inst|Mux5~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\,
	datab => \baudrate_gen_inst|Mux5~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~15\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~16_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~17\);

-- Location: LCCOMB_X89_Y29_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~18_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~17\ & VCC)) # (!\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~17\)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~17\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~17\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~19\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\ & (!\baudrate_gen_inst|Mux4~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~17\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~17\) # 
-- (!\baudrate_gen_inst|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\,
	datab => \baudrate_gen_inst|Mux4~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~17\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~18_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~19\);

-- Location: LCCOMB_X89_Y29_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~20_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\ $ (\baudrate_gen_inst|Mux3~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~19\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~21\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~19\) # 
-- (!\baudrate_gen_inst|Mux3~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\ & (!\baudrate_gen_inst|Mux3~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\,
	datab => \baudrate_gen_inst|Mux3~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~19\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~20_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~21\);

-- Location: LCCOMB_X89_Y29_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~22_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\ & ((\baudrate_gen_inst|Mux2~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~21\)) # (!\baudrate_gen_inst|Mux2~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~21\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\ & ((\baudrate_gen_inst|Mux2~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~21\) # (GND))) # (!\baudrate_gen_inst|Mux2~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~21\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~23\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\ & (\baudrate_gen_inst|Mux2~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~21\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\ & ((\baudrate_gen_inst|Mux2~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\,
	datab => \baudrate_gen_inst|Mux2~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~21\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~22_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~23\);

-- Location: LCCOMB_X89_Y29_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~24_combout\ = ((\baudrate_gen_inst|Mux1~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~23\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~25\ = CARRY((\baudrate_gen_inst|Mux1~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~23\))) # (!\baudrate_gen_inst|Mux1~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux1~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~23\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~24_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~25\);

-- Location: LCCOMB_X89_Y29_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~26_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~25\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~25\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~25\) # (GND))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~25\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~27\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\ & (\baudrate_gen_inst|Mux0~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~25\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~25\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~26_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~27\);

-- Location: LCCOMB_X89_Y29_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~28_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\ $ (\baudrate_gen_inst|Mux0~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~27\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~29\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~27\) # 
-- (!\baudrate_gen_inst|Mux0~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\ & (!\baudrate_gen_inst|Mux0~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~27\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~28_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~29\);

-- Location: LCCOMB_X89_Y29_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~30_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~29\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~29\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~29\) # (GND))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~29\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~31\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\ & (\baudrate_gen_inst|Mux0~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~29\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[480]~148_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~29\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~30_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~31\);

-- Location: LCCOMB_X89_Y29_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~33_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[481]~149_combout\) # ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[481]~199_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[481]~149_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[481]~199_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~31\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~33_cout\);

-- Location: LCCOMB_X89_Y29_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ = !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~33_cout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\);

-- Location: LCCOMB_X89_Y27_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[502]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[502]~200_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[458]~135_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[502]~200_combout\);

-- Location: LCCOMB_X90_Y29_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[502]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[502]~163_combout\ = (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~30_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[502]~163_combout\);

-- Location: LCCOMB_X89_Y29_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[501]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~28_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\);

-- Location: LCCOMB_X89_Y29_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[500]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[478]~151_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~26_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\);

-- Location: LCCOMB_X89_Y29_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[499]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~24_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[477]~152_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\);

-- Location: LCCOMB_X89_Y29_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[498]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[476]~153_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~22_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\);

-- Location: LCCOMB_X89_Y29_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[497]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[475]~154_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~20_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\);

-- Location: LCCOMB_X89_Y29_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[496]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[474]~155_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~18_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\);

-- Location: LCCOMB_X89_Y30_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[495]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~16_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[473]~156_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\);

-- Location: LCCOMB_X89_Y30_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[494]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[472]~157_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~14_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\);

-- Location: LCCOMB_X89_Y30_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[493]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~12_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[471]~158_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\);

-- Location: LCCOMB_X89_Y30_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[492]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[470]~159_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~10_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\);

-- Location: LCCOMB_X89_Y30_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[491]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[469]~160_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~8_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\);

-- Location: LCCOMB_X89_Y30_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[490]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[468]~161_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~6_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\);

-- Location: LCCOMB_X89_Y30_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[489]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[467]~162_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~4_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\);

-- Location: LCCOMB_X90_Y30_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[488]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~34_combout\) # 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\)))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~2_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\);

-- Location: LCCOMB_X91_Y30_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[487]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\ = (\SW[15]~input_o\ & (\SW[14]~input_o\ & (!\SW[16]~input_o\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\);

-- Location: LCCOMB_X90_Y30_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~1_cout\ = CARRY(!\baudrate_gen_inst|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~1_cout\);

-- Location: LCCOMB_X90_Y30_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~2_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\ & ((\baudrate_gen_inst|Mux12~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~1_cout\)) # (!\baudrate_gen_inst|Mux12~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~1_cout\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\ & ((\baudrate_gen_inst|Mux12~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~1_cout\) # (GND))) # (!\baudrate_gen_inst|Mux12~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~1_cout\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~3\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\ & (\baudrate_gen_inst|Mux12~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~1_cout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\ & ((\baudrate_gen_inst|Mux12~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\,
	datab => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~1_cout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~2_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~3\);

-- Location: LCCOMB_X90_Y30_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~4_combout\ = ((\baudrate_gen_inst|Mux11~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~3\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~5\ = CARRY((\baudrate_gen_inst|Mux11~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~3\)) # (!\baudrate_gen_inst|Mux11~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux11~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~3\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~4_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~5\);

-- Location: LCCOMB_X90_Y30_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~6_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\ & ((\baudrate_gen_inst|Mux3~0_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~5\ & VCC)) # (!\baudrate_gen_inst|Mux3~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~5\)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\ & ((\baudrate_gen_inst|Mux3~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~5\)) # (!\baudrate_gen_inst|Mux3~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~5\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~7\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\ & (!\baudrate_gen_inst|Mux3~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~5\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~5\) # 
-- (!\baudrate_gen_inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\,
	datab => \baudrate_gen_inst|Mux3~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~5\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~6_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~7\);

-- Location: LCCOMB_X90_Y30_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~8_combout\ = ((\baudrate_gen_inst|Mux9~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~7\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~9\ = CARRY((\baudrate_gen_inst|Mux9~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~7\)) # (!\baudrate_gen_inst|Mux9~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux9~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~7\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~8_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~9\);

-- Location: LCCOMB_X90_Y30_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~10_combout\ = (\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~9\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~9\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux4~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~9\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~9\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~11\ = CARRY((\baudrate_gen_inst|Mux4~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~9\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\))) # (!\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux4~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~9\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~10_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~11\);

-- Location: LCCOMB_X90_Y30_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~12_combout\ = ((\baudrate_gen_inst|Mux7~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~11\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~13\ = CARRY((\baudrate_gen_inst|Mux7~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~11\))) # (!\baudrate_gen_inst|Mux7~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux7~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~11\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~12_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~13\);

-- Location: LCCOMB_X90_Y30_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~14_combout\ = (\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~13\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~13\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux6~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~13\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~13\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~15\ = CARRY((\baudrate_gen_inst|Mux6~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~13\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\))) # (!\baudrate_gen_inst|Mux6~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux6~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~13\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~14_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~15\);

-- Location: LCCOMB_X90_Y30_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~16_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\ $ (\baudrate_gen_inst|Mux5~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~15\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~17\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~15\) # 
-- (!\baudrate_gen_inst|Mux5~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\ & (!\baudrate_gen_inst|Mux5~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\,
	datab => \baudrate_gen_inst|Mux5~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~15\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~16_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~17\);

-- Location: LCCOMB_X90_Y29_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~18_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\ & 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~17\ & VCC)) # (!\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~17\)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~17\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~17\) # (GND)))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~19\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\ & (!\baudrate_gen_inst|Mux4~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~17\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~17\) # 
-- (!\baudrate_gen_inst|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\,
	datab => \baudrate_gen_inst|Mux4~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~17\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~18_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~19\);

-- Location: LCCOMB_X90_Y29_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~20_combout\ = ((\baudrate_gen_inst|Mux3~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~19\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~21\ = CARRY((\baudrate_gen_inst|Mux3~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~19\)) # (!\baudrate_gen_inst|Mux3~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux3~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~19\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~20_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~21\);

-- Location: LCCOMB_X90_Y29_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~22_combout\ = (\baudrate_gen_inst|Mux2~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~21\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~21\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux2~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~21\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~21\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~23\ = CARRY((\baudrate_gen_inst|Mux2~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~21\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\))) # (!\baudrate_gen_inst|Mux2~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux2~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~21\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~22_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~23\);

-- Location: LCCOMB_X90_Y29_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~24_combout\ = ((\baudrate_gen_inst|Mux1~0_combout\ $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\ $ 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~23\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~25\ = CARRY((\baudrate_gen_inst|Mux1~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~23\))) # (!\baudrate_gen_inst|Mux1~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux1~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~23\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~24_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~25\);

-- Location: LCCOMB_X90_Y29_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~26_combout\ = (\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~25\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~25\) # (GND))))) # 
-- (!\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~25\ & VCC)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~25\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~27\ = CARRY((\baudrate_gen_inst|Mux0~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~25\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\))) # (!\baudrate_gen_inst|Mux0~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux0~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~25\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~26_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~27\);

-- Location: LCCOMB_X90_Y29_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~28_combout\ = ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\ $ (\baudrate_gen_inst|Mux0~0_combout\ $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~27\)))) # (GND)
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~29\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~27\) # 
-- (!\baudrate_gen_inst|Mux0~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\ & (!\baudrate_gen_inst|Mux0~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~27\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~28_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~29\);

-- Location: LCCOMB_X90_Y29_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~30_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~29\)) # (!\baudrate_gen_inst|Mux0~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~29\ & VCC)))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~29\) # (GND))) # (!\baudrate_gen_inst|Mux0~0_combout\ & 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~29\))))
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~31\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\ & (\baudrate_gen_inst|Mux0~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~29\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[501]~164_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~29\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~30_combout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~31\);

-- Location: LCCOMB_X90_Y29_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~33_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[502]~200_combout\) # ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[502]~163_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[502]~200_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[502]~163_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~31\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~33_cout\);

-- Location: LCCOMB_X90_Y29_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ = !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~33_cout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\);

-- Location: LCCOMB_X91_Y29_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[523]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[523]~177_combout\ = (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~30_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[523]~177_combout\);

-- Location: LCCOMB_X89_Y29_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[523]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[523]~203_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & 
-- ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~28_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[479]~150_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[523]~203_combout\);

-- Location: LCCOMB_X90_Y29_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[522]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[522]~178_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~28_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[500]~165_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[522]~178_combout\);

-- Location: LCCOMB_X90_Y29_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[521]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[521]~179_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[499]~166_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~26_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[521]~179_combout\);

-- Location: LCCOMB_X90_Y29_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[520]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[520]~180_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~24_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[498]~167_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[520]~180_combout\);

-- Location: LCCOMB_X90_Y29_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[519]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[519]~181_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[497]~168_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~22_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[519]~181_combout\);

-- Location: LCCOMB_X90_Y29_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[518]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[518]~182_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[496]~169_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~20_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[518]~182_combout\);

-- Location: LCCOMB_X90_Y29_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[517]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[517]~183_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~18_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[495]~170_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[517]~183_combout\);

-- Location: LCCOMB_X91_Y30_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[516]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[516]~184_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[494]~171_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~16_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[516]~184_combout\);

-- Location: LCCOMB_X90_Y30_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[515]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[515]~185_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[493]~172_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~14_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[515]~185_combout\);

-- Location: LCCOMB_X90_Y30_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[514]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[514]~186_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[492]~173_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~12_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[514]~186_combout\);

-- Location: LCCOMB_X90_Y30_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[513]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[513]~187_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[491]~174_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~10_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[513]~187_combout\);

-- Location: LCCOMB_X90_Y30_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[512]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[512]~188_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[490]~175_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~8_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[512]~188_combout\);

-- Location: LCCOMB_X90_Y30_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[511]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[511]~189_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[489]~176_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~6_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[511]~189_combout\);

-- Location: LCCOMB_X91_Y30_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[510]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[510]~190_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\)) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[488]~201_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~4_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[510]~190_combout\);

-- Location: LCCOMB_X91_Y30_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[509]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[509]~191_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~2_combout\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[487]~202_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[509]~191_combout\);

-- Location: LCCOMB_X91_Y30_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[508]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[508]~204_combout\ = (\SW[15]~input_o\ & (\SW[14]~input_o\ & (!\SW[16]~input_o\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[508]~204_combout\);

-- Location: LCCOMB_X91_Y30_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~1_cout\ = CARRY(!\baudrate_gen_inst|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~1_cout\);

-- Location: LCCOMB_X91_Y30_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~3_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[508]~204_combout\ & (\baudrate_gen_inst|Mux12~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~1_cout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[508]~204_combout\ & ((\baudrate_gen_inst|Mux12~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[508]~204_combout\,
	datab => \baudrate_gen_inst|Mux12~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~1_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~3_cout\);

-- Location: LCCOMB_X91_Y30_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~5_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[509]~191_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~3_cout\) # 
-- (!\baudrate_gen_inst|Mux11~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[509]~191_combout\ & (!\baudrate_gen_inst|Mux11~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[509]~191_combout\,
	datab => \baudrate_gen_inst|Mux11~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~3_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~5_cout\);

-- Location: LCCOMB_X91_Y30_N20
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~7_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[510]~190_combout\ & (!\baudrate_gen_inst|Mux3~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~5_cout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[510]~190_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~5_cout\) # 
-- (!\baudrate_gen_inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[510]~190_combout\,
	datab => \baudrate_gen_inst|Mux3~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~5_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~7_cout\);

-- Location: LCCOMB_X91_Y30_N22
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~9_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[511]~189_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~7_cout\) # 
-- (!\baudrate_gen_inst|Mux9~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[511]~189_combout\ & (!\baudrate_gen_inst|Mux9~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[511]~189_combout\,
	datab => \baudrate_gen_inst|Mux9~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~7_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~9_cout\);

-- Location: LCCOMB_X91_Y30_N24
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~11_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[512]~188_combout\ & (\baudrate_gen_inst|Mux4~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~9_cout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[512]~188_combout\ & ((\baudrate_gen_inst|Mux4~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[512]~188_combout\,
	datab => \baudrate_gen_inst|Mux4~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~9_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~11_cout\);

-- Location: LCCOMB_X91_Y30_N26
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~13_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[513]~187_combout\ & ((\baudrate_gen_inst|Mux7~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~11_cout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[513]~187_combout\ & (\baudrate_gen_inst|Mux7~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[513]~187_combout\,
	datab => \baudrate_gen_inst|Mux7~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~11_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~13_cout\);

-- Location: LCCOMB_X91_Y30_N28
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~15_cout\ = CARRY((\baudrate_gen_inst|Mux6~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~13_cout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[514]~186_combout\))) # (!\baudrate_gen_inst|Mux6~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[514]~186_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux6~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[514]~186_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~13_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~15_cout\);

-- Location: LCCOMB_X91_Y30_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~17_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[515]~185_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~15_cout\) # 
-- (!\baudrate_gen_inst|Mux5~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[515]~185_combout\ & (!\baudrate_gen_inst|Mux5~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[515]~185_combout\,
	datab => \baudrate_gen_inst|Mux5~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~15_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~17_cout\);

-- Location: LCCOMB_X91_Y29_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~19_cout\ = CARRY((\baudrate_gen_inst|Mux4~0_combout\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[516]~184_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~17_cout\)) # (!\baudrate_gen_inst|Mux4~0_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~17_cout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[516]~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux4~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[516]~184_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~17_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~19_cout\);

-- Location: LCCOMB_X91_Y29_N2
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~21_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[517]~183_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~19_cout\) # 
-- (!\baudrate_gen_inst|Mux3~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[517]~183_combout\ & (!\baudrate_gen_inst|Mux3~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[517]~183_combout\,
	datab => \baudrate_gen_inst|Mux3~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~19_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~21_cout\);

-- Location: LCCOMB_X91_Y29_N4
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~23_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[518]~182_combout\ & (\baudrate_gen_inst|Mux2~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~21_cout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[518]~182_combout\ & ((\baudrate_gen_inst|Mux2~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[518]~182_combout\,
	datab => \baudrate_gen_inst|Mux2~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~21_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~23_cout\);

-- Location: LCCOMB_X91_Y29_N6
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~25_cout\ = CARRY((\baudrate_gen_inst|Mux1~0_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[519]~181_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~23_cout\))) # (!\baudrate_gen_inst|Mux1~0_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[519]~181_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Mux1~0_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[519]~181_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~23_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~25_cout\);

-- Location: LCCOMB_X91_Y29_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~27_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[520]~180_combout\ & (\baudrate_gen_inst|Mux0~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~25_cout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[520]~180_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[520]~180_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~25_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~27_cout\);

-- Location: LCCOMB_X91_Y29_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~29_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[521]~179_combout\ & ((!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~27_cout\) # 
-- (!\baudrate_gen_inst|Mux0~0_combout\))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[521]~179_combout\ & (!\baudrate_gen_inst|Mux0~0_combout\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[521]~179_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~27_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~29_cout\);

-- Location: LCCOMB_X91_Y29_N12
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~31_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[522]~178_combout\ & (\baudrate_gen_inst|Mux0~0_combout\ & 
-- !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~29_cout\)) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[522]~178_combout\ & ((\baudrate_gen_inst|Mux0~0_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[522]~178_combout\,
	datab => \baudrate_gen_inst|Mux0~0_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~29_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~31_cout\);

-- Location: LCCOMB_X91_Y29_N14
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~33_cout\ = CARRY((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[523]~177_combout\) # ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[523]~203_combout\) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[523]~177_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|StageOut[523]~203_combout\,
	datad => VCC,
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~31_cout\,
	cout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~33_cout\);

-- Location: LCCOMB_X91_Y29_N16
\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~34_combout\ = !\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~33_cout\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~34_combout\);

-- Location: LCCOMB_X88_Y29_N2
\baudrate_gen_inst|teller~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller~58_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|teller\(1)) # (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~34_combout\ $ 
-- (!\baudrate_gen_inst|teller\(0))))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~34_combout\ $ (!\baudrate_gen_inst|teller\(0))) # 
-- (!\baudrate_gen_inst|teller\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_17~34_combout\,
	datac => \baudrate_gen_inst|teller\(0),
	datad => \baudrate_gen_inst|teller\(1),
	combout => \baudrate_gen_inst|teller~58_combout\);

-- Location: LCCOMB_X92_Y28_N10
\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[459]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(459) = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\) # ((\SW[15]~input_o\ & (\SW[16]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \SW[16]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(459));

-- Location: LCCOMB_X92_Y28_N30
\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[486]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(486) = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\) # ((\SW[15]~input_o\ & (\SW[16]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~30_combout\,
	datad => \SW[14]~input_o\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(486));

-- Location: LCCOMB_X87_Y29_N12
\baudrate_gen_inst|teller[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[3]~34_combout\ = (\baudrate_gen_inst|teller\(3) & (!\baudrate_gen_inst|teller[2]~33\)) # (!\baudrate_gen_inst|teller\(3) & ((\baudrate_gen_inst|teller[2]~33\) # (GND)))
-- \baudrate_gen_inst|teller[3]~35\ = CARRY((!\baudrate_gen_inst|teller[2]~33\) # (!\baudrate_gen_inst|teller\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|teller\(3),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[2]~33\,
	combout => \baudrate_gen_inst|teller[3]~34_combout\,
	cout => \baudrate_gen_inst|teller[3]~35\);

-- Location: LCCOMB_X87_Y29_N14
\baudrate_gen_inst|teller[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[4]~36_combout\ = (\baudrate_gen_inst|teller\(4) & (\baudrate_gen_inst|teller[3]~35\ $ (GND))) # (!\baudrate_gen_inst|teller\(4) & (!\baudrate_gen_inst|teller[3]~35\ & VCC))
-- \baudrate_gen_inst|teller[4]~37\ = CARRY((\baudrate_gen_inst|teller\(4) & !\baudrate_gen_inst|teller[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|teller\(4),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[3]~35\,
	combout => \baudrate_gen_inst|teller[4]~36_combout\,
	cout => \baudrate_gen_inst|teller[4]~37\);

-- Location: FF_X87_Y29_N15
\baudrate_gen_inst|teller[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[4]~36_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(4));

-- Location: LCCOMB_X87_Y29_N16
\baudrate_gen_inst|teller[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[5]~38_combout\ = (\baudrate_gen_inst|teller\(5) & (!\baudrate_gen_inst|teller[4]~37\)) # (!\baudrate_gen_inst|teller\(5) & ((\baudrate_gen_inst|teller[4]~37\) # (GND)))
-- \baudrate_gen_inst|teller[5]~39\ = CARRY((!\baudrate_gen_inst|teller[4]~37\) # (!\baudrate_gen_inst|teller\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|teller\(5),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[4]~37\,
	combout => \baudrate_gen_inst|teller[5]~38_combout\,
	cout => \baudrate_gen_inst|teller[5]~39\);

-- Location: FF_X87_Y29_N17
\baudrate_gen_inst|teller[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[5]~38_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(5));

-- Location: LCCOMB_X87_Y29_N18
\baudrate_gen_inst|teller[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[6]~40_combout\ = (\baudrate_gen_inst|teller\(6) & (\baudrate_gen_inst|teller[5]~39\ $ (GND))) # (!\baudrate_gen_inst|teller\(6) & (!\baudrate_gen_inst|teller[5]~39\ & VCC))
-- \baudrate_gen_inst|teller[6]~41\ = CARRY((\baudrate_gen_inst|teller\(6) & !\baudrate_gen_inst|teller[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|teller\(6),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[5]~39\,
	combout => \baudrate_gen_inst|teller[6]~40_combout\,
	cout => \baudrate_gen_inst|teller[6]~41\);

-- Location: FF_X87_Y29_N19
\baudrate_gen_inst|teller[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[6]~40_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(6));

-- Location: LCCOMB_X87_Y29_N20
\baudrate_gen_inst|teller[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[7]~42_combout\ = (\baudrate_gen_inst|teller\(7) & (!\baudrate_gen_inst|teller[6]~41\)) # (!\baudrate_gen_inst|teller\(7) & ((\baudrate_gen_inst|teller[6]~41\) # (GND)))
-- \baudrate_gen_inst|teller[7]~43\ = CARRY((!\baudrate_gen_inst|teller[6]~41\) # (!\baudrate_gen_inst|teller\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(7),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[6]~41\,
	combout => \baudrate_gen_inst|teller[7]~42_combout\,
	cout => \baudrate_gen_inst|teller[7]~43\);

-- Location: FF_X87_Y29_N21
\baudrate_gen_inst|teller[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[7]~42_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(7));

-- Location: LCCOMB_X87_Y29_N22
\baudrate_gen_inst|teller[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[8]~44_combout\ = (\baudrate_gen_inst|teller\(8) & (\baudrate_gen_inst|teller[7]~43\ $ (GND))) # (!\baudrate_gen_inst|teller\(8) & (!\baudrate_gen_inst|teller[7]~43\ & VCC))
-- \baudrate_gen_inst|teller[8]~45\ = CARRY((\baudrate_gen_inst|teller\(8) & !\baudrate_gen_inst|teller[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(8),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[7]~43\,
	combout => \baudrate_gen_inst|teller[8]~44_combout\,
	cout => \baudrate_gen_inst|teller[8]~45\);

-- Location: FF_X87_Y29_N23
\baudrate_gen_inst|teller[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[8]~44_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(8));

-- Location: LCCOMB_X88_Y29_N26
\baudrate_gen_inst|teller~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller~62_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(459) & ((\baudrate_gen_inst|teller\(8)) # (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(486) $ (!\baudrate_gen_inst|teller\(7))))) 
-- # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(459) & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(486) $ (!\baudrate_gen_inst|teller\(7))) # (!\baudrate_gen_inst|teller\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(459),
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(486),
	datac => \baudrate_gen_inst|teller\(7),
	datad => \baudrate_gen_inst|teller\(8),
	combout => \baudrate_gen_inst|teller~62_combout\);

-- Location: LCCOMB_X92_Y28_N0
\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[324]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[324]~10_combout\ = (!\SW[15]~input_o\ & (!\SW[16]~input_o\ & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~16_combout\,
	datad => \SW[14]~input_o\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[324]~10_combout\);

-- Location: LCCOMB_X87_Y29_N24
\baudrate_gen_inst|teller[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[9]~46_combout\ = (\baudrate_gen_inst|teller\(9) & (!\baudrate_gen_inst|teller[8]~45\)) # (!\baudrate_gen_inst|teller\(9) & ((\baudrate_gen_inst|teller[8]~45\) # (GND)))
-- \baudrate_gen_inst|teller[9]~47\ = CARRY((!\baudrate_gen_inst|teller[8]~45\) # (!\baudrate_gen_inst|teller\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|teller\(9),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[8]~45\,
	combout => \baudrate_gen_inst|teller[9]~46_combout\,
	cout => \baudrate_gen_inst|teller[9]~47\);

-- Location: FF_X87_Y29_N25
\baudrate_gen_inst|teller[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[9]~46_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(9));

-- Location: LCCOMB_X87_Y29_N26
\baudrate_gen_inst|teller[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[10]~48_combout\ = (\baudrate_gen_inst|teller\(10) & (\baudrate_gen_inst|teller[9]~47\ $ (GND))) # (!\baudrate_gen_inst|teller\(10) & (!\baudrate_gen_inst|teller[9]~47\ & VCC))
-- \baudrate_gen_inst|teller[10]~49\ = CARRY((\baudrate_gen_inst|teller\(10) & !\baudrate_gen_inst|teller[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(10),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[9]~47\,
	combout => \baudrate_gen_inst|teller[10]~48_combout\,
	cout => \baudrate_gen_inst|teller[10]~49\);

-- Location: FF_X87_Y29_N27
\baudrate_gen_inst|teller[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[10]~48_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(10));

-- Location: LCCOMB_X87_Y29_N28
\baudrate_gen_inst|teller[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[11]~50_combout\ = (\baudrate_gen_inst|teller\(11) & (!\baudrate_gen_inst|teller[10]~49\)) # (!\baudrate_gen_inst|teller\(11) & ((\baudrate_gen_inst|teller[10]~49\) # (GND)))
-- \baudrate_gen_inst|teller[11]~51\ = CARRY((!\baudrate_gen_inst|teller[10]~49\) # (!\baudrate_gen_inst|teller\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|teller\(11),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[10]~49\,
	combout => \baudrate_gen_inst|teller[11]~50_combout\,
	cout => \baudrate_gen_inst|teller[11]~51\);

-- Location: FF_X87_Y29_N29
\baudrate_gen_inst|teller[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[11]~50_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(11));

-- Location: LCCOMB_X87_Y29_N30
\baudrate_gen_inst|teller[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[12]~52_combout\ = (\baudrate_gen_inst|teller\(12) & (\baudrate_gen_inst|teller[11]~51\ $ (GND))) # (!\baudrate_gen_inst|teller\(12) & (!\baudrate_gen_inst|teller[11]~51\ & VCC))
-- \baudrate_gen_inst|teller[12]~53\ = CARRY((\baudrate_gen_inst|teller\(12) & !\baudrate_gen_inst|teller[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(12),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[11]~51\,
	combout => \baudrate_gen_inst|teller[12]~52_combout\,
	cout => \baudrate_gen_inst|teller[12]~53\);

-- Location: FF_X87_Y29_N31
\baudrate_gen_inst|teller[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[12]~52_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(12));

-- Location: LCCOMB_X87_Y28_N0
\baudrate_gen_inst|teller[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[13]~54_combout\ = (\baudrate_gen_inst|teller\(13) & (!\baudrate_gen_inst|teller[12]~53\)) # (!\baudrate_gen_inst|teller\(13) & ((\baudrate_gen_inst|teller[12]~53\) # (GND)))
-- \baudrate_gen_inst|teller[13]~55\ = CARRY((!\baudrate_gen_inst|teller[12]~53\) # (!\baudrate_gen_inst|teller\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|teller\(13),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[12]~53\,
	combout => \baudrate_gen_inst|teller[13]~54_combout\,
	cout => \baudrate_gen_inst|teller[13]~55\);

-- Location: FF_X88_Y29_N9
\baudrate_gen_inst|teller[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \baudrate_gen_inst|teller[13]~54_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(13));

-- Location: LCCOMB_X88_Y29_N24
\baudrate_gen_inst|teller~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller~63_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baudrate_gen_inst|teller\(11)) # (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[324]~10_combout\ $ 
-- (\baudrate_gen_inst|teller\(13))))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[324]~10_combout\ $ (\baudrate_gen_inst|teller\(13))) # 
-- (!\baudrate_gen_inst|teller\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[324]~10_combout\,
	datac => \baudrate_gen_inst|teller\(13),
	datad => \baudrate_gen_inst|teller\(11),
	combout => \baudrate_gen_inst|teller~63_combout\);

-- Location: LCCOMB_X88_Y29_N14
\baudrate_gen_inst|teller~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller~64_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|teller\(6)) # (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ $ 
-- (!\baudrate_gen_inst|teller\(3))))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ $ (!\baudrate_gen_inst|teller\(3))) # 
-- (!\baudrate_gen_inst|teller\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datab => \baudrate_gen_inst|teller\(6),
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datad => \baudrate_gen_inst|teller\(3),
	combout => \baudrate_gen_inst|teller~64_combout\);

-- Location: LCCOMB_X88_Y29_N10
\baudrate_gen_inst|teller~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller~90_combout\ = \baudrate_gen_inst|teller\(12) $ (((!\SW[16]~input_o\ & (!\SW[15]~input_o\ & !\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datad => \baudrate_gen_inst|teller\(12),
	combout => \baudrate_gen_inst|teller~90_combout\);

-- Location: LCCOMB_X88_Y29_N16
\baudrate_gen_inst|teller~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller~65_combout\ = (\baudrate_gen_inst|teller~62_combout\) # ((\baudrate_gen_inst|teller~63_combout\) # ((\baudrate_gen_inst|teller~64_combout\) # (\baudrate_gen_inst|teller~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller~62_combout\,
	datab => \baudrate_gen_inst|teller~63_combout\,
	datac => \baudrate_gen_inst|teller~64_combout\,
	datad => \baudrate_gen_inst|teller~90_combout\,
	combout => \baudrate_gen_inst|teller~65_combout\);

-- Location: LCCOMB_X94_Y25_N18
\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[432]\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(432) = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\) # ((\SW[14]~input_o\ & (\SW[15]~input_o\ & \SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	datad => \SW[16]~input_o\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(432));

-- Location: LCCOMB_X88_Y29_N4
\baudrate_gen_inst|teller~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller~59_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(432) & ((\baudrate_gen_inst|teller\(9)) # (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) $ (!\baudrate_gen_inst|teller\(10))))) 
-- # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(432) & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) $ (!\baudrate_gen_inst|teller\(10))) # (!\baudrate_gen_inst|teller\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(432),
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405),
	datac => \baudrate_gen_inst|teller\(10),
	datad => \baudrate_gen_inst|teller\(9),
	combout => \baudrate_gen_inst|teller~59_combout\);

-- Location: LCCOMB_X88_Y29_N18
\baudrate_gen_inst|teller~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller~60_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|teller\(4)) # (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ $ 
-- (!\baudrate_gen_inst|teller\(5))))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ $ (!\baudrate_gen_inst|teller\(5))) # 
-- (!\baudrate_gen_inst|teller\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baudrate_gen_inst|teller\(5),
	datad => \baudrate_gen_inst|teller\(4),
	combout => \baudrate_gen_inst|teller~60_combout\);

-- Location: LCCOMB_X88_Y29_N20
\baudrate_gen_inst|teller~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller~61_combout\ = (\baudrate_gen_inst|teller~59_combout\) # ((\baudrate_gen_inst|teller~60_combout\) # (\baudrate_gen_inst|teller\(2) $ (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(2),
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baudrate_gen_inst|teller~59_combout\,
	datad => \baudrate_gen_inst|teller~60_combout\,
	combout => \baudrate_gen_inst|teller~61_combout\);

-- Location: LCCOMB_X87_Y28_N2
\baudrate_gen_inst|teller[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[14]~56_combout\ = (\baudrate_gen_inst|teller\(14) & (\baudrate_gen_inst|teller[13]~55\ $ (GND))) # (!\baudrate_gen_inst|teller\(14) & (!\baudrate_gen_inst|teller[13]~55\ & VCC))
-- \baudrate_gen_inst|teller[14]~57\ = CARRY((\baudrate_gen_inst|teller\(14) & !\baudrate_gen_inst|teller[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|teller\(14),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[13]~55\,
	combout => \baudrate_gen_inst|teller[14]~56_combout\,
	cout => \baudrate_gen_inst|teller[14]~57\);

-- Location: FF_X87_Y28_N3
\baudrate_gen_inst|teller[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[14]~56_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(14));

-- Location: LCCOMB_X87_Y28_N4
\baudrate_gen_inst|teller[15]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[15]~68_combout\ = (\baudrate_gen_inst|teller\(15) & (!\baudrate_gen_inst|teller[14]~57\)) # (!\baudrate_gen_inst|teller\(15) & ((\baudrate_gen_inst|teller[14]~57\) # (GND)))
-- \baudrate_gen_inst|teller[15]~69\ = CARRY((!\baudrate_gen_inst|teller[14]~57\) # (!\baudrate_gen_inst|teller\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|teller\(15),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[14]~57\,
	combout => \baudrate_gen_inst|teller[15]~68_combout\,
	cout => \baudrate_gen_inst|teller[15]~69\);

-- Location: FF_X87_Y28_N5
\baudrate_gen_inst|teller[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[15]~68_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(15));

-- Location: LCCOMB_X87_Y28_N6
\baudrate_gen_inst|teller[16]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[16]~70_combout\ = (\baudrate_gen_inst|teller\(16) & (\baudrate_gen_inst|teller[15]~69\ $ (GND))) # (!\baudrate_gen_inst|teller\(16) & (!\baudrate_gen_inst|teller[15]~69\ & VCC))
-- \baudrate_gen_inst|teller[16]~71\ = CARRY((\baudrate_gen_inst|teller\(16) & !\baudrate_gen_inst|teller[15]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(16),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[15]~69\,
	combout => \baudrate_gen_inst|teller[16]~70_combout\,
	cout => \baudrate_gen_inst|teller[16]~71\);

-- Location: FF_X87_Y28_N7
\baudrate_gen_inst|teller[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[16]~70_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(16));

-- Location: LCCOMB_X87_Y28_N8
\baudrate_gen_inst|teller[17]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[17]~72_combout\ = (\baudrate_gen_inst|teller\(17) & (!\baudrate_gen_inst|teller[16]~71\)) # (!\baudrate_gen_inst|teller\(17) & ((\baudrate_gen_inst|teller[16]~71\) # (GND)))
-- \baudrate_gen_inst|teller[17]~73\ = CARRY((!\baudrate_gen_inst|teller[16]~71\) # (!\baudrate_gen_inst|teller\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|teller\(17),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[16]~71\,
	combout => \baudrate_gen_inst|teller[17]~72_combout\,
	cout => \baudrate_gen_inst|teller[17]~73\);

-- Location: FF_X87_Y28_N9
\baudrate_gen_inst|teller[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[17]~72_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(17));

-- Location: LCCOMB_X87_Y28_N10
\baudrate_gen_inst|teller[18]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[18]~74_combout\ = (\baudrate_gen_inst|teller\(18) & (\baudrate_gen_inst|teller[17]~73\ $ (GND))) # (!\baudrate_gen_inst|teller\(18) & (!\baudrate_gen_inst|teller[17]~73\ & VCC))
-- \baudrate_gen_inst|teller[18]~75\ = CARRY((\baudrate_gen_inst|teller\(18) & !\baudrate_gen_inst|teller[17]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(18),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[17]~73\,
	combout => \baudrate_gen_inst|teller[18]~74_combout\,
	cout => \baudrate_gen_inst|teller[18]~75\);

-- Location: FF_X87_Y28_N11
\baudrate_gen_inst|teller[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[18]~74_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(18));

-- Location: LCCOMB_X87_Y28_N12
\baudrate_gen_inst|teller[19]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[19]~76_combout\ = (\baudrate_gen_inst|teller\(19) & (!\baudrate_gen_inst|teller[18]~75\)) # (!\baudrate_gen_inst|teller\(19) & ((\baudrate_gen_inst|teller[18]~75\) # (GND)))
-- \baudrate_gen_inst|teller[19]~77\ = CARRY((!\baudrate_gen_inst|teller[18]~75\) # (!\baudrate_gen_inst|teller\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(19),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[18]~75\,
	combout => \baudrate_gen_inst|teller[19]~76_combout\,
	cout => \baudrate_gen_inst|teller[19]~77\);

-- Location: FF_X87_Y28_N13
\baudrate_gen_inst|teller[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[19]~76_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(19));

-- Location: LCCOMB_X87_Y28_N14
\baudrate_gen_inst|teller[20]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[20]~78_combout\ = (\baudrate_gen_inst|teller\(20) & (\baudrate_gen_inst|teller[19]~77\ $ (GND))) # (!\baudrate_gen_inst|teller\(20) & (!\baudrate_gen_inst|teller[19]~77\ & VCC))
-- \baudrate_gen_inst|teller[20]~79\ = CARRY((\baudrate_gen_inst|teller\(20) & !\baudrate_gen_inst|teller[19]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|teller\(20),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[19]~77\,
	combout => \baudrate_gen_inst|teller[20]~78_combout\,
	cout => \baudrate_gen_inst|teller[20]~79\);

-- Location: FF_X87_Y28_N15
\baudrate_gen_inst|teller[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[20]~78_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(20));

-- Location: LCCOMB_X87_Y28_N16
\baudrate_gen_inst|teller[21]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[21]~80_combout\ = (\baudrate_gen_inst|teller\(21) & (!\baudrate_gen_inst|teller[20]~79\)) # (!\baudrate_gen_inst|teller\(21) & ((\baudrate_gen_inst|teller[20]~79\) # (GND)))
-- \baudrate_gen_inst|teller[21]~81\ = CARRY((!\baudrate_gen_inst|teller[20]~79\) # (!\baudrate_gen_inst|teller\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|teller\(21),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[20]~79\,
	combout => \baudrate_gen_inst|teller[21]~80_combout\,
	cout => \baudrate_gen_inst|teller[21]~81\);

-- Location: FF_X87_Y28_N17
\baudrate_gen_inst|teller[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[21]~80_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(21));

-- Location: LCCOMB_X87_Y28_N18
\baudrate_gen_inst|teller[22]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[22]~82_combout\ = (\baudrate_gen_inst|teller\(22) & (\baudrate_gen_inst|teller[21]~81\ $ (GND))) # (!\baudrate_gen_inst|teller\(22) & (!\baudrate_gen_inst|teller[21]~81\ & VCC))
-- \baudrate_gen_inst|teller[22]~83\ = CARRY((\baudrate_gen_inst|teller\(22) & !\baudrate_gen_inst|teller[21]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|teller\(22),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[21]~81\,
	combout => \baudrate_gen_inst|teller[22]~82_combout\,
	cout => \baudrate_gen_inst|teller[22]~83\);

-- Location: FF_X87_Y28_N19
\baudrate_gen_inst|teller[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[22]~82_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(22));

-- Location: LCCOMB_X87_Y28_N20
\baudrate_gen_inst|teller[23]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[23]~84_combout\ = (\baudrate_gen_inst|teller\(23) & (!\baudrate_gen_inst|teller[22]~83\)) # (!\baudrate_gen_inst|teller\(23) & ((\baudrate_gen_inst|teller[22]~83\) # (GND)))
-- \baudrate_gen_inst|teller[23]~85\ = CARRY((!\baudrate_gen_inst|teller[22]~83\) # (!\baudrate_gen_inst|teller\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|teller\(23),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[22]~83\,
	combout => \baudrate_gen_inst|teller[23]~84_combout\,
	cout => \baudrate_gen_inst|teller[23]~85\);

-- Location: FF_X87_Y28_N21
\baudrate_gen_inst|teller[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[23]~84_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(23));

-- Location: LCCOMB_X87_Y28_N22
\baudrate_gen_inst|teller[24]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[24]~86_combout\ = (\baudrate_gen_inst|teller\(24) & (\baudrate_gen_inst|teller[23]~85\ $ (GND))) # (!\baudrate_gen_inst|teller\(24) & (!\baudrate_gen_inst|teller[23]~85\ & VCC))
-- \baudrate_gen_inst|teller[24]~87\ = CARRY((\baudrate_gen_inst|teller\(24) & !\baudrate_gen_inst|teller[23]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(24),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[23]~85\,
	combout => \baudrate_gen_inst|teller[24]~86_combout\,
	cout => \baudrate_gen_inst|teller[24]~87\);

-- Location: FF_X87_Y28_N23
\baudrate_gen_inst|teller[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[24]~86_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(24));

-- Location: LCCOMB_X87_Y28_N24
\baudrate_gen_inst|teller[25]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[25]~88_combout\ = \baudrate_gen_inst|teller[24]~87\ $ (\baudrate_gen_inst|teller\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \baudrate_gen_inst|teller\(25),
	cin => \baudrate_gen_inst|teller[24]~87\,
	combout => \baudrate_gen_inst|teller[25]~88_combout\);

-- Location: FF_X87_Y28_N25
\baudrate_gen_inst|teller[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[25]~88_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(25));

-- Location: LCCOMB_X87_Y28_N28
\baudrate_gen_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Equal0~2_combout\ = (!\baudrate_gen_inst|teller\(24) & (!\baudrate_gen_inst|teller\(22) & (!\baudrate_gen_inst|teller\(25) & !\baudrate_gen_inst|teller\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(24),
	datab => \baudrate_gen_inst|teller\(22),
	datac => \baudrate_gen_inst|teller\(25),
	datad => \baudrate_gen_inst|teller\(23),
	combout => \baudrate_gen_inst|Equal0~2_combout\);

-- Location: LCCOMB_X87_Y28_N30
\baudrate_gen_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Equal0~0_combout\ = (!\baudrate_gen_inst|teller\(16) & (!\baudrate_gen_inst|teller\(15) & (!\baudrate_gen_inst|teller\(17) & !\baudrate_gen_inst|teller\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(16),
	datab => \baudrate_gen_inst|teller\(15),
	datac => \baudrate_gen_inst|teller\(17),
	datad => \baudrate_gen_inst|teller\(14),
	combout => \baudrate_gen_inst|Equal0~0_combout\);

-- Location: LCCOMB_X86_Y28_N24
\baudrate_gen_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Equal0~1_combout\ = (!\baudrate_gen_inst|teller\(21) & (!\baudrate_gen_inst|teller\(20) & (!\baudrate_gen_inst|teller\(18) & !\baudrate_gen_inst|teller\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(21),
	datab => \baudrate_gen_inst|teller\(20),
	datac => \baudrate_gen_inst|teller\(18),
	datad => \baudrate_gen_inst|teller\(19),
	combout => \baudrate_gen_inst|Equal0~1_combout\);

-- Location: LCCOMB_X87_Y28_N26
\baudrate_gen_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Equal0~3_combout\ = (\baudrate_gen_inst|Equal0~2_combout\ & (\baudrate_gen_inst|Equal0~0_combout\ & \baudrate_gen_inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baudrate_gen_inst|Equal0~2_combout\,
	datac => \baudrate_gen_inst|Equal0~0_combout\,
	datad => \baudrate_gen_inst|Equal0~1_combout\,
	combout => \baudrate_gen_inst|Equal0~3_combout\);

-- Location: LCCOMB_X87_Y29_N2
\baudrate_gen_inst|teller~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller~66_combout\ = (\baudrate_gen_inst|teller~58_combout\) # ((\baudrate_gen_inst|teller~65_combout\) # ((\baudrate_gen_inst|teller~61_combout\) # (!\baudrate_gen_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller~58_combout\,
	datab => \baudrate_gen_inst|teller~65_combout\,
	datac => \baudrate_gen_inst|teller~61_combout\,
	datad => \baudrate_gen_inst|Equal0~3_combout\,
	combout => \baudrate_gen_inst|teller~66_combout\);

-- Location: LCCOMB_X87_Y29_N0
\baudrate_gen_inst|teller[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[20]~67_combout\ = (\start_teller~q\) # (((!\baudrate_gen_inst|Equal0~12_combout\ & !\baudrate_gen_inst|teller~66_combout\)) # (!\reset_synchronizer_inst|rst_clk_n~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_teller~q\,
	datab => \reset_synchronizer_inst|rst_clk_n~q\,
	datac => \baudrate_gen_inst|Equal0~12_combout\,
	datad => \baudrate_gen_inst|teller~66_combout\,
	combout => \baudrate_gen_inst|teller[20]~67_combout\);

-- Location: FF_X87_Y29_N7
\baudrate_gen_inst|teller[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[0]~28_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(0));

-- Location: LCCOMB_X87_Y29_N8
\baudrate_gen_inst|teller[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[1]~30_combout\ = (\baudrate_gen_inst|teller\(1) & (!\baudrate_gen_inst|teller[0]~29\)) # (!\baudrate_gen_inst|teller\(1) & ((\baudrate_gen_inst|teller[0]~29\) # (GND)))
-- \baudrate_gen_inst|teller[1]~31\ = CARRY((!\baudrate_gen_inst|teller[0]~29\) # (!\baudrate_gen_inst|teller\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(1),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[0]~29\,
	combout => \baudrate_gen_inst|teller[1]~30_combout\,
	cout => \baudrate_gen_inst|teller[1]~31\);

-- Location: FF_X87_Y29_N9
\baudrate_gen_inst|teller[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[1]~30_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(1));

-- Location: LCCOMB_X87_Y29_N10
\baudrate_gen_inst|teller[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|teller[2]~32_combout\ = (\baudrate_gen_inst|teller\(2) & (\baudrate_gen_inst|teller[1]~31\ $ (GND))) # (!\baudrate_gen_inst|teller\(2) & (!\baudrate_gen_inst|teller[1]~31\ & VCC))
-- \baudrate_gen_inst|teller[2]~33\ = CARRY((\baudrate_gen_inst|teller\(2) & !\baudrate_gen_inst|teller[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(2),
	datad => VCC,
	cin => \baudrate_gen_inst|teller[1]~31\,
	combout => \baudrate_gen_inst|teller[2]~32_combout\,
	cout => \baudrate_gen_inst|teller[2]~33\);

-- Location: FF_X87_Y29_N11
\baudrate_gen_inst|teller[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[2]~32_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(2));

-- Location: FF_X87_Y29_N13
\baudrate_gen_inst|teller[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|teller[3]~34_combout\,
	sclr => \baudrate_gen_inst|teller[20]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|teller\(3));

-- Location: LCCOMB_X88_Y29_N30
\baudrate_gen_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Equal0~4_combout\ = (\baudrate_gen_inst|teller\(3) & (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ $ 
-- (\baudrate_gen_inst|teller\(2))))) # (!\baudrate_gen_inst|teller\(3) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\ & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\ $ 
-- (\baudrate_gen_inst|teller\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(3),
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_14~32_combout\,
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_13~34_combout\,
	datad => \baudrate_gen_inst|teller\(2),
	combout => \baudrate_gen_inst|Equal0~4_combout\);

-- Location: LCCOMB_X88_Y29_N8
\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[351]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[351]~9_combout\ = (\SW[16]~input_o\) # ((\baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\) # (\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~20_combout\,
	datad => \SW[15]~input_o\,
	combout => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[351]~9_combout\);

-- Location: LCCOMB_X88_Y29_N6
\baudrate_gen_inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Equal0~10_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[351]~9_combout\ & (!\baudrate_gen_inst|teller\(11) & (\baudrate_gen_inst|teller\(6) $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(486))))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[351]~9_combout\ & (\baudrate_gen_inst|teller\(11) & (\baudrate_gen_inst|teller\(6) $ 
-- (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(486)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[351]~9_combout\,
	datab => \baudrate_gen_inst|teller\(6),
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(486),
	datad => \baudrate_gen_inst|teller\(11),
	combout => \baudrate_gen_inst|Equal0~10_combout\);

-- Location: LCCOMB_X88_Y29_N0
\baudrate_gen_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Equal0~7_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(432) & (!\baudrate_gen_inst|teller\(8) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) $ (\baudrate_gen_inst|teller\(9))))) # 
-- (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(432) & (\baudrate_gen_inst|teller\(8) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405) $ (\baudrate_gen_inst|teller\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(432),
	datab => \baudrate_gen_inst|teller\(8),
	datac => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(405),
	datad => \baudrate_gen_inst|teller\(9),
	combout => \baudrate_gen_inst|Equal0~7_combout\);

-- Location: LCCOMB_X88_Y29_N22
\baudrate_gen_inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Equal0~8_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (!\baudrate_gen_inst|teller\(10) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[324]~10_combout\ $ 
-- (!\baudrate_gen_inst|teller\(12))))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\ & (\baudrate_gen_inst|teller\(10) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[324]~10_combout\ $ 
-- (!\baudrate_gen_inst|teller\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[378]~8_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose[324]~10_combout\,
	datac => \baudrate_gen_inst|teller\(10),
	datad => \baudrate_gen_inst|teller\(12),
	combout => \baudrate_gen_inst|Equal0~8_combout\);

-- Location: LCCOMB_X88_Y29_N28
\baudrate_gen_inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Equal0~9_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (!\baudrate_gen_inst|teller\(0) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ $ 
-- (\baudrate_gen_inst|teller\(1))))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\ & (\baudrate_gen_inst|teller\(0) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\ $ 
-- (\baudrate_gen_inst|teller\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_16~34_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datac => \baudrate_gen_inst|teller\(0),
	datad => \baudrate_gen_inst|teller\(1),
	combout => \baudrate_gen_inst|Equal0~9_combout\);

-- Location: LCCOMB_X88_Y29_N12
\baudrate_gen_inst|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Equal0~11_combout\ = (\baudrate_gen_inst|Equal0~10_combout\ & (\baudrate_gen_inst|Equal0~7_combout\ & (\baudrate_gen_inst|Equal0~8_combout\ & \baudrate_gen_inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Equal0~10_combout\,
	datab => \baudrate_gen_inst|Equal0~7_combout\,
	datac => \baudrate_gen_inst|Equal0~8_combout\,
	datad => \baudrate_gen_inst|Equal0~9_combout\,
	combout => \baudrate_gen_inst|Equal0~11_combout\);

-- Location: LCCOMB_X86_Y29_N18
\baudrate_gen_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Equal0~5_combout\ = (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (!\baudrate_gen_inst|teller\(5) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ $ 
-- (\baudrate_gen_inst|teller\(4))))) # (!\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\ & (\baudrate_gen_inst|teller\(5) & (\baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\ $ 
-- (\baudrate_gen_inst|teller\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_10~32_combout\,
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|op_12~34_combout\,
	datac => \baudrate_gen_inst|teller\(4),
	datad => \baudrate_gen_inst|teller\(5),
	combout => \baudrate_gen_inst|Equal0~5_combout\);

-- Location: LCCOMB_X86_Y29_N16
\baudrate_gen_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Equal0~6_combout\ = (!\baudrate_gen_inst|teller\(13) & (\baudrate_gen_inst|Equal0~5_combout\ & (\baudrate_gen_inst|teller\(7) $ (\baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(459)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|teller\(7),
	datab => \baudrate_gen_inst|Div0|auto_generated|divider|divider|selnose\(459),
	datac => \baudrate_gen_inst|teller\(13),
	datad => \baudrate_gen_inst|Equal0~5_combout\,
	combout => \baudrate_gen_inst|Equal0~6_combout\);

-- Location: LCCOMB_X87_Y29_N4
\baudrate_gen_inst|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|Equal0~12_combout\ = (\baudrate_gen_inst|Equal0~4_combout\ & (\baudrate_gen_inst|Equal0~11_combout\ & (\baudrate_gen_inst|Equal0~6_combout\ & \baudrate_gen_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Equal0~4_combout\,
	datab => \baudrate_gen_inst|Equal0~11_combout\,
	datac => \baudrate_gen_inst|Equal0~6_combout\,
	datad => \baudrate_gen_inst|Equal0~3_combout\,
	combout => \baudrate_gen_inst|Equal0~12_combout\);

-- Location: LCCOMB_X86_Y29_N24
\baudrate_gen_inst|baud_enable_m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baudrate_gen_inst|baud_enable_m~0_combout\ = (\baudrate_gen_inst|Equal0~12_combout\ & !\start_teller~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_gen_inst|Equal0~12_combout\,
	datad => \start_teller~q\,
	combout => \baudrate_gen_inst|baud_enable_m~0_combout\);

-- Location: FF_X86_Y29_N25
\baudrate_gen_inst|baud_enable_m\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \baudrate_gen_inst|baud_enable_m~0_combout\,
	sclr => \reset_synchronizer_inst|ALT_INV_rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baudrate_gen_inst|baud_enable_m~q\);

-- Location: LCCOMB_X84_Y32_N12
\Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (\Selector26~0_combout\) # ((\mottak_state.s_shift_in~q\ & (mottak_shiftreg(1) & \baudrate_gen_inst|baud_enable_m~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mottak_state.s_shift_in~q\,
	datab => mottak_shiftreg(1),
	datac => \Selector26~0_combout\,
	datad => \baudrate_gen_inst|baud_enable_m~q\,
	combout => \Selector26~1_combout\);

-- Location: LCCOMB_X83_Y32_N8
\mottatt_data[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottatt_data[3]~1_combout\ = (!\SW[17]~input_o\ & \reset_synchronizer_inst|rst_clk_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \reset_synchronizer_inst|rst_clk_n~q\,
	combout => \mottatt_data[3]~1_combout\);

-- Location: FF_X84_Y32_N13
\mottak_shiftreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector26~1_combout\,
	ena => \mottatt_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottak_shiftreg(0));

-- Location: LCCOMB_X84_Y32_N10
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (mottak_shiftreg(0) & (((mottak_shiftreg(9))))) # (!mottak_shiftreg(0) & ((\baudrate_gen_inst|baud_enable_m~q\ & (\data_inn_qq~q\)) # (!\baudrate_gen_inst|baud_enable_m~q\ & ((mottak_shiftreg(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mottak_shiftreg(0),
	datab => \data_inn_qq~q\,
	datac => mottak_shiftreg(9),
	datad => \baudrate_gen_inst|baud_enable_m~q\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X84_Y32_N22
\Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\mottak_state.s_shift_in~q\ & (\Selector17~0_combout\)) # (!\mottak_state.s_shift_in~q\ & (((mottak_shiftreg(9)) # (!\mottak_state.s_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~0_combout\,
	datab => \mottak_state.s_idle~q\,
	datac => mottak_shiftreg(9),
	datad => \mottak_state.s_shift_in~q\,
	combout => \Selector17~1_combout\);

-- Location: FF_X84_Y32_N23
\mottak_shiftreg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector17~1_combout\,
	ena => \mottatt_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottak_shiftreg(9));

-- Location: LCCOMB_X84_Y32_N30
\mottak_shiftreg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_shiftreg~8_combout\ = (!mottak_shiftreg(0) & \baudrate_gen_inst|baud_enable_m~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mottak_shiftreg(0),
	datad => \baudrate_gen_inst|baud_enable_m~q\,
	combout => \mottak_shiftreg~8_combout\);

-- Location: LCCOMB_X85_Y32_N6
\mottak_shiftreg[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_shiftreg[8]~7_combout\ = (\mottak_shiftreg~8_combout\ & (mottak_shiftreg(9))) # (!\mottak_shiftreg~8_combout\ & ((mottak_shiftreg(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mottak_shiftreg(9),
	datac => mottak_shiftreg(8),
	datad => \mottak_shiftreg~8_combout\,
	combout => \mottak_shiftreg[8]~7_combout\);

-- Location: LCCOMB_X84_Y32_N26
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\mottak_state.s_idle~q\ & mottak_shiftreg(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mottak_state.s_idle~q\,
	datad => mottak_shiftreg(8),
	combout => \Selector18~0_combout\);

-- Location: FF_X85_Y32_N7
\mottak_shiftreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottak_shiftreg[8]~7_combout\,
	asdata => \Selector18~0_combout\,
	sload => \ALT_INV_mottak_state.s_shift_in~q\,
	ena => \mottatt_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottak_shiftreg(8));

-- Location: LCCOMB_X85_Y32_N16
\mottak_shiftreg[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_shiftreg[7]~6_combout\ = (\mottak_shiftreg~8_combout\ & (mottak_shiftreg(8))) # (!\mottak_shiftreg~8_combout\ & ((mottak_shiftreg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mottak_shiftreg(8),
	datac => mottak_shiftreg(7),
	datad => \mottak_shiftreg~8_combout\,
	combout => \mottak_shiftreg[7]~6_combout\);

-- Location: LCCOMB_X84_Y32_N4
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\mottak_state.s_idle~q\ & mottak_shiftreg(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mottak_state.s_idle~q\,
	datad => mottak_shiftreg(7),
	combout => \Selector19~0_combout\);

-- Location: FF_X85_Y32_N17
\mottak_shiftreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottak_shiftreg[7]~6_combout\,
	asdata => \Selector19~0_combout\,
	sload => \ALT_INV_mottak_state.s_shift_in~q\,
	ena => \mottatt_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottak_shiftreg(7));

-- Location: LCCOMB_X85_Y32_N18
\mottak_shiftreg[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_shiftreg[6]~5_combout\ = (\mottak_shiftreg~8_combout\ & (mottak_shiftreg(7))) # (!\mottak_shiftreg~8_combout\ & ((mottak_shiftreg(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mottak_shiftreg(7),
	datac => mottak_shiftreg(6),
	datad => \mottak_shiftreg~8_combout\,
	combout => \mottak_shiftreg[6]~5_combout\);

-- Location: LCCOMB_X84_Y32_N6
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\mottak_state.s_idle~q\ & mottak_shiftreg(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mottak_state.s_idle~q\,
	datad => mottak_shiftreg(6),
	combout => \Selector20~0_combout\);

-- Location: FF_X85_Y32_N19
\mottak_shiftreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottak_shiftreg[6]~5_combout\,
	asdata => \Selector20~0_combout\,
	sload => \ALT_INV_mottak_state.s_shift_in~q\,
	ena => \mottatt_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottak_shiftreg(6));

-- Location: LCCOMB_X85_Y32_N20
\mottak_shiftreg[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_shiftreg[5]~4_combout\ = (\mottak_shiftreg~8_combout\ & (mottak_shiftreg(6))) # (!\mottak_shiftreg~8_combout\ & ((mottak_shiftreg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mottak_shiftreg(6),
	datac => mottak_shiftreg(5),
	datad => \mottak_shiftreg~8_combout\,
	combout => \mottak_shiftreg[5]~4_combout\);

-- Location: LCCOMB_X85_Y32_N30
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (mottak_shiftreg(5) & \mottak_state.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mottak_shiftreg(5),
	datad => \mottak_state.s_idle~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X85_Y32_N21
\mottak_shiftreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottak_shiftreg[5]~4_combout\,
	asdata => \Selector21~0_combout\,
	sload => \ALT_INV_mottak_state.s_shift_in~q\,
	ena => \mottatt_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottak_shiftreg(5));

-- Location: LCCOMB_X85_Y32_N14
\mottak_shiftreg[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_shiftreg[4]~3_combout\ = (\mottak_shiftreg~8_combout\ & (mottak_shiftreg(5))) # (!\mottak_shiftreg~8_combout\ & ((mottak_shiftreg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mottak_shiftreg(5),
	datac => mottak_shiftreg(4),
	datad => \mottak_shiftreg~8_combout\,
	combout => \mottak_shiftreg[4]~3_combout\);

-- Location: LCCOMB_X85_Y32_N4
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (mottak_shiftreg(4) & \mottak_state.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mottak_shiftreg(4),
	datad => \mottak_state.s_idle~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X85_Y32_N15
\mottak_shiftreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottak_shiftreg[4]~3_combout\,
	asdata => \Selector22~0_combout\,
	sload => \ALT_INV_mottak_state.s_shift_in~q\,
	ena => \mottatt_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottak_shiftreg(4));

-- Location: LCCOMB_X85_Y32_N12
\mottak_shiftreg[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_shiftreg[3]~2_combout\ = (\mottak_shiftreg~8_combout\ & (mottak_shiftreg(4))) # (!\mottak_shiftreg~8_combout\ & ((mottak_shiftreg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mottak_shiftreg(4),
	datac => mottak_shiftreg(3),
	datad => \mottak_shiftreg~8_combout\,
	combout => \mottak_shiftreg[3]~2_combout\);

-- Location: LCCOMB_X85_Y32_N22
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (mottak_shiftreg(3) & \mottak_state.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mottak_shiftreg(3),
	datad => \mottak_state.s_idle~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X85_Y32_N13
\mottak_shiftreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottak_shiftreg[3]~2_combout\,
	asdata => \Selector23~0_combout\,
	sload => \ALT_INV_mottak_state.s_shift_in~q\,
	ena => \mottatt_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottak_shiftreg(3));

-- Location: LCCOMB_X85_Y32_N2
\mottak_shiftreg[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_shiftreg[2]~1_combout\ = (\mottak_shiftreg~8_combout\ & (mottak_shiftreg(3))) # (!\mottak_shiftreg~8_combout\ & ((mottak_shiftreg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mottak_shiftreg(3),
	datac => mottak_shiftreg(2),
	datad => \mottak_shiftreg~8_combout\,
	combout => \mottak_shiftreg[2]~1_combout\);

-- Location: LCCOMB_X85_Y32_N8
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (mottak_shiftreg(2) & \mottak_state.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mottak_shiftreg(2),
	datad => \mottak_state.s_idle~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X85_Y32_N3
\mottak_shiftreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottak_shiftreg[2]~1_combout\,
	asdata => \Selector24~0_combout\,
	sload => \ALT_INV_mottak_state.s_shift_in~q\,
	ena => \mottatt_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottak_shiftreg(2));

-- Location: LCCOMB_X85_Y32_N28
\mottak_shiftreg[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottak_shiftreg[1]~0_combout\ = (\mottak_shiftreg~8_combout\ & (mottak_shiftreg(2))) # (!\mottak_shiftreg~8_combout\ & ((mottak_shiftreg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mottak_shiftreg(2),
	datac => mottak_shiftreg(1),
	datad => \mottak_shiftreg~8_combout\,
	combout => \mottak_shiftreg[1]~0_combout\);

-- Location: LCCOMB_X84_Y32_N16
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\mottak_state.s_idle~q\ & mottak_shiftreg(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mottak_state.s_idle~q\,
	datad => mottak_shiftreg(1),
	combout => \Selector25~0_combout\);

-- Location: FF_X85_Y32_N29
\mottak_shiftreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottak_shiftreg[1]~0_combout\,
	asdata => \Selector25~0_combout\,
	sload => \ALT_INV_mottak_state.s_shift_in~q\,
	ena => \mottatt_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottak_shiftreg(1));

-- Location: LCCOMB_X85_Y32_N24
\mottatt_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottatt_data[0]~feeder_combout\ = mottak_shiftreg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mottak_shiftreg(1),
	combout => \mottatt_data[0]~feeder_combout\);

-- Location: LCCOMB_X83_Y32_N28
\mottatt_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottatt_data[0]~0_combout\ = (\reset_synchronizer_inst|rst_clk_n~q\ & (!\SW[17]~input_o\ & \mottak_state.s_offload~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_synchronizer_inst|rst_clk_n~q\,
	datac => \SW[17]~input_o\,
	datad => \mottak_state.s_offload~q\,
	combout => \mottatt_data[0]~0_combout\);

-- Location: FF_X85_Y32_N25
\mottatt_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottatt_data[0]~feeder_combout\,
	ena => \mottatt_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottatt_data(0));

-- Location: LCCOMB_X86_Y32_N0
\mottatt_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottatt_data[1]~feeder_combout\ = mottak_shiftreg(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mottak_shiftreg(2),
	combout => \mottatt_data[1]~feeder_combout\);

-- Location: FF_X86_Y32_N1
\mottatt_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottatt_data[1]~feeder_combout\,
	ena => \mottatt_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottatt_data(1));

-- Location: LCCOMB_X86_Y32_N26
\mottatt_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottatt_data[2]~feeder_combout\ = mottak_shiftreg(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mottak_shiftreg(3),
	combout => \mottatt_data[2]~feeder_combout\);

-- Location: FF_X86_Y32_N27
\mottatt_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottatt_data[2]~feeder_combout\,
	ena => \mottatt_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottatt_data(2));

-- Location: LCCOMB_X86_Y32_N24
\mottatt_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottatt_data[3]~feeder_combout\ = mottak_shiftreg(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mottak_shiftreg(4),
	combout => \mottatt_data[3]~feeder_combout\);

-- Location: FF_X86_Y32_N25
\mottatt_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottatt_data[3]~feeder_combout\,
	ena => \mottatt_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottatt_data(3));

-- Location: LCCOMB_X86_Y32_N10
\mottatt_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottatt_data[4]~feeder_combout\ = mottak_shiftreg(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mottak_shiftreg(5),
	combout => \mottatt_data[4]~feeder_combout\);

-- Location: FF_X86_Y32_N11
\mottatt_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottatt_data[4]~feeder_combout\,
	ena => \mottatt_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottatt_data(4));

-- Location: LCCOMB_X85_Y32_N26
\mottatt_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottatt_data[5]~feeder_combout\ = mottak_shiftreg(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mottak_shiftreg(6),
	combout => \mottatt_data[5]~feeder_combout\);

-- Location: FF_X85_Y32_N27
\mottatt_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottatt_data[5]~feeder_combout\,
	ena => \mottatt_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottatt_data(5));

-- Location: LCCOMB_X85_Y32_N0
\mottatt_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottatt_data[6]~feeder_combout\ = mottak_shiftreg(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mottak_shiftreg(7),
	combout => \mottatt_data[6]~feeder_combout\);

-- Location: FF_X85_Y32_N1
\mottatt_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottatt_data[6]~feeder_combout\,
	ena => \mottatt_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottatt_data(6));

-- Location: LCCOMB_X85_Y32_N10
\mottatt_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottatt_data[7]~feeder_combout\ = mottak_shiftreg(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mottak_shiftreg(8),
	combout => \mottatt_data[7]~feeder_combout\);

-- Location: FF_X85_Y32_N11
\mottatt_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottatt_data[7]~feeder_combout\,
	ena => \mottatt_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mottatt_data(7));

-- Location: LCCOMB_X83_Y32_N26
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\mottak_state.s_error~q\) # ((\mottak_state.s_idle~q\ & \error_signal~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mottak_state.s_error~q\,
	datab => \mottak_state.s_idle~q\,
	datac => \error_signal~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X83_Y32_N27
error_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \mottatt_data[3]~1_combout\,
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

-- Location: LCCOMB_X73_Y32_N28
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

-- Location: FF_X73_Y32_N29
vippe_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vippe_a~feeder_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vippe_a~q\);

-- Location: LCCOMB_X73_Y32_N18
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

-- Location: FF_X73_Y32_N19
vippe_b : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vippe_b~feeder_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vippe_b~q\);

-- Location: LCCOMB_X73_Y32_N12
\mottatt_blink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mottatt_blink~0_combout\ = (!\SW[17]~input_o\ & \vippe_b~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \vippe_b~q\,
	combout => \mottatt_blink~0_combout\);

-- Location: FF_X73_Y32_N13
mottatt_blink : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mottatt_blink~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mottatt_blink~q\);

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

GPIO(5) <= \GPIO[5]~output_o\;

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

GPIO(7) <= \GPIO[7]~output_o\;
END structure;


