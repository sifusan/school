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

-- DATE "10/21/2019 09:35:39"

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

ENTITY 	parkeringshus IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END parkeringshus;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parkeringshus IS
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
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
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
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \bill_teller|totalt_biler[0]~8_combout\ : std_logic;
SIGNAL \reset_sync_comp|dff~feeder_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \reset_sync_comp|dff~q\ : std_logic;
SIGNAL \reset_sync_comp|rst_clk_n~feeder_combout\ : std_logic;
SIGNAL \reset_sync_comp|rst_clk_n~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \input_Q_inn~feeder_combout\ : std_logic;
SIGNAL \input_Q_inn~q\ : std_logic;
SIGNAL \input_QQ_inn~feeder_combout\ : std_logic;
SIGNAL \input_QQ_inn~q\ : std_logic;
SIGNAL \synched_sensor_inn~feeder_combout\ : std_logic;
SIGNAL \synched_sensor_inn~q\ : std_logic;
SIGNAL \anti_prell_inn|teller[0]~10_combout\ : std_logic;
SIGNAL \anti_prell_inn|tilstand.start~feeder_combout\ : std_logic;
SIGNAL \anti_prell_inn|tilstand.start~q\ : std_logic;
SIGNAL \anti_prell_inn|Selector0~0_combout\ : std_logic;
SIGNAL \anti_prell_inn|Selector0~1_combout\ : std_logic;
SIGNAL \anti_prell_inn|tilstand.vent~q\ : std_logic;
SIGNAL \anti_prell_inn|Selector1~0_combout\ : std_logic;
SIGNAL \anti_prell_inn|tilstand.funnet_1~q\ : std_logic;
SIGNAL \anti_prell_inn|WideOr2~0_combout\ : std_logic;
SIGNAL \anti_prell_inn|teller[0]~11\ : std_logic;
SIGNAL \anti_prell_inn|teller[1]~12_combout\ : std_logic;
SIGNAL \anti_prell_inn|teller[1]~13\ : std_logic;
SIGNAL \anti_prell_inn|teller[2]~14_combout\ : std_logic;
SIGNAL \anti_prell_inn|teller[2]~15\ : std_logic;
SIGNAL \anti_prell_inn|teller[3]~16_combout\ : std_logic;
SIGNAL \anti_prell_inn|LessThan0~1_combout\ : std_logic;
SIGNAL \anti_prell_inn|teller[3]~17\ : std_logic;
SIGNAL \anti_prell_inn|teller[4]~18_combout\ : std_logic;
SIGNAL \anti_prell_inn|teller[4]~19\ : std_logic;
SIGNAL \anti_prell_inn|teller[5]~20_combout\ : std_logic;
SIGNAL \anti_prell_inn|teller[5]~21\ : std_logic;
SIGNAL \anti_prell_inn|teller[6]~22_combout\ : std_logic;
SIGNAL \anti_prell_inn|teller[6]~23\ : std_logic;
SIGNAL \anti_prell_inn|teller[7]~24_combout\ : std_logic;
SIGNAL \anti_prell_inn|teller[7]~25\ : std_logic;
SIGNAL \anti_prell_inn|teller[8]~26_combout\ : std_logic;
SIGNAL \anti_prell_inn|teller[8]~27\ : std_logic;
SIGNAL \anti_prell_inn|teller[9]~28_combout\ : std_logic;
SIGNAL \anti_prell_inn|LessThan0~0_combout\ : std_logic;
SIGNAL \anti_prell_inn|LessThan0~2_combout\ : std_logic;
SIGNAL \anti_prell_inn|Selector2~0_combout\ : std_logic;
SIGNAL \anti_prell_inn|tilstand.ligger_hoegt~q\ : std_logic;
SIGNAL \anti_prell_inn|Selector3~0_combout\ : std_logic;
SIGNAL \anti_prell_inn|tilstand.til_null~q\ : std_logic;
SIGNAL \anti_prell_inn|passering~combout\ : std_logic;
SIGNAL \flanke_detektor_inn|input_Q~q\ : std_logic;
SIGNAL \flanke_detektor_inn|sig_inn_ne~0_combout\ : std_logic;
SIGNAL \flanke_detektor_inn|sig_inn_ne~q\ : std_logic;
SIGNAL \bill_teller|input_Q_inn~feeder_combout\ : std_logic;
SIGNAL \bill_teller|input_Q_inn~q\ : std_logic;
SIGNAL \bill_teller|tell_opp~0_combout\ : std_logic;
SIGNAL \bill_teller|tell_opp~q\ : std_logic;
SIGNAL \bill_teller|totalt_biler[0]~9\ : std_logic;
SIGNAL \bill_teller|totalt_biler[1]~10_combout\ : std_logic;
SIGNAL \bill_teller|totalt_biler[1]~11\ : std_logic;
SIGNAL \bill_teller|totalt_biler[2]~12_combout\ : std_logic;
SIGNAL \bill_teller|totalt_biler[2]~13\ : std_logic;
SIGNAL \bill_teller|totalt_biler[3]~14_combout\ : std_logic;
SIGNAL \bill_teller|totalt_biler[3]~15\ : std_logic;
SIGNAL \bill_teller|totalt_biler[4]~16_combout\ : std_logic;
SIGNAL \bill_teller|totalt_biler[4]~17\ : std_logic;
SIGNAL \bill_teller|totalt_biler[5]~18_combout\ : std_logic;
SIGNAL \bill_teller|totalt_biler[5]~19\ : std_logic;
SIGNAL \bill_teller|totalt_biler[6]~20_combout\ : std_logic;
SIGNAL \bill_teller|totalt_biler[6]~21\ : std_logic;
SIGNAL \bill_teller|totalt_biler[7]~22_combout\ : std_logic;
SIGNAL \bill_teller|LessThan0~1_combout\ : std_logic;
SIGNAL \bill_teller|LessThan0~0_combout\ : std_logic;
SIGNAL \bill_teller|p_tell_biler~0_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[0]~26_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[22]~73\ : std_logic;
SIGNAL \enable_gen_comp|teller[23]~74_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[23]~75\ : std_logic;
SIGNAL \enable_gen_comp|teller[24]~76_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[24]~77\ : std_logic;
SIGNAL \enable_gen_comp|teller[25]~78_combout\ : std_logic;
SIGNAL \enable_gen_comp|Equal0~7_combout\ : std_logic;
SIGNAL \enable_gen_comp|Equal0~5_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[3]~28_combout\ : std_logic;
SIGNAL \enable_gen_comp|Equal0~3_combout\ : std_logic;
SIGNAL \enable_gen_comp|Equal0~1_combout\ : std_logic;
SIGNAL \enable_gen_comp|Equal0~0_combout\ : std_logic;
SIGNAL \enable_gen_comp|Equal0~2_combout\ : std_logic;
SIGNAL \enable_gen_comp|Equal0~4_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[3]~29_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[0]~27\ : std_logic;
SIGNAL \enable_gen_comp|teller[1]~30_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[1]~31\ : std_logic;
SIGNAL \enable_gen_comp|teller[2]~32_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[2]~33\ : std_logic;
SIGNAL \enable_gen_comp|teller[3]~34_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[3]~35\ : std_logic;
SIGNAL \enable_gen_comp|teller[4]~36_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[4]~37\ : std_logic;
SIGNAL \enable_gen_comp|teller[5]~38_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[5]~39\ : std_logic;
SIGNAL \enable_gen_comp|teller[6]~40_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[6]~41\ : std_logic;
SIGNAL \enable_gen_comp|teller[7]~42_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[7]~43\ : std_logic;
SIGNAL \enable_gen_comp|teller[8]~44_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[8]~45\ : std_logic;
SIGNAL \enable_gen_comp|teller[9]~46_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[9]~47\ : std_logic;
SIGNAL \enable_gen_comp|teller[10]~48_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[10]~49\ : std_logic;
SIGNAL \enable_gen_comp|teller[11]~50_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[11]~51\ : std_logic;
SIGNAL \enable_gen_comp|teller[12]~52_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[12]~53\ : std_logic;
SIGNAL \enable_gen_comp|teller[13]~54_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[13]~55\ : std_logic;
SIGNAL \enable_gen_comp|teller[14]~56_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[14]~57\ : std_logic;
SIGNAL \enable_gen_comp|teller[15]~58_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[15]~59\ : std_logic;
SIGNAL \enable_gen_comp|teller[16]~60_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[16]~61\ : std_logic;
SIGNAL \enable_gen_comp|teller[17]~62_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[17]~63\ : std_logic;
SIGNAL \enable_gen_comp|teller[18]~64_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[18]~65\ : std_logic;
SIGNAL \enable_gen_comp|teller[19]~66_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[19]~67\ : std_logic;
SIGNAL \enable_gen_comp|teller[20]~68_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[20]~69\ : std_logic;
SIGNAL \enable_gen_comp|teller[21]~70_combout\ : std_logic;
SIGNAL \enable_gen_comp|teller[21]~71\ : std_logic;
SIGNAL \enable_gen_comp|teller[22]~72_combout\ : std_logic;
SIGNAL \enable_gen_comp|Equal0~6_combout\ : std_logic;
SIGNAL \enable_gen_comp|Equal0~8_combout\ : std_logic;
SIGNAL \enable_gen_comp|enable~q\ : std_logic;
SIGNAL \hallo~0_combout\ : std_logic;
SIGNAL \hallo~q\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_2|Mux4~0_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Mult0|mult_core|romout[0][6]~0_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~1\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~3\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~5\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~7\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~9\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~11\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~13\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~14_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~12_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~10_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~8_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[23]~97_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~98_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~6_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~99_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~4_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[28]~93_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[33]~94_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~100_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~2_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~101_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Add0~0_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[38]~95_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[43]~96_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[42]~102_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Add2~0_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[40]~91_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Add2~3_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Add2~4_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Add2~2_combout\ : std_logic;
SIGNAL \bin2bcd_comp|Add2~1_combout\ : std_logic;
SIGNAL \ROM_7_seg_0|Mux6~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_0|Mux5~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_0|Mux4~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_0|Mux3~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_0|Mux2~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_0|Mux1~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_0|Mux0~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_1|Mux6~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_1|Mux5~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_1|Mux4~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_1|Mux3~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_1|Mux2~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_1|Mux1~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_1|Mux0~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_2|Mux6~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_2|Mux1~0_combout\ : std_logic;
SIGNAL \bill_teller|totalt_biler\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \enable_gen_comp|teller\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \anti_prell_inn|teller\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \bin2bcd_comp|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \reset_sync_comp|ALT_INV_rst_clk_n~q\ : std_logic;
SIGNAL \ROM_7_seg_1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ROM_7_seg_0|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\bin2bcd_comp|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;
\reset_sync_comp|ALT_INV_rst_clk_n~q\ <= NOT \reset_sync_comp|rst_clk_n~q\;
\ROM_7_seg_1|ALT_INV_Mux0~0_combout\ <= NOT \ROM_7_seg_1|Mux0~0_combout\;
\ROM_7_seg_0|ALT_INV_Mux0~0_combout\ <= NOT \ROM_7_seg_0|Mux0~0_combout\;
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
	i => \bill_teller|totalt_biler\(0),
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
	i => \bill_teller|totalt_biler\(1),
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
	i => \bill_teller|totalt_biler\(2),
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
	i => \bill_teller|totalt_biler\(3),
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
	i => \bill_teller|totalt_biler\(4),
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
	i => \bill_teller|totalt_biler\(5),
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
	i => \bill_teller|totalt_biler\(6),
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
	i => \bill_teller|totalt_biler\(7),
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

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_7_seg_0|Mux6~0_combout\,
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
	i => \ROM_7_seg_0|Mux5~0_combout\,
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
	i => \ROM_7_seg_0|Mux4~0_combout\,
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
	i => \ROM_7_seg_0|Mux3~0_combout\,
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
	i => \ROM_7_seg_0|Mux2~0_combout\,
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
	i => \ROM_7_seg_0|Mux1~0_combout\,
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
	i => \ROM_7_seg_0|ALT_INV_Mux0~0_combout\,
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
	i => \ROM_7_seg_1|Mux6~0_combout\,
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
	i => \ROM_7_seg_1|Mux5~0_combout\,
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
	i => \ROM_7_seg_1|Mux4~0_combout\,
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
	i => \ROM_7_seg_1|Mux3~0_combout\,
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
	i => \ROM_7_seg_1|Mux2~0_combout\,
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
	i => \ROM_7_seg_1|Mux1~0_combout\,
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
	i => \ROM_7_seg_1|ALT_INV_Mux0~0_combout\,
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
	i => \ROM_7_seg_2|Mux6~0_combout\,
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
	i => \ROM_7_seg_2|Mux4~0_combout\,
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
	i => \ROM_7_seg_2|Mux6~0_combout\,
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
	i => \bin2bcd_comp|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
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
	i => \ROM_7_seg_2|Mux1~0_combout\,
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
	i => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
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

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

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

