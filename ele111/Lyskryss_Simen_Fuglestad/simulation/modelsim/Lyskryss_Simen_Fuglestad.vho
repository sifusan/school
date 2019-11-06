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

-- DATE "10/23/2019 08:33:05"

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

ENTITY 	lyskryss IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	GPIO : BUFFER std_logic_vector(35 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0)
	);
END lyskryss;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- GPIO[0]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[1]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[3]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[4]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[5]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[7]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lyskryss IS
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
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
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
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \GPIO[0]~input_o\ : std_logic;
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \GPIO[2]~input_o\ : std_logic;
SIGNAL \GPIO[3]~input_o\ : std_logic;
SIGNAL \GPIO[4]~input_o\ : std_logic;
SIGNAL \GPIO[5]~input_o\ : std_logic;
SIGNAL \GPIO[6]~input_o\ : std_logic;
SIGNAL \GPIO[7]~input_o\ : std_logic;
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
SIGNAL \GPIO[1]~output_o\ : std_logic;
SIGNAL \GPIO[2]~output_o\ : std_logic;
SIGNAL \GPIO[3]~output_o\ : std_logic;
SIGNAL \GPIO[4]~output_o\ : std_logic;
SIGNAL \GPIO[5]~output_o\ : std_logic;
SIGNAL \GPIO[6]~output_o\ : std_logic;
SIGNAL \GPIO[7]~output_o\ : std_logic;
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
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \Enable_gen_0|teller[0]~26_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[20]~28_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[0]~27\ : std_logic;
SIGNAL \Enable_gen_0|teller[1]~29_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[1]~30\ : std_logic;
SIGNAL \Enable_gen_0|teller[2]~31_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[2]~32\ : std_logic;
SIGNAL \Enable_gen_0|teller[3]~33_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[3]~34\ : std_logic;
SIGNAL \Enable_gen_0|teller[4]~35_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[4]~36\ : std_logic;
SIGNAL \Enable_gen_0|teller[5]~37_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[5]~38\ : std_logic;
SIGNAL \Enable_gen_0|teller[6]~39_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[6]~40\ : std_logic;
SIGNAL \Enable_gen_0|teller[7]~41_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[7]~42\ : std_logic;
SIGNAL \Enable_gen_0|teller[8]~43_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[8]~44\ : std_logic;
SIGNAL \Enable_gen_0|teller[9]~45_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[9]~46\ : std_logic;
SIGNAL \Enable_gen_0|teller[10]~47_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[10]~48\ : std_logic;
SIGNAL \Enable_gen_0|teller[11]~49_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[11]~50\ : std_logic;
SIGNAL \Enable_gen_0|teller[12]~51_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[12]~52\ : std_logic;
SIGNAL \Enable_gen_0|teller[13]~53_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[13]~54\ : std_logic;
SIGNAL \Enable_gen_0|teller[14]~55_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[14]~56\ : std_logic;
SIGNAL \Enable_gen_0|teller[15]~57_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[15]~58\ : std_logic;
SIGNAL \Enable_gen_0|teller[16]~59_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[16]~60\ : std_logic;
SIGNAL \Enable_gen_0|teller[17]~61_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[17]~62\ : std_logic;
SIGNAL \Enable_gen_0|teller[18]~63_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[18]~64\ : std_logic;
SIGNAL \Enable_gen_0|teller[19]~65_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[19]~66\ : std_logic;
SIGNAL \Enable_gen_0|teller[20]~67_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[20]~68\ : std_logic;
SIGNAL \Enable_gen_0|teller[21]~69_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[21]~70\ : std_logic;
SIGNAL \Enable_gen_0|teller[22]~71_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[22]~72\ : std_logic;
SIGNAL \Enable_gen_0|teller[23]~73_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[23]~74\ : std_logic;
SIGNAL \Enable_gen_0|teller[24]~75_combout\ : std_logic;
SIGNAL \Enable_gen_0|teller[24]~76\ : std_logic;
SIGNAL \Enable_gen_0|teller[25]~77_combout\ : std_logic;
SIGNAL \Enable_gen_0|Equal0~7_combout\ : std_logic;
SIGNAL \Enable_gen_0|Equal0~5_combout\ : std_logic;
SIGNAL \Enable_gen_0|Equal0~6_combout\ : std_logic;
SIGNAL \Enable_gen_0|Equal0~0_combout\ : std_logic;
SIGNAL \Enable_gen_0|Equal0~3_combout\ : std_logic;
SIGNAL \Enable_gen_0|Equal0~2_combout\ : std_logic;
SIGNAL \Enable_gen_0|Equal0~1_combout\ : std_logic;
SIGNAL \Enable_gen_0|Equal0~4_combout\ : std_logic;
SIGNAL \Enable_gen_0|Equal0~8_combout\ : std_logic;
SIGNAL \Enable_gen_0|enable~0_combout\ : std_logic;
SIGNAL \Enable_gen_0|enable~q\ : std_logic;
SIGNAL \hallo~0_combout\ : std_logic;
SIGNAL \hallo~q\ : std_logic;
SIGNAL \Enable_gen_0|teller\ : std_logic_vector(25 DOWNTO 0);

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

