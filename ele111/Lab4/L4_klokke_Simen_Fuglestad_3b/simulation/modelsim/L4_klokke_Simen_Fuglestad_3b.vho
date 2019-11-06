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

-- DATE "10/07/2019 10:24:36"

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

ENTITY 	L4_klokke_Simen_Fuglestad_3b IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END L4_klokke_Simen_Fuglestad_3b;

-- Design Ports Information
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
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF L4_klokke_Simen_Fuglestad_3b IS
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
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \tid:s[0]~q\ : std_logic;
SIGNAL \enable_gen_1|teller[0]~26_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \enable_gen_1|teller[11]~28_combout\ : std_logic;
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
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \enable_gen_1|Equal0~20_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
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
SIGNAL \enable_gen_1|Equal0~21_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[21]~70\ : std_logic;
SIGNAL \enable_gen_1|teller[22]~71_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[22]~72\ : std_logic;
SIGNAL \enable_gen_1|teller[23]~73_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[23]~74\ : std_logic;
SIGNAL \enable_gen_1|teller[24]~75_combout\ : std_logic;
SIGNAL \enable_gen_1|teller[24]~76\ : std_logic;
SIGNAL \enable_gen_1|teller[25]~77_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~22_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~19_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~23_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~24_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~25_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~12_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~13_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~10_combout\ : std_logic;
SIGNAL \enable_gen_1|Mux0~0_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~11_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~14_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~15_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~16_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~17_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~18_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~8_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~6_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~7_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~5_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~1_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~2_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~3_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~0_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~4_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~9_combout\ : std_logic;
SIGNAL \enable_gen_1|Equal0~26_combout\ : std_logic;
SIGNAL \enable_gen_1|enable~feeder_combout\ : std_logic;
SIGNAL \enable_gen_1|enable~q\ : std_logic;
SIGNAL \s~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \s~13_combout\ : std_logic;
SIGNAL \s~7_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \s~8_combout\ : std_logic;
SIGNAL \tid:s[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \s~9_combout\ : std_logic;
SIGNAL \s~10_combout\ : std_logic;
SIGNAL \tid:s[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \s~11_combout\ : std_logic;
SIGNAL \s~12_combout\ : std_logic;
SIGNAL \tid:s[3]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \s~14_combout\ : std_logic;
SIGNAL \tid:s[4]~q\ : std_logic;
SIGNAL \s~15_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \s~16_combout\ : std_logic;
SIGNAL \tid:s[5]~feeder_combout\ : std_logic;
SIGNAL \tid:s[5]~q\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \s~17_combout\ : std_logic;
SIGNAL \tid:s[16]~0_combout\ : std_logic;
SIGNAL \tid:s[6]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \s~18_combout\ : std_logic;
SIGNAL \tid:s[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \s~19_combout\ : std_logic;
SIGNAL \tid:s[8]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \s~20_combout\ : std_logic;
SIGNAL \tid:s[9]~q\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \s~21_combout\ : std_logic;
SIGNAL \tid:s[10]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \s~22_combout\ : std_logic;
SIGNAL \tid:s[11]~q\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \s~23_combout\ : std_logic;
SIGNAL \tid:s[12]~q\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \s~24_combout\ : std_logic;
SIGNAL \tid:s[13]~q\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \s~25_combout\ : std_logic;
SIGNAL \tid:s[14]~q\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \s~26_combout\ : std_logic;
SIGNAL \tid:s[15]~q\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \s~27_combout\ : std_logic;
SIGNAL \tid:s[16]~q\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \s~28_combout\ : std_logic;
SIGNAL \tid:s[17]~q\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \s~29_combout\ : std_logic;
SIGNAL \tid:s[18]~q\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \s~30_combout\ : std_logic;
SIGNAL \tid:s[19]~q\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \s~31_combout\ : std_logic;
SIGNAL \tid:s[20]~q\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \s~32_combout\ : std_logic;
SIGNAL \tid:s[21]~q\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \s~33_combout\ : std_logic;
SIGNAL \tid:s[22]~q\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \s~34_combout\ : std_logic;
SIGNAL \tid:s[23]~q\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \s~35_combout\ : std_logic;
SIGNAL \tid:s[24]~q\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \s~36_combout\ : std_logic;
SIGNAL \tid:s[25]~q\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \s~37_combout\ : std_logic;
SIGNAL \tid:s[26]~q\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \s~38_combout\ : std_logic;
SIGNAL \tid:s[27]~q\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \s~39_combout\ : std_logic;
SIGNAL \tid:s[28]~q\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \s~40_combout\ : std_logic;
SIGNAL \tid:s[29]~q\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \s~42_combout\ : std_logic;
SIGNAL \tid:s[30]~q\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \s~41_combout\ : std_logic;
SIGNAL \tid:s[31]~q\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \s~5_combout\ : std_logic;
SIGNAL \s~6_combout\ : std_logic;
SIGNAL \m~0_combout\ : std_logic;
SIGNAL \tid:m[0]~feeder_combout\ : std_logic;
SIGNAL \tid:m[0]~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \m~1_combout\ : std_logic;
SIGNAL \tid:m[1]~feeder_combout\ : std_logic;
SIGNAL \tid:m[1]~q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \m~2_combout\ : std_logic;
SIGNAL \tid:m[2]~feeder_combout\ : std_logic;
SIGNAL \tid:m[2]~q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \tid:m[26]~0_combout\ : std_logic;
SIGNAL \m~5_combout\ : std_logic;
SIGNAL \tid:m[3]~feeder_combout\ : std_logic;
SIGNAL \tid:m[3]~q\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \m~7_combout\ : std_logic;
SIGNAL \tid:m[5]~feeder_combout\ : std_logic;
SIGNAL \tid:m[5]~q\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \m~6_combout\ : std_logic;
SIGNAL \tid:m[4]~feeder_combout\ : std_logic;
SIGNAL \tid:m[4]~q\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \m~32_combout\ : std_logic;
SIGNAL \tid:m[31]~q\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \m~8_combout\ : std_logic;
SIGNAL \tid:m[6]~q\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \m~10_combout\ : std_logic;
SIGNAL \tid:m[8]~q\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \m~11_combout\ : std_logic;
SIGNAL \tid:m[9]~q\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \m~12_combout\ : std_logic;
SIGNAL \tid:m[10]~q\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \m~13_combout\ : std_logic;
SIGNAL \tid:m[11]~q\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \m~14_combout\ : std_logic;
SIGNAL \tid:m[12]~q\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \m~15_combout\ : std_logic;
SIGNAL \tid:m[13]~q\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \m~16_combout\ : std_logic;
SIGNAL \tid:m[14]~q\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \m~17_combout\ : std_logic;
SIGNAL \tid:m[15]~q\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \m~26_combout\ : std_logic;
SIGNAL \tid:m[16]~q\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \m~25_combout\ : std_logic;
SIGNAL \tid:m[17]~q\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \m~24_combout\ : std_logic;
SIGNAL \tid:m[18]~q\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \m~23_combout\ : std_logic;
SIGNAL \tid:m[19]~q\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \m~22_combout\ : std_logic;
SIGNAL \tid:m[20]~q\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \m~21_combout\ : std_logic;
SIGNAL \tid:m[21]~q\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \m~20_combout\ : std_logic;
SIGNAL \tid:m[22]~q\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \m~19_combout\ : std_logic;
SIGNAL \tid:m[23]~q\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \m~18_combout\ : std_logic;
SIGNAL \tid:m[24]~q\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \m~27_combout\ : std_logic;
SIGNAL \tid:m[25]~q\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \m~28_combout\ : std_logic;
SIGNAL \tid:m[26]~q\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \m~29_combout\ : std_logic;
SIGNAL \tid:m[27]~q\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \m~31_combout\ : std_logic;
SIGNAL \tid:m[28]~q\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \m~30_combout\ : std_logic;
SIGNAL \tid:m[29]~q\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \m~33_combout\ : std_logic;
SIGNAL \tid:m[30]~q\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \m~9_combout\ : std_logic;
SIGNAL \tid:m[7]~q\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \m~3_combout\ : std_logic;
SIGNAL \m~4_combout\ : std_logic;
SIGNAL \tid:t[0]~feeder_combout\ : std_logic;
SIGNAL \tid:t[0]~q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \tid:t[18]~0_combout\ : std_logic;
SIGNAL \tid:t[18]~1_combout\ : std_logic;
SIGNAL \t~0_combout\ : std_logic;
SIGNAL \t~1_combout\ : std_logic;
SIGNAL \tid:t[1]~feeder_combout\ : std_logic;
SIGNAL \tid:t[1]~q\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \t~2_combout\ : std_logic;
SIGNAL \tid:t[2]~feeder_combout\ : std_logic;
SIGNAL \tid:t[2]~q\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \t~3_combout\ : std_logic;
SIGNAL \tid:t[3]~q\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \t~4_combout\ : std_logic;
SIGNAL \t~5_combout\ : std_logic;
SIGNAL \t~11_combout\ : std_logic;
SIGNAL \tid:t[28]~q\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \t~8_combout\ : std_logic;
SIGNAL \tid:t[4]~feeder_combout\ : std_logic;
SIGNAL \tid:t[4]~q\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \t~34_combout\ : std_logic;
SIGNAL \tid:t[5]~q\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \t~33_combout\ : std_logic;
SIGNAL \tid:t[6]~q\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \t~32_combout\ : std_logic;
SIGNAL \tid:t[7]~q\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \t~31_combout\ : std_logic;
SIGNAL \tid:t[8]~q\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \t~30_combout\ : std_logic;
SIGNAL \tid:t[9]~q\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \t~29_combout\ : std_logic;
SIGNAL \tid:t[10]~q\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \t~28_combout\ : std_logic;
SIGNAL \tid:t[11]~q\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \t~27_combout\ : std_logic;
SIGNAL \tid:t[12]~q\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \t~26_combout\ : std_logic;
SIGNAL \tid:t[13]~q\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \t~25_combout\ : std_logic;
SIGNAL \tid:t[14]~q\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \t~24_combout\ : std_logic;
SIGNAL \tid:t[15]~q\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \t~23_combout\ : std_logic;
SIGNAL \tid:t[16]~q\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \t~22_combout\ : std_logic;
SIGNAL \tid:t[17]~q\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \t~21_combout\ : std_logic;
SIGNAL \tid:t[18]~q\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \t~20_combout\ : std_logic;
SIGNAL \tid:t[19]~q\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \t~19_combout\ : std_logic;
SIGNAL \tid:t[20]~q\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \t~18_combout\ : std_logic;
SIGNAL \tid:t[21]~q\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \t~17_combout\ : std_logic;
SIGNAL \tid:t[22]~q\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \t~16_combout\ : std_logic;
SIGNAL \tid:t[23]~q\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \t~15_combout\ : std_logic;
SIGNAL \tid:t[24]~q\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \t~14_combout\ : std_logic;
SIGNAL \tid:t[25]~q\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \t~13_combout\ : std_logic;
SIGNAL \tid:t[26]~q\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \t~12_combout\ : std_logic;
SIGNAL \tid:t[27]~q\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \t~10_combout\ : std_logic;
SIGNAL \tid:t[29]~q\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \t~35_combout\ : std_logic;
SIGNAL \tid:t[31]~q\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \t~9_combout\ : std_logic;
SIGNAL \tid:t[30]~q\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \t~6_combout\ : std_logic;
SIGNAL \t~7_combout\ : std_logic;
SIGNAL \hallo~0_combout\ : std_logic;
SIGNAL \hallo~q\ : std_logic;
SIGNAL timer_std : std_logic_vector(4 DOWNTO 0);
SIGNAL \enable_gen_1|teller\ : std_logic_vector(25 DOWNTO 0);
SIGNAL sekund_std : std_logic_vector(5 DOWNTO 0);
SIGNAL minutt_std : std_logic_vector(5 DOWNTO 0);

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
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sekund_std(0),
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
	i => sekund_std(1),
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
	i => sekund_std(2),
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
	i => sekund_std(3),
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
	i => sekund_std(4),
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
	i => sekund_std(5),
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
	i => minutt_std(0),
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
	i => minutt_std(1),
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
	i => minutt_std(2),
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
	i => minutt_std(3),
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
	i => minutt_std(4),
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
	i => minutt_std(5),
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
	i => timer_std(0),
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
	i => timer_std(1),
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
	i => timer_std(2),
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
	i => timer_std(3),
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
	i => timer_std(4),
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

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

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

-- Location: FF_X108_Y49_N13
\tid:s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \s~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[0]~q\);

-- Location: LCCOMB_X112_Y19_N6
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

-- Location: LCCOMB_X111_Y18_N0
\enable_gen_1|teller[11]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|teller[11]~28_combout\ = (\enable_gen_1|Equal0~26_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable_gen_1|Equal0~26_combout\,
	datad => \KEY[0]~input_o\,
	combout => \enable_gen_1|teller[11]~28_combout\);

-- Location: FF_X112_Y19_N7
\enable_gen_1|teller[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[0]~26_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(0));

-- Location: LCCOMB_X112_Y19_N8
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

-- Location: FF_X112_Y19_N9
\enable_gen_1|teller[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[1]~29_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(1));

-- Location: LCCOMB_X112_Y19_N10
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

-- Location: FF_X112_Y19_N11
\enable_gen_1|teller[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[2]~31_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(2));

-- Location: LCCOMB_X112_Y19_N12
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

-- Location: FF_X112_Y19_N13
\enable_gen_1|teller[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[3]~33_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(3));

-- Location: LCCOMB_X112_Y19_N14
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

-- Location: FF_X112_Y19_N15
\enable_gen_1|teller[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[4]~35_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(4));

-- Location: LCCOMB_X112_Y19_N16
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

-- Location: FF_X112_Y19_N17
\enable_gen_1|teller[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[5]~37_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(5));

-- Location: LCCOMB_X112_Y19_N18
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

-- Location: FF_X112_Y19_N19
\enable_gen_1|teller[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[6]~39_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(6));

-- Location: LCCOMB_X112_Y19_N20
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

-- Location: FF_X112_Y19_N21
\enable_gen_1|teller[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[7]~41_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(7));

-- Location: LCCOMB_X112_Y19_N22
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

-- Location: FF_X112_Y19_N23
\enable_gen_1|teller[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[8]~43_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(8));

-- Location: LCCOMB_X112_Y19_N24
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

-- Location: FF_X112_Y19_N25
\enable_gen_1|teller[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[9]~45_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(9));

-- Location: LCCOMB_X112_Y19_N26
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

-- Location: FF_X112_Y19_N27
\enable_gen_1|teller[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[10]~47_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(10));

-- Location: LCCOMB_X112_Y19_N28
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

-- Location: FF_X112_Y19_N29
\enable_gen_1|teller[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[11]~49_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(11));

-- Location: LCCOMB_X112_Y19_N30
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

-- Location: FF_X112_Y19_N31
\enable_gen_1|teller[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[12]~51_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(12));

-- Location: LCCOMB_X112_Y18_N0
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

-- Location: FF_X112_Y18_N1
\enable_gen_1|teller[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[13]~53_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(13));

-- Location: LCCOMB_X112_Y18_N2
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

-- Location: FF_X112_Y18_N3
\enable_gen_1|teller[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[14]~55_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(14));

-- Location: LCCOMB_X112_Y18_N4
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

-- Location: FF_X112_Y18_N5
\enable_gen_1|teller[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[15]~57_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(15));

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

-- Location: LCCOMB_X111_Y18_N10
\enable_gen_1|Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~20_combout\ = (\enable_gen_1|teller\(15) & (!\SW[2]~input_o\ & (!\enable_gen_1|teller\(2)))) # (!\enable_gen_1|teller\(15) & (\SW[2]~input_o\ & (\enable_gen_1|teller\(2) $ (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(15),
	datab => \SW[2]~input_o\,
	datac => \enable_gen_1|teller\(2),
	datad => \SW[0]~input_o\,
	combout => \enable_gen_1|Equal0~20_combout\);

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

-- Location: LCCOMB_X112_Y18_N6
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

-- Location: FF_X112_Y18_N7
\enable_gen_1|teller[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[16]~59_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(16));

-- Location: LCCOMB_X112_Y18_N8
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

-- Location: FF_X112_Y18_N9
\enable_gen_1|teller[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[17]~61_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(17));

-- Location: LCCOMB_X112_Y18_N10
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

-- Location: FF_X112_Y18_N11
\enable_gen_1|teller[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[18]~63_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(18));

-- Location: LCCOMB_X112_Y18_N12
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

-- Location: FF_X112_Y18_N13
\enable_gen_1|teller[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[19]~65_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(19));

-- Location: LCCOMB_X112_Y18_N14
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

-- Location: FF_X112_Y18_N15
\enable_gen_1|teller[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[20]~67_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(20));

-- Location: LCCOMB_X112_Y18_N16
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

-- Location: FF_X112_Y18_N17
\enable_gen_1|teller[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[21]~69_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(21));

-- Location: LCCOMB_X111_Y18_N20
\enable_gen_1|Equal0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~21_combout\ = (\enable_gen_1|teller\(20) & (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & \enable_gen_1|teller\(21)))) # (!\enable_gen_1|teller\(20) & (!\enable_gen_1|teller\(21) & ((\SW[1]~input_o\) # (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \enable_gen_1|teller\(20),
	datac => \SW[2]~input_o\,
	datad => \enable_gen_1|teller\(21),
	combout => \enable_gen_1|Equal0~21_combout\);