-- Location: LCCOMB_X92_Y53_N4
\bill_teller|totalt_biler[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bill_teller|totalt_biler[0]~8_combout\ = \bill_teller|totalt_biler\(0) $ (VCC)
-- \bill_teller|totalt_biler[0]~9\ = CARRY(\bill_teller|totalt_biler\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bill_teller|totalt_biler\(0),
	datad => VCC,
	combout => \bill_teller|totalt_biler[0]~8_combout\,
	cout => \bill_teller|totalt_biler[0]~9\);

-- Location: LCCOMB_X92_Y53_N22
\reset_sync_comp|dff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_sync_comp|dff~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \reset_sync_comp|dff~feeder_combout\);

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

-- Location: FF_X92_Y53_N23
\reset_sync_comp|dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_sync_comp|dff~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_sync_comp|dff~q\);

-- Location: LCCOMB_X92_Y53_N20
\reset_sync_comp|rst_clk_n~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_sync_comp|rst_clk_n~feeder_combout\ = \reset_sync_comp|dff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_sync_comp|dff~q\,
	combout => \reset_sync_comp|rst_clk_n~feeder_combout\);

-- Location: FF_X92_Y53_N21
\reset_sync_comp|rst_clk_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_sync_comp|rst_clk_n~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_sync_comp|rst_clk_n~q\);

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

-- Location: LCCOMB_X90_Y53_N14
\input_Q_inn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_Q_inn~feeder_combout\ = \KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \input_Q_inn~feeder_combout\);

-- Location: FF_X90_Y53_N15
input_Q_inn : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \input_Q_inn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_Q_inn~q\);

-- Location: LCCOMB_X90_Y53_N18
\input_QQ_inn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_QQ_inn~feeder_combout\ = \input_Q_inn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_Q_inn~q\,
	combout => \input_QQ_inn~feeder_combout\);

-- Location: FF_X90_Y53_N19
input_QQ_inn : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \input_QQ_inn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_QQ_inn~q\);

-- Location: LCCOMB_X90_Y53_N8
\synched_sensor_inn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \synched_sensor_inn~feeder_combout\ = \input_QQ_inn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_QQ_inn~q\,
	combout => \synched_sensor_inn~feeder_combout\);

-- Location: FF_X90_Y53_N9
synched_sensor_inn : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \synched_sensor_inn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synched_sensor_inn~q\);

-- Location: LCCOMB_X94_Y53_N0
\anti_prell_inn|teller[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|teller[0]~10_combout\ = \anti_prell_inn|teller\(0) $ (VCC)
-- \anti_prell_inn|teller[0]~11\ = CARRY(\anti_prell_inn|teller\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \anti_prell_inn|teller\(0),
	datad => VCC,
	combout => \anti_prell_inn|teller[0]~10_combout\,
	cout => \anti_prell_inn|teller[0]~11\);

-- Location: LCCOMB_X90_Y53_N6
\anti_prell_inn|tilstand.start~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|tilstand.start~feeder_combout\ = \reset_sync_comp|rst_clk_n~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_sync_comp|rst_clk_n~q\,
	combout => \anti_prell_inn|tilstand.start~feeder_combout\);

-- Location: FF_X90_Y53_N7
\anti_prell_inn|tilstand.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|tilstand.start~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|tilstand.start~q\);

-- Location: LCCOMB_X90_Y53_N12
\anti_prell_inn|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|Selector0~0_combout\ = (\anti_prell_inn|tilstand.vent~q\) # ((\anti_prell_inn|tilstand.funnet_1~q\) # ((\anti_prell_inn|tilstand.til_null~q\ & !\anti_prell_inn|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anti_prell_inn|tilstand.vent~q\,
	datab => \anti_prell_inn|tilstand.funnet_1~q\,
	datac => \anti_prell_inn|tilstand.til_null~q\,
	datad => \anti_prell_inn|LessThan0~2_combout\,
	combout => \anti_prell_inn|Selector0~0_combout\);

-- Location: LCCOMB_X90_Y53_N22
\anti_prell_inn|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|Selector0~1_combout\ = ((!\synched_sensor_inn~q\ & \anti_prell_inn|Selector0~0_combout\)) # (!\anti_prell_inn|tilstand.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anti_prell_inn|tilstand.start~q\,
	datab => \synched_sensor_inn~q\,
	datac => \anti_prell_inn|Selector0~0_combout\,
	combout => \anti_prell_inn|Selector0~1_combout\);

-- Location: FF_X90_Y53_N23
\anti_prell_inn|tilstand.vent\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|Selector0~1_combout\,
	sclr => \reset_sync_comp|ALT_INV_rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|tilstand.vent~q\);

-- Location: LCCOMB_X90_Y53_N0
\anti_prell_inn|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|Selector1~0_combout\ = (\synched_sensor_inn~q\ & ((\anti_prell_inn|tilstand.vent~q\) # ((\anti_prell_inn|tilstand.funnet_1~q\ & \anti_prell_inn|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anti_prell_inn|tilstand.vent~q\,
	datab => \synched_sensor_inn~q\,
	datac => \anti_prell_inn|tilstand.funnet_1~q\,
	datad => \anti_prell_inn|LessThan0~2_combout\,
	combout => \anti_prell_inn|Selector1~0_combout\);

-- Location: FF_X90_Y53_N1
\anti_prell_inn|tilstand.funnet_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|Selector1~0_combout\,
	sclr => \reset_sync_comp|ALT_INV_rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|tilstand.funnet_1~q\);

-- Location: LCCOMB_X90_Y53_N28
\anti_prell_inn|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|WideOr2~0_combout\ = (!\anti_prell_inn|tilstand.til_null~q\ & !\anti_prell_inn|tilstand.funnet_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \anti_prell_inn|tilstand.til_null~q\,
	datad => \anti_prell_inn|tilstand.funnet_1~q\,
	combout => \anti_prell_inn|WideOr2~0_combout\);

-- Location: FF_X94_Y53_N1
\anti_prell_inn|teller[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|teller[0]~10_combout\,
	sclr => \anti_prell_inn|WideOr2~0_combout\,
	ena => \reset_sync_comp|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|teller\(0));