-- Location: LCCOMB_X105_Y11_N6
\Enable_gen_0|teller[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[0]~26_combout\ = \Enable_gen_0|teller\(0) $ (VCC)
-- \Enable_gen_0|teller[0]~27\ = CARRY(\Enable_gen_0|teller\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(0),
	datad => VCC,
	combout => \Enable_gen_0|teller[0]~26_combout\,
	cout => \Enable_gen_0|teller[0]~27\);

-- Location: LCCOMB_X106_Y11_N30
\Enable_gen_0|teller[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[20]~28_combout\ = (!\Enable_gen_0|Equal0~8_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datad => \Enable_gen_0|Equal0~8_combout\,
	combout => \Enable_gen_0|teller[20]~28_combout\);

-- Location: FF_X105_Y11_N7
\Enable_gen_0|teller[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[0]~26_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(0));

-- Location: LCCOMB_X105_Y11_N8
\Enable_gen_0|teller[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[1]~29_combout\ = (\Enable_gen_0|teller\(1) & (!\Enable_gen_0|teller[0]~27\)) # (!\Enable_gen_0|teller\(1) & ((\Enable_gen_0|teller[0]~27\) # (GND)))
-- \Enable_gen_0|teller[1]~30\ = CARRY((!\Enable_gen_0|teller[0]~27\) # (!\Enable_gen_0|teller\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_0|teller\(1),
	datad => VCC,
	cin => \Enable_gen_0|teller[0]~27\,
	combout => \Enable_gen_0|teller[1]~29_combout\,
	cout => \Enable_gen_0|teller[1]~30\);

-- Location: FF_X105_Y11_N9
\Enable_gen_0|teller[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[1]~29_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(1));

-- Location: LCCOMB_X105_Y11_N10
\Enable_gen_0|teller[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[2]~31_combout\ = (\Enable_gen_0|teller\(2) & (\Enable_gen_0|teller[1]~30\ $ (GND))) # (!\Enable_gen_0|teller\(2) & (!\Enable_gen_0|teller[1]~30\ & VCC))
-- \Enable_gen_0|teller[2]~32\ = CARRY((\Enable_gen_0|teller\(2) & !\Enable_gen_0|teller[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(2),
	datad => VCC,
	cin => \Enable_gen_0|teller[1]~30\,
	combout => \Enable_gen_0|teller[2]~31_combout\,
	cout => \Enable_gen_0|teller[2]~32\);

-- Location: FF_X105_Y11_N11
\Enable_gen_0|teller[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[2]~31_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(2));

-- Location: LCCOMB_X105_Y11_N12
\Enable_gen_0|teller[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[3]~33_combout\ = (\Enable_gen_0|teller\(3) & (!\Enable_gen_0|teller[2]~32\)) # (!\Enable_gen_0|teller\(3) & ((\Enable_gen_0|teller[2]~32\) # (GND)))
-- \Enable_gen_0|teller[3]~34\ = CARRY((!\Enable_gen_0|teller[2]~32\) # (!\Enable_gen_0|teller\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(3),
	datad => VCC,
	cin => \Enable_gen_0|teller[2]~32\,
	combout => \Enable_gen_0|teller[3]~33_combout\,
	cout => \Enable_gen_0|teller[3]~34\);

-- Location: FF_X105_Y11_N13
\Enable_gen_0|teller[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[3]~33_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(3));

-- Location: LCCOMB_X105_Y11_N14
\Enable_gen_0|teller[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[4]~35_combout\ = (\Enable_gen_0|teller\(4) & (\Enable_gen_0|teller[3]~34\ $ (GND))) # (!\Enable_gen_0|teller\(4) & (!\Enable_gen_0|teller[3]~34\ & VCC))
-- \Enable_gen_0|teller[4]~36\ = CARRY((\Enable_gen_0|teller\(4) & !\Enable_gen_0|teller[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_0|teller\(4),
	datad => VCC,
	cin => \Enable_gen_0|teller[3]~34\,
	combout => \Enable_gen_0|teller[4]~35_combout\,
	cout => \Enable_gen_0|teller[4]~36\);

-- Location: FF_X105_Y11_N15
\Enable_gen_0|teller[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[4]~35_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(4));

-- Location: LCCOMB_X105_Y11_N16
\Enable_gen_0|teller[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[5]~37_combout\ = (\Enable_gen_0|teller\(5) & (!\Enable_gen_0|teller[4]~36\)) # (!\Enable_gen_0|teller\(5) & ((\Enable_gen_0|teller[4]~36\) # (GND)))
-- \Enable_gen_0|teller[5]~38\ = CARRY((!\Enable_gen_0|teller[4]~36\) # (!\Enable_gen_0|teller\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_0|teller\(5),
	datad => VCC,
	cin => \Enable_gen_0|teller[4]~36\,
	combout => \Enable_gen_0|teller[5]~37_combout\,
	cout => \Enable_gen_0|teller[5]~38\);

-- Location: FF_X105_Y11_N17
\Enable_gen_0|teller[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[5]~37_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(5));

-- Location: LCCOMB_X105_Y11_N18
\Enable_gen_0|teller[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[6]~39_combout\ = (\Enable_gen_0|teller\(6) & (\Enable_gen_0|teller[5]~38\ $ (GND))) # (!\Enable_gen_0|teller\(6) & (!\Enable_gen_0|teller[5]~38\ & VCC))
-- \Enable_gen_0|teller[6]~40\ = CARRY((\Enable_gen_0|teller\(6) & !\Enable_gen_0|teller[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_0|teller\(6),
	datad => VCC,
	cin => \Enable_gen_0|teller[5]~38\,
	combout => \Enable_gen_0|teller[6]~39_combout\,
	cout => \Enable_gen_0|teller[6]~40\);

-- Location: FF_X105_Y11_N19
\Enable_gen_0|teller[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[6]~39_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(6));

-- Location: LCCOMB_X105_Y11_N20
\Enable_gen_0|teller[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[7]~41_combout\ = (\Enable_gen_0|teller\(7) & (!\Enable_gen_0|teller[6]~40\)) # (!\Enable_gen_0|teller\(7) & ((\Enable_gen_0|teller[6]~40\) # (GND)))
-- \Enable_gen_0|teller[7]~42\ = CARRY((!\Enable_gen_0|teller[6]~40\) # (!\Enable_gen_0|teller\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_0|teller\(7),
	datad => VCC,
	cin => \Enable_gen_0|teller[6]~40\,
	combout => \Enable_gen_0|teller[7]~41_combout\,
	cout => \Enable_gen_0|teller[7]~42\);

-- Location: FF_X105_Y11_N21
\Enable_gen_0|teller[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[7]~41_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(7));

-- Location: LCCOMB_X105_Y11_N22
\Enable_gen_0|teller[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[8]~43_combout\ = (\Enable_gen_0|teller\(8) & (\Enable_gen_0|teller[7]~42\ $ (GND))) # (!\Enable_gen_0|teller\(8) & (!\Enable_gen_0|teller[7]~42\ & VCC))
-- \Enable_gen_0|teller[8]~44\ = CARRY((\Enable_gen_0|teller\(8) & !\Enable_gen_0|teller[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(8),
	datad => VCC,
	cin => \Enable_gen_0|teller[7]~42\,
	combout => \Enable_gen_0|teller[8]~43_combout\,
	cout => \Enable_gen_0|teller[8]~44\);

-- Location: FF_X105_Y11_N23
\Enable_gen_0|teller[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[8]~43_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(8));

-- Location: LCCOMB_X105_Y11_N24
\Enable_gen_0|teller[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[9]~45_combout\ = (\Enable_gen_0|teller\(9) & (!\Enable_gen_0|teller[8]~44\)) # (!\Enable_gen_0|teller\(9) & ((\Enable_gen_0|teller[8]~44\) # (GND)))
-- \Enable_gen_0|teller[9]~46\ = CARRY((!\Enable_gen_0|teller[8]~44\) # (!\Enable_gen_0|teller\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_0|teller\(9),
	datad => VCC,
	cin => \Enable_gen_0|teller[8]~44\,
	combout => \Enable_gen_0|teller[9]~45_combout\,
	cout => \Enable_gen_0|teller[9]~46\);

-- Location: FF_X105_Y11_N25
\Enable_gen_0|teller[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[9]~45_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(9));

-- Location: LCCOMB_X105_Y11_N26
\Enable_gen_0|teller[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[10]~47_combout\ = (\Enable_gen_0|teller\(10) & (\Enable_gen_0|teller[9]~46\ $ (GND))) # (!\Enable_gen_0|teller\(10) & (!\Enable_gen_0|teller[9]~46\ & VCC))
-- \Enable_gen_0|teller[10]~48\ = CARRY((\Enable_gen_0|teller\(10) & !\Enable_gen_0|teller[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(10),
	datad => VCC,
	cin => \Enable_gen_0|teller[9]~46\,
	combout => \Enable_gen_0|teller[10]~47_combout\,
	cout => \Enable_gen_0|teller[10]~48\);

-- Location: FF_X105_Y11_N27
\Enable_gen_0|teller[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[10]~47_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(10));

-- Location: LCCOMB_X105_Y11_N28
\Enable_gen_0|teller[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[11]~49_combout\ = (\Enable_gen_0|teller\(11) & (!\Enable_gen_0|teller[10]~48\)) # (!\Enable_gen_0|teller\(11) & ((\Enable_gen_0|teller[10]~48\) # (GND)))
-- \Enable_gen_0|teller[11]~50\ = CARRY((!\Enable_gen_0|teller[10]~48\) # (!\Enable_gen_0|teller\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_0|teller\(11),
	datad => VCC,
	cin => \Enable_gen_0|teller[10]~48\,
	combout => \Enable_gen_0|teller[11]~49_combout\,
	cout => \Enable_gen_0|teller[11]~50\);

-- Location: FF_X105_Y11_N29
\Enable_gen_0|teller[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[11]~49_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(11));

-- Location: LCCOMB_X105_Y11_N30
\Enable_gen_0|teller[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[12]~51_combout\ = (\Enable_gen_0|teller\(12) & (\Enable_gen_0|teller[11]~50\ $ (GND))) # (!\Enable_gen_0|teller\(12) & (!\Enable_gen_0|teller[11]~50\ & VCC))
-- \Enable_gen_0|teller[12]~52\ = CARRY((\Enable_gen_0|teller\(12) & !\Enable_gen_0|teller[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(12),
	datad => VCC,
	cin => \Enable_gen_0|teller[11]~50\,
	combout => \Enable_gen_0|teller[12]~51_combout\,
	cout => \Enable_gen_0|teller[12]~52\);

-- Location: FF_X105_Y11_N31
\Enable_gen_0|teller[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[12]~51_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(12));

-- Location: LCCOMB_X105_Y10_N0
\Enable_gen_0|teller[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[13]~53_combout\ = (\Enable_gen_0|teller\(13) & (!\Enable_gen_0|teller[12]~52\)) # (!\Enable_gen_0|teller\(13) & ((\Enable_gen_0|teller[12]~52\) # (GND)))
-- \Enable_gen_0|teller[13]~54\ = CARRY((!\Enable_gen_0|teller[12]~52\) # (!\Enable_gen_0|teller\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(13),
	datad => VCC,
	cin => \Enable_gen_0|teller[12]~52\,
	combout => \Enable_gen_0|teller[13]~53_combout\,
	cout => \Enable_gen_0|teller[13]~54\);

-- Location: FF_X106_Y11_N23
\Enable_gen_0|teller[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Enable_gen_0|teller[13]~53_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(13));

-- Location: LCCOMB_X105_Y10_N2
\Enable_gen_0|teller[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[14]~55_combout\ = (\Enable_gen_0|teller\(14) & (\Enable_gen_0|teller[13]~54\ $ (GND))) # (!\Enable_gen_0|teller\(14) & (!\Enable_gen_0|teller[13]~54\ & VCC))
-- \Enable_gen_0|teller[14]~56\ = CARRY((\Enable_gen_0|teller\(14) & !\Enable_gen_0|teller[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(14),
	datad => VCC,
	cin => \Enable_gen_0|teller[13]~54\,
	combout => \Enable_gen_0|teller[14]~55_combout\,
	cout => \Enable_gen_0|teller[14]~56\);

-- Location: FF_X106_Y11_N5
\Enable_gen_0|teller[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Enable_gen_0|teller[14]~55_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(14));

-- Location: LCCOMB_X105_Y10_N4
\Enable_gen_0|teller[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[15]~57_combout\ = (\Enable_gen_0|teller\(15) & (!\Enable_gen_0|teller[14]~56\)) # (!\Enable_gen_0|teller\(15) & ((\Enable_gen_0|teller[14]~56\) # (GND)))
-- \Enable_gen_0|teller[15]~58\ = CARRY((!\Enable_gen_0|teller[14]~56\) # (!\Enable_gen_0|teller\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_0|teller\(15),
	datad => VCC,
	cin => \Enable_gen_0|teller[14]~56\,
	combout => \Enable_gen_0|teller[15]~57_combout\,
	cout => \Enable_gen_0|teller[15]~58\);

-- Location: FF_X106_Y11_N17
\Enable_gen_0|teller[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Enable_gen_0|teller[15]~57_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(15));

-- Location: LCCOMB_X105_Y10_N6
\Enable_gen_0|teller[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[16]~59_combout\ = (\Enable_gen_0|teller\(16) & (\Enable_gen_0|teller[15]~58\ $ (GND))) # (!\Enable_gen_0|teller\(16) & (!\Enable_gen_0|teller[15]~58\ & VCC))
-- \Enable_gen_0|teller[16]~60\ = CARRY((\Enable_gen_0|teller\(16) & !\Enable_gen_0|teller[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(16),
	datad => VCC,
	cin => \Enable_gen_0|teller[15]~58\,
	combout => \Enable_gen_0|teller[16]~59_combout\,
	cout => \Enable_gen_0|teller[16]~60\);

-- Location: FF_X105_Y10_N7
\Enable_gen_0|teller[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[16]~59_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(16));

-- Location: LCCOMB_X105_Y10_N8
\Enable_gen_0|teller[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[17]~61_combout\ = (\Enable_gen_0|teller\(17) & (!\Enable_gen_0|teller[16]~60\)) # (!\Enable_gen_0|teller\(17) & ((\Enable_gen_0|teller[16]~60\) # (GND)))
-- \Enable_gen_0|teller[17]~62\ = CARRY((!\Enable_gen_0|teller[16]~60\) # (!\Enable_gen_0|teller\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_0|teller\(17),
	datad => VCC,
	cin => \Enable_gen_0|teller[16]~60\,
	combout => \Enable_gen_0|teller[17]~61_combout\,
	cout => \Enable_gen_0|teller[17]~62\);

-- Location: FF_X105_Y10_N9
\Enable_gen_0|teller[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[17]~61_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(17));

-- Location: LCCOMB_X105_Y10_N10
\Enable_gen_0|teller[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[18]~63_combout\ = (\Enable_gen_0|teller\(18) & (\Enable_gen_0|teller[17]~62\ $ (GND))) # (!\Enable_gen_0|teller\(18) & (!\Enable_gen_0|teller[17]~62\ & VCC))
-- \Enable_gen_0|teller[18]~64\ = CARRY((\Enable_gen_0|teller\(18) & !\Enable_gen_0|teller[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_0|teller\(18),
	datad => VCC,
	cin => \Enable_gen_0|teller[17]~62\,
	combout => \Enable_gen_0|teller[18]~63_combout\,
	cout => \Enable_gen_0|teller[18]~64\);

-- Location: FF_X105_Y10_N11
\Enable_gen_0|teller[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[18]~63_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(18));

-- Location: LCCOMB_X105_Y10_N12
\Enable_gen_0|teller[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[19]~65_combout\ = (\Enable_gen_0|teller\(19) & (!\Enable_gen_0|teller[18]~64\)) # (!\Enable_gen_0|teller\(19) & ((\Enable_gen_0|teller[18]~64\) # (GND)))
-- \Enable_gen_0|teller[19]~66\ = CARRY((!\Enable_gen_0|teller[18]~64\) # (!\Enable_gen_0|teller\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(19),
	datad => VCC,
	cin => \Enable_gen_0|teller[18]~64\,
	combout => \Enable_gen_0|teller[19]~65_combout\,
	cout => \Enable_gen_0|teller[19]~66\);

-- Location: FF_X105_Y10_N13
\Enable_gen_0|teller[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[19]~65_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(19));

-- Location: LCCOMB_X105_Y10_N14
\Enable_gen_0|teller[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[20]~67_combout\ = (\Enable_gen_0|teller\(20) & (\Enable_gen_0|teller[19]~66\ $ (GND))) # (!\Enable_gen_0|teller\(20) & (!\Enable_gen_0|teller[19]~66\ & VCC))
-- \Enable_gen_0|teller[20]~68\ = CARRY((\Enable_gen_0|teller\(20) & !\Enable_gen_0|teller[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_0|teller\(20),
	datad => VCC,
	cin => \Enable_gen_0|teller[19]~66\,
	combout => \Enable_gen_0|teller[20]~67_combout\,
	cout => \Enable_gen_0|teller[20]~68\);

-- Location: FF_X105_Y10_N15
\Enable_gen_0|teller[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[20]~67_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(20));

-- Location: LCCOMB_X105_Y10_N16
\Enable_gen_0|teller[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[21]~69_combout\ = (\Enable_gen_0|teller\(21) & (!\Enable_gen_0|teller[20]~68\)) # (!\Enable_gen_0|teller\(21) & ((\Enable_gen_0|teller[20]~68\) # (GND)))
-- \Enable_gen_0|teller[21]~70\ = CARRY((!\Enable_gen_0|teller[20]~68\) # (!\Enable_gen_0|teller\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_0|teller\(21),
	datad => VCC,
	cin => \Enable_gen_0|teller[20]~68\,
	combout => \Enable_gen_0|teller[21]~69_combout\,
	cout => \Enable_gen_0|teller[21]~70\);

-- Location: FF_X105_Y10_N17
\Enable_gen_0|teller[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[21]~69_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(21));

-- Location: LCCOMB_X105_Y10_N18
\Enable_gen_0|teller[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[22]~71_combout\ = (\Enable_gen_0|teller\(22) & (\Enable_gen_0|teller[21]~70\ $ (GND))) # (!\Enable_gen_0|teller\(22) & (!\Enable_gen_0|teller[21]~70\ & VCC))
-- \Enable_gen_0|teller[22]~72\ = CARRY((\Enable_gen_0|teller\(22) & !\Enable_gen_0|teller[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Enable_gen_0|teller\(22),
	datad => VCC,
	cin => \Enable_gen_0|teller[21]~70\,
	combout => \Enable_gen_0|teller[22]~71_combout\,
	cout => \Enable_gen_0|teller[22]~72\);

-- Location: FF_X105_Y10_N19
\Enable_gen_0|teller[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[22]~71_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(22));

-- Location: LCCOMB_X105_Y10_N20
\Enable_gen_0|teller[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[23]~73_combout\ = (\Enable_gen_0|teller\(23) & (!\Enable_gen_0|teller[22]~72\)) # (!\Enable_gen_0|teller\(23) & ((\Enable_gen_0|teller[22]~72\) # (GND)))
-- \Enable_gen_0|teller[23]~74\ = CARRY((!\Enable_gen_0|teller[22]~72\) # (!\Enable_gen_0|teller\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(23),
	datad => VCC,
	cin => \Enable_gen_0|teller[22]~72\,
	combout => \Enable_gen_0|teller[23]~73_combout\,
	cout => \Enable_gen_0|teller[23]~74\);

-- Location: FF_X105_Y10_N21
\Enable_gen_0|teller[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[23]~73_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(23));

-- Location: LCCOMB_X105_Y10_N22
\Enable_gen_0|teller[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[24]~75_combout\ = (\Enable_gen_0|teller\(24) & (\Enable_gen_0|teller[23]~74\ $ (GND))) # (!\Enable_gen_0|teller\(24) & (!\Enable_gen_0|teller[23]~74\ & VCC))
-- \Enable_gen_0|teller[24]~76\ = CARRY((\Enable_gen_0|teller\(24) & !\Enable_gen_0|teller[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(24),
	datad => VCC,
	cin => \Enable_gen_0|teller[23]~74\,
	combout => \Enable_gen_0|teller[24]~75_combout\,
	cout => \Enable_gen_0|teller[24]~76\);

-- Location: FF_X105_Y10_N23
\Enable_gen_0|teller[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[24]~75_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(24));

-- Location: LCCOMB_X105_Y10_N24
\Enable_gen_0|teller[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|teller[25]~77_combout\ = \Enable_gen_0|teller[24]~76\ $ (\Enable_gen_0|teller\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Enable_gen_0|teller\(25),
	cin => \Enable_gen_0|teller[24]~76\,
	combout => \Enable_gen_0|teller[25]~77_combout\);

-- Location: FF_X105_Y10_N25
\Enable_gen_0|teller[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|teller[25]~77_combout\,
	sclr => \Enable_gen_0|teller[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|teller\(25));

-- Location: LCCOMB_X105_Y10_N26
\Enable_gen_0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|Equal0~7_combout\ = (\Enable_gen_0|teller\(25)) # (!\Enable_gen_0|teller\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Enable_gen_0|teller\(24),
	datad => \Enable_gen_0|teller\(25),
	combout => \Enable_gen_0|Equal0~7_combout\);

-- Location: LCCOMB_X105_Y10_N30
\Enable_gen_0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|Equal0~5_combout\ = ((\Enable_gen_0|teller\(17)) # ((!\Enable_gen_0|teller\(18)) # (!\Enable_gen_0|teller\(19)))) # (!\Enable_gen_0|teller\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(16),
	datab => \Enable_gen_0|teller\(17),
	datac => \Enable_gen_0|teller\(19),
	datad => \Enable_gen_0|teller\(18),
	combout => \Enable_gen_0|Equal0~5_combout\);

-- Location: LCCOMB_X105_Y10_N28
\Enable_gen_0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|Equal0~6_combout\ = (((\Enable_gen_0|teller\(23)) # (!\Enable_gen_0|teller\(20))) # (!\Enable_gen_0|teller\(21))) # (!\Enable_gen_0|teller\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(22),
	datab => \Enable_gen_0|teller\(21),
	datac => \Enable_gen_0|teller\(20),
	datad => \Enable_gen_0|teller\(23),
	combout => \Enable_gen_0|Equal0~6_combout\);

-- Location: LCCOMB_X105_Y11_N0
\Enable_gen_0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|Equal0~0_combout\ = (\Enable_gen_0|teller\(3)) # ((\Enable_gen_0|teller\(1)) # ((\Enable_gen_0|teller\(0)) # (\Enable_gen_0|teller\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(3),
	datab => \Enable_gen_0|teller\(1),
	datac => \Enable_gen_0|teller\(0),
	datad => \Enable_gen_0|teller\(2),
	combout => \Enable_gen_0|Equal0~0_combout\);

-- Location: LCCOMB_X106_Y11_N28
\Enable_gen_0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|Equal0~3_combout\ = ((\Enable_gen_0|teller\(15)) # ((!\Enable_gen_0|teller\(12)) # (!\Enable_gen_0|teller\(14)))) # (!\Enable_gen_0|teller\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(13),
	datab => \Enable_gen_0|teller\(15),
	datac => \Enable_gen_0|teller\(14),
	datad => \Enable_gen_0|teller\(12),
	combout => \Enable_gen_0|Equal0~3_combout\);

-- Location: LCCOMB_X105_Y11_N4
\Enable_gen_0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|Equal0~2_combout\ = (\Enable_gen_0|teller\(8)) # (((\Enable_gen_0|teller\(10)) # (\Enable_gen_0|teller\(9))) # (!\Enable_gen_0|teller\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(8),
	datab => \Enable_gen_0|teller\(11),
	datac => \Enable_gen_0|teller\(10),
	datad => \Enable_gen_0|teller\(9),
	combout => \Enable_gen_0|Equal0~2_combout\);

-- Location: LCCOMB_X105_Y11_N2
\Enable_gen_0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|Equal0~1_combout\ = (\Enable_gen_0|teller\(7)) # (((\Enable_gen_0|teller\(4)) # (\Enable_gen_0|teller\(5))) # (!\Enable_gen_0|teller\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|teller\(7),
	datab => \Enable_gen_0|teller\(6),
	datac => \Enable_gen_0|teller\(4),
	datad => \Enable_gen_0|teller\(5),
	combout => \Enable_gen_0|Equal0~1_combout\);

-- Location: LCCOMB_X106_Y11_N18
\Enable_gen_0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|Equal0~4_combout\ = (\Enable_gen_0|Equal0~0_combout\) # ((\Enable_gen_0|Equal0~3_combout\) # ((\Enable_gen_0|Equal0~2_combout\) # (\Enable_gen_0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|Equal0~0_combout\,
	datab => \Enable_gen_0|Equal0~3_combout\,
	datac => \Enable_gen_0|Equal0~2_combout\,
	datad => \Enable_gen_0|Equal0~1_combout\,
	combout => \Enable_gen_0|Equal0~4_combout\);

-- Location: LCCOMB_X106_Y11_N12
\Enable_gen_0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|Equal0~8_combout\ = (\Enable_gen_0|Equal0~7_combout\) # ((\Enable_gen_0|Equal0~5_combout\) # ((\Enable_gen_0|Equal0~6_combout\) # (\Enable_gen_0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_gen_0|Equal0~7_combout\,
	datab => \Enable_gen_0|Equal0~5_combout\,
	datac => \Enable_gen_0|Equal0~6_combout\,
	datad => \Enable_gen_0|Equal0~4_combout\,
	combout => \Enable_gen_0|Equal0~8_combout\);

-- Location: LCCOMB_X106_Y11_N10
\Enable_gen_0|enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Enable_gen_0|enable~0_combout\ = (\KEY[3]~input_o\ & ((!\Enable_gen_0|Equal0~8_combout\))) # (!\KEY[3]~input_o\ & (\Enable_gen_0|enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datac => \Enable_gen_0|enable~q\,
	datad => \Enable_gen_0|Equal0~8_combout\,
	combout => \Enable_gen_0|enable~0_combout\);

-- Location: FF_X106_Y11_N11
\Enable_gen_0|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Enable_gen_0|enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable_gen_0|enable~q\);

-- Location: LCCOMB_X88_Y11_N28
\hallo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hallo~0_combout\ = \hallo~q\ $ (\Enable_gen_0|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hallo~q\,
	datad => \Enable_gen_0|enable~q\,
	combout => \hallo~0_combout\);

-- Location: FF_X88_Y11_N29
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

GPIO(1) <= \GPIO[1]~output_o\;

GPIO(2) <= \GPIO[2]~output_o\;

GPIO(3) <= \GPIO[3]~output_o\;

GPIO(4) <= \GPIO[4]~output_o\;

GPIO(5) <= \GPIO[5]~output_o\;

GPIO(6) <= \GPIO[6]~output_o\;

GPIO(7) <= \GPIO[7]~output_o\;

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
END structure;