-- Location: LCCOMB_X112_Y18_N18
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

-- Location: FF_X112_Y18_N19
\enable_gen_1|teller[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[22]~71_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(22));

-- Location: LCCOMB_X112_Y18_N20
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

-- Location: FF_X112_Y18_N21
\enable_gen_1|teller[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[23]~73_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(23));

-- Location: LCCOMB_X112_Y18_N22
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

-- Location: FF_X112_Y18_N23
\enable_gen_1|teller[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[24]~75_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(24));

-- Location: LCCOMB_X112_Y18_N24
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

-- Location: FF_X112_Y18_N25
\enable_gen_1|teller[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|teller[25]~77_combout\,
	sclr => \enable_gen_1|teller[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|teller\(25));

-- Location: LCCOMB_X111_Y18_N22
\enable_gen_1|Equal0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~22_combout\ = \enable_gen_1|teller\(25) $ (((!\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \enable_gen_1|teller\(25),
	datad => \SW[0]~input_o\,
	combout => \enable_gen_1|Equal0~22_combout\);

-- Location: LCCOMB_X111_Y18_N28
\enable_gen_1|Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~19_combout\ = (\SW[1]~input_o\ & (!\enable_gen_1|teller\(19) & (\SW[2]~input_o\ $ (\enable_gen_1|teller\(8))))) # (!\SW[1]~input_o\ & ((\enable_gen_1|teller\(19) & (!\SW[2]~input_o\ & !\enable_gen_1|teller\(8))) # 
-- (!\enable_gen_1|teller\(19) & (\SW[2]~input_o\ & \enable_gen_1|teller\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \enable_gen_1|teller\(19),
	datac => \SW[2]~input_o\,
	datad => \enable_gen_1|teller\(8),
	combout => \enable_gen_1|Equal0~19_combout\);

-- Location: LCCOMB_X111_Y18_N12
\enable_gen_1|Equal0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~23_combout\ = (\enable_gen_1|Equal0~20_combout\ & (\enable_gen_1|Equal0~21_combout\ & (!\enable_gen_1|Equal0~22_combout\ & \enable_gen_1|Equal0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|Equal0~20_combout\,
	datab => \enable_gen_1|Equal0~21_combout\,
	datac => \enable_gen_1|Equal0~22_combout\,
	datad => \enable_gen_1|Equal0~19_combout\,
	combout => \enable_gen_1|Equal0~23_combout\);

-- Location: LCCOMB_X111_Y18_N18
\enable_gen_1|Equal0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~24_combout\ = (!\enable_gen_1|teller\(24) & (\SW[1]~input_o\ $ (\enable_gen_1|teller\(5) $ (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \enable_gen_1|teller\(24),
	datac => \enable_gen_1|teller\(5),
	datad => \SW[0]~input_o\,
	combout => \enable_gen_1|Equal0~24_combout\);

-- Location: LCCOMB_X111_Y18_N4
\enable_gen_1|Equal0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~25_combout\ = (\enable_gen_1|Equal0~24_combout\ & (\enable_gen_1|teller\(23) $ (((\SW[1]~input_o\) # (\SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \enable_gen_1|teller\(23),
	datad => \enable_gen_1|Equal0~24_combout\,
	combout => \enable_gen_1|Equal0~25_combout\);

-- Location: LCCOMB_X111_Y18_N30
\enable_gen_1|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~12_combout\ = \enable_gen_1|teller\(13) $ (((\SW[2]~input_o\) # ((\SW[1]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \enable_gen_1|teller\(13),
	datad => \SW[0]~input_o\,
	combout => \enable_gen_1|Equal0~12_combout\);

-- Location: LCCOMB_X111_Y18_N16
\enable_gen_1|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~13_combout\ = \enable_gen_1|teller\(14) $ (((\SW[2]~input_o\) # (\SW[1]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \enable_gen_1|teller\(14),
	combout => \enable_gen_1|Equal0~13_combout\);

-- Location: LCCOMB_X111_Y19_N6
\enable_gen_1|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~10_combout\ = \enable_gen_1|teller\(12) $ (((\SW[1]~input_o\) # ((\SW[2]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(12),
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \enable_gen_1|Equal0~10_combout\);

-- Location: LCCOMB_X111_Y19_N18
\enable_gen_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Mux0~0_combout\ = (!\SW[2]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \enable_gen_1|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y19_N4
\enable_gen_1|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~11_combout\ = (\enable_gen_1|Equal0~10_combout\ & (\enable_gen_1|teller\(11) $ (((\SW[1]~input_o\) # (!\enable_gen_1|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|Equal0~10_combout\,
	datab => \enable_gen_1|Mux0~0_combout\,
	datac => \SW[1]~input_o\,
	datad => \enable_gen_1|teller\(11),
	combout => \enable_gen_1|Equal0~11_combout\);

-- Location: LCCOMB_X111_Y18_N6
\enable_gen_1|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~14_combout\ = (\SW[2]~input_o\) # ((\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\enable_gen_1|teller\(16)))) # (!\SW[1]~input_o\ & ((\enable_gen_1|teller\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \enable_gen_1|teller\(16),
	combout => \enable_gen_1|Equal0~14_combout\);

-- Location: LCCOMB_X111_Y18_N24
\enable_gen_1|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~15_combout\ = (\SW[0]~input_o\ & (((!\enable_gen_1|teller\(16))))) # (!\SW[0]~input_o\ & ((\SW[2]~input_o\ & ((!\enable_gen_1|teller\(16)))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & \enable_gen_1|teller\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \enable_gen_1|teller\(16),
	combout => \enable_gen_1|Equal0~15_combout\);

-- Location: LCCOMB_X112_Y18_N30
\enable_gen_1|Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~16_combout\ = (\enable_gen_1|teller\(22) & (!\enable_gen_1|teller\(18) & (!\enable_gen_1|Equal0~14_combout\ & !\enable_gen_1|Equal0~15_combout\))) # (!\enable_gen_1|teller\(22) & (\enable_gen_1|Equal0~15_combout\ & 
-- (\enable_gen_1|teller\(18) $ (\enable_gen_1|Equal0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(18),
	datab => \enable_gen_1|teller\(22),
	datac => \enable_gen_1|Equal0~14_combout\,
	datad => \enable_gen_1|Equal0~15_combout\,
	combout => \enable_gen_1|Equal0~16_combout\);

-- Location: LCCOMB_X112_Y18_N28
\enable_gen_1|Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~17_combout\ = (\enable_gen_1|Equal0~16_combout\ & (\enable_gen_1|teller\(17) $ (\enable_gen_1|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|Equal0~16_combout\,
	datab => \enable_gen_1|teller\(17),
	datac => \enable_gen_1|Equal0~14_combout\,
	combout => \enable_gen_1|Equal0~17_combout\);

-- Location: LCCOMB_X111_Y18_N14
\enable_gen_1|Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~18_combout\ = (\enable_gen_1|Equal0~12_combout\ & (\enable_gen_1|Equal0~13_combout\ & (\enable_gen_1|Equal0~11_combout\ & \enable_gen_1|Equal0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|Equal0~12_combout\,
	datab => \enable_gen_1|Equal0~13_combout\,
	datac => \enable_gen_1|Equal0~11_combout\,
	datad => \enable_gen_1|Equal0~17_combout\,
	combout => \enable_gen_1|Equal0~18_combout\);

-- Location: LCCOMB_X111_Y19_N26
\enable_gen_1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~8_combout\ = \enable_gen_1|teller\(6) $ (((\SW[0]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \enable_gen_1|teller\(6),
	combout => \enable_gen_1|Equal0~8_combout\);

-- Location: LCCOMB_X111_Y19_N0
\enable_gen_1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~6_combout\ = \enable_gen_1|teller\(9) $ (((\SW[1]~input_o\ & ((\SW[2]~input_o\) # (!\SW[0]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \enable_gen_1|teller\(9),
	combout => \enable_gen_1|Equal0~6_combout\);

-- Location: LCCOMB_X111_Y19_N20
\enable_gen_1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~7_combout\ = (\enable_gen_1|Equal0~6_combout\ & (\enable_gen_1|teller\(10) $ (((\SW[1]~input_o\) # (!\enable_gen_1|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(10),
	datab => \enable_gen_1|Mux0~0_combout\,
	datac => \SW[1]~input_o\,
	datad => \enable_gen_1|Equal0~6_combout\,
	combout => \enable_gen_1|Equal0~7_combout\);

-- Location: LCCOMB_X111_Y19_N30
\enable_gen_1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~5_combout\ = \enable_gen_1|teller\(7) $ (((\SW[1]~input_o\) # ((!\SW[2]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(7),
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \enable_gen_1|Equal0~5_combout\);

-- Location: LCCOMB_X111_Y19_N10
\enable_gen_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~1_combout\ = \enable_gen_1|teller\(1) $ (((\SW[2]~input_o\ & (\SW[1]~input_o\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \enable_gen_1|teller\(1),
	datad => \SW[0]~input_o\,
	combout => \enable_gen_1|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y19_N16
\enable_gen_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~2_combout\ = \enable_gen_1|teller\(3) $ (((!\SW[1]~input_o\ & (\SW[2]~input_o\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \enable_gen_1|teller\(3),
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \enable_gen_1|Equal0~2_combout\);

-- Location: LCCOMB_X111_Y19_N22
\enable_gen_1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~3_combout\ = \enable_gen_1|teller\(4) $ (((\SW[1]~input_o\ & (\SW[2]~input_o\ $ (\SW[0]~input_o\))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \enable_gen_1|teller\(4),
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \enable_gen_1|Equal0~3_combout\);

-- Location: LCCOMB_X111_Y19_N28
\enable_gen_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~0_combout\ = \enable_gen_1|teller\(0) $ (((\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|teller\(0),
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \enable_gen_1|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y19_N24
\enable_gen_1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~4_combout\ = (!\enable_gen_1|Equal0~1_combout\ & (!\enable_gen_1|Equal0~2_combout\ & (!\enable_gen_1|Equal0~3_combout\ & !\enable_gen_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|Equal0~1_combout\,
	datab => \enable_gen_1|Equal0~2_combout\,
	datac => \enable_gen_1|Equal0~3_combout\,
	datad => \enable_gen_1|Equal0~0_combout\,
	combout => \enable_gen_1|Equal0~4_combout\);

-- Location: LCCOMB_X111_Y19_N12
\enable_gen_1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~9_combout\ = (!\enable_gen_1|Equal0~8_combout\ & (\enable_gen_1|Equal0~7_combout\ & (\enable_gen_1|Equal0~5_combout\ & \enable_gen_1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|Equal0~8_combout\,
	datab => \enable_gen_1|Equal0~7_combout\,
	datac => \enable_gen_1|Equal0~5_combout\,
	datad => \enable_gen_1|Equal0~4_combout\,
	combout => \enable_gen_1|Equal0~9_combout\);

-- Location: LCCOMB_X111_Y18_N26
\enable_gen_1|Equal0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|Equal0~26_combout\ = (\enable_gen_1|Equal0~23_combout\ & (\enable_gen_1|Equal0~25_combout\ & (\enable_gen_1|Equal0~18_combout\ & \enable_gen_1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_1|Equal0~23_combout\,
	datab => \enable_gen_1|Equal0~25_combout\,
	datac => \enable_gen_1|Equal0~18_combout\,
	datad => \enable_gen_1|Equal0~9_combout\,
	combout => \enable_gen_1|Equal0~26_combout\);

-- Location: LCCOMB_X111_Y18_N8
\enable_gen_1|enable~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_1|enable~feeder_combout\ = \enable_gen_1|Equal0~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable_gen_1|Equal0~26_combout\,
	combout => \enable_gen_1|enable~feeder_combout\);

-- Location: FF_X111_Y18_N9
\enable_gen_1|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_1|enable~feeder_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_1|enable~q\);

-- Location: LCCOMB_X108_Y49_N12
\s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~4_combout\ = (\tid:s[0]~q\ & !\enable_gen_1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tid:s[0]~q\,
	datad => \enable_gen_1|enable~q\,
	combout => \s~4_combout\);

-- Location: LCCOMB_X109_Y49_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \tid:s[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\tid:s[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X108_Y49_N0
\s~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~13_combout\ = (\tid:s[4]~q\ & !\enable_gen_1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[4]~q\,
	datad => \enable_gen_1|enable~q\,
	combout => \s~13_combout\);

-- Location: LCCOMB_X108_Y49_N14
\s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~7_combout\ = (\tid:s[1]~q\ & !\enable_gen_1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tid:s[1]~q\,
	datad => \enable_gen_1|enable~q\,
	combout => \s~7_combout\);

-- Location: LCCOMB_X109_Y49_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\tid:s[1]~q\ & (!\Add0~1\)) # (!\tid:s[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\tid:s[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X108_Y49_N22
\s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~8_combout\ = (\KEY[0]~input_o\ & ((\s~7_combout\) # ((\Add0~2_combout\ & \s~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~7_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Add0~2_combout\,
	datad => \s~5_combout\,
	combout => \s~8_combout\);

-- Location: FF_X108_Y49_N15
\tid:s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \s~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[1]~q\);

-- Location: LCCOMB_X109_Y49_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\tid:s[2]~q\ & (\Add0~3\ $ (GND))) # (!\tid:s[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\tid:s[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X108_Y49_N2
\s~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~9_combout\ = (\tid:s[2]~q\ & !\enable_gen_1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[2]~q\,
	datad => \enable_gen_1|enable~q\,
	combout => \s~9_combout\);

-- Location: LCCOMB_X108_Y49_N4
\s~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~10_combout\ = (\KEY[0]~input_o\ & ((\s~9_combout\) # ((\Add0~4_combout\ & \s~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \KEY[0]~input_o\,
	datac => \s~9_combout\,
	datad => \s~5_combout\,
	combout => \s~10_combout\);

-- Location: FF_X108_Y49_N1
\tid:s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \s~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[2]~q\);

-- Location: LCCOMB_X109_Y49_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\tid:s[3]~q\ & (!\Add0~5\)) # (!\tid:s[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\tid:s[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X108_Y49_N18
\s~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~11_combout\ = (\tid:s[3]~q\ & !\enable_gen_1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[3]~q\,
	datad => \enable_gen_1|enable~q\,
	combout => \s~11_combout\);

-- Location: LCCOMB_X108_Y49_N26
\s~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~12_combout\ = (\KEY[0]~input_o\ & ((\s~11_combout\) # ((\s~5_combout\ & \Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~5_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Add0~6_combout\,
	datad => \s~11_combout\,
	combout => \s~12_combout\);

-- Location: FF_X108_Y49_N3
\tid:s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \s~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[3]~q\);

-- Location: LCCOMB_X109_Y49_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\tid:s[4]~q\ & (\Add0~7\ $ (GND))) # (!\tid:s[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\tid:s[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X108_Y49_N24
\s~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~14_combout\ = (\KEY[0]~input_o\ & ((\s~13_combout\) # ((\s~5_combout\ & \Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~13_combout\,
	datab => \s~5_combout\,
	datac => \Add0~8_combout\,
	datad => \KEY[0]~input_o\,
	combout => \s~14_combout\);

-- Location: FF_X108_Y49_N19
\tid:s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \s~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[4]~q\);

-- Location: LCCOMB_X108_Y49_N10
\s~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~15_combout\ = (\tid:s[5]~q\ & !\enable_gen_1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[5]~q\,
	datad => \enable_gen_1|enable~q\,
	combout => \s~15_combout\);

-- Location: LCCOMB_X109_Y49_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\tid:s[5]~q\ & (!\Add0~9\)) # (!\tid:s[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\tid:s[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X108_Y49_N6
\s~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~16_combout\ = (\KEY[0]~input_o\ & ((\s~15_combout\) # ((\Add0~10_combout\ & \s~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~15_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Add0~10_combout\,
	datad => \s~5_combout\,
	combout => \s~16_combout\);

-- Location: LCCOMB_X108_Y49_N16
\tid:s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:s[5]~feeder_combout\ = \s~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s~16_combout\,
	combout => \tid:s[5]~feeder_combout\);

-- Location: FF_X108_Y49_N17
\tid:s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tid:s[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[5]~q\);

-- Location: LCCOMB_X108_Y49_N30
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!\tid:s[5]~q\) # (!\tid:s[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tid:s[4]~q\,
	datad => \tid:s[5]~q\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X109_Y49_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\tid:s[6]~q\ & (\Add0~11\ $ (GND))) # (!\tid:s[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\tid:s[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X108_Y48_N14
\s~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~17_combout\ = (\LessThan0~10_combout\ & (\KEY[0]~input_o\ & \Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \KEY[0]~input_o\,
	datad => \Add0~12_combout\,
	combout => \s~17_combout\);

-- Location: LCCOMB_X107_Y48_N6
\tid:s[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:s[16]~0_combout\ = (\enable_gen_1|enable~q\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \enable_gen_1|enable~q\,
	combout => \tid:s[16]~0_combout\);

-- Location: FF_X108_Y48_N15
\tid:s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~17_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[6]~q\);

-- Location: LCCOMB_X109_Y49_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\tid:s[7]~q\ & (!\Add0~13\)) # (!\tid:s[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\tid:s[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X108_Y48_N28
\s~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~18_combout\ = (\LessThan0~10_combout\ & (\KEY[0]~input_o\ & \Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \KEY[0]~input_o\,
	datad => \Add0~14_combout\,
	combout => \s~18_combout\);

-- Location: FF_X108_Y48_N29
\tid:s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~18_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[7]~q\);

-- Location: LCCOMB_X109_Y49_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\tid:s[8]~q\ & (\Add0~15\ $ (GND))) # (!\tid:s[8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\tid:s[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X108_Y48_N26
\s~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~19_combout\ = (\LessThan0~10_combout\ & (\KEY[0]~input_o\ & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \KEY[0]~input_o\,
	datad => \Add0~16_combout\,
	combout => \s~19_combout\);

-- Location: FF_X108_Y48_N27
\tid:s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~19_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[8]~q\);

-- Location: LCCOMB_X109_Y49_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\tid:s[9]~q\ & (!\Add0~17\)) # (!\tid:s[9]~q\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\tid:s[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[9]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X108_Y48_N16
\s~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~20_combout\ = (\LessThan0~10_combout\ & (\KEY[0]~input_o\ & \Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \KEY[0]~input_o\,
	datad => \Add0~18_combout\,
	combout => \s~20_combout\);

-- Location: FF_X108_Y48_N17
\tid:s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~20_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[9]~q\);

-- Location: LCCOMB_X109_Y49_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\tid:s[10]~q\ & (\Add0~19\ $ (GND))) # (!\tid:s[10]~q\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\tid:s[10]~q\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[10]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X108_Y48_N12
\s~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~21_combout\ = (\LessThan0~10_combout\ & (\Add0~20_combout\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datac => \Add0~20_combout\,
	datad => \KEY[0]~input_o\,
	combout => \s~21_combout\);

-- Location: FF_X108_Y48_N13
\tid:s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~21_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[10]~q\);

-- Location: LCCOMB_X109_Y49_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\tid:s[11]~q\ & (!\Add0~21\)) # (!\tid:s[11]~q\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\tid:s[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[11]~q\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X108_Y48_N30
\s~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~22_combout\ = (\LessThan0~10_combout\ & (\KEY[0]~input_o\ & \Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \KEY[0]~input_o\,
	datad => \Add0~22_combout\,
	combout => \s~22_combout\);

-- Location: FF_X108_Y48_N31
\tid:s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~22_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[11]~q\);

-- Location: LCCOMB_X109_Y49_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\tid:s[12]~q\ & (\Add0~23\ $ (GND))) # (!\tid:s[12]~q\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\tid:s[12]~q\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[12]~q\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X108_Y48_N0
\s~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~23_combout\ = (\LessThan0~10_combout\ & (\Add0~24_combout\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datac => \Add0~24_combout\,
	datad => \KEY[0]~input_o\,
	combout => \s~23_combout\);

-- Location: FF_X108_Y48_N1
\tid:s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~23_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[12]~q\);

-- Location: LCCOMB_X109_Y49_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\tid:s[13]~q\ & (!\Add0~25\)) # (!\tid:s[13]~q\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\tid:s[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[13]~q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X108_Y48_N18
\s~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~24_combout\ = (\LessThan0~10_combout\ & (\KEY[0]~input_o\ & \Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \KEY[0]~input_o\,
	datad => \Add0~26_combout\,
	combout => \s~24_combout\);

-- Location: FF_X108_Y48_N19
\tid:s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~24_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[13]~q\);

-- Location: LCCOMB_X108_Y48_N20
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\tid:s[10]~q\ & (!\tid:s[12]~q\ & (!\tid:s[11]~q\ & !\tid:s[13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[10]~q\,
	datab => \tid:s[12]~q\,
	datac => \tid:s[11]~q\,
	datad => \tid:s[13]~q\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X108_Y49_N28
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!\tid:s[2]~q\ & ((!\tid:s[1]~q\) # (!\tid:s[0]~q\)))) # (!\tid:s[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[0]~q\,
	datab => \tid:s[3]~q\,
	datac => \tid:s[1]~q\,
	datad => \tid:s[2]~q\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X108_Y48_N6
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\tid:s[8]~q\ & (!\tid:s[7]~q\ & (!\tid:s[6]~q\ & !\tid:s[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[8]~q\,
	datab => \tid:s[7]~q\,
	datac => \tid:s[6]~q\,
	datad => \tid:s[9]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X108_Y48_N10
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\ & (\LessThan0~0_combout\ & ((\LessThan0~3_combout\) # (\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X109_Y49_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\tid:s[14]~q\ & (\Add0~27\ $ (GND))) # (!\tid:s[14]~q\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\tid:s[14]~q\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[14]~q\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X110_Y48_N12
\s~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~25_combout\ = (\KEY[0]~input_o\ & (\Add0~28_combout\ & \LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \Add0~28_combout\,
	datad => \LessThan0~10_combout\,
	combout => \s~25_combout\);

-- Location: FF_X110_Y48_N13
\tid:s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~25_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[14]~q\);

-- Location: LCCOMB_X109_Y49_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\tid:s[15]~q\ & (!\Add0~29\)) # (!\tid:s[15]~q\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\tid:s[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[15]~q\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X110_Y48_N22
\s~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~26_combout\ = (\KEY[0]~input_o\ & (\LessThan0~10_combout\ & \Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \LessThan0~10_combout\,
	datad => \Add0~30_combout\,
	combout => \s~26_combout\);

-- Location: FF_X110_Y48_N23
\tid:s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~26_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[15]~q\);

-- Location: LCCOMB_X109_Y48_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\tid:s[16]~q\ & (\Add0~31\ $ (GND))) # (!\tid:s[16]~q\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\tid:s[16]~q\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[16]~q\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X110_Y48_N4
\s~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~27_combout\ = (\Add0~32_combout\ & (\KEY[0]~input_o\ & \LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datac => \KEY[0]~input_o\,
	datad => \LessThan0~10_combout\,
	combout => \s~27_combout\);

-- Location: FF_X110_Y48_N5
\tid:s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~27_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[16]~q\);

-- Location: LCCOMB_X109_Y48_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\tid:s[17]~q\ & (!\Add0~33\)) # (!\tid:s[17]~q\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\tid:s[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[17]~q\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X110_Y48_N2
\s~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~28_combout\ = (\KEY[0]~input_o\ & (\LessThan0~10_combout\ & \Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \LessThan0~10_combout\,
	datad => \Add0~34_combout\,
	combout => \s~28_combout\);

-- Location: FF_X110_Y48_N3
\tid:s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~28_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[17]~q\);

-- Location: LCCOMB_X109_Y48_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\tid:s[18]~q\ & (\Add0~35\ $ (GND))) # (!\tid:s[18]~q\ & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\tid:s[18]~q\ & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[18]~q\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X110_Y48_N18
\s~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~29_combout\ = (\Add0~36_combout\ & (\KEY[0]~input_o\ & \LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~36_combout\,
	datac => \KEY[0]~input_o\,
	datad => \LessThan0~10_combout\,
	combout => \s~29_combout\);

-- Location: FF_X110_Y48_N19
\tid:s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~29_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[18]~q\);

-- Location: LCCOMB_X109_Y48_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\tid:s[19]~q\ & (!\Add0~37\)) # (!\tid:s[19]~q\ & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!\tid:s[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[19]~q\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X110_Y48_N0
\s~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~30_combout\ = (\Add0~38_combout\ & (\KEY[0]~input_o\ & \LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~38_combout\,
	datac => \KEY[0]~input_o\,
	datad => \LessThan0~10_combout\,
	combout => \s~30_combout\);

-- Location: FF_X110_Y48_N1
\tid:s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~30_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[19]~q\);

-- Location: LCCOMB_X109_Y48_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\tid:s[20]~q\ & (\Add0~39\ $ (GND))) # (!\tid:s[20]~q\ & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((\tid:s[20]~q\ & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[20]~q\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X110_Y48_N30
\s~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~31_combout\ = (\KEY[0]~input_o\ & (\LessThan0~10_combout\ & \Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \LessThan0~10_combout\,
	datad => \Add0~40_combout\,
	combout => \s~31_combout\);

-- Location: FF_X110_Y48_N31
\tid:s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~31_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[20]~q\);

-- Location: LCCOMB_X109_Y48_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\tid:s[21]~q\ & (!\Add0~41\)) # (!\tid:s[21]~q\ & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!\tid:s[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[21]~q\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X110_Y48_N8
\s~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~32_combout\ = (\KEY[0]~input_o\ & (\LessThan0~10_combout\ & \Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \LessThan0~10_combout\,
	datad => \Add0~42_combout\,
	combout => \s~32_combout\);

-- Location: FF_X110_Y48_N9
\tid:s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~32_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[21]~q\);

-- Location: LCCOMB_X109_Y48_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\tid:s[22]~q\ & (\Add0~43\ $ (GND))) # (!\tid:s[22]~q\ & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((\tid:s[22]~q\ & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[22]~q\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X110_Y48_N24
\s~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~33_combout\ = (\KEY[0]~input_o\ & (\LessThan0~10_combout\ & \Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \LessThan0~10_combout\,
	datad => \Add0~44_combout\,
	combout => \s~33_combout\);

-- Location: FF_X110_Y48_N25
\tid:s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~33_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[22]~q\);

-- Location: LCCOMB_X109_Y48_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\tid:s[23]~q\ & (!\Add0~45\)) # (!\tid:s[23]~q\ & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!\tid:s[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[23]~q\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X110_Y48_N26
\s~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~34_combout\ = (\KEY[0]~input_o\ & (\LessThan0~10_combout\ & \Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \LessThan0~10_combout\,
	datad => \Add0~46_combout\,
	combout => \s~34_combout\);

-- Location: FF_X110_Y48_N27
\tid:s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~34_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[23]~q\);

-- Location: LCCOMB_X109_Y48_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\tid:s[24]~q\ & (\Add0~47\ $ (GND))) # (!\tid:s[24]~q\ & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((\tid:s[24]~q\ & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[24]~q\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X110_Y48_N28
\s~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~35_combout\ = (\Add0~48_combout\ & (\KEY[0]~input_o\ & \LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datac => \KEY[0]~input_o\,
	datad => \LessThan0~10_combout\,
	combout => \s~35_combout\);

-- Location: FF_X110_Y48_N29
\tid:s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~35_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[24]~q\);

-- Location: LCCOMB_X109_Y48_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\tid:s[25]~q\ & (!\Add0~49\)) # (!\tid:s[25]~q\ & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!\tid:s[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[25]~q\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X110_Y48_N10
\s~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~36_combout\ = (\KEY[0]~input_o\ & (\LessThan0~10_combout\ & \Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \LessThan0~10_combout\,
	datad => \Add0~50_combout\,
	combout => \s~36_combout\);

-- Location: FF_X110_Y48_N11
\tid:s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~36_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[25]~q\);

-- Location: LCCOMB_X109_Y48_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\tid:s[26]~q\ & (\Add0~51\ $ (GND))) # (!\tid:s[26]~q\ & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((\tid:s[26]~q\ & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[26]~q\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X107_Y48_N8
\s~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~37_combout\ = (\KEY[0]~input_o\ & (\LessThan0~10_combout\ & \Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \LessThan0~10_combout\,
	datad => \Add0~52_combout\,
	combout => \s~37_combout\);

-- Location: FF_X107_Y48_N9
\tid:s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~37_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[26]~q\);

-- Location: LCCOMB_X109_Y48_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\tid:s[27]~q\ & (!\Add0~53\)) # (!\tid:s[27]~q\ & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!\tid:s[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[27]~q\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X107_Y48_N18
\s~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~38_combout\ = (\KEY[0]~input_o\ & (\LessThan0~10_combout\ & \Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \LessThan0~10_combout\,
	datad => \Add0~54_combout\,
	combout => \s~38_combout\);

-- Location: FF_X107_Y48_N19
\tid:s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~38_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[27]~q\);

-- Location: LCCOMB_X109_Y48_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\tid:s[28]~q\ & (\Add0~55\ $ (GND))) # (!\tid:s[28]~q\ & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((\tid:s[28]~q\ & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[28]~q\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X107_Y48_N4
\s~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~39_combout\ = (\KEY[0]~input_o\ & (\LessThan0~10_combout\ & \Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \LessThan0~10_combout\,
	datad => \Add0~56_combout\,
	combout => \s~39_combout\);

-- Location: FF_X107_Y48_N5
\tid:s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~39_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[28]~q\);

-- Location: LCCOMB_X109_Y48_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\tid:s[29]~q\ & (!\Add0~57\)) # (!\tid:s[29]~q\ & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!\tid:s[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[29]~q\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X107_Y48_N10
\s~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~40_combout\ = (\KEY[0]~input_o\ & (\LessThan0~10_combout\ & \Add0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \LessThan0~10_combout\,
	datad => \Add0~58_combout\,
	combout => \s~40_combout\);

-- Location: FF_X107_Y48_N11
\tid:s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~40_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[29]~q\);

-- Location: LCCOMB_X109_Y48_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\tid:s[30]~q\ & (\Add0~59\ $ (GND))) # (!\tid:s[30]~q\ & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((\tid:s[30]~q\ & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:s[30]~q\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X108_Y48_N24
\s~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~42_combout\ = (\LessThan0~10_combout\ & (\KEY[0]~input_o\ & \Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \KEY[0]~input_o\,
	datad => \Add0~60_combout\,
	combout => \s~42_combout\);

-- Location: FF_X108_Y48_N25
\tid:s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~42_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[30]~q\);

-- Location: LCCOMB_X109_Y48_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (\tid:s[31]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tid:s[31]~q\,
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X108_Y48_N8
\s~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~41_combout\ = (\LessThan0~10_combout\ & (\Add0~62_combout\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datac => \Add0~62_combout\,
	datad => \KEY[0]~input_o\,
	combout => \s~41_combout\);

-- Location: FF_X108_Y48_N9
\tid:s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~41_combout\,
	ena => \tid:s[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:s[31]~q\);

-- Location: LCCOMB_X110_Y48_N6
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!\tid:s[20]~q\ & (!\tid:s[19]~q\ & (!\tid:s[21]~q\ & !\tid:s[18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[20]~q\,
	datab => \tid:s[19]~q\,
	datac => \tid:s[21]~q\,
	datad => \tid:s[18]~q\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X110_Y48_N20
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!\tid:s[25]~q\ & (!\tid:s[24]~q\ & (!\tid:s[23]~q\ & !\tid:s[22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[25]~q\,
	datab => \tid:s[24]~q\,
	datac => \tid:s[23]~q\,
	datad => \tid:s[22]~q\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X107_Y48_N24
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!\tid:s[29]~q\ & (!\tid:s[26]~q\ & (!\tid:s[28]~q\ & !\tid:s[27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[29]~q\,
	datab => \tid:s[26]~q\,
	datac => \tid:s[28]~q\,
	datad => \tid:s[27]~q\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X110_Y48_N16
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!\tid:s[14]~q\ & (!\tid:s[16]~q\ & (!\tid:s[15]~q\ & !\tid:s[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:s[14]~q\,
	datab => \tid:s[16]~q\,
	datac => \tid:s[15]~q\,
	datad => \tid:s[17]~q\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X110_Y48_N14
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~6_combout\ & (\LessThan0~7_combout\ & (\LessThan0~8_combout\ & \LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \LessThan0~7_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X108_Y48_N22
\LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\tid:s[31]~q\) # ((\LessThan0~4_combout\ & (!\tid:s[30]~q\ & \LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \tid:s[30]~q\,
	datac => \tid:s[31]~q\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X108_Y49_N20
\s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~5_combout\ = (\LessThan0~10_combout\ & \enable_gen_1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~10_combout\,
	datad => \enable_gen_1|enable~q\,
	combout => \s~5_combout\);

-- Location: LCCOMB_X108_Y49_N8
\s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~6_combout\ = (\KEY[0]~input_o\ & ((\s~4_combout\) # ((\Add0~0_combout\ & \s~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~4_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Add0~0_combout\,
	datad => \s~5_combout\,
	combout => \s~6_combout\);

-- Location: FF_X108_Y49_N21
\sekund_std[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \s~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sekund_std(0));

-- Location: FF_X108_Y49_N23
\sekund_std[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sekund_std(1));

-- Location: FF_X108_Y49_N5
\sekund_std[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sekund_std(2));

-- Location: FF_X108_Y49_N27
\sekund_std[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sekund_std(3));

-- Location: FF_X108_Y49_N25
\sekund_std[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sekund_std(4));

-- Location: FF_X108_Y49_N7
\sekund_std[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sekund_std(5));

-- Location: LCCOMB_X105_Y48_N30
\m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~0_combout\ = (!\LessThan0~10_combout\ & \enable_gen_1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \enable_gen_1|enable~q\,
	combout => \m~0_combout\);

-- Location: LCCOMB_X105_Y48_N28
\tid:m[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:m[0]~feeder_combout\ = \m~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m~1_combout\,
	combout => \tid:m[0]~feeder_combout\);

-- Location: FF_X105_Y48_N29
\tid:m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tid:m[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[0]~q\);

-- Location: LCCOMB_X106_Y48_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \tid:m[0]~q\ $ (VCC)
-- \Add1~1\ = CARRY(\tid:m[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[0]~q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X105_Y48_N4
\m~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~1_combout\ = (\KEY[0]~input_o\ & ((\m~0_combout\ & ((\Add1~0_combout\))) # (!\m~0_combout\ & (\tid:m[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~0_combout\,
	datab => \tid:m[0]~q\,
	datac => \Add1~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \m~1_combout\);

-- Location: FF_X105_Y48_N5
\minutt_std[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minutt_std(0));

-- Location: LCCOMB_X105_Y48_N12
\tid:m[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:m[1]~feeder_combout\ = \m~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m~2_combout\,
	combout => \tid:m[1]~feeder_combout\);

-- Location: FF_X105_Y48_N13
\tid:m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tid:m[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[1]~q\);

-- Location: LCCOMB_X106_Y48_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\tid:m[1]~q\ & (!\Add1~1\)) # (!\tid:m[1]~q\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\tid:m[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[1]~q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X105_Y48_N22
\m~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~2_combout\ = (\KEY[0]~input_o\ & ((\m~0_combout\ & ((\Add1~2_combout\))) # (!\m~0_combout\ & (\tid:m[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[1]~q\,
	datab => \KEY[0]~input_o\,
	datac => \m~0_combout\,
	datad => \Add1~2_combout\,
	combout => \m~2_combout\);

-- Location: FF_X105_Y48_N23
\minutt_std[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minutt_std(1));

-- Location: LCCOMB_X105_Y48_N26
\tid:m[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:m[2]~feeder_combout\ = \m~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m~4_combout\,
	combout => \tid:m[2]~feeder_combout\);

-- Location: FF_X105_Y48_N27
\tid:m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tid:m[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[2]~q\);

-- Location: LCCOMB_X106_Y48_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\tid:m[2]~q\ & (\Add1~3\ $ (GND))) # (!\tid:m[2]~q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\tid:m[2]~q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[2]~q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X107_Y48_N12
\tid:m[26]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:m[26]~0_combout\ = ((!\LessThan0~10_combout\ & \enable_gen_1|enable~q\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \LessThan0~10_combout\,
	datad => \enable_gen_1|enable~q\,
	combout => \tid:m[26]~0_combout\);

-- Location: LCCOMB_X105_Y48_N14
\m~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~5_combout\ = (\Add1~6_combout\ & ((\m~3_combout\) # ((\tid:m[3]~q\ & !\tid:m[26]~0_combout\)))) # (!\Add1~6_combout\ & (\tid:m[3]~q\ & (!\tid:m[26]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \tid:m[3]~q\,
	datac => \tid:m[26]~0_combout\,
	datad => \m~3_combout\,
	combout => \m~5_combout\);

-- Location: LCCOMB_X105_Y48_N8
\tid:m[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:m[3]~feeder_combout\ = \m~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m~5_combout\,
	combout => \tid:m[3]~feeder_combout\);

-- Location: FF_X105_Y48_N9
\tid:m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tid:m[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[3]~q\);

-- Location: LCCOMB_X106_Y48_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\tid:m[3]~q\ & (!\Add1~5\)) # (!\tid:m[3]~q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\tid:m[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[3]~q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X105_Y48_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ((\Add1~0_combout\) # ((\Add1~2_combout\) # (!\Add1~6_combout\))) # (!\Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~0_combout\,
	datac => \Add1~2_combout\,
	datad => \Add1~6_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X105_Y48_N10
\m~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~7_combout\ = (\tid:m[5]~q\ & (((\Add1~10_combout\ & \m~3_combout\)) # (!\tid:m[26]~0_combout\))) # (!\tid:m[5]~q\ & (\Add1~10_combout\ & ((\m~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[5]~q\,
	datab => \Add1~10_combout\,
	datac => \tid:m[26]~0_combout\,
	datad => \m~3_combout\,
	combout => \m~7_combout\);

-- Location: LCCOMB_X105_Y48_N2
\tid:m[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:m[5]~feeder_combout\ = \m~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m~7_combout\,
	combout => \tid:m[5]~feeder_combout\);

-- Location: FF_X105_Y48_N3
\tid:m[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tid:m[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[5]~q\);

-- Location: LCCOMB_X106_Y48_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\tid:m[4]~q\ & (\Add1~7\ $ (GND))) # (!\tid:m[4]~q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\tid:m[4]~q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[4]~q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X105_Y48_N24
\m~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~6_combout\ = (\tid:m[4]~q\ & (((\Add1~8_combout\ & \m~3_combout\)) # (!\tid:m[26]~0_combout\))) # (!\tid:m[4]~q\ & (\Add1~8_combout\ & ((\m~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[4]~q\,
	datab => \Add1~8_combout\,
	datac => \tid:m[26]~0_combout\,
	datad => \m~3_combout\,
	combout => \m~6_combout\);

-- Location: LCCOMB_X105_Y48_N20
\tid:m[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:m[4]~feeder_combout\ = \m~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m~6_combout\,
	combout => \tid:m[4]~feeder_combout\);

-- Location: FF_X105_Y48_N21
\tid:m[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tid:m[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[4]~q\);

-- Location: LCCOMB_X106_Y48_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\tid:m[5]~q\ & (!\Add1~9\)) # (!\tid:m[5]~q\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\tid:m[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[5]~q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X108_Y47_N30
\m~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~32_combout\ = (\KEY[0]~input_o\ & (\Add1~62_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~62_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~32_combout\);

-- Location: FF_X108_Y47_N31
\tid:m[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~32_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[31]~q\);

-- Location: LCCOMB_X106_Y48_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\tid:m[6]~q\ & (\Add1~11\ $ (GND))) # (!\tid:m[6]~q\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\tid:m[6]~q\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[6]~q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X105_Y48_N16
\m~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~8_combout\ = (\Add1~12_combout\ & (\KEY[0]~input_o\ & ((\Equal0~4_combout\) # (\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \m~8_combout\);

-- Location: FF_X105_Y48_N17
\tid:m[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~8_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[6]~q\);

-- Location: LCCOMB_X106_Y48_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\tid:m[7]~q\ & (!\Add1~13\)) # (!\tid:m[7]~q\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\tid:m[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[7]~q\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X106_Y48_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\tid:m[8]~q\ & (\Add1~15\ $ (GND))) # (!\tid:m[8]~q\ & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((\tid:m[8]~q\ & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[8]~q\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X107_Y47_N12
\m~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~10_combout\ = (\KEY[0]~input_o\ & (\Add1~16_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~16_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~10_combout\);

-- Location: FF_X107_Y47_N13
\tid:m[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~10_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[8]~q\);

-- Location: LCCOMB_X106_Y48_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\tid:m[9]~q\ & (!\Add1~17\)) # (!\tid:m[9]~q\ & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!\tid:m[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[9]~q\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X107_Y47_N18
\m~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~11_combout\ = (\KEY[0]~input_o\ & (\Add1~18_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~18_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~11_combout\);

-- Location: FF_X107_Y47_N19
\tid:m[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~11_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[9]~q\);

-- Location: LCCOMB_X106_Y48_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\tid:m[10]~q\ & (\Add1~19\ $ (GND))) # (!\tid:m[10]~q\ & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((\tid:m[10]~q\ & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[10]~q\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X107_Y48_N20
\m~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~12_combout\ = (\KEY[0]~input_o\ & (\Add1~20_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~20_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~12_combout\);

-- Location: FF_X107_Y48_N21
\tid:m[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~12_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[10]~q\);

-- Location: LCCOMB_X106_Y48_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\tid:m[11]~q\ & (!\Add1~21\)) # (!\tid:m[11]~q\ & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!\tid:m[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[11]~q\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X107_Y47_N16
\m~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~13_combout\ = (\KEY[0]~input_o\ & (\Add1~22_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~22_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~13_combout\);

-- Location: FF_X107_Y47_N17
\tid:m[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~13_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[11]~q\);

-- Location: LCCOMB_X106_Y48_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\tid:m[12]~q\ & (\Add1~23\ $ (GND))) # (!\tid:m[12]~q\ & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((\tid:m[12]~q\ & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[12]~q\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X107_Y48_N2
\m~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~14_combout\ = (\KEY[0]~input_o\ & (\Add1~24_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~24_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~14_combout\);

-- Location: FF_X107_Y48_N3
\tid:m[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~14_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[12]~q\);

-- Location: LCCOMB_X106_Y48_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\tid:m[13]~q\ & (!\Add1~25\)) # (!\tid:m[13]~q\ & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!\tid:m[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[13]~q\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X107_Y47_N14
\m~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~15_combout\ = (\KEY[0]~input_o\ & (\Add1~26_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Equal0~9_combout\,
	datac => \Add1~26_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~15_combout\);

-- Location: FF_X107_Y47_N15
\tid:m[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~15_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[13]~q\);

-- Location: LCCOMB_X106_Y48_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\tid:m[14]~q\ & (\Add1~27\ $ (GND))) # (!\tid:m[14]~q\ & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((\tid:m[14]~q\ & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[14]~q\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X107_Y47_N24
\m~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~16_combout\ = (\KEY[0]~input_o\ & (\Add1~28_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~28_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~16_combout\);

-- Location: FF_X107_Y47_N25
\tid:m[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~16_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[14]~q\);

-- Location: LCCOMB_X106_Y48_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\tid:m[15]~q\ & (!\Add1~29\)) # (!\tid:m[15]~q\ & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!\tid:m[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[15]~q\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X105_Y48_N6
\m~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~17_combout\ = (\Add1~30_combout\ & (\KEY[0]~input_o\ & ((\Equal0~4_combout\) # (\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \m~17_combout\);

-- Location: FF_X106_Y48_N19
\tid:m[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \m~17_combout\,
	sload => VCC,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[15]~q\);

-- Location: LCCOMB_X106_Y47_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\tid:m[16]~q\ & (\Add1~31\ $ (GND))) # (!\tid:m[16]~q\ & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((\tid:m[16]~q\ & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[16]~q\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X107_Y47_N20
\m~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~26_combout\ = (\KEY[0]~input_o\ & (\Add1~32_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Equal0~9_combout\,
	datac => \Add1~32_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~26_combout\);

-- Location: FF_X107_Y47_N21
\tid:m[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~26_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[16]~q\);

-- Location: LCCOMB_X106_Y47_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\tid:m[17]~q\ & (!\Add1~33\)) # (!\tid:m[17]~q\ & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!\tid:m[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[17]~q\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X107_Y47_N30
\m~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~25_combout\ = (\Add1~34_combout\ & (\KEY[0]~input_o\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~25_combout\);

-- Location: FF_X107_Y47_N31
\tid:m[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~25_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[17]~q\);

-- Location: LCCOMB_X106_Y47_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (\tid:m[18]~q\ & (\Add1~35\ $ (GND))) # (!\tid:m[18]~q\ & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((\tid:m[18]~q\ & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[18]~q\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X107_Y47_N0
\m~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~24_combout\ = (\KEY[0]~input_o\ & (\Add1~36_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~36_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~24_combout\);

-- Location: FF_X107_Y47_N1
\tid:m[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~24_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[18]~q\);

-- Location: LCCOMB_X106_Y47_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\tid:m[19]~q\ & (!\Add1~37\)) # (!\tid:m[19]~q\ & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!\tid:m[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[19]~q\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X107_Y47_N2
\m~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~23_combout\ = (\KEY[0]~input_o\ & (\Add1~38_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~38_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~23_combout\);

-- Location: FF_X107_Y47_N3
\tid:m[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~23_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[19]~q\);

-- Location: LCCOMB_X106_Y47_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (\tid:m[20]~q\ & (\Add1~39\ $ (GND))) # (!\tid:m[20]~q\ & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((\tid:m[20]~q\ & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[20]~q\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X107_Y47_N4
\m~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~22_combout\ = (\KEY[0]~input_o\ & (\Add1~40_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~40_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~22_combout\);

-- Location: FF_X107_Y47_N5
\tid:m[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~22_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[20]~q\);

-- Location: LCCOMB_X106_Y47_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\tid:m[21]~q\ & (!\Add1~41\)) # (!\tid:m[21]~q\ & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!\tid:m[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[21]~q\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X107_Y47_N26
\m~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~21_combout\ = (\Add1~42_combout\ & (\KEY[0]~input_o\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~42_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~21_combout\);

-- Location: FF_X107_Y47_N27
\tid:m[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~21_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[21]~q\);

-- Location: LCCOMB_X106_Y47_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\tid:m[22]~q\ & (\Add1~43\ $ (GND))) # (!\tid:m[22]~q\ & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((\tid:m[22]~q\ & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[22]~q\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X107_Y47_N8
\m~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~20_combout\ = (\Add1~44_combout\ & (\KEY[0]~input_o\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~20_combout\);

-- Location: FF_X107_Y47_N9
\tid:m[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~20_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[22]~q\);

-- Location: LCCOMB_X106_Y47_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\tid:m[23]~q\ & (!\Add1~45\)) # (!\tid:m[23]~q\ & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!\tid:m[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[23]~q\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X107_Y47_N6
\m~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~19_combout\ = (\Add1~46_combout\ & (\KEY[0]~input_o\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~19_combout\);

-- Location: FF_X107_Y47_N7
\tid:m[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~19_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[23]~q\);

-- Location: LCCOMB_X106_Y47_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (\tid:m[24]~q\ & (\Add1~47\ $ (GND))) # (!\tid:m[24]~q\ & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((\tid:m[24]~q\ & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[24]~q\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X108_Y47_N12
\m~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~18_combout\ = (\KEY[0]~input_o\ & (\Add1~48_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~48_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~18_combout\);

-- Location: FF_X108_Y47_N13
\tid:m[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~18_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[24]~q\);

-- Location: LCCOMB_X106_Y47_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\tid:m[25]~q\ & (!\Add1~49\)) # (!\tid:m[25]~q\ & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!\tid:m[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[25]~q\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X107_Y47_N10
\m~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~27_combout\ = (\KEY[0]~input_o\ & (\Add1~50_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~50_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~27_combout\);

-- Location: FF_X107_Y47_N11
\tid:m[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~27_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[25]~q\);

-- Location: LCCOMB_X106_Y47_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (\tid:m[26]~q\ & (\Add1~51\ $ (GND))) # (!\tid:m[26]~q\ & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((\tid:m[26]~q\ & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[26]~q\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X107_Y47_N28
\m~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~28_combout\ = (\KEY[0]~input_o\ & (\Add1~52_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~52_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~28_combout\);

-- Location: FF_X107_Y47_N29
\tid:m[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~28_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[26]~q\);

-- Location: LCCOMB_X106_Y47_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\tid:m[27]~q\ & (!\Add1~53\)) # (!\tid:m[27]~q\ & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!\tid:m[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[27]~q\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X107_Y47_N22
\m~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~29_combout\ = (\KEY[0]~input_o\ & (\Add1~54_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~54_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~29_combout\);

-- Location: FF_X107_Y47_N23
\tid:m[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~29_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[27]~q\);

-- Location: LCCOMB_X106_Y47_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (\tid:m[28]~q\ & (\Add1~55\ $ (GND))) # (!\tid:m[28]~q\ & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((\tid:m[28]~q\ & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[28]~q\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X108_Y47_N4
\m~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~31_combout\ = (\KEY[0]~input_o\ & (\Add1~56_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~56_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~31_combout\);

-- Location: FF_X108_Y47_N5
\tid:m[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~31_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[28]~q\);

-- Location: LCCOMB_X106_Y47_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\tid:m[29]~q\ & (!\Add1~57\)) # (!\tid:m[29]~q\ & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!\tid:m[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:m[29]~q\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X108_Y47_N10
\m~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~30_combout\ = (\KEY[0]~input_o\ & (\Add1~58_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Equal0~9_combout\,
	datac => \Add1~58_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~30_combout\);

-- Location: FF_X108_Y47_N11
\tid:m[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~30_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[29]~q\);

-- Location: LCCOMB_X106_Y47_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (\tid:m[30]~q\ & (\Add1~59\ $ (GND))) # (!\tid:m[30]~q\ & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((\tid:m[30]~q\ & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:m[30]~q\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X108_Y47_N28
\m~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~33_combout\ = (\KEY[0]~input_o\ & (\Add1~60_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~60_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~33_combout\);

-- Location: FF_X108_Y47_N29
\tid:m[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~33_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[30]~q\);

-- Location: LCCOMB_X106_Y47_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\ $ (\tid:m[31]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tid:m[31]~q\,
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X105_Y47_N4
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Add1~52_combout\) # ((\Add1~48_combout\) # ((\Add1~54_combout\) # (\Add1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~52_combout\,
	datab => \Add1~48_combout\,
	datac => \Add1~54_combout\,
	datad => \Add1~50_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X105_Y47_N14
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Add1~34_combout\) # ((\Add1~32_combout\) # ((\Add1~36_combout\) # (\Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datab => \Add1~32_combout\,
	datac => \Add1~36_combout\,
	datad => \Add1~38_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X105_Y47_N8
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Add1~42_combout\) # ((\Add1~44_combout\) # ((\Add1~46_combout\) # (\Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~42_combout\,
	datab => \Add1~44_combout\,
	datac => \Add1~46_combout\,
	datad => \Add1~40_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X105_Y47_N6
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~6_combout\) # ((\Add1~56_combout\) # ((\Equal0~7_combout\) # (\Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Add1~56_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add1~60_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X105_Y47_N20
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Add1~62_combout\) # ((\Add1~58_combout\) # ((\Equal0~5_combout\) # (\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~58_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X107_Y48_N26
\m~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~9_combout\ = (\KEY[0]~input_o\ & (\Add1~14_combout\ & ((\Equal0~9_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Add1~14_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \m~9_combout\);

-- Location: FF_X107_Y48_N27
\tid:m[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~9_combout\,
	ena => \tid:m[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:m[7]~q\);

-- Location: LCCOMB_X105_Y47_N0
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ((\Add1~14_combout\) # ((\Add1~12_combout\) # (!\Add1~8_combout\))) # (!\Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add1~14_combout\,
	datac => \Add1~12_combout\,
	datad => \Add1~8_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X105_Y47_N30
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Add1~16_combout\) # ((\Add1~18_combout\) # ((\Add1~22_combout\) # (\Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add1~18_combout\,
	datac => \Add1~22_combout\,
	datad => \Add1~20_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X105_Y47_N24
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Add1~24_combout\) # ((\Add1~26_combout\) # ((\Add1~30_combout\) # (\Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \Add1~26_combout\,
	datac => \Add1~30_combout\,
	datad => \Add1~28_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X105_Y47_N18
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\) # ((\Equal0~1_combout\) # ((\Equal0~2_combout\) # (\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X105_Y47_N22
\m~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~3_combout\ = (\m~0_combout\ & (\KEY[0]~input_o\ & ((\Equal0~4_combout\) # (\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~0_combout\,
	datab => \Equal0~4_combout\,
	datac => \KEY[0]~input_o\,
	datad => \Equal0~9_combout\,
	combout => \m~3_combout\);

-- Location: LCCOMB_X105_Y48_N0
\m~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~4_combout\ = (\Add1~4_combout\ & ((\m~3_combout\) # ((\tid:m[2]~q\ & !\tid:m[26]~0_combout\)))) # (!\Add1~4_combout\ & (\tid:m[2]~q\ & (!\tid:m[26]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \tid:m[2]~q\,
	datac => \tid:m[26]~0_combout\,
	datad => \m~3_combout\,
	combout => \m~4_combout\);

-- Location: FF_X105_Y48_N1
\minutt_std[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minutt_std(2));

-- Location: FF_X105_Y48_N15
\minutt_std[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minutt_std(3));

-- Location: FF_X105_Y48_N25
\minutt_std[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minutt_std(4));

-- Location: FF_X105_Y48_N11
\minutt_std[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minutt_std(5));

-- Location: LCCOMB_X100_Y47_N14
\tid:t[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:t[0]~feeder_combout\ = \t~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \t~1_combout\,
	combout => \tid:t[0]~feeder_combout\);

-- Location: FF_X100_Y47_N15
\tid:t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tid:t[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[0]~q\);

-- Location: LCCOMB_X101_Y47_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \tid:t[0]~q\ $ (VCC)
-- \Add2~1\ = CARRY(\tid:t[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[0]~q\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X105_Y47_N26
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Add1~62_combout\) # ((\Add1~56_combout\) # ((\Add1~58_combout\) # (\Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~58_combout\,
	datad => \Add1~60_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X105_Y47_N16
\tid:t[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:t[18]~0_combout\ = ((\Equal0~6_combout\) # ((\Equal0~7_combout\) # (\Equal0~4_combout\))) # (!\m~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~0_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \tid:t[18]~0_combout\);

-- Location: LCCOMB_X105_Y47_N2
\tid:t[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:t[18]~1_combout\ = ((!\Equal0~5_combout\ & (!\Equal0~10_combout\ & !\tid:t[18]~0_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~10_combout\,
	datad => \tid:t[18]~0_combout\,
	combout => \tid:t[18]~1_combout\);

-- Location: LCCOMB_X105_Y47_N28
\t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~0_combout\ = (\m~0_combout\ & (!\Equal0~4_combout\ & (\KEY[0]~input_o\ & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~0_combout\,
	datab => \Equal0~4_combout\,
	datac => \KEY[0]~input_o\,
	datad => \Equal0~9_combout\,
	combout => \t~0_combout\);

-- Location: LCCOMB_X100_Y47_N24
\t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~1_combout\ = (\tid:t[0]~q\ & (((\Add2~0_combout\ & \t~0_combout\)) # (!\tid:t[18]~1_combout\))) # (!\tid:t[0]~q\ & (\Add2~0_combout\ & ((\t~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[0]~q\,
	datab => \Add2~0_combout\,
	datac => \tid:t[18]~1_combout\,
	datad => \t~0_combout\,
	combout => \t~1_combout\);

-- Location: FF_X100_Y47_N25
\timer_std[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_std(0));

-- Location: LCCOMB_X103_Y47_N24
\tid:t[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:t[1]~feeder_combout\ = \t~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \t~2_combout\,
	combout => \tid:t[1]~feeder_combout\);

-- Location: FF_X103_Y47_N25
\tid:t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tid:t[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[1]~q\);

-- Location: LCCOMB_X101_Y47_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\tid:t[1]~q\ & (!\Add2~1\)) # (!\tid:t[1]~q\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\tid:t[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[1]~q\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X103_Y47_N12
\t~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~2_combout\ = (\Add2~2_combout\ & ((\t~0_combout\) # ((\tid:t[1]~q\ & !\tid:t[18]~1_combout\)))) # (!\Add2~2_combout\ & (\tid:t[1]~q\ & (!\tid:t[18]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \tid:t[1]~q\,
	datac => \tid:t[18]~1_combout\,
	datad => \t~0_combout\,
	combout => \t~2_combout\);

-- Location: FF_X103_Y47_N13
\timer_std[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_std(1));

-- Location: LCCOMB_X103_Y47_N14
\tid:t[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:t[2]~feeder_combout\ = \t~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \t~3_combout\,
	combout => \tid:t[2]~feeder_combout\);

-- Location: FF_X103_Y47_N15
\tid:t[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tid:t[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[2]~q\);

-- Location: LCCOMB_X101_Y47_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\tid:t[2]~q\ & (\Add2~3\ $ (GND))) # (!\tid:t[2]~q\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\tid:t[2]~q\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[2]~q\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X103_Y47_N18
\t~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~3_combout\ = (\Add2~4_combout\ & ((\t~0_combout\) # ((\tid:t[2]~q\ & !\tid:t[18]~1_combout\)))) # (!\Add2~4_combout\ & (\tid:t[2]~q\ & (!\tid:t[18]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \tid:t[2]~q\,
	datac => \tid:t[18]~1_combout\,
	datad => \t~0_combout\,
	combout => \t~3_combout\);

-- Location: FF_X103_Y47_N19
\timer_std[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_std(2));

-- Location: FF_X103_Y47_N9
\tid:t[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[3]~q\);

-- Location: LCCOMB_X101_Y47_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\tid:t[3]~q\ & (!\Add2~5\)) # (!\tid:t[3]~q\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\tid:t[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[3]~q\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X103_Y47_N20
\t~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~4_combout\ = (!\Equal0~6_combout\ & (\KEY[0]~input_o\ & (!\Equal0~4_combout\ & \m~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Equal0~4_combout\,
	datad => \m~0_combout\,
	combout => \t~4_combout\);

-- Location: LCCOMB_X103_Y47_N4
\t~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~5_combout\ = (!\Equal0~7_combout\ & \t~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \t~4_combout\,
	combout => \t~5_combout\);

-- Location: LCCOMB_X103_Y47_N0
\t~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~11_combout\ = (\KEY[0]~input_o\ & (\Add2~56_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Add2~56_combout\,
	datad => \Equal1~10_combout\,
	combout => \t~11_combout\);

-- Location: FF_X103_Y47_N1
\tid:t[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~11_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[28]~q\);

-- Location: LCCOMB_X101_Y47_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\tid:t[4]~q\ & (\Add2~7\ $ (GND))) # (!\tid:t[4]~q\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\tid:t[4]~q\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[4]~q\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X103_Y47_N2
\t~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~8_combout\ = (\tid:t[4]~q\ & (((\Add2~8_combout\ & \t~6_combout\)) # (!\tid:t[18]~1_combout\))) # (!\tid:t[4]~q\ & (\Add2~8_combout\ & ((\t~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[4]~q\,
	datab => \Add2~8_combout\,
	datac => \tid:t[18]~1_combout\,
	datad => \t~6_combout\,
	combout => \t~8_combout\);

-- Location: LCCOMB_X103_Y47_N6
\tid:t[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tid:t[4]~feeder_combout\ = \t~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \t~8_combout\,
	combout => \tid:t[4]~feeder_combout\);

-- Location: FF_X103_Y47_N7
\tid:t[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \tid:t[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[4]~q\);

-- Location: LCCOMB_X101_Y47_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\tid:t[5]~q\ & (!\Add2~9\)) # (!\tid:t[5]~q\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\tid:t[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[5]~q\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X100_Y47_N18
\t~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~34_combout\ = (\Add2~10_combout\ & (\KEY[0]~input_o\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datac => \KEY[0]~input_o\,
	datad => \Equal1~10_combout\,
	combout => \t~34_combout\);

-- Location: FF_X100_Y47_N19
\tid:t[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~34_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[5]~q\);

-- Location: LCCOMB_X101_Y47_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\tid:t[6]~q\ & (\Add2~11\ $ (GND))) # (!\tid:t[6]~q\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\tid:t[6]~q\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[6]~q\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X102_Y47_N6
\t~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~33_combout\ = (\Add2~12_combout\ & (\KEY[0]~input_o\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Equal1~10_combout\,
	combout => \t~33_combout\);

-- Location: FF_X102_Y47_N7
\tid:t[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~33_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[6]~q\);

-- Location: LCCOMB_X101_Y47_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\tid:t[7]~q\ & (!\Add2~13\)) # (!\tid:t[7]~q\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\tid:t[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[7]~q\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X103_Y47_N16
\t~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~32_combout\ = (\KEY[0]~input_o\ & (\Add2~14_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Add2~14_combout\,
	datad => \Equal1~10_combout\,
	combout => \t~32_combout\);

-- Location: FF_X103_Y47_N17
\tid:t[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~32_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[7]~q\);

-- Location: LCCOMB_X101_Y47_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\tid:t[8]~q\ & (\Add2~15\ $ (GND))) # (!\tid:t[8]~q\ & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((\tid:t[8]~q\ & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[8]~q\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X103_Y47_N26
\t~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~31_combout\ = (\KEY[0]~input_o\ & (\Add2~16_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Add2~16_combout\,
	datad => \Equal1~10_combout\,
	combout => \t~31_combout\);

-- Location: FF_X103_Y47_N27
\tid:t[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~31_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[8]~q\);

-- Location: LCCOMB_X101_Y47_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\tid:t[9]~q\ & (!\Add2~17\)) # (!\tid:t[9]~q\ & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!\tid:t[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[9]~q\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X105_Y47_N10
\t~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~30_combout\ = (\Add2~18_combout\ & (\KEY[0]~input_o\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~18_combout\,
	datac => \KEY[0]~input_o\,
	datad => \Equal1~10_combout\,
	combout => \t~30_combout\);

-- Location: FF_X105_Y47_N11
\tid:t[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~30_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[9]~q\);

-- Location: LCCOMB_X101_Y47_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\tid:t[10]~q\ & (\Add2~19\ $ (GND))) # (!\tid:t[10]~q\ & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((\tid:t[10]~q\ & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[10]~q\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X100_Y47_N0
\t~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~29_combout\ = (\KEY[0]~input_o\ & (\Add2~20_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Add2~20_combout\,
	datad => \Equal1~10_combout\,
	combout => \t~29_combout\);

-- Location: FF_X100_Y47_N1
\tid:t[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~29_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[10]~q\);

-- Location: LCCOMB_X101_Y47_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\tid:t[11]~q\ & (!\Add2~21\)) # (!\tid:t[11]~q\ & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!\tid:t[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[11]~q\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X103_Y47_N28
\t~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~28_combout\ = (\KEY[0]~input_o\ & (\Add2~22_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Add2~22_combout\,
	datad => \Equal1~10_combout\,
	combout => \t~28_combout\);

-- Location: FF_X103_Y47_N29
\tid:t[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~28_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[11]~q\);

-- Location: LCCOMB_X101_Y47_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\tid:t[12]~q\ & (\Add2~23\ $ (GND))) # (!\tid:t[12]~q\ & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((\tid:t[12]~q\ & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[12]~q\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X100_Y47_N2
\t~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~27_combout\ = (\Add2~24_combout\ & (\KEY[0]~input_o\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~24_combout\,
	datac => \KEY[0]~input_o\,
	datad => \Equal1~10_combout\,
	combout => \t~27_combout\);

-- Location: FF_X100_Y47_N3
\tid:t[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~27_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[12]~q\);

-- Location: LCCOMB_X101_Y47_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\tid:t[13]~q\ & (!\Add2~25\)) # (!\tid:t[13]~q\ & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!\tid:t[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[13]~q\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X100_Y47_N28
\t~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~26_combout\ = (\Add2~26_combout\ & (\KEY[0]~input_o\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~26_combout\,
	datac => \KEY[0]~input_o\,
	datad => \Equal1~10_combout\,
	combout => \t~26_combout\);

-- Location: FF_X100_Y47_N29
\tid:t[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~26_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[13]~q\);

-- Location: LCCOMB_X101_Y47_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\tid:t[14]~q\ & (\Add2~27\ $ (GND))) # (!\tid:t[14]~q\ & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((\tid:t[14]~q\ & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[14]~q\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X100_Y47_N6
\t~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~25_combout\ = (\Add2~28_combout\ & (\KEY[0]~input_o\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~28_combout\,
	datac => \KEY[0]~input_o\,
	datad => \Equal1~10_combout\,
	combout => \t~25_combout\);

-- Location: FF_X100_Y47_N7
\tid:t[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~25_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[14]~q\);

-- Location: LCCOMB_X101_Y47_N30
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\tid:t[15]~q\ & (!\Add2~29\)) # (!\tid:t[15]~q\ & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!\tid:t[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[15]~q\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X102_Y47_N24
\t~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~24_combout\ = (\KEY[0]~input_o\ & (\Equal1~10_combout\ & \Add2~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Equal1~10_combout\,
	datad => \Add2~30_combout\,
	combout => \t~24_combout\);

-- Location: FF_X102_Y47_N25
\tid:t[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~24_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[15]~q\);

-- Location: LCCOMB_X101_Y46_N0
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\tid:t[16]~q\ & (\Add2~31\ $ (GND))) # (!\tid:t[16]~q\ & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((\tid:t[16]~q\ & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[16]~q\,
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X100_Y47_N8
\t~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~23_combout\ = (\KEY[0]~input_o\ & (\Add2~32_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Add2~32_combout\,
	datad => \Equal1~10_combout\,
	combout => \t~23_combout\);

-- Location: FF_X100_Y47_N9
\tid:t[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~23_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[16]~q\);

-- Location: LCCOMB_X101_Y46_N2
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\tid:t[17]~q\ & (!\Add2~33\)) # (!\tid:t[17]~q\ & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!\tid:t[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[17]~q\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X100_Y47_N10
\t~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~22_combout\ = (\KEY[0]~input_o\ & (\Add2~34_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Add2~34_combout\,
	datad => \Equal1~10_combout\,
	combout => \t~22_combout\);

-- Location: FF_X100_Y47_N11
\tid:t[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~22_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[17]~q\);

-- Location: LCCOMB_X101_Y46_N4
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (\tid:t[18]~q\ & (\Add2~35\ $ (GND))) # (!\tid:t[18]~q\ & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((\tid:t[18]~q\ & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[18]~q\,
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X105_Y47_N12
\t~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~21_combout\ = (\Add2~36_combout\ & (\KEY[0]~input_o\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~36_combout\,
	datac => \KEY[0]~input_o\,
	datad => \Equal1~10_combout\,
	combout => \t~21_combout\);

-- Location: FF_X105_Y47_N13
\tid:t[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~21_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[18]~q\);

-- Location: LCCOMB_X101_Y46_N6
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\tid:t[19]~q\ & (!\Add2~37\)) # (!\tid:t[19]~q\ & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!\tid:t[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[19]~q\,
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X102_Y47_N18
\t~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~20_combout\ = (\Add2~38_combout\ & (\KEY[0]~input_o\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datab => \KEY[0]~input_o\,
	datac => \Equal1~10_combout\,
	combout => \t~20_combout\);

-- Location: FF_X102_Y47_N19
\tid:t[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~20_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[19]~q\);

-- Location: LCCOMB_X101_Y46_N8
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (\tid:t[20]~q\ & (\Add2~39\ $ (GND))) # (!\tid:t[20]~q\ & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((\tid:t[20]~q\ & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[20]~q\,
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X100_Y47_N20
\t~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~19_combout\ = (\KEY[0]~input_o\ & (\Add2~40_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Add2~40_combout\,
	datad => \Equal1~10_combout\,
	combout => \t~19_combout\);

-- Location: FF_X100_Y47_N21
\tid:t[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~19_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[20]~q\);

-- Location: LCCOMB_X101_Y46_N10
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\tid:t[21]~q\ & (!\Add2~41\)) # (!\tid:t[21]~q\ & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!\tid:t[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[21]~q\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X102_Y47_N4
\t~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~18_combout\ = (\Add2~42_combout\ & (\Equal1~10_combout\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~42_combout\,
	datac => \Equal1~10_combout\,
	datad => \KEY[0]~input_o\,
	combout => \t~18_combout\);

-- Location: FF_X102_Y47_N5
\tid:t[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~18_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[21]~q\);

-- Location: LCCOMB_X101_Y46_N12
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (\tid:t[22]~q\ & (\Add2~43\ $ (GND))) # (!\tid:t[22]~q\ & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((\tid:t[22]~q\ & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[22]~q\,
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X100_Y47_N30
\t~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~17_combout\ = (\Add2~44_combout\ & (\KEY[0]~input_o\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~44_combout\,
	datac => \KEY[0]~input_o\,
	datad => \Equal1~10_combout\,
	combout => \t~17_combout\);

-- Location: FF_X100_Y47_N31
\tid:t[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~17_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[22]~q\);

-- Location: LCCOMB_X101_Y46_N14
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (\tid:t[23]~q\ & (!\Add2~45\)) # (!\tid:t[23]~q\ & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!\tid:t[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[23]~q\,
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X100_Y47_N12
\t~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~16_combout\ = (\KEY[0]~input_o\ & (\Add2~46_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Add2~46_combout\,
	datad => \Equal1~10_combout\,
	combout => \t~16_combout\);

-- Location: FF_X100_Y47_N13
\tid:t[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~16_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[23]~q\);

-- Location: LCCOMB_X101_Y46_N16
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (\tid:t[24]~q\ & (\Add2~47\ $ (GND))) # (!\tid:t[24]~q\ & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((\tid:t[24]~q\ & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[24]~q\,
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X100_Y47_N26
\t~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~15_combout\ = (\KEY[0]~input_o\ & (\Add2~48_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Add2~48_combout\,
	datad => \Equal1~10_combout\,
	combout => \t~15_combout\);

-- Location: FF_X100_Y47_N27
\tid:t[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~15_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[24]~q\);

-- Location: LCCOMB_X101_Y46_N18
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (\tid:t[25]~q\ & (!\Add2~49\)) # (!\tid:t[25]~q\ & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!\tid:t[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[25]~q\,
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X102_Y47_N26
\t~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~14_combout\ = (\Add2~50_combout\ & (\Equal1~10_combout\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~50_combout\,
	datac => \Equal1~10_combout\,
	datad => \KEY[0]~input_o\,
	combout => \t~14_combout\);

-- Location: FF_X102_Y47_N27
\tid:t[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~14_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[25]~q\);

-- Location: LCCOMB_X101_Y46_N20
\Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (\tid:t[26]~q\ & (\Add2~51\ $ (GND))) # (!\tid:t[26]~q\ & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((\tid:t[26]~q\ & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[26]~q\,
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X103_Y47_N30
\t~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~13_combout\ = (\Add2~52_combout\ & (\KEY[0]~input_o\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~52_combout\,
	datab => \KEY[0]~input_o\,
	datad => \Equal1~10_combout\,
	combout => \t~13_combout\);

-- Location: FF_X103_Y47_N31
\tid:t[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~13_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[26]~q\);

-- Location: LCCOMB_X101_Y46_N22
\Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (\tid:t[27]~q\ & (!\Add2~53\)) # (!\tid:t[27]~q\ & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!\tid:t[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[27]~q\,
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X102_Y47_N8
\t~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~12_combout\ = (\KEY[0]~input_o\ & (\Equal1~10_combout\ & \Add2~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Equal1~10_combout\,
	datad => \Add2~54_combout\,
	combout => \t~12_combout\);

-- Location: FF_X102_Y47_N9
\tid:t[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~12_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[27]~q\);

-- Location: LCCOMB_X101_Y46_N24
\Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (\tid:t[28]~q\ & (\Add2~55\ $ (GND))) # (!\tid:t[28]~q\ & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((\tid:t[28]~q\ & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[28]~q\,
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X100_Y47_N16
\t~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~10_combout\ = (\KEY[0]~input_o\ & (\Add2~58_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Add2~58_combout\,
	datad => \Equal1~10_combout\,
	combout => \t~10_combout\);

-- Location: FF_X100_Y47_N17
\tid:t[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~10_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[29]~q\);

-- Location: LCCOMB_X101_Y46_N26
\Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (\tid:t[29]~q\ & (!\Add2~57\)) # (!\tid:t[29]~q\ & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!\tid:t[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tid:t[29]~q\,
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X102_Y47_N12
\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Add2~56_combout\) # (\Add2~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~56_combout\,
	datad => \Add2~58_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X100_Y47_N4
\t~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~35_combout\ = (\KEY[0]~input_o\ & (\Add2~62_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Add2~62_combout\,
	datad => \Equal1~10_combout\,
	combout => \t~35_combout\);

-- Location: FF_X100_Y47_N5
\tid:t[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~35_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[31]~q\);

-- Location: LCCOMB_X101_Y46_N28
\Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (\tid:t[30]~q\ & (\Add2~59\ $ (GND))) # (!\tid:t[30]~q\ & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((\tid:t[30]~q\ & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tid:t[30]~q\,
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X103_Y47_N22
\t~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~9_combout\ = (\KEY[0]~input_o\ & (\Add2~60_combout\ & \Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \Add2~60_combout\,
	datad => \Equal1~10_combout\,
	combout => \t~9_combout\);

-- Location: FF_X103_Y47_N23
\tid:t[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~9_combout\,
	ena => \tid:t[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tid:t[30]~q\);

-- Location: LCCOMB_X101_Y46_N30
\Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = \Add2~61\ $ (\tid:t[31]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tid:t[31]~q\,
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X100_Y47_N22
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Add2~4_combout\) # ((\Add2~0_combout\) # ((\Add2~2_combout\) # (!\Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~0_combout\,
	datac => \Add2~2_combout\,
	datad => \Add2~6_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X102_Y47_N0
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Add2~12_combout\) # ((\Add2~10_combout\) # ((\Add2~14_combout\) # (!\Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add2~10_combout\,
	datac => \Add2~14_combout\,
	datad => \Add2~8_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X102_Y47_N22
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Add2~16_combout\) # ((\Add2~22_combout\) # ((\Add2~18_combout\) # (\Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Add2~22_combout\,
	datac => \Add2~18_combout\,
	datad => \Add2~20_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X102_Y47_N16
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Add2~26_combout\) # ((\Add2~30_combout\) # ((\Add2~28_combout\) # (\Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datab => \Add2~30_combout\,
	datac => \Add2~28_combout\,
	datad => \Add2~24_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X102_Y47_N30
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\) # ((\Equal1~1_combout\) # ((\Equal1~2_combout\) # (\Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X102_Y47_N20
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\Add2~38_combout\) # ((\Add2~32_combout\) # ((\Add2~34_combout\) # (\Add2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datab => \Add2~32_combout\,
	datac => \Add2~34_combout\,
	datad => \Add2~36_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X102_Y47_N10
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\Add2~40_combout\) # ((\Add2~42_combout\) # ((\Equal1~4_combout\) # (\Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~40_combout\,
	datab => \Add2~42_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~5_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X102_Y47_N28
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (\Add2~44_combout\) # ((\Add2~46_combout\) # ((\Add2~48_combout\) # (\Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~44_combout\,
	datab => \Add2~46_combout\,
	datac => \Add2~48_combout\,
	datad => \Equal1~6_combout\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X102_Y47_N2
\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (\Add2~50_combout\) # ((\Add2~54_combout\) # ((\Add2~52_combout\) # (\Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~50_combout\,
	datab => \Add2~54_combout\,
	datac => \Add2~52_combout\,
	datad => \Equal1~7_combout\,
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X102_Y47_N14
\Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~9_combout\) # ((\Add2~62_combout\) # ((\Add2~60_combout\) # (\Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add2~62_combout\,
	datac => \Add2~60_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X103_Y47_N10
\t~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~6_combout\ = (!\Equal0~5_combout\ & (!\Equal0~10_combout\ & (\t~5_combout\ & \Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~10_combout\,
	datac => \t~5_combout\,
	datad => \Equal1~10_combout\,
	combout => \t~6_combout\);

-- Location: LCCOMB_X103_Y47_N8
\t~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t~7_combout\ = (\Add2~6_combout\ & ((\t~6_combout\) # ((!\tid:t[18]~1_combout\ & \tid:t[3]~q\)))) # (!\Add2~6_combout\ & (!\tid:t[18]~1_combout\ & (\tid:t[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \tid:t[18]~1_combout\,
	datac => \tid:t[3]~q\,
	datad => \t~6_combout\,
	combout => \t~7_combout\);

-- Location: FF_X103_Y47_N5
\timer_std[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_std(3));

-- Location: FF_X103_Y47_N3
\timer_std[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_std(4));

-- Location: LCCOMB_X107_Y49_N16
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

-- Location: FF_X107_Y49_N17
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
END structure;