-- Location: LCCOMB_X94_Y53_N2
\anti_prell_inn|teller[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|teller[1]~12_combout\ = (\anti_prell_inn|teller\(1) & (!\anti_prell_inn|teller[0]~11\)) # (!\anti_prell_inn|teller\(1) & ((\anti_prell_inn|teller[0]~11\) # (GND)))
-- \anti_prell_inn|teller[1]~13\ = CARRY((!\anti_prell_inn|teller[0]~11\) # (!\anti_prell_inn|teller\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anti_prell_inn|teller\(1),
	datad => VCC,
	cin => \anti_prell_inn|teller[0]~11\,
	combout => \anti_prell_inn|teller[1]~12_combout\,
	cout => \anti_prell_inn|teller[1]~13\);

-- Location: FF_X94_Y53_N3
\anti_prell_inn|teller[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|teller[1]~12_combout\,
	sclr => \anti_prell_inn|WideOr2~0_combout\,
	ena => \reset_sync_comp|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|teller\(1));

-- Location: LCCOMB_X94_Y53_N4
\anti_prell_inn|teller[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|teller[2]~14_combout\ = (\anti_prell_inn|teller\(2) & (\anti_prell_inn|teller[1]~13\ $ (GND))) # (!\anti_prell_inn|teller\(2) & (!\anti_prell_inn|teller[1]~13\ & VCC))
-- \anti_prell_inn|teller[2]~15\ = CARRY((\anti_prell_inn|teller\(2) & !\anti_prell_inn|teller[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anti_prell_inn|teller\(2),
	datad => VCC,
	cin => \anti_prell_inn|teller[1]~13\,
	combout => \anti_prell_inn|teller[2]~14_combout\,
	cout => \anti_prell_inn|teller[2]~15\);

-- Location: FF_X94_Y53_N5
\anti_prell_inn|teller[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|teller[2]~14_combout\,
	sclr => \anti_prell_inn|WideOr2~0_combout\,
	ena => \reset_sync_comp|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|teller\(2));

-- Location: LCCOMB_X94_Y53_N6
\anti_prell_inn|teller[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|teller[3]~16_combout\ = (\anti_prell_inn|teller\(3) & (!\anti_prell_inn|teller[2]~15\)) # (!\anti_prell_inn|teller\(3) & ((\anti_prell_inn|teller[2]~15\) # (GND)))
-- \anti_prell_inn|teller[3]~17\ = CARRY((!\anti_prell_inn|teller[2]~15\) # (!\anti_prell_inn|teller\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anti_prell_inn|teller\(3),
	datad => VCC,
	cin => \anti_prell_inn|teller[2]~15\,
	combout => \anti_prell_inn|teller[3]~16_combout\,
	cout => \anti_prell_inn|teller[3]~17\);

-- Location: FF_X94_Y53_N7
\anti_prell_inn|teller[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|teller[3]~16_combout\,
	sclr => \anti_prell_inn|WideOr2~0_combout\,
	ena => \reset_sync_comp|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|teller\(3));

-- Location: LCCOMB_X94_Y53_N26
\anti_prell_inn|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|LessThan0~1_combout\ = (!\anti_prell_inn|teller\(3) & (((!\anti_prell_inn|teller\(1)) # (!\anti_prell_inn|teller\(2))) # (!\anti_prell_inn|teller\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anti_prell_inn|teller\(3),
	datab => \anti_prell_inn|teller\(0),
	datac => \anti_prell_inn|teller\(2),
	datad => \anti_prell_inn|teller\(1),
	combout => \anti_prell_inn|LessThan0~1_combout\);

-- Location: LCCOMB_X94_Y53_N8
\anti_prell_inn|teller[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|teller[4]~18_combout\ = (\anti_prell_inn|teller\(4) & (\anti_prell_inn|teller[3]~17\ $ (GND))) # (!\anti_prell_inn|teller\(4) & (!\anti_prell_inn|teller[3]~17\ & VCC))
-- \anti_prell_inn|teller[4]~19\ = CARRY((\anti_prell_inn|teller\(4) & !\anti_prell_inn|teller[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anti_prell_inn|teller\(4),
	datad => VCC,
	cin => \anti_prell_inn|teller[3]~17\,
	combout => \anti_prell_inn|teller[4]~18_combout\,
	cout => \anti_prell_inn|teller[4]~19\);

-- Location: FF_X94_Y53_N9
\anti_prell_inn|teller[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|teller[4]~18_combout\,
	sclr => \anti_prell_inn|WideOr2~0_combout\,
	ena => \reset_sync_comp|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|teller\(4));

-- Location: LCCOMB_X94_Y53_N10
\anti_prell_inn|teller[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|teller[5]~20_combout\ = (\anti_prell_inn|teller\(5) & (!\anti_prell_inn|teller[4]~19\)) # (!\anti_prell_inn|teller\(5) & ((\anti_prell_inn|teller[4]~19\) # (GND)))
-- \anti_prell_inn|teller[5]~21\ = CARRY((!\anti_prell_inn|teller[4]~19\) # (!\anti_prell_inn|teller\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anti_prell_inn|teller\(5),
	datad => VCC,
	cin => \anti_prell_inn|teller[4]~19\,
	combout => \anti_prell_inn|teller[5]~20_combout\,
	cout => \anti_prell_inn|teller[5]~21\);

-- Location: FF_X94_Y53_N11
\anti_prell_inn|teller[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|teller[5]~20_combout\,
	sclr => \anti_prell_inn|WideOr2~0_combout\,
	ena => \reset_sync_comp|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|teller\(5));

-- Location: LCCOMB_X94_Y53_N12
\anti_prell_inn|teller[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|teller[6]~22_combout\ = (\anti_prell_inn|teller\(6) & (\anti_prell_inn|teller[5]~21\ $ (GND))) # (!\anti_prell_inn|teller\(6) & (!\anti_prell_inn|teller[5]~21\ & VCC))
-- \anti_prell_inn|teller[6]~23\ = CARRY((\anti_prell_inn|teller\(6) & !\anti_prell_inn|teller[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anti_prell_inn|teller\(6),
	datad => VCC,
	cin => \anti_prell_inn|teller[5]~21\,
	combout => \anti_prell_inn|teller[6]~22_combout\,
	cout => \anti_prell_inn|teller[6]~23\);

-- Location: FF_X94_Y53_N13
\anti_prell_inn|teller[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|teller[6]~22_combout\,
	sclr => \anti_prell_inn|WideOr2~0_combout\,
	ena => \reset_sync_comp|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|teller\(6));

-- Location: LCCOMB_X94_Y53_N14
\anti_prell_inn|teller[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|teller[7]~24_combout\ = (\anti_prell_inn|teller\(7) & (!\anti_prell_inn|teller[6]~23\)) # (!\anti_prell_inn|teller\(7) & ((\anti_prell_inn|teller[6]~23\) # (GND)))
-- \anti_prell_inn|teller[7]~25\ = CARRY((!\anti_prell_inn|teller[6]~23\) # (!\anti_prell_inn|teller\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anti_prell_inn|teller\(7),
	datad => VCC,
	cin => \anti_prell_inn|teller[6]~23\,
	combout => \anti_prell_inn|teller[7]~24_combout\,
	cout => \anti_prell_inn|teller[7]~25\);

-- Location: FF_X94_Y53_N15
\anti_prell_inn|teller[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|teller[7]~24_combout\,
	sclr => \anti_prell_inn|WideOr2~0_combout\,
	ena => \reset_sync_comp|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|teller\(7));

-- Location: LCCOMB_X94_Y53_N16
\anti_prell_inn|teller[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|teller[8]~26_combout\ = (\anti_prell_inn|teller\(8) & (\anti_prell_inn|teller[7]~25\ $ (GND))) # (!\anti_prell_inn|teller\(8) & (!\anti_prell_inn|teller[7]~25\ & VCC))
-- \anti_prell_inn|teller[8]~27\ = CARRY((\anti_prell_inn|teller\(8) & !\anti_prell_inn|teller[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anti_prell_inn|teller\(8),
	datad => VCC,
	cin => \anti_prell_inn|teller[7]~25\,
	combout => \anti_prell_inn|teller[8]~26_combout\,
	cout => \anti_prell_inn|teller[8]~27\);

-- Location: FF_X94_Y53_N17
\anti_prell_inn|teller[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|teller[8]~26_combout\,
	sclr => \anti_prell_inn|WideOr2~0_combout\,
	ena => \reset_sync_comp|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|teller\(8));

-- Location: LCCOMB_X94_Y53_N18
\anti_prell_inn|teller[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|teller[9]~28_combout\ = \anti_prell_inn|teller[8]~27\ $ (\anti_prell_inn|teller\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \anti_prell_inn|teller\(9),
	cin => \anti_prell_inn|teller[8]~27\,
	combout => \anti_prell_inn|teller[9]~28_combout\);

-- Location: FF_X94_Y53_N19
\anti_prell_inn|teller[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|teller[9]~28_combout\,
	sclr => \anti_prell_inn|WideOr2~0_combout\,
	ena => \reset_sync_comp|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|teller\(9));

-- Location: LCCOMB_X94_Y53_N28
\anti_prell_inn|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|LessThan0~0_combout\ = (((!\anti_prell_inn|teller\(5)) # (!\anti_prell_inn|teller\(7))) # (!\anti_prell_inn|teller\(8))) # (!\anti_prell_inn|teller\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anti_prell_inn|teller\(6),
	datab => \anti_prell_inn|teller\(8),
	datac => \anti_prell_inn|teller\(7),
	datad => \anti_prell_inn|teller\(5),
	combout => \anti_prell_inn|LessThan0~0_combout\);

-- Location: LCCOMB_X94_Y53_N24
\anti_prell_inn|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|LessThan0~2_combout\ = ((\anti_prell_inn|LessThan0~0_combout\) # ((\anti_prell_inn|LessThan0~1_combout\ & !\anti_prell_inn|teller\(4)))) # (!\anti_prell_inn|teller\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anti_prell_inn|LessThan0~1_combout\,
	datab => \anti_prell_inn|teller\(9),
	datac => \anti_prell_inn|teller\(4),
	datad => \anti_prell_inn|LessThan0~0_combout\,
	combout => \anti_prell_inn|LessThan0~2_combout\);

-- Location: LCCOMB_X90_Y53_N24
\anti_prell_inn|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|Selector2~0_combout\ = (\synched_sensor_inn~q\ & ((\anti_prell_inn|passering~combout\) # ((!\anti_prell_inn|LessThan0~2_combout\ & \anti_prell_inn|tilstand.funnet_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anti_prell_inn|passering~combout\,
	datab => \anti_prell_inn|LessThan0~2_combout\,
	datac => \synched_sensor_inn~q\,
	datad => \anti_prell_inn|tilstand.funnet_1~q\,
	combout => \anti_prell_inn|Selector2~0_combout\);

-- Location: FF_X90_Y53_N25
\anti_prell_inn|tilstand.ligger_hoegt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|Selector2~0_combout\,
	sclr => \reset_sync_comp|ALT_INV_rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|tilstand.ligger_hoegt~q\);

-- Location: LCCOMB_X90_Y53_N30
\anti_prell_inn|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|Selector3~0_combout\ = (!\synched_sensor_inn~q\ & ((\anti_prell_inn|tilstand.ligger_hoegt~q\) # ((\anti_prell_inn|tilstand.til_null~q\ & \anti_prell_inn|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \synched_sensor_inn~q\,
	datab => \anti_prell_inn|tilstand.ligger_hoegt~q\,
	datac => \anti_prell_inn|tilstand.til_null~q\,
	datad => \anti_prell_inn|LessThan0~2_combout\,
	combout => \anti_prell_inn|Selector3~0_combout\);

-- Location: FF_X90_Y53_N31
\anti_prell_inn|tilstand.til_null\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \anti_prell_inn|Selector3~0_combout\,
	sclr => \reset_sync_comp|ALT_INV_rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_prell_inn|tilstand.til_null~q\);

-- Location: LCCOMB_X90_Y53_N10
\anti_prell_inn|passering\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_prell_inn|passering~combout\ = (\anti_prell_inn|tilstand.til_null~q\) # (\anti_prell_inn|tilstand.ligger_hoegt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \anti_prell_inn|tilstand.til_null~q\,
	datad => \anti_prell_inn|tilstand.ligger_hoegt~q\,
	combout => \anti_prell_inn|passering~combout\);

-- Location: FF_X92_Y53_N1
\flanke_detektor_inn|input_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \anti_prell_inn|passering~combout\,
	clrn => \reset_sync_comp|rst_clk_n~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flanke_detektor_inn|input_Q~q\);

-- Location: LCCOMB_X92_Y53_N24
\flanke_detektor_inn|sig_inn_ne~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flanke_detektor_inn|sig_inn_ne~0_combout\ = (\flanke_detektor_inn|input_Q~q\ & (!\anti_prell_inn|tilstand.til_null~q\ & !\anti_prell_inn|tilstand.ligger_hoegt~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flanke_detektor_inn|input_Q~q\,
	datac => \anti_prell_inn|tilstand.til_null~q\,
	datad => \anti_prell_inn|tilstand.ligger_hoegt~q\,
	combout => \flanke_detektor_inn|sig_inn_ne~0_combout\);

-- Location: FF_X92_Y53_N25
\flanke_detektor_inn|sig_inn_ne\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \flanke_detektor_inn|sig_inn_ne~0_combout\,
	clrn => \reset_sync_comp|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flanke_detektor_inn|sig_inn_ne~q\);

-- Location: LCCOMB_X92_Y53_N30
\bill_teller|input_Q_inn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bill_teller|input_Q_inn~feeder_combout\ = \flanke_detektor_inn|sig_inn_ne~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \flanke_detektor_inn|sig_inn_ne~q\,
	combout => \bill_teller|input_Q_inn~feeder_combout\);

-- Location: FF_X92_Y53_N31
\bill_teller|input_Q_inn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bill_teller|input_Q_inn~feeder_combout\,
	clrn => \reset_sync_comp|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bill_teller|input_Q_inn~q\);

-- Location: LCCOMB_X92_Y53_N26
\bill_teller|tell_opp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bill_teller|tell_opp~0_combout\ = (!\bill_teller|input_Q_inn~q\ & \flanke_detektor_inn|sig_inn_ne~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bill_teller|input_Q_inn~q\,
	datad => \flanke_detektor_inn|sig_inn_ne~q\,
	combout => \bill_teller|tell_opp~0_combout\);

-- Location: FF_X92_Y53_N27
\bill_teller|tell_opp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bill_teller|tell_opp~0_combout\,
	clrn => \reset_sync_comp|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bill_teller|tell_opp~q\);

-- Location: LCCOMB_X92_Y53_N6
\bill_teller|totalt_biler[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bill_teller|totalt_biler[1]~10_combout\ = (\bill_teller|totalt_biler\(1) & (!\bill_teller|totalt_biler[0]~9\)) # (!\bill_teller|totalt_biler\(1) & ((\bill_teller|totalt_biler[0]~9\) # (GND)))
-- \bill_teller|totalt_biler[1]~11\ = CARRY((!\bill_teller|totalt_biler[0]~9\) # (!\bill_teller|totalt_biler\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(1),
	datad => VCC,
	cin => \bill_teller|totalt_biler[0]~9\,
	combout => \bill_teller|totalt_biler[1]~10_combout\,
	cout => \bill_teller|totalt_biler[1]~11\);

-- Location: FF_X92_Y53_N7
\bill_teller|totalt_biler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bill_teller|totalt_biler[1]~10_combout\,
	clrn => \reset_sync_comp|rst_clk_n~q\,
	ena => \bill_teller|p_tell_biler~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bill_teller|totalt_biler\(1));

-- Location: LCCOMB_X92_Y53_N8
\bill_teller|totalt_biler[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bill_teller|totalt_biler[2]~12_combout\ = (\bill_teller|totalt_biler\(2) & (\bill_teller|totalt_biler[1]~11\ $ (GND))) # (!\bill_teller|totalt_biler\(2) & (!\bill_teller|totalt_biler[1]~11\ & VCC))
-- \bill_teller|totalt_biler[2]~13\ = CARRY((\bill_teller|totalt_biler\(2) & !\bill_teller|totalt_biler[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bill_teller|totalt_biler\(2),
	datad => VCC,
	cin => \bill_teller|totalt_biler[1]~11\,
	combout => \bill_teller|totalt_biler[2]~12_combout\,
	cout => \bill_teller|totalt_biler[2]~13\);

-- Location: FF_X92_Y53_N9
\bill_teller|totalt_biler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bill_teller|totalt_biler[2]~12_combout\,
	clrn => \reset_sync_comp|rst_clk_n~q\,
	ena => \bill_teller|p_tell_biler~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bill_teller|totalt_biler\(2));

-- Location: LCCOMB_X92_Y53_N10
\bill_teller|totalt_biler[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bill_teller|totalt_biler[3]~14_combout\ = (\bill_teller|totalt_biler\(3) & (!\bill_teller|totalt_biler[2]~13\)) # (!\bill_teller|totalt_biler\(3) & ((\bill_teller|totalt_biler[2]~13\) # (GND)))
-- \bill_teller|totalt_biler[3]~15\ = CARRY((!\bill_teller|totalt_biler[2]~13\) # (!\bill_teller|totalt_biler\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(3),
	datad => VCC,
	cin => \bill_teller|totalt_biler[2]~13\,
	combout => \bill_teller|totalt_biler[3]~14_combout\,
	cout => \bill_teller|totalt_biler[3]~15\);

-- Location: FF_X92_Y53_N11
\bill_teller|totalt_biler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bill_teller|totalt_biler[3]~14_combout\,
	clrn => \reset_sync_comp|rst_clk_n~q\,
	ena => \bill_teller|p_tell_biler~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bill_teller|totalt_biler\(3));

-- Location: LCCOMB_X92_Y53_N12
\bill_teller|totalt_biler[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bill_teller|totalt_biler[4]~16_combout\ = (\bill_teller|totalt_biler\(4) & (\bill_teller|totalt_biler[3]~15\ $ (GND))) # (!\bill_teller|totalt_biler\(4) & (!\bill_teller|totalt_biler[3]~15\ & VCC))
-- \bill_teller|totalt_biler[4]~17\ = CARRY((\bill_teller|totalt_biler\(4) & !\bill_teller|totalt_biler[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(4),
	datad => VCC,
	cin => \bill_teller|totalt_biler[3]~15\,
	combout => \bill_teller|totalt_biler[4]~16_combout\,
	cout => \bill_teller|totalt_biler[4]~17\);

-- Location: FF_X92_Y53_N13
\bill_teller|totalt_biler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bill_teller|totalt_biler[4]~16_combout\,
	clrn => \reset_sync_comp|rst_clk_n~q\,
	ena => \bill_teller|p_tell_biler~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bill_teller|totalt_biler\(4));

-- Location: LCCOMB_X92_Y53_N14
\bill_teller|totalt_biler[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bill_teller|totalt_biler[5]~18_combout\ = (\bill_teller|totalt_biler\(5) & (!\bill_teller|totalt_biler[4]~17\)) # (!\bill_teller|totalt_biler\(5) & ((\bill_teller|totalt_biler[4]~17\) # (GND)))
-- \bill_teller|totalt_biler[5]~19\ = CARRY((!\bill_teller|totalt_biler[4]~17\) # (!\bill_teller|totalt_biler\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bill_teller|totalt_biler\(5),
	datad => VCC,
	cin => \bill_teller|totalt_biler[4]~17\,
	combout => \bill_teller|totalt_biler[5]~18_combout\,
	cout => \bill_teller|totalt_biler[5]~19\);

-- Location: FF_X92_Y53_N15
\bill_teller|totalt_biler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bill_teller|totalt_biler[5]~18_combout\,
	clrn => \reset_sync_comp|rst_clk_n~q\,
	ena => \bill_teller|p_tell_biler~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bill_teller|totalt_biler\(5));

-- Location: LCCOMB_X92_Y53_N16
\bill_teller|totalt_biler[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bill_teller|totalt_biler[6]~20_combout\ = (\bill_teller|totalt_biler\(6) & (\bill_teller|totalt_biler[5]~19\ $ (GND))) # (!\bill_teller|totalt_biler\(6) & (!\bill_teller|totalt_biler[5]~19\ & VCC))
-- \bill_teller|totalt_biler[6]~21\ = CARRY((\bill_teller|totalt_biler\(6) & !\bill_teller|totalt_biler[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bill_teller|totalt_biler\(6),
	datad => VCC,
	cin => \bill_teller|totalt_biler[5]~19\,
	combout => \bill_teller|totalt_biler[6]~20_combout\,
	cout => \bill_teller|totalt_biler[6]~21\);

-- Location: FF_X92_Y53_N17
\bill_teller|totalt_biler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bill_teller|totalt_biler[6]~20_combout\,
	clrn => \reset_sync_comp|rst_clk_n~q\,
	ena => \bill_teller|p_tell_biler~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bill_teller|totalt_biler\(6));

-- Location: LCCOMB_X92_Y53_N18
\bill_teller|totalt_biler[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bill_teller|totalt_biler[7]~22_combout\ = \bill_teller|totalt_biler[6]~21\ $ (\bill_teller|totalt_biler\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \bill_teller|totalt_biler\(7),
	cin => \bill_teller|totalt_biler[6]~21\,
	combout => \bill_teller|totalt_biler[7]~22_combout\);

-- Location: FF_X92_Y53_N19
\bill_teller|totalt_biler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bill_teller|totalt_biler[7]~22_combout\,
	clrn => \reset_sync_comp|rst_clk_n~q\,
	ena => \bill_teller|p_tell_biler~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bill_teller|totalt_biler\(7));

-- Location: LCCOMB_X92_Y53_N2
\bill_teller|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bill_teller|LessThan0~1_combout\ = (((!\bill_teller|totalt_biler\(6)) # (!\bill_teller|totalt_biler\(5))) # (!\bill_teller|totalt_biler\(7))) # (!\bill_teller|totalt_biler\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(4),
	datab => \bill_teller|totalt_biler\(7),
	datac => \bill_teller|totalt_biler\(5),
	datad => \bill_teller|totalt_biler\(6),
	combout => \bill_teller|LessThan0~1_combout\);

-- Location: LCCOMB_X92_Y53_N28
\bill_teller|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bill_teller|LessThan0~0_combout\ = (((!\bill_teller|totalt_biler\(1)) # (!\bill_teller|totalt_biler\(2))) # (!\bill_teller|totalt_biler\(0))) # (!\bill_teller|totalt_biler\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(3),
	datab => \bill_teller|totalt_biler\(0),
	datac => \bill_teller|totalt_biler\(2),
	datad => \bill_teller|totalt_biler\(1),
	combout => \bill_teller|LessThan0~0_combout\);

-- Location: LCCOMB_X92_Y53_N0
\bill_teller|p_tell_biler~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bill_teller|p_tell_biler~0_combout\ = (\bill_teller|tell_opp~q\ & ((\bill_teller|LessThan0~1_combout\) # (\bill_teller|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|tell_opp~q\,
	datab => \bill_teller|LessThan0~1_combout\,
	datad => \bill_teller|LessThan0~0_combout\,
	combout => \bill_teller|p_tell_biler~0_combout\);

-- Location: FF_X92_Y53_N5
\bill_teller|totalt_biler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bill_teller|totalt_biler[0]~8_combout\,
	clrn => \reset_sync_comp|rst_clk_n~q\,
	ena => \bill_teller|p_tell_biler~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bill_teller|totalt_biler\(0));

-- Location: LCCOMB_X91_Y54_N6
\enable_gen_comp|teller[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[0]~26_combout\ = \enable_gen_comp|teller\(0) $ (VCC)
-- \enable_gen_comp|teller[0]~27\ = CARRY(\enable_gen_comp|teller\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(0),
	datad => VCC,
	combout => \enable_gen_comp|teller[0]~26_combout\,
	cout => \enable_gen_comp|teller[0]~27\);

-- Location: LCCOMB_X91_Y53_N18
\enable_gen_comp|teller[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[22]~72_combout\ = (\enable_gen_comp|teller\(22) & (\enable_gen_comp|teller[21]~71\ $ (GND))) # (!\enable_gen_comp|teller\(22) & (!\enable_gen_comp|teller[21]~71\ & VCC))
-- \enable_gen_comp|teller[22]~73\ = CARRY((\enable_gen_comp|teller\(22) & !\enable_gen_comp|teller[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(22),
	datad => VCC,
	cin => \enable_gen_comp|teller[21]~71\,
	combout => \enable_gen_comp|teller[22]~72_combout\,
	cout => \enable_gen_comp|teller[22]~73\);

-- Location: LCCOMB_X91_Y53_N20
\enable_gen_comp|teller[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[23]~74_combout\ = (\enable_gen_comp|teller\(23) & (!\enable_gen_comp|teller[22]~73\)) # (!\enable_gen_comp|teller\(23) & ((\enable_gen_comp|teller[22]~73\) # (GND)))
-- \enable_gen_comp|teller[23]~75\ = CARRY((!\enable_gen_comp|teller[22]~73\) # (!\enable_gen_comp|teller\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(23),
	datad => VCC,
	cin => \enable_gen_comp|teller[22]~73\,
	combout => \enable_gen_comp|teller[23]~74_combout\,
	cout => \enable_gen_comp|teller[23]~75\);

-- Location: FF_X91_Y53_N21
\enable_gen_comp|teller[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[23]~74_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(23));

-- Location: LCCOMB_X91_Y53_N22
\enable_gen_comp|teller[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[24]~76_combout\ = (\enable_gen_comp|teller\(24) & (\enable_gen_comp|teller[23]~75\ $ (GND))) # (!\enable_gen_comp|teller\(24) & (!\enable_gen_comp|teller[23]~75\ & VCC))
-- \enable_gen_comp|teller[24]~77\ = CARRY((\enable_gen_comp|teller\(24) & !\enable_gen_comp|teller[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(24),
	datad => VCC,
	cin => \enable_gen_comp|teller[23]~75\,
	combout => \enable_gen_comp|teller[24]~76_combout\,
	cout => \enable_gen_comp|teller[24]~77\);

-- Location: FF_X91_Y53_N23
\enable_gen_comp|teller[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[24]~76_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(24));

-- Location: LCCOMB_X91_Y53_N24
\enable_gen_comp|teller[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[25]~78_combout\ = \enable_gen_comp|teller[24]~77\ $ (\enable_gen_comp|teller\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \enable_gen_comp|teller\(25),
	cin => \enable_gen_comp|teller[24]~77\,
	combout => \enable_gen_comp|teller[25]~78_combout\);

-- Location: FF_X91_Y53_N25
\enable_gen_comp|teller[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[25]~78_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(25));

-- Location: LCCOMB_X90_Y53_N26
\enable_gen_comp|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|Equal0~7_combout\ = (\enable_gen_comp|teller\(24)) # (\enable_gen_comp|teller\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(24),
	datad => \enable_gen_comp|teller\(25),
	combout => \enable_gen_comp|Equal0~7_combout\);

-- Location: LCCOMB_X90_Y53_N2
\enable_gen_comp|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|Equal0~5_combout\ = (\enable_gen_comp|teller\(16)) # (((!\enable_gen_comp|teller\(18)) # (!\enable_gen_comp|teller\(19))) # (!\enable_gen_comp|teller\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(16),
	datab => \enable_gen_comp|teller\(17),
	datac => \enable_gen_comp|teller\(19),
	datad => \enable_gen_comp|teller\(18),
	combout => \enable_gen_comp|Equal0~5_combout\);

-- Location: LCCOMB_X90_Y53_N16
\enable_gen_comp|teller[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[3]~28_combout\ = (\enable_gen_comp|Equal0~6_combout\) # (\enable_gen_comp|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable_gen_comp|Equal0~6_combout\,
	datad => \enable_gen_comp|Equal0~5_combout\,
	combout => \enable_gen_comp|teller[3]~28_combout\);

-- Location: LCCOMB_X91_Y53_N26
\enable_gen_comp|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|Equal0~3_combout\ = ((\enable_gen_comp|teller\(14)) # ((!\enable_gen_comp|teller\(13)) # (!\enable_gen_comp|teller\(15)))) # (!\enable_gen_comp|teller\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(12),
	datab => \enable_gen_comp|teller\(14),
	datac => \enable_gen_comp|teller\(15),
	datad => \enable_gen_comp|teller\(13),
	combout => \enable_gen_comp|Equal0~3_combout\);

-- Location: LCCOMB_X91_Y54_N2
\enable_gen_comp|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|Equal0~1_combout\ = (\enable_gen_comp|teller\(6)) # (((\enable_gen_comp|teller\(4)) # (\enable_gen_comp|teller\(7))) # (!\enable_gen_comp|teller\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(6),
	datab => \enable_gen_comp|teller\(5),
	datac => \enable_gen_comp|teller\(4),
	datad => \enable_gen_comp|teller\(7),
	combout => \enable_gen_comp|Equal0~1_combout\);

-- Location: LCCOMB_X91_Y54_N4
\enable_gen_comp|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|Equal0~0_combout\ = (\enable_gen_comp|teller\(3)) # ((\enable_gen_comp|teller\(1)) # ((\enable_gen_comp|teller\(0)) # (\enable_gen_comp|teller\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(3),
	datab => \enable_gen_comp|teller\(1),
	datac => \enable_gen_comp|teller\(0),
	datad => \enable_gen_comp|teller\(2),
	combout => \enable_gen_comp|Equal0~0_combout\);

-- Location: LCCOMB_X91_Y54_N0
\enable_gen_comp|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|Equal0~2_combout\ = (\enable_gen_comp|teller\(8)) # ((\enable_gen_comp|teller\(9)) # ((!\enable_gen_comp|teller\(11)) # (!\enable_gen_comp|teller\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(8),
	datab => \enable_gen_comp|teller\(9),
	datac => \enable_gen_comp|teller\(10),
	datad => \enable_gen_comp|teller\(11),
	combout => \enable_gen_comp|Equal0~2_combout\);

-- Location: LCCOMB_X91_Y53_N28
\enable_gen_comp|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|Equal0~4_combout\ = (\enable_gen_comp|Equal0~3_combout\) # ((\enable_gen_comp|Equal0~1_combout\) # ((\enable_gen_comp|Equal0~0_combout\) # (\enable_gen_comp|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|Equal0~3_combout\,
	datab => \enable_gen_comp|Equal0~1_combout\,
	datac => \enable_gen_comp|Equal0~0_combout\,
	datad => \enable_gen_comp|Equal0~2_combout\,
	combout => \enable_gen_comp|Equal0~4_combout\);

-- Location: LCCOMB_X91_Y53_N30
\enable_gen_comp|teller[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[3]~29_combout\ = ((!\enable_gen_comp|Equal0~7_combout\ & (!\enable_gen_comp|teller[3]~28_combout\ & !\enable_gen_comp|Equal0~4_combout\))) # (!\reset_sync_comp|rst_clk_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|Equal0~7_combout\,
	datab => \reset_sync_comp|rst_clk_n~q\,
	datac => \enable_gen_comp|teller[3]~28_combout\,
	datad => \enable_gen_comp|Equal0~4_combout\,
	combout => \enable_gen_comp|teller[3]~29_combout\);

-- Location: FF_X91_Y54_N7
\enable_gen_comp|teller[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[0]~26_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(0));

-- Location: LCCOMB_X91_Y54_N8
\enable_gen_comp|teller[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[1]~30_combout\ = (\enable_gen_comp|teller\(1) & (!\enable_gen_comp|teller[0]~27\)) # (!\enable_gen_comp|teller\(1) & ((\enable_gen_comp|teller[0]~27\) # (GND)))
-- \enable_gen_comp|teller[1]~31\ = CARRY((!\enable_gen_comp|teller[0]~27\) # (!\enable_gen_comp|teller\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(1),
	datad => VCC,
	cin => \enable_gen_comp|teller[0]~27\,
	combout => \enable_gen_comp|teller[1]~30_combout\,
	cout => \enable_gen_comp|teller[1]~31\);

-- Location: FF_X91_Y54_N9
\enable_gen_comp|teller[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[1]~30_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(1));

-- Location: LCCOMB_X91_Y54_N10
\enable_gen_comp|teller[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[2]~32_combout\ = (\enable_gen_comp|teller\(2) & (\enable_gen_comp|teller[1]~31\ $ (GND))) # (!\enable_gen_comp|teller\(2) & (!\enable_gen_comp|teller[1]~31\ & VCC))
-- \enable_gen_comp|teller[2]~33\ = CARRY((\enable_gen_comp|teller\(2) & !\enable_gen_comp|teller[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(2),
	datad => VCC,
	cin => \enable_gen_comp|teller[1]~31\,
	combout => \enable_gen_comp|teller[2]~32_combout\,
	cout => \enable_gen_comp|teller[2]~33\);

-- Location: FF_X91_Y54_N11
\enable_gen_comp|teller[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[2]~32_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(2));

-- Location: LCCOMB_X91_Y54_N12
\enable_gen_comp|teller[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[3]~34_combout\ = (\enable_gen_comp|teller\(3) & (!\enable_gen_comp|teller[2]~33\)) # (!\enable_gen_comp|teller\(3) & ((\enable_gen_comp|teller[2]~33\) # (GND)))
-- \enable_gen_comp|teller[3]~35\ = CARRY((!\enable_gen_comp|teller[2]~33\) # (!\enable_gen_comp|teller\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(3),
	datad => VCC,
	cin => \enable_gen_comp|teller[2]~33\,
	combout => \enable_gen_comp|teller[3]~34_combout\,
	cout => \enable_gen_comp|teller[3]~35\);

-- Location: FF_X91_Y54_N13
\enable_gen_comp|teller[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[3]~34_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(3));

-- Location: LCCOMB_X91_Y54_N14
\enable_gen_comp|teller[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[4]~36_combout\ = (\enable_gen_comp|teller\(4) & (\enable_gen_comp|teller[3]~35\ $ (GND))) # (!\enable_gen_comp|teller\(4) & (!\enable_gen_comp|teller[3]~35\ & VCC))
-- \enable_gen_comp|teller[4]~37\ = CARRY((\enable_gen_comp|teller\(4) & !\enable_gen_comp|teller[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(4),
	datad => VCC,
	cin => \enable_gen_comp|teller[3]~35\,
	combout => \enable_gen_comp|teller[4]~36_combout\,
	cout => \enable_gen_comp|teller[4]~37\);

-- Location: FF_X91_Y54_N15
\enable_gen_comp|teller[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[4]~36_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(4));

-- Location: LCCOMB_X91_Y54_N16
\enable_gen_comp|teller[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[5]~38_combout\ = (\enable_gen_comp|teller\(5) & (!\enable_gen_comp|teller[4]~37\)) # (!\enable_gen_comp|teller\(5) & ((\enable_gen_comp|teller[4]~37\) # (GND)))
-- \enable_gen_comp|teller[5]~39\ = CARRY((!\enable_gen_comp|teller[4]~37\) # (!\enable_gen_comp|teller\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(5),
	datad => VCC,
	cin => \enable_gen_comp|teller[4]~37\,
	combout => \enable_gen_comp|teller[5]~38_combout\,
	cout => \enable_gen_comp|teller[5]~39\);

-- Location: FF_X91_Y54_N17
\enable_gen_comp|teller[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[5]~38_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(5));

-- Location: LCCOMB_X91_Y54_N18
\enable_gen_comp|teller[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[6]~40_combout\ = (\enable_gen_comp|teller\(6) & (\enable_gen_comp|teller[5]~39\ $ (GND))) # (!\enable_gen_comp|teller\(6) & (!\enable_gen_comp|teller[5]~39\ & VCC))
-- \enable_gen_comp|teller[6]~41\ = CARRY((\enable_gen_comp|teller\(6) & !\enable_gen_comp|teller[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(6),
	datad => VCC,
	cin => \enable_gen_comp|teller[5]~39\,
	combout => \enable_gen_comp|teller[6]~40_combout\,
	cout => \enable_gen_comp|teller[6]~41\);

-- Location: FF_X91_Y54_N19
\enable_gen_comp|teller[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[6]~40_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(6));

-- Location: LCCOMB_X91_Y54_N20
\enable_gen_comp|teller[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[7]~42_combout\ = (\enable_gen_comp|teller\(7) & (!\enable_gen_comp|teller[6]~41\)) # (!\enable_gen_comp|teller\(7) & ((\enable_gen_comp|teller[6]~41\) # (GND)))
-- \enable_gen_comp|teller[7]~43\ = CARRY((!\enable_gen_comp|teller[6]~41\) # (!\enable_gen_comp|teller\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(7),
	datad => VCC,
	cin => \enable_gen_comp|teller[6]~41\,
	combout => \enable_gen_comp|teller[7]~42_combout\,
	cout => \enable_gen_comp|teller[7]~43\);

-- Location: FF_X91_Y54_N21
\enable_gen_comp|teller[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[7]~42_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(7));

-- Location: LCCOMB_X91_Y54_N22
\enable_gen_comp|teller[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[8]~44_combout\ = (\enable_gen_comp|teller\(8) & (\enable_gen_comp|teller[7]~43\ $ (GND))) # (!\enable_gen_comp|teller\(8) & (!\enable_gen_comp|teller[7]~43\ & VCC))
-- \enable_gen_comp|teller[8]~45\ = CARRY((\enable_gen_comp|teller\(8) & !\enable_gen_comp|teller[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(8),
	datad => VCC,
	cin => \enable_gen_comp|teller[7]~43\,
	combout => \enable_gen_comp|teller[8]~44_combout\,
	cout => \enable_gen_comp|teller[8]~45\);

-- Location: FF_X91_Y54_N23
\enable_gen_comp|teller[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[8]~44_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(8));

-- Location: LCCOMB_X91_Y54_N24
\enable_gen_comp|teller[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[9]~46_combout\ = (\enable_gen_comp|teller\(9) & (!\enable_gen_comp|teller[8]~45\)) # (!\enable_gen_comp|teller\(9) & ((\enable_gen_comp|teller[8]~45\) # (GND)))
-- \enable_gen_comp|teller[9]~47\ = CARRY((!\enable_gen_comp|teller[8]~45\) # (!\enable_gen_comp|teller\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(9),
	datad => VCC,
	cin => \enable_gen_comp|teller[8]~45\,
	combout => \enable_gen_comp|teller[9]~46_combout\,
	cout => \enable_gen_comp|teller[9]~47\);

-- Location: FF_X91_Y54_N25
\enable_gen_comp|teller[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[9]~46_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(9));

-- Location: LCCOMB_X91_Y54_N26
\enable_gen_comp|teller[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[10]~48_combout\ = (\enable_gen_comp|teller\(10) & (\enable_gen_comp|teller[9]~47\ $ (GND))) # (!\enable_gen_comp|teller\(10) & (!\enable_gen_comp|teller[9]~47\ & VCC))
-- \enable_gen_comp|teller[10]~49\ = CARRY((\enable_gen_comp|teller\(10) & !\enable_gen_comp|teller[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(10),
	datad => VCC,
	cin => \enable_gen_comp|teller[9]~47\,
	combout => \enable_gen_comp|teller[10]~48_combout\,
	cout => \enable_gen_comp|teller[10]~49\);

-- Location: FF_X91_Y54_N27
\enable_gen_comp|teller[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[10]~48_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(10));

-- Location: LCCOMB_X91_Y54_N28
\enable_gen_comp|teller[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[11]~50_combout\ = (\enable_gen_comp|teller\(11) & (!\enable_gen_comp|teller[10]~49\)) # (!\enable_gen_comp|teller\(11) & ((\enable_gen_comp|teller[10]~49\) # (GND)))
-- \enable_gen_comp|teller[11]~51\ = CARRY((!\enable_gen_comp|teller[10]~49\) # (!\enable_gen_comp|teller\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(11),
	datad => VCC,
	cin => \enable_gen_comp|teller[10]~49\,
	combout => \enable_gen_comp|teller[11]~50_combout\,
	cout => \enable_gen_comp|teller[11]~51\);

-- Location: FF_X91_Y54_N29
\enable_gen_comp|teller[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[11]~50_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(11));

-- Location: LCCOMB_X91_Y54_N30
\enable_gen_comp|teller[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[12]~52_combout\ = (\enable_gen_comp|teller\(12) & (\enable_gen_comp|teller[11]~51\ $ (GND))) # (!\enable_gen_comp|teller\(12) & (!\enable_gen_comp|teller[11]~51\ & VCC))
-- \enable_gen_comp|teller[12]~53\ = CARRY((\enable_gen_comp|teller\(12) & !\enable_gen_comp|teller[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(12),
	datad => VCC,
	cin => \enable_gen_comp|teller[11]~51\,
	combout => \enable_gen_comp|teller[12]~52_combout\,
	cout => \enable_gen_comp|teller[12]~53\);

-- Location: FF_X91_Y54_N31
\enable_gen_comp|teller[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[12]~52_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(12));

-- Location: LCCOMB_X91_Y53_N0
\enable_gen_comp|teller[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[13]~54_combout\ = (\enable_gen_comp|teller\(13) & (!\enable_gen_comp|teller[12]~53\)) # (!\enable_gen_comp|teller\(13) & ((\enable_gen_comp|teller[12]~53\) # (GND)))
-- \enable_gen_comp|teller[13]~55\ = CARRY((!\enable_gen_comp|teller[12]~53\) # (!\enable_gen_comp|teller\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(13),
	datad => VCC,
	cin => \enable_gen_comp|teller[12]~53\,
	combout => \enable_gen_comp|teller[13]~54_combout\,
	cout => \enable_gen_comp|teller[13]~55\);

-- Location: FF_X91_Y53_N1
\enable_gen_comp|teller[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[13]~54_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(13));

-- Location: LCCOMB_X91_Y53_N2
\enable_gen_comp|teller[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[14]~56_combout\ = (\enable_gen_comp|teller\(14) & (\enable_gen_comp|teller[13]~55\ $ (GND))) # (!\enable_gen_comp|teller\(14) & (!\enable_gen_comp|teller[13]~55\ & VCC))
-- \enable_gen_comp|teller[14]~57\ = CARRY((\enable_gen_comp|teller\(14) & !\enable_gen_comp|teller[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(14),
	datad => VCC,
	cin => \enable_gen_comp|teller[13]~55\,
	combout => \enable_gen_comp|teller[14]~56_combout\,
	cout => \enable_gen_comp|teller[14]~57\);

-- Location: FF_X91_Y53_N3
\enable_gen_comp|teller[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[14]~56_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(14));

-- Location: LCCOMB_X91_Y53_N4
\enable_gen_comp|teller[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[15]~58_combout\ = (\enable_gen_comp|teller\(15) & (!\enable_gen_comp|teller[14]~57\)) # (!\enable_gen_comp|teller\(15) & ((\enable_gen_comp|teller[14]~57\) # (GND)))
-- \enable_gen_comp|teller[15]~59\ = CARRY((!\enable_gen_comp|teller[14]~57\) # (!\enable_gen_comp|teller\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(15),
	datad => VCC,
	cin => \enable_gen_comp|teller[14]~57\,
	combout => \enable_gen_comp|teller[15]~58_combout\,
	cout => \enable_gen_comp|teller[15]~59\);

-- Location: FF_X91_Y53_N5
\enable_gen_comp|teller[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[15]~58_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(15));

-- Location: LCCOMB_X91_Y53_N6
\enable_gen_comp|teller[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[16]~60_combout\ = (\enable_gen_comp|teller\(16) & (\enable_gen_comp|teller[15]~59\ $ (GND))) # (!\enable_gen_comp|teller\(16) & (!\enable_gen_comp|teller[15]~59\ & VCC))
-- \enable_gen_comp|teller[16]~61\ = CARRY((\enable_gen_comp|teller\(16) & !\enable_gen_comp|teller[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(16),
	datad => VCC,
	cin => \enable_gen_comp|teller[15]~59\,
	combout => \enable_gen_comp|teller[16]~60_combout\,
	cout => \enable_gen_comp|teller[16]~61\);

-- Location: FF_X91_Y53_N7
\enable_gen_comp|teller[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[16]~60_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(16));

-- Location: LCCOMB_X91_Y53_N8
\enable_gen_comp|teller[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[17]~62_combout\ = (\enable_gen_comp|teller\(17) & (!\enable_gen_comp|teller[16]~61\)) # (!\enable_gen_comp|teller\(17) & ((\enable_gen_comp|teller[16]~61\) # (GND)))
-- \enable_gen_comp|teller[17]~63\ = CARRY((!\enable_gen_comp|teller[16]~61\) # (!\enable_gen_comp|teller\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(17),
	datad => VCC,
	cin => \enable_gen_comp|teller[16]~61\,
	combout => \enable_gen_comp|teller[17]~62_combout\,
	cout => \enable_gen_comp|teller[17]~63\);

-- Location: FF_X91_Y53_N9
\enable_gen_comp|teller[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[17]~62_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(17));

-- Location: LCCOMB_X91_Y53_N10
\enable_gen_comp|teller[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[18]~64_combout\ = (\enable_gen_comp|teller\(18) & (\enable_gen_comp|teller[17]~63\ $ (GND))) # (!\enable_gen_comp|teller\(18) & (!\enable_gen_comp|teller[17]~63\ & VCC))
-- \enable_gen_comp|teller[18]~65\ = CARRY((\enable_gen_comp|teller\(18) & !\enable_gen_comp|teller[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(18),
	datad => VCC,
	cin => \enable_gen_comp|teller[17]~63\,
	combout => \enable_gen_comp|teller[18]~64_combout\,
	cout => \enable_gen_comp|teller[18]~65\);

-- Location: FF_X91_Y53_N11
\enable_gen_comp|teller[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[18]~64_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(18));

-- Location: LCCOMB_X91_Y53_N12
\enable_gen_comp|teller[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[19]~66_combout\ = (\enable_gen_comp|teller\(19) & (!\enable_gen_comp|teller[18]~65\)) # (!\enable_gen_comp|teller\(19) & ((\enable_gen_comp|teller[18]~65\) # (GND)))
-- \enable_gen_comp|teller[19]~67\ = CARRY((!\enable_gen_comp|teller[18]~65\) # (!\enable_gen_comp|teller\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(19),
	datad => VCC,
	cin => \enable_gen_comp|teller[18]~65\,
	combout => \enable_gen_comp|teller[19]~66_combout\,
	cout => \enable_gen_comp|teller[19]~67\);

-- Location: FF_X91_Y53_N13
\enable_gen_comp|teller[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[19]~66_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(19));

-- Location: LCCOMB_X91_Y53_N14
\enable_gen_comp|teller[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[20]~68_combout\ = (\enable_gen_comp|teller\(20) & (\enable_gen_comp|teller[19]~67\ $ (GND))) # (!\enable_gen_comp|teller\(20) & (!\enable_gen_comp|teller[19]~67\ & VCC))
-- \enable_gen_comp|teller[20]~69\ = CARRY((\enable_gen_comp|teller\(20) & !\enable_gen_comp|teller[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(20),
	datad => VCC,
	cin => \enable_gen_comp|teller[19]~67\,
	combout => \enable_gen_comp|teller[20]~68_combout\,
	cout => \enable_gen_comp|teller[20]~69\);

-- Location: FF_X91_Y53_N15
\enable_gen_comp|teller[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[20]~68_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(20));

-- Location: LCCOMB_X91_Y53_N16
\enable_gen_comp|teller[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|teller[21]~70_combout\ = (\enable_gen_comp|teller\(21) & (!\enable_gen_comp|teller[20]~69\)) # (!\enable_gen_comp|teller\(21) & ((\enable_gen_comp|teller[20]~69\) # (GND)))
-- \enable_gen_comp|teller[21]~71\ = CARRY((!\enable_gen_comp|teller[20]~69\) # (!\enable_gen_comp|teller\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \enable_gen_comp|teller\(21),
	datad => VCC,
	cin => \enable_gen_comp|teller[20]~69\,
	combout => \enable_gen_comp|teller[21]~70_combout\,
	cout => \enable_gen_comp|teller[21]~71\);

-- Location: FF_X91_Y53_N17
\enable_gen_comp|teller[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[21]~70_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(21));

-- Location: FF_X91_Y53_N19
\enable_gen_comp|teller[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|teller[22]~72_combout\,
	sclr => \enable_gen_comp|teller[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|teller\(22));

-- Location: LCCOMB_X90_Y53_N4
\enable_gen_comp|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|Equal0~6_combout\ = (\enable_gen_comp|teller\(22)) # (((!\enable_gen_comp|teller\(21)) # (!\enable_gen_comp|teller\(23))) # (!\enable_gen_comp|teller\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|teller\(22),
	datab => \enable_gen_comp|teller\(20),
	datac => \enable_gen_comp|teller\(23),
	datad => \enable_gen_comp|teller\(21),
	combout => \enable_gen_comp|Equal0~6_combout\);

-- Location: LCCOMB_X90_Y53_N20
\enable_gen_comp|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_gen_comp|Equal0~8_combout\ = (!\enable_gen_comp|Equal0~6_combout\ & (!\enable_gen_comp|Equal0~5_combout\ & (!\enable_gen_comp|Equal0~7_combout\ & !\enable_gen_comp|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|Equal0~6_combout\,
	datab => \enable_gen_comp|Equal0~5_combout\,
	datac => \enable_gen_comp|Equal0~7_combout\,
	datad => \enable_gen_comp|Equal0~4_combout\,
	combout => \enable_gen_comp|Equal0~8_combout\);

-- Location: FF_X90_Y53_N21
\enable_gen_comp|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enable_gen_comp|Equal0~8_combout\,
	ena => \reset_sync_comp|rst_clk_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_gen_comp|enable~q\);

-- Location: LCCOMB_X89_Y53_N28
\hallo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hallo~0_combout\ = \enable_gen_comp|enable~q\ $ (\hallo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_gen_comp|enable~q\,
	datac => \hallo~q\,
	combout => \hallo~0_combout\);

-- Location: FF_X89_Y53_N29
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

-- Location: LCCOMB_X99_Y49_N14
\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \bill_teller|totalt_biler\(3) $ (VCC)
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\bill_teller|totalt_biler\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bill_teller|totalt_biler\(3),
	datad => VCC,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X99_Y49_N16
\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\bill_teller|totalt_biler\(4) & (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\bill_teller|totalt_biler\(4) & 
-- (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\bill_teller|totalt_biler\(4) & !\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(4),
	datad => VCC,
	cin => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X99_Y49_N18
\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\bill_teller|totalt_biler\(5) & ((GND) # (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\bill_teller|totalt_biler\(5) & 
-- (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\bill_teller|totalt_biler\(5)) # (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(5),
	datad => VCC,
	cin => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X99_Y49_N20
\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\bill_teller|totalt_biler\(6) & (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\bill_teller|totalt_biler\(6) & 
-- ((\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\bill_teller|totalt_biler\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(6),
	datad => VCC,
	cin => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X99_Y49_N22
\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\bill_teller|totalt_biler\(7) & (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\bill_teller|totalt_biler\(7) & 
-- (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\bill_teller|totalt_biler\(7) & !\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bill_teller|totalt_biler\(7),
	datad => VCC,
	cin => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X99_Y49_N24
\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X99_Y49_N12
\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\bill_teller|totalt_biler\(7) & \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bill_teller|totalt_biler\(7),
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X99_Y49_N30
\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X99_Y49_N0
\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\bill_teller|totalt_biler\(6) & \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bill_teller|totalt_biler\(6),
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X99_Y49_N6
\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X99_Y49_N8
\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\bill_teller|totalt_biler\(5) & \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(5),
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X99_Y49_N26
\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X99_Y49_N10
\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X99_Y49_N28
\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\bill_teller|totalt_biler\(4) & \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bill_teller|totalt_biler\(4),
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X99_Y49_N2
\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X99_Y49_N4
\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\bill_teller|totalt_biler\(3) & \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bill_teller|totalt_biler\(3),
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X100_Y49_N26
\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\bill_teller|totalt_biler\(2) & !\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bill_teller|totalt_biler\(2),
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X100_Y49_N28
\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\bill_teller|totalt_biler\(2) & \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bill_teller|totalt_biler\(2),
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X100_Y49_N8
\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\) # (\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datab => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X100_Y49_N10
\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & (!\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & 
-- !\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datab => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X100_Y49_N12
\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # ((\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X100_Y49_N14
\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ & !\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\)) # 
-- (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datab => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X100_Y49_N16
\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\) # 
-- (\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X100_Y49_N18
\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & (!\bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & 
-- !\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \bin2bcd_comp|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X100_Y49_N20
\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X102_Y49_N24
\bin2bcd_comp|Mult0|mult_core|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Mult0|mult_core|_~0_combout\ = (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\) # (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \bin2bcd_comp|Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X102_Y49_N26
\ROM_7_seg_2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_2|Mux4~0_combout\ = (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \ROM_7_seg_2|Mux4~0_combout\);

-- Location: LCCOMB_X102_Y49_N28
\bin2bcd_comp|Mult0|mult_core|romout[0][6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Mult0|mult_core|romout[0][6]~0_combout\ = \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ $ (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \bin2bcd_comp|Mult0|mult_core|romout[0][6]~0_combout\);

-- Location: LCCOMB_X102_Y49_N8
\bin2bcd_comp|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Add0~0_combout\ = (\bill_teller|totalt_biler\(2) & ((\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (GND))) # (!\bill_teller|totalt_biler\(2) & 
-- (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (VCC)))
-- \bin2bcd_comp|Add0~1\ = CARRY((\bill_teller|totalt_biler\(2)) # (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(2),
	datab => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => VCC,
	combout => \bin2bcd_comp|Add0~0_combout\,
	cout => \bin2bcd_comp|Add0~1\);

-- Location: LCCOMB_X102_Y49_N10
\bin2bcd_comp|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Add0~2_combout\ = (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\bill_teller|totalt_biler\(3) & (\bin2bcd_comp|Add0~1\ & VCC)) # (!\bill_teller|totalt_biler\(3) & (!\bin2bcd_comp|Add0~1\)))) # 
-- (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\bill_teller|totalt_biler\(3) & (!\bin2bcd_comp|Add0~1\)) # (!\bill_teller|totalt_biler\(3) & ((\bin2bcd_comp|Add0~1\) # (GND)))))
-- \bin2bcd_comp|Add0~3\ = CARRY((\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (!\bill_teller|totalt_biler\(3) & !\bin2bcd_comp|Add0~1\)) # 
-- (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((!\bin2bcd_comp|Add0~1\) # (!\bill_teller|totalt_biler\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \bill_teller|totalt_biler\(3),
	datad => VCC,
	cin => \bin2bcd_comp|Add0~1\,
	combout => \bin2bcd_comp|Add0~2_combout\,
	cout => \bin2bcd_comp|Add0~3\);

-- Location: LCCOMB_X102_Y49_N12
\bin2bcd_comp|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Add0~4_combout\ = (\bill_teller|totalt_biler\(4) & ((GND) # (!\bin2bcd_comp|Add0~3\))) # (!\bill_teller|totalt_biler\(4) & (\bin2bcd_comp|Add0~3\ $ (GND)))
-- \bin2bcd_comp|Add0~5\ = CARRY((\bill_teller|totalt_biler\(4)) # (!\bin2bcd_comp|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(4),
	datad => VCC,
	cin => \bin2bcd_comp|Add0~3\,
	combout => \bin2bcd_comp|Add0~4_combout\,
	cout => \bin2bcd_comp|Add0~5\);

-- Location: LCCOMB_X102_Y49_N14
\bin2bcd_comp|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Add0~6_combout\ = (\bill_teller|totalt_biler\(5) & ((\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\bin2bcd_comp|Add0~5\ & VCC)) # 
-- (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\bin2bcd_comp|Add0~5\)))) # (!\bill_teller|totalt_biler\(5) & ((\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (!\bin2bcd_comp|Add0~5\)) # (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\bin2bcd_comp|Add0~5\) # (GND)))))
-- \bin2bcd_comp|Add0~7\ = CARRY((\bill_teller|totalt_biler\(5) & (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\bin2bcd_comp|Add0~5\)) # (!\bill_teller|totalt_biler\(5) & ((!\bin2bcd_comp|Add0~5\) # 
-- (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(5),
	datab => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Add0~5\,
	combout => \bin2bcd_comp|Add0~6_combout\,
	cout => \bin2bcd_comp|Add0~7\);

-- Location: LCCOMB_X102_Y49_N16
\bin2bcd_comp|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Add0~8_combout\ = ((\bill_teller|totalt_biler\(6) $ (\bin2bcd_comp|Mult0|mult_core|romout[0][6]~0_combout\ $ (\bin2bcd_comp|Add0~7\)))) # (GND)
-- \bin2bcd_comp|Add0~9\ = CARRY((\bill_teller|totalt_biler\(6) & ((!\bin2bcd_comp|Add0~7\) # (!\bin2bcd_comp|Mult0|mult_core|romout[0][6]~0_combout\))) # (!\bill_teller|totalt_biler\(6) & (!\bin2bcd_comp|Mult0|mult_core|romout[0][6]~0_combout\ & 
-- !\bin2bcd_comp|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(6),
	datab => \bin2bcd_comp|Mult0|mult_core|romout[0][6]~0_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Add0~7\,
	combout => \bin2bcd_comp|Add0~8_combout\,
	cout => \bin2bcd_comp|Add0~9\);

-- Location: LCCOMB_X102_Y49_N18
\bin2bcd_comp|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Add0~10_combout\ = (\ROM_7_seg_2|Mux4~0_combout\ & ((\bill_teller|totalt_biler\(7) & (!\bin2bcd_comp|Add0~9\)) # (!\bill_teller|totalt_biler\(7) & ((\bin2bcd_comp|Add0~9\) # (GND))))) # (!\ROM_7_seg_2|Mux4~0_combout\ & 
-- ((\bill_teller|totalt_biler\(7) & (\bin2bcd_comp|Add0~9\ & VCC)) # (!\bill_teller|totalt_biler\(7) & (!\bin2bcd_comp|Add0~9\))))
-- \bin2bcd_comp|Add0~11\ = CARRY((\ROM_7_seg_2|Mux4~0_combout\ & ((!\bin2bcd_comp|Add0~9\) # (!\bill_teller|totalt_biler\(7)))) # (!\ROM_7_seg_2|Mux4~0_combout\ & (!\bill_teller|totalt_biler\(7) & !\bin2bcd_comp|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_7_seg_2|Mux4~0_combout\,
	datab => \bill_teller|totalt_biler\(7),
	datad => VCC,
	cin => \bin2bcd_comp|Add0~9\,
	combout => \bin2bcd_comp|Add0~10_combout\,
	cout => \bin2bcd_comp|Add0~11\);

-- Location: LCCOMB_X102_Y49_N20
\bin2bcd_comp|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Add0~12_combout\ = (\bin2bcd_comp|Mult0|mult_core|_~0_combout\ & (\bin2bcd_comp|Add0~11\ $ (GND))) # (!\bin2bcd_comp|Mult0|mult_core|_~0_combout\ & (!\bin2bcd_comp|Add0~11\ & VCC))
-- \bin2bcd_comp|Add0~13\ = CARRY((\bin2bcd_comp|Mult0|mult_core|_~0_combout\ & !\bin2bcd_comp|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Add0~11\,
	combout => \bin2bcd_comp|Add0~12_combout\,
	cout => \bin2bcd_comp|Add0~13\);

-- Location: LCCOMB_X102_Y49_N22
\bin2bcd_comp|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Add0~14_combout\ = !\bin2bcd_comp|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd_comp|Add0~13\,
	combout => \bin2bcd_comp|Add0~14_combout\);

-- Location: LCCOMB_X102_Y49_N0
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \bin2bcd_comp|Add0~10_combout\ $ (VCC)
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\bin2bcd_comp|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Add0~10_combout\,
	datad => VCC,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X102_Y49_N2
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\bin2bcd_comp|Add0~12_combout\ & (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\bin2bcd_comp|Add0~12_combout\ & 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\bin2bcd_comp|Add0~12_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Add0~12_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X102_Y49_N4
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\bin2bcd_comp|Add0~14_combout\ & (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\bin2bcd_comp|Add0~14_combout\ & 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\bin2bcd_comp|Add0~14_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Add0~14_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X102_Y49_N6
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X103_Y49_N26
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2bcd_comp|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin2bcd_comp|Add0~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\);

-- Location: LCCOMB_X103_Y49_N8
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2bcd_comp|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin2bcd_comp|Add0~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X103_Y49_N14
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\) # (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\)))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\) # (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => VCC,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X103_Y49_N12
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\ = (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\);

-- Location: LCCOMB_X102_Y49_N30
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ = (\bin2bcd_comp|Add0~14_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Add0~14_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\);

-- Location: LCCOMB_X103_Y49_N6
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2bcd_comp|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2bcd_comp|Add0~12_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\);

-- Location: LCCOMB_X103_Y49_N28
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\ = (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\);

-- Location: LCCOMB_X103_Y49_N10
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2bcd_comp|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2bcd_comp|Add0~10_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\);

-- Location: LCCOMB_X103_Y49_N0
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ = (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\);

-- Location: LCCOMB_X103_Y49_N16
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\)))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ & 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\)))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ & 
-- !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X103_Y49_N18
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\)))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\)))))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X103_Y49_N20
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ & 
-- !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X103_Y49_N22
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X103_Y49_N30
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[23]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[23]~97_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\bin2bcd_comp|Add0~12_combout\))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Add0~12_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[23]~97_combout\);

-- Location: LCCOMB_X103_Y49_N4
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X103_Y49_N24
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~98_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\bin2bcd_comp|Add0~10_combout\))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Add0~10_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~98_combout\);

-- Location: LCCOMB_X103_Y45_N20
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X103_Y45_N10
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\bin2bcd_comp|Add0~8_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Add0~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X103_Y45_N8
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\);

-- Location: LCCOMB_X103_Y45_N12
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\ = (\bin2bcd_comp|Add0~6_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Add0~6_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\);

-- Location: LCCOMB_X103_Y45_N18
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\ = (\bin2bcd_comp|Add0~6_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Add0~6_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\);

-- Location: LCCOMB_X103_Y45_N22
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\) # (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\)))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\) # (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\,
	datad => VCC,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X103_Y45_N24
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\)))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\)))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ & 
-- !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X103_Y45_N26
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~98_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~98_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~98_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~98_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X103_Y45_N28
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[23]~97_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[23]~97_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X103_Y45_N30
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X103_Y45_N4
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~99_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bin2bcd_comp|Add0~8_combout\))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \bin2bcd_comp|Add0~8_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~99_combout\);

-- Location: LCCOMB_X102_Y45_N18
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\ = (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\);

-- Location: LCCOMB_X102_Y45_N26
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ = (\bin2bcd_comp|Add0~6_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Add0~6_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\);

-- Location: LCCOMB_X102_Y45_N16
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ = (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\);

-- Location: LCCOMB_X102_Y45_N22
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2bcd_comp|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Add0~4_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X102_Y45_N20
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[25]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\ = (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2bcd_comp|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Add0~4_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\);

-- Location: LCCOMB_X102_Y45_N4
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\)))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\,
	datad => VCC,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X102_Y45_N6
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\)))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ & 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\)))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ & 
-- !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X102_Y45_N8
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~99_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\)))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~99_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\)))))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~99_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~99_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X103_Y45_N2
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[28]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[28]~93_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~98_combout\) # 
-- ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[22]~98_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[28]~93_combout\);

-- Location: LCCOMB_X102_Y45_N24
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[28]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ = (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\);

-- Location: LCCOMB_X102_Y45_N10
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[28]~93_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ & 
-- !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[28]~93_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X102_Y45_N12
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X102_Y45_N30
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[33]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\);

-- Location: LCCOMB_X102_Y45_N28
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[33]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[33]~94_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~99_combout\) # 
-- ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[27]~99_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[33]~94_combout\);

-- Location: LCCOMB_X102_Y45_N14
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~100_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\bin2bcd_comp|Add0~6_combout\)) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \bin2bcd_comp|Add0~6_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~100_combout\);

-- Location: LCCOMB_X106_Y45_N24
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\);

-- Location: LCCOMB_X106_Y45_N30
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \bin2bcd_comp|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Add0~4_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\);

-- Location: LCCOMB_X106_Y45_N0
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X106_Y45_N10
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[30]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \bin2bcd_comp|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Add0~2_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\);

-- Location: LCCOMB_X106_Y45_N4
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[30]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\ = (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \bin2bcd_comp|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Add0~2_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\);

-- Location: LCCOMB_X106_Y45_N14
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\) # (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\)))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\) # (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\,
	datad => VCC,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X106_Y45_N16
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\)))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ & 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\)))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ & 
-- !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X106_Y45_N18
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~100_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\)))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~100_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\)))))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~100_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~100_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X106_Y45_N20
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[33]~94_combout\ & 
-- !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[33]~94_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X106_Y45_N22
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X106_Y45_N26
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~101_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\bin2bcd_comp|Add0~4_combout\))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Add0~4_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~101_combout\);

-- Location: LCCOMB_X107_Y45_N4
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\);

-- Location: LCCOMB_X106_Y45_N12
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ = (\bin2bcd_comp|Add0~2_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Add0~2_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\);

-- Location: LCCOMB_X107_Y45_N2
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ = (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\);

-- Location: LCCOMB_X108_Y45_N2
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[35]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\ = (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \bin2bcd_comp|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Add0~0_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X108_Y45_N28
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[35]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \bin2bcd_comp|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Add0~0_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\);

-- Location: LCCOMB_X107_Y45_N10
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\) # (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\)))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\) # (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\,
	datad => VCC,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X107_Y45_N12
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\)))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ & 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\)))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ & 
-- !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X107_Y45_N14
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~101_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\)))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~101_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\)))))
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~101_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~101_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X106_Y45_N8
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[38]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[38]~95_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~100_combout\) # 
-- ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[32]~100_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[38]~95_combout\);

-- Location: LCCOMB_X106_Y45_N6
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[38]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ = (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\);

-- Location: LCCOMB_X107_Y45_N16
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[38]~95_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ & 
-- !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[38]~95_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X107_Y45_N18
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X107_Y45_N0
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[43]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\);

-- Location: LCCOMB_X107_Y45_N8
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[43]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[43]~96_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~101_combout\) # 
-- ((!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[37]~101_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[43]~96_combout\);

-- Location: LCCOMB_X107_Y45_N6
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[42]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\);

-- Location: LCCOMB_X106_Y45_N28
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[42]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[42]~102_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\bin2bcd_comp|Add0~2_combout\)) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2bcd_comp|Add0~2_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[42]~102_combout\);

-- Location: LCCOMB_X107_Y45_N20
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[41]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\);

-- Location: LCCOMB_X108_Y45_N24
\bin2bcd_comp|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Add2~0_combout\ = (\bin2bcd_comp|Add0~0_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Add0~0_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Add2~0_combout\);

-- Location: LCCOMB_X108_Y45_N30
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[40]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[40]~91_combout\ = (\bill_teller|totalt_biler\(1) & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bill_teller|totalt_biler\(1),
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[40]~91_combout\);

-- Location: LCCOMB_X108_Y45_N12
\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[40]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\ = (\bill_teller|totalt_biler\(1) & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bill_teller|totalt_biler\(1),
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\);

-- Location: LCCOMB_X107_Y45_N22
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[40]~91_combout\) # (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[40]~91_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\,
	datad => VCC,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X107_Y45_N24
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\ & (!\bin2bcd_comp|Add2~0_combout\ & 
-- !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\,
	datab => \bin2bcd_comp|Add2~0_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X107_Y45_N26
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[42]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[42]~102_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\);

-- Location: LCCOMB_X107_Y45_N28
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[43]~96_combout\ & 
-- !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|StageOut[43]~96_combout\,
	datad => VCC,
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X107_Y45_N30
\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X108_Y45_N18
\bin2bcd_comp|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Add2~3_combout\ = (\bin2bcd_comp|Add0~0_combout\ & ((\bill_teller|totalt_biler\(1)) # ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)))) # (!\bin2bcd_comp|Add0~0_combout\ & (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\bill_teller|totalt_biler\(1)) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(1),
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Add0~0_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Add2~3_combout\);

-- Location: LCCOMB_X108_Y45_N0
\bin2bcd_comp|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Add2~4_combout\ = \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ $ (\bin2bcd_comp|Add0~2_combout\ $ 
-- (\bin2bcd_comp|Add2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Add0~2_combout\,
	datad => \bin2bcd_comp|Add2~3_combout\,
	combout => \bin2bcd_comp|Add2~4_combout\);

-- Location: LCCOMB_X108_Y45_N8
\bin2bcd_comp|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Add2~2_combout\ = \bin2bcd_comp|Add0~0_combout\ $ (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ $ (((\bill_teller|totalt_biler\(1)) # 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bill_teller|totalt_biler\(1),
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Add0~0_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Add2~2_combout\);

-- Location: LCCOMB_X108_Y45_N22
\bin2bcd_comp|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_comp|Add2~1_combout\ = \bill_teller|totalt_biler\(1) $ (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bill_teller|totalt_biler\(1),
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \bin2bcd_comp|Add2~1_combout\);

-- Location: LCCOMB_X109_Y61_N12
\ROM_7_seg_0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_0|Mux6~0_combout\ = (\bin2bcd_comp|Add2~4_combout\ & (\bin2bcd_comp|Add2~1_combout\ & (\bin2bcd_comp|Add2~2_combout\ $ (\bill_teller|totalt_biler\(0))))) # (!\bin2bcd_comp|Add2~4_combout\ & (\bill_teller|totalt_biler\(0) & 
-- (\bin2bcd_comp|Add2~2_combout\ $ (!\bin2bcd_comp|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Add2~4_combout\,
	datab => \bin2bcd_comp|Add2~2_combout\,
	datac => \bill_teller|totalt_biler\(0),
	datad => \bin2bcd_comp|Add2~1_combout\,
	combout => \ROM_7_seg_0|Mux6~0_combout\);

-- Location: LCCOMB_X109_Y61_N22
\ROM_7_seg_0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_0|Mux5~0_combout\ = (\bin2bcd_comp|Add2~4_combout\ & (\bin2bcd_comp|Add2~2_combout\ & (\bill_teller|totalt_biler\(0) $ (!\bin2bcd_comp|Add2~1_combout\)))) # (!\bin2bcd_comp|Add2~4_combout\ & ((\bill_teller|totalt_biler\(0) & 
-- ((!\bin2bcd_comp|Add2~1_combout\))) # (!\bill_teller|totalt_biler\(0) & (\bin2bcd_comp|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Add2~4_combout\,
	datab => \bin2bcd_comp|Add2~2_combout\,
	datac => \bill_teller|totalt_biler\(0),
	datad => \bin2bcd_comp|Add2~1_combout\,
	combout => \ROM_7_seg_0|Mux5~0_combout\);

-- Location: LCCOMB_X109_Y61_N4
\ROM_7_seg_0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_0|Mux4~0_combout\ = (\bin2bcd_comp|Add2~4_combout\ & (!\bin2bcd_comp|Add2~2_combout\ & (!\bill_teller|totalt_biler\(0) & !\bin2bcd_comp|Add2~1_combout\))) # (!\bin2bcd_comp|Add2~4_combout\ & (\bin2bcd_comp|Add2~2_combout\ & 
-- ((!\bin2bcd_comp|Add2~1_combout\) # (!\bill_teller|totalt_biler\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Add2~4_combout\,
	datab => \bin2bcd_comp|Add2~2_combout\,
	datac => \bill_teller|totalt_biler\(0),
	datad => \bin2bcd_comp|Add2~1_combout\,
	combout => \ROM_7_seg_0|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y61_N10
\ROM_7_seg_0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_0|Mux3~0_combout\ = (\bin2bcd_comp|Add2~1_combout\ & (\bin2bcd_comp|Add2~4_combout\ & (\bin2bcd_comp|Add2~2_combout\ $ (\bill_teller|totalt_biler\(0))))) # (!\bin2bcd_comp|Add2~1_combout\ & ((\bin2bcd_comp|Add2~2_combout\ & 
-- ((\bill_teller|totalt_biler\(0)))) # (!\bin2bcd_comp|Add2~2_combout\ & (!\bin2bcd_comp|Add2~4_combout\ & !\bill_teller|totalt_biler\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Add2~4_combout\,
	datab => \bin2bcd_comp|Add2~2_combout\,
	datac => \bill_teller|totalt_biler\(0),
	datad => \bin2bcd_comp|Add2~1_combout\,
	combout => \ROM_7_seg_0|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y61_N0
\ROM_7_seg_0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_0|Mux2~0_combout\ = (\bin2bcd_comp|Add2~1_combout\ & ((\bin2bcd_comp|Add2~2_combout\ & (\bin2bcd_comp|Add2~4_combout\)) # (!\bin2bcd_comp|Add2~2_combout\ & ((\bill_teller|totalt_biler\(0)))))) # (!\bin2bcd_comp|Add2~1_combout\ & 
-- (\bin2bcd_comp|Add2~4_combout\ & ((\bill_teller|totalt_biler\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Add2~4_combout\,
	datab => \bin2bcd_comp|Add2~2_combout\,
	datac => \bill_teller|totalt_biler\(0),
	datad => \bin2bcd_comp|Add2~1_combout\,
	combout => \ROM_7_seg_0|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y61_N2
\ROM_7_seg_0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_0|Mux1~0_combout\ = (\bin2bcd_comp|Add2~2_combout\ & (\bill_teller|totalt_biler\(0) & (\bin2bcd_comp|Add2~4_combout\ $ (\bin2bcd_comp|Add2~1_combout\)))) # (!\bin2bcd_comp|Add2~2_combout\ & (\bin2bcd_comp|Add2~4_combout\ & 
-- ((\bill_teller|totalt_biler\(0)) # (!\bin2bcd_comp|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Add2~4_combout\,
	datab => \bin2bcd_comp|Add2~2_combout\,
	datac => \bill_teller|totalt_biler\(0),
	datad => \bin2bcd_comp|Add2~1_combout\,
	combout => \ROM_7_seg_0|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y61_N24
\ROM_7_seg_0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_0|Mux0~0_combout\ = (\bill_teller|totalt_biler\(0) & ((\bin2bcd_comp|Add2~2_combout\ $ (!\bin2bcd_comp|Add2~1_combout\)) # (!\bin2bcd_comp|Add2~4_combout\))) # (!\bill_teller|totalt_biler\(0) & ((\bin2bcd_comp|Add2~4_combout\ $ 
-- (!\bin2bcd_comp|Add2~2_combout\)) # (!\bin2bcd_comp|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Add2~4_combout\,
	datab => \bin2bcd_comp|Add2~2_combout\,
	datac => \bill_teller|totalt_biler\(0),
	datad => \bin2bcd_comp|Add2~1_combout\,
	combout => \ROM_7_seg_0|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y45_N10
\ROM_7_seg_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_1|Mux6~0_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)))) # 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ $ (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \ROM_7_seg_1|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y45_N20
\ROM_7_seg_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_1|Mux5~0_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ $ (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)))) # 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- ((!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \ROM_7_seg_1|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y45_N26
\ROM_7_seg_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_1|Mux4~0_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))) # 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \ROM_7_seg_1|Mux4~0_combout\);

-- Location: LCCOMB_X108_Y45_N16
\ROM_7_seg_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_1|Mux3~0_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)))) # 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \ROM_7_seg_1|Mux3~0_combout\);

-- Location: LCCOMB_X108_Y45_N14
\ROM_7_seg_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_1|Mux2~0_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- (((!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \ROM_7_seg_1|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y45_N4
\ROM_7_seg_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_1|Mux1~0_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)))) # 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \ROM_7_seg_1|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y45_N6
\ROM_7_seg_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_1|Mux0~0_combout\ = (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))) # 
-- (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)) # (!\bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2bcd_comp|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \ROM_7_seg_1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y19_N20
\ROM_7_seg_2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_2|Mux6~0_combout\ = (\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \ROM_7_seg_2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y19_N10
\ROM_7_seg_2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_7_seg_2|Mux1~0_combout\ = (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (!\bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \bin2bcd_comp|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \ROM_7_seg_2|Mux1~0_combout\);

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

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


