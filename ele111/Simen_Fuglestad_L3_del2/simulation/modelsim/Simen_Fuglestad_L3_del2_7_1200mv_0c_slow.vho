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

-- DATE "09/26/2019 13:36:04"

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

ENTITY 	Simen_Fuglestad_L3_del2 IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6)
	);
END Simen_Fuglestad_L3_del2;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Simen_Fuglestad_L3_del2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ram32x8_comp|mem~191feeder_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \ram32x8_comp|mem~448_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \ram32x8_comp|mem~449_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~191_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~223feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~446_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~447_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~223_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~450_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~451_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~159_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~291_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~452_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~453_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~255_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~292_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~464_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~465_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~231_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~466_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~467_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~167_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~462_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~463_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~199_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~298_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~468_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~469_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~263_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~299_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~456_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~457_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~175_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~460_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~461_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~239_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~454_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~455_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~207_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~458_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~459_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~143_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~295_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~296_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~215feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~440_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~441_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~215_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~183feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~438_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~439_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~183_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~442_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~443_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~151_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~293_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~444_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~445_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~247_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~294_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~297_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~300_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~479_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~31_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~478_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~23_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~480_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~15_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~305_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~481_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~39_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~306_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~55feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~471_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~55_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~473_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~71_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~63feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~470_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~63_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~472_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~47_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~303_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~304_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~307_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~483_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~119_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~485_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~135_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~482_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~127_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~484_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~111_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~308_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~309_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~95feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~475_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~95_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~87feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~474_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~87_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~476_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~79_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~301_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~477_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~103_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~302_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~310_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~311_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ram32x8_comp|mem~129_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~113_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~350_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~137_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~121_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~351_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~57_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~73_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~49_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~65_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~345_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~346_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~33_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~41_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~25feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~25_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~17_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~347_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~348_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~349_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~89_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~81_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~343_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~97_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~105_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~344_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~352_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~201_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~169_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~340_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~233_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~265_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~341_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~177_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~241_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~209_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~145_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~337_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~338_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~217_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~185feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~185_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~153_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~335_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~249_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~336_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~339_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~193_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~257_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~225_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~161_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~333_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~334_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~342_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~353_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ram32x8_comp|mem~22_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~38_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~30_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~14_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~284_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~285_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~94feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~94_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~78feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~78_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~282_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~102_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~86_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~283_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~286_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~46_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~54_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~280_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~62_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~70_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~281_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~118_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~110_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~287_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~126_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~134_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~288_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~289_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~214_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~150_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~270_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~246_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~182_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~271_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~142_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~174_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~274_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~238_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~206_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~275_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~190feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~190_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~158_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~272_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~254_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~222feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~222_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~273_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~276_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~166_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~230_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~277_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~198_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~262_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~278_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~279_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~290_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \ram32x8_comp|mem~120_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~112_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~329_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~136_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~128_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~330_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~48_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~56feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~56_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~322_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~64_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~72_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~323_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~96_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~80_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~324_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~104_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~88feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~88_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~325_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~24_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~40_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~32_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~16_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~326_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~327_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~328_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~331_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~144_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~176_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~316_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~240_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~208_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~317_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~256_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~192feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~192_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~160_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~314_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~224_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~315_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~318_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~232_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~168_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~319_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~200_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~264_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~320_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~216_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~152_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~312_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~248_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~184feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~184_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~313_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~321_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~332_combout\ : std_logic;
SIGNAL \rom_7_seg_0|Mux6~0_combout\ : std_logic;
SIGNAL \rom_7_seg_0|Mux5~0_combout\ : std_logic;
SIGNAL \rom_7_seg_0|Mux4~0_combout\ : std_logic;
SIGNAL \rom_7_seg_0|Mux3~0_combout\ : std_logic;
SIGNAL \rom_7_seg_0|Mux2~0_combout\ : std_logic;
SIGNAL \rom_7_seg_0|Mux1~0_combout\ : std_logic;
SIGNAL \rom_7_seg_0|Mux0~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \ram32x8_comp|mem~131_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~115_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~392_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~139_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~123_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~393_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~51_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~67_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~387_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~75_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~59_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~388_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~35_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~27_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~19_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~389_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~43_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~390_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~391_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~99feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~99_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~107feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~107_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~91_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~83_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~385_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~386_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~394_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~203_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~171_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~382_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~235_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~267_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~383_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~179_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~211_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~147_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~379_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~243_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~380_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~219feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~219_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~251_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~187feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~187_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~155_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~377_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~378_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~381_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~227feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~227_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~163_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~375_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~195feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~195_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~259_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~376_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~384_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~395_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \ram32x8_comp|mem~52_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~60_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~406_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~76_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~68_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~407_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~100feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~100_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~84_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~408_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~108_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~92feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~92_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~409_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~36_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~20_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~410_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~44_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~28_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~411_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~412_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~124_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~116_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~413_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~132_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~140_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~414_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~415_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~188_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~252_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~220_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~156_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~396_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~397_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~172_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~236_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~403_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~204_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~268_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~404_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~148_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~180_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~400_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~244_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~212feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~212_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~401_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~228feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~228_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~196_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~164_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~398_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~260feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~260_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~399_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~402_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~405_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~416_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \ram32x8_comp|mem~261_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~197_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~229_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~165_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~417_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~418_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~237_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~205_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~173_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~424_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~269_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~425_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~189feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~189_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~157_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~419_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~221_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~253_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~420_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~149_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~213_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~421_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~181_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~245_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~422_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~423_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~426_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~101_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~93feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~93_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~85_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~427_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~109_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~428_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~29_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~21_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~431_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~45_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~37_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~432_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~61_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~77_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~69feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~69_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~53_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~429_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~430_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~433_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~133_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~117_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~434_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~141_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~125_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~435_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~436_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~437_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \ram32x8_comp|mem~50_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~58_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~364_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~66feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~66_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~74_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~365_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~26_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~42_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~34_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~18_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~368_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~369_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~98feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~98_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~82_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~366_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~106_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~90_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~367_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~370_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~130_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~138_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~122feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~122_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~114_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~371_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~372_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~373_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~178_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~146_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~358_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~242_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~210_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~359_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~226feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~226_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~194feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~194_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~162_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~356_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~258feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~258_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~357_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~360_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~186feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~186_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~218feeder_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~218_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~154_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~354_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~250_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~355_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~170_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~234_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~361_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~202_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~266_q\ : std_logic;
SIGNAL \ram32x8_comp|mem~362_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~363_combout\ : std_logic;
SIGNAL \ram32x8_comp|mem~374_combout\ : std_logic;
SIGNAL \rom_7_seg_1|Mux6~0_combout\ : std_logic;
SIGNAL \rom_7_seg_1|Mux5~0_combout\ : std_logic;
SIGNAL \rom_7_seg_1|Mux4~0_combout\ : std_logic;
SIGNAL \rom_7_seg_1|Mux3~0_combout\ : std_logic;
SIGNAL \rom_7_seg_1|Mux2~0_combout\ : std_logic;
SIGNAL \rom_7_seg_1|Mux1~0_combout\ : std_logic;
SIGNAL \rom_7_seg_1|Mux0~0_combout\ : std_logic;
SIGNAL \rom_7_seg_4|Mux6~0_combout\ : std_logic;
SIGNAL \rom_7_seg_4|Mux5~0_combout\ : std_logic;
SIGNAL \rom_7_seg_4|Mux4~0_combout\ : std_logic;
SIGNAL \rom_7_seg_4|Mux3~0_combout\ : std_logic;
SIGNAL \rom_7_seg_4|Mux2~0_combout\ : std_logic;
SIGNAL \rom_7_seg_4|Mux1~0_combout\ : std_logic;
SIGNAL \rom_7_seg_4|Mux0~0_combout\ : std_logic;
SIGNAL \rom_7_seg_5|Mux6~0_combout\ : std_logic;
SIGNAL \rom_7_seg_5|Mux5~0_combout\ : std_logic;
SIGNAL \rom_7_seg_5|Mux4~0_combout\ : std_logic;
SIGNAL \rom_7_seg_5|Mux3~0_combout\ : std_logic;
SIGNAL \rom_7_seg_5|Mux2~0_combout\ : std_logic;
SIGNAL \rom_7_seg_5|Mux1~0_combout\ : std_logic;
SIGNAL \rom_7_seg_5|Mux0~0_combout\ : std_logic;
SIGNAL \rom_7_seg_6|Mux6~0_combout\ : std_logic;
SIGNAL \rom_7_seg_6|Mux5~0_combout\ : std_logic;
SIGNAL \rom_7_seg_6|Mux4~0_combout\ : std_logic;
SIGNAL \rom_7_seg_6|Mux3~0_combout\ : std_logic;
SIGNAL \rom_7_seg_6|Mux2~0_combout\ : std_logic;
SIGNAL \rom_7_seg_6|Mux1~0_combout\ : std_logic;
SIGNAL \rom_7_seg_6|Mux0~0_combout\ : std_logic;
SIGNAL \rom_7_seg_6|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \rom_7_seg_5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \rom_7_seg_4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \rom_7_seg_1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \rom_7_seg_0|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
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
\rom_7_seg_6|ALT_INV_Mux6~0_combout\ <= NOT \rom_7_seg_6|Mux6~0_combout\;
\rom_7_seg_5|ALT_INV_Mux6~0_combout\ <= NOT \rom_7_seg_5|Mux6~0_combout\;
\rom_7_seg_4|ALT_INV_Mux6~0_combout\ <= NOT \rom_7_seg_4|Mux6~0_combout\;
\rom_7_seg_1|ALT_INV_Mux6~0_combout\ <= NOT \rom_7_seg_1|Mux6~0_combout\;
\rom_7_seg_0|ALT_INV_Mux6~0_combout\ <= NOT \rom_7_seg_0|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

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

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

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

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_5|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_5|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_6|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom_7_seg_6|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[15]~input_o\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[15]~input_o\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[15]~input_o\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

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

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[15]~input_o\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

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

-- Location: LCCOMB_X111_Y40_N16
\ram32x8_comp|mem~191feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~191feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \ram32x8_comp|mem~191feeder_combout\);

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

-- Location: LCCOMB_X113_Y30_N2
\ram32x8_comp|mem~448\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~448_combout\ = (\SW[12]~input_o\ & (!\SW[11]~input_o\ & (\SW[13]~input_o\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~448_combout\);

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

-- Location: LCCOMB_X113_Y30_N12
\ram32x8_comp|mem~449\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~449_combout\ = (\ram32x8_comp|mem~448_combout\ & (\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~448_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~449_combout\);

-- Location: FF_X111_Y40_N17
\ram32x8_comp|mem~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~191feeder_combout\,
	ena => \ram32x8_comp|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~191_q\);

-- Location: LCCOMB_X114_Y40_N20
\ram32x8_comp|mem~223feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~223feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \ram32x8_comp|mem~223feeder_combout\);

-- Location: LCCOMB_X113_Y30_N30
\ram32x8_comp|mem~446\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~446_combout\ = (\SW[12]~input_o\ & (!\SW[11]~input_o\ & (!\SW[13]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~446_combout\);

-- Location: LCCOMB_X113_Y30_N0
\ram32x8_comp|mem~447\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~447_combout\ = (\SW[15]~input_o\ & (\ram32x8_comp|mem~446_combout\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \ram32x8_comp|mem~446_combout\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~447_combout\);

-- Location: FF_X114_Y40_N21
\ram32x8_comp|mem~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~223feeder_combout\,
	ena => \ram32x8_comp|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~223_q\);

-- Location: LCCOMB_X113_Y30_N6
\ram32x8_comp|mem~450\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~450_combout\ = (\SW[12]~input_o\ & (!\SW[11]~input_o\ & (!\SW[13]~input_o\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~450_combout\);

-- Location: LCCOMB_X113_Y30_N16
\ram32x8_comp|mem~451\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~451_combout\ = (\ram32x8_comp|mem~450_combout\ & (\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~450_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~451_combout\);

-- Location: FF_X114_Y33_N5
\ram32x8_comp|mem~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~159_q\);

-- Location: LCCOMB_X114_Y33_N4
\ram32x8_comp|mem~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~291_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & (\ram32x8_comp|mem~223_q\)) # (!\SW[14]~input_o\ & ((\ram32x8_comp|mem~159_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~223_q\,
	datac => \ram32x8_comp|mem~159_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~291_combout\);

-- Location: LCCOMB_X112_Y25_N2
\ram32x8_comp|mem~452\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~452_combout\ = (\SW[12]~input_o\ & (\SW[13]~input_o\ & (!\SW[11]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~452_combout\);

-- Location: LCCOMB_X113_Y30_N26
\ram32x8_comp|mem~453\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~453_combout\ = (\SW[15]~input_o\ & (\ram32x8_comp|mem~452_combout\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \ram32x8_comp|mem~452_combout\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~453_combout\);

-- Location: FF_X114_Y37_N17
\ram32x8_comp|mem~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~255_q\);

-- Location: LCCOMB_X114_Y37_N16
\ram32x8_comp|mem~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~292_combout\ = (\ram32x8_comp|mem~291_combout\ & (((\ram32x8_comp|mem~255_q\) # (!\SW[13]~input_o\)))) # (!\ram32x8_comp|mem~291_combout\ & (\ram32x8_comp|mem~191_q\ & ((\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~191_q\,
	datab => \ram32x8_comp|mem~291_combout\,
	datac => \ram32x8_comp|mem~255_q\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~292_combout\);

-- Location: LCCOMB_X112_Y25_N8
\ram32x8_comp|mem~464\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~464_combout\ = (\SW[12]~input_o\ & (!\SW[13]~input_o\ & (\SW[11]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~464_combout\);

-- Location: LCCOMB_X112_Y25_N10
\ram32x8_comp|mem~465\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~465_combout\ = (\ram32x8_comp|mem~464_combout\ & (\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~464_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~465_combout\);

-- Location: FF_X114_Y24_N29
\ram32x8_comp|mem~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~231_q\);

-- Location: LCCOMB_X112_Y27_N6
\ram32x8_comp|mem~466\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~466_combout\ = (\SW[12]~input_o\ & (!\SW[13]~input_o\ & (\SW[11]~input_o\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~466_combout\);

-- Location: LCCOMB_X112_Y27_N24
\ram32x8_comp|mem~467\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~467_combout\ = (\ram32x8_comp|mem~466_combout\ & (!\SW[17]~input_o\ & \SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~466_combout\,
	datab => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \ram32x8_comp|mem~467_combout\);

-- Location: FF_X114_Y24_N15
\ram32x8_comp|mem~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~167_q\);

-- Location: LCCOMB_X112_Y25_N28
\ram32x8_comp|mem~462\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~462_combout\ = (\SW[12]~input_o\ & (\SW[13]~input_o\ & (\SW[11]~input_o\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~462_combout\);

-- Location: LCCOMB_X112_Y25_N6
\ram32x8_comp|mem~463\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~463_combout\ = (\ram32x8_comp|mem~462_combout\ & (\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~462_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~463_combout\);

-- Location: FF_X114_Y28_N21
\ram32x8_comp|mem~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~199_q\);

-- Location: LCCOMB_X114_Y24_N14
\ram32x8_comp|mem~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~298_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\)) # (!\SW[14]~input_o\ & ((\SW[13]~input_o\ & ((\ram32x8_comp|mem~199_q\))) # (!\SW[13]~input_o\ & (\ram32x8_comp|mem~167_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~167_q\,
	datad => \ram32x8_comp|mem~199_q\,
	combout => \ram32x8_comp|mem~298_combout\);

-- Location: LCCOMB_X112_Y27_N10
\ram32x8_comp|mem~468\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~468_combout\ = (\SW[12]~input_o\ & (\SW[13]~input_o\ & (\SW[11]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~468_combout\);

-- Location: LCCOMB_X112_Y27_N28
\ram32x8_comp|mem~469\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~469_combout\ = (\ram32x8_comp|mem~468_combout\ & (!\SW[17]~input_o\ & \SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~468_combout\,
	datab => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \ram32x8_comp|mem~469_combout\);

-- Location: FF_X114_Y28_N23
\ram32x8_comp|mem~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~263_q\);

-- Location: LCCOMB_X114_Y28_N22
\ram32x8_comp|mem~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~299_combout\ = (\ram32x8_comp|mem~298_combout\ & (((\ram32x8_comp|mem~263_q\) # (!\SW[14]~input_o\)))) # (!\ram32x8_comp|mem~298_combout\ & (\ram32x8_comp|mem~231_q\ & ((\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~231_q\,
	datab => \ram32x8_comp|mem~298_combout\,
	datac => \ram32x8_comp|mem~263_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~299_combout\);

-- Location: LCCOMB_X110_Y21_N20
\ram32x8_comp|mem~456\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~456_combout\ = (!\SW[12]~input_o\ & (!\SW[11]~input_o\ & (!\SW[14]~input_o\ & \SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~456_combout\);

-- Location: LCCOMB_X110_Y21_N6
\ram32x8_comp|mem~457\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~457_combout\ = (\ram32x8_comp|mem~456_combout\ & (!\SW[17]~input_o\ & \SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~456_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \ram32x8_comp|mem~457_combout\);

-- Location: FF_X111_Y32_N29
\ram32x8_comp|mem~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~175_q\);

-- Location: LCCOMB_X113_Y30_N28
\ram32x8_comp|mem~460\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~460_combout\ = (!\SW[12]~input_o\ & (!\SW[11]~input_o\ & (\SW[13]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~460_combout\);

-- Location: LCCOMB_X113_Y30_N14
\ram32x8_comp|mem~461\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~461_combout\ = (\ram32x8_comp|mem~460_combout\ & (\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~460_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~461_combout\);

-- Location: FF_X112_Y32_N15
\ram32x8_comp|mem~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~239_q\);

-- Location: LCCOMB_X112_Y25_N12
\ram32x8_comp|mem~454\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~454_combout\ = (!\SW[12]~input_o\ & (!\SW[13]~input_o\ & (!\SW[11]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~454_combout\);

-- Location: LCCOMB_X112_Y25_N30
\ram32x8_comp|mem~455\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~455_combout\ = (\ram32x8_comp|mem~454_combout\ & (\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~454_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~455_combout\);

-- Location: FF_X112_Y32_N5
\ram32x8_comp|mem~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~207_q\);

-- Location: LCCOMB_X112_Y25_N0
\ram32x8_comp|mem~458\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~458_combout\ = (!\SW[12]~input_o\ & (!\SW[13]~input_o\ & (!\SW[11]~input_o\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~458_combout\);

-- Location: LCCOMB_X112_Y25_N18
\ram32x8_comp|mem~459\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~459_combout\ = (\ram32x8_comp|mem~458_combout\ & (\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~458_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~459_combout\);

-- Location: FF_X111_Y32_N31
\ram32x8_comp|mem~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~143_q\);

-- Location: LCCOMB_X111_Y32_N30
\ram32x8_comp|mem~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~295_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & (\ram32x8_comp|mem~207_q\)) # (!\SW[14]~input_o\ & ((\ram32x8_comp|mem~143_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~207_q\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~143_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~295_combout\);

-- Location: LCCOMB_X112_Y32_N14
\ram32x8_comp|mem~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~296_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~295_combout\ & ((\ram32x8_comp|mem~239_q\))) # (!\ram32x8_comp|mem~295_combout\ & (\ram32x8_comp|mem~175_q\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~175_q\,
	datac => \ram32x8_comp|mem~239_q\,
	datad => \ram32x8_comp|mem~295_combout\,
	combout => \ram32x8_comp|mem~296_combout\);

-- Location: LCCOMB_X114_Y38_N18
\ram32x8_comp|mem~215feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~215feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \ram32x8_comp|mem~215feeder_combout\);

-- Location: LCCOMB_X110_Y21_N16
\ram32x8_comp|mem~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~440_combout\ = (!\SW[12]~input_o\ & (\SW[11]~input_o\ & (\SW[14]~input_o\ & !\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~440_combout\);

-- Location: LCCOMB_X110_Y21_N2
\ram32x8_comp|mem~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~441_combout\ = (\ram32x8_comp|mem~440_combout\ & (!\SW[17]~input_o\ & \SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~440_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \ram32x8_comp|mem~441_combout\);

-- Location: FF_X114_Y38_N19
\ram32x8_comp|mem~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~215feeder_combout\,
	ena => \ram32x8_comp|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~215_q\);

-- Location: LCCOMB_X114_Y39_N8
\ram32x8_comp|mem~183feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~183feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \ram32x8_comp|mem~183feeder_combout\);

-- Location: LCCOMB_X110_Y21_N30
\ram32x8_comp|mem~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~438_combout\ = (!\SW[12]~input_o\ & (\SW[11]~input_o\ & (!\SW[14]~input_o\ & \SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~438_combout\);

-- Location: LCCOMB_X112_Y25_N16
\ram32x8_comp|mem~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~439_combout\ = (\ram32x8_comp|mem~438_combout\ & (\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~438_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~439_combout\);

-- Location: FF_X114_Y39_N9
\ram32x8_comp|mem~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~183feeder_combout\,
	ena => \ram32x8_comp|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~183_q\);

-- Location: LCCOMB_X112_Y27_N16
\ram32x8_comp|mem~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~442_combout\ = (!\SW[12]~input_o\ & (!\SW[13]~input_o\ & (\SW[11]~input_o\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~442_combout\);

-- Location: LCCOMB_X112_Y27_N2
\ram32x8_comp|mem~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~443_combout\ = (\SW[15]~input_o\ & (\ram32x8_comp|mem~442_combout\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \ram32x8_comp|mem~442_combout\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~443_combout\);

-- Location: FF_X114_Y34_N3
\ram32x8_comp|mem~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~151_q\);

-- Location: LCCOMB_X114_Y34_N2
\ram32x8_comp|mem~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~293_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~183_q\) # ((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~151_q\ & !\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~183_q\,
	datac => \ram32x8_comp|mem~151_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~293_combout\);

-- Location: LCCOMB_X112_Y27_N12
\ram32x8_comp|mem~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~444_combout\ = (!\SW[12]~input_o\ & (\SW[13]~input_o\ & (\SW[11]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~444_combout\);

-- Location: LCCOMB_X113_Y30_N20
\ram32x8_comp|mem~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~445_combout\ = (\SW[15]~input_o\ & (\ram32x8_comp|mem~444_combout\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \ram32x8_comp|mem~444_combout\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~445_combout\);

-- Location: FF_X114_Y36_N29
\ram32x8_comp|mem~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~247_q\);

-- Location: LCCOMB_X114_Y36_N28
\ram32x8_comp|mem~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~294_combout\ = (\ram32x8_comp|mem~293_combout\ & (((\ram32x8_comp|mem~247_q\) # (!\SW[14]~input_o\)))) # (!\ram32x8_comp|mem~293_combout\ & (\ram32x8_comp|mem~215_q\ & ((\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~215_q\,
	datab => \ram32x8_comp|mem~293_combout\,
	datac => \ram32x8_comp|mem~247_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~294_combout\);

-- Location: LCCOMB_X113_Y32_N24
\ram32x8_comp|mem~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~297_combout\ = (\SW[12]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & ((\ram32x8_comp|mem~294_combout\))) # (!\SW[11]~input_o\ & (\ram32x8_comp|mem~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~296_combout\,
	datab => \SW[12]~input_o\,
	datac => \ram32x8_comp|mem~294_combout\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~297_combout\);

-- Location: LCCOMB_X113_Y32_N10
\ram32x8_comp|mem~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~300_combout\ = (\ram32x8_comp|mem~297_combout\ & (((\ram32x8_comp|mem~299_combout\) # (!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~297_combout\ & (\ram32x8_comp|mem~292_combout\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~292_combout\,
	datab => \ram32x8_comp|mem~299_combout\,
	datac => \ram32x8_comp|mem~297_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~300_combout\);

-- Location: LCCOMB_X113_Y30_N4
\ram32x8_comp|mem~479\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~479_combout\ = (\ram32x8_comp|mem~450_combout\ & (!\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~450_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~479_combout\);

-- Location: FF_X114_Y25_N5
\ram32x8_comp|mem~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~31_q\);

-- Location: LCCOMB_X112_Y25_N26
\ram32x8_comp|mem~478\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~478_combout\ = (\ram32x8_comp|mem~442_combout\ & (!\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~442_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~478_combout\);

-- Location: FF_X113_Y25_N29
\ram32x8_comp|mem~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~23_q\);

-- Location: LCCOMB_X112_Y25_N20
\ram32x8_comp|mem~480\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~480_combout\ = (\ram32x8_comp|mem~458_combout\ & (!\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~458_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~480_combout\);

-- Location: FF_X114_Y25_N23
\ram32x8_comp|mem~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~15_q\);

-- Location: LCCOMB_X114_Y25_N22
\ram32x8_comp|mem~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~305_combout\ = (\SW[12]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & (\ram32x8_comp|mem~23_q\)) # (!\SW[11]~input_o\ & ((\ram32x8_comp|mem~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~23_q\,
	datac => \ram32x8_comp|mem~15_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~305_combout\);

-- Location: LCCOMB_X112_Y27_N22
\ram32x8_comp|mem~481\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~481_combout\ = (\ram32x8_comp|mem~466_combout\ & (!\SW[17]~input_o\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~466_combout\,
	datab => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \ram32x8_comp|mem~481_combout\);

-- Location: FF_X113_Y25_N7
\ram32x8_comp|mem~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~39_q\);

-- Location: LCCOMB_X113_Y25_N6
\ram32x8_comp|mem~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~306_combout\ = (\ram32x8_comp|mem~305_combout\ & (((\ram32x8_comp|mem~39_q\) # (!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~305_combout\ & (\ram32x8_comp|mem~31_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~31_q\,
	datab => \ram32x8_comp|mem~305_combout\,
	datac => \ram32x8_comp|mem~39_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~306_combout\);

-- Location: LCCOMB_X111_Y29_N12
\ram32x8_comp|mem~55feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~55feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \ram32x8_comp|mem~55feeder_combout\);

-- Location: LCCOMB_X110_Y21_N24
\ram32x8_comp|mem~471\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~471_combout\ = (\ram32x8_comp|mem~438_combout\ & (!\SW[17]~input_o\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~438_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \ram32x8_comp|mem~471_combout\);

-- Location: FF_X111_Y29_N13
\ram32x8_comp|mem~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~55feeder_combout\,
	ena => \ram32x8_comp|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~55_q\);

-- Location: LCCOMB_X112_Y25_N4
\ram32x8_comp|mem~473\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~473_combout\ = (\ram32x8_comp|mem~462_combout\ & (!\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~462_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~473_combout\);

-- Location: FF_X110_Y29_N17
\ram32x8_comp|mem~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~71_q\);

-- Location: LCCOMB_X114_Y29_N8
\ram32x8_comp|mem~63feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~63feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \ram32x8_comp|mem~63feeder_combout\);

-- Location: LCCOMB_X113_Y30_N24
\ram32x8_comp|mem~470\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~470_combout\ = (\ram32x8_comp|mem~448_combout\ & (!\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~448_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~470_combout\);

-- Location: FF_X114_Y29_N9
\ram32x8_comp|mem~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~63feeder_combout\,
	ena => \ram32x8_comp|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~63_q\);

-- Location: LCCOMB_X110_Y21_N18
\ram32x8_comp|mem~472\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~472_combout\ = (\ram32x8_comp|mem~456_combout\ & (!\SW[17]~input_o\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~456_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \ram32x8_comp|mem~472_combout\);

-- Location: FF_X111_Y29_N31
\ram32x8_comp|mem~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~47_q\);

-- Location: LCCOMB_X111_Y29_N30
\ram32x8_comp|mem~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~303_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & (\ram32x8_comp|mem~63_q\)) # (!\SW[12]~input_o\ & ((\ram32x8_comp|mem~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~63_q\,
	datab => \SW[11]~input_o\,
	datac => \ram32x8_comp|mem~47_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~303_combout\);

-- Location: LCCOMB_X110_Y29_N16
\ram32x8_comp|mem~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~304_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~303_combout\ & ((\ram32x8_comp|mem~71_q\))) # (!\ram32x8_comp|mem~303_combout\ & (\ram32x8_comp|mem~55_q\)))) # (!\SW[11]~input_o\ & (((\ram32x8_comp|mem~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~55_q\,
	datac => \ram32x8_comp|mem~71_q\,
	datad => \ram32x8_comp|mem~303_combout\,
	combout => \ram32x8_comp|mem~304_combout\);

-- Location: LCCOMB_X110_Y29_N26
\ram32x8_comp|mem~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~307_combout\ = (\SW[13]~input_o\ & (((\ram32x8_comp|mem~304_combout\) # (\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & (\ram32x8_comp|mem~306_combout\ & ((!\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~306_combout\,
	datab => \ram32x8_comp|mem~304_combout\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~307_combout\);

-- Location: LCCOMB_X112_Y27_N8
\ram32x8_comp|mem~483\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~483_combout\ = (\ram32x8_comp|mem~444_combout\ & (!\SW[17]~input_o\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~444_combout\,
	datab => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \ram32x8_comp|mem~483_combout\);

-- Location: FF_X112_Y24_N13
\ram32x8_comp|mem~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~119_q\);

-- Location: LCCOMB_X112_Y27_N20
\ram32x8_comp|mem~485\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~485_combout\ = (\ram32x8_comp|mem~468_combout\ & (!\SW[17]~input_o\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~468_combout\,
	datab => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \ram32x8_comp|mem~485_combout\);

-- Location: FF_X112_Y26_N23
\ram32x8_comp|mem~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~135_q\);

-- Location: LCCOMB_X112_Y25_N22
\ram32x8_comp|mem~482\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~482_combout\ = (\ram32x8_comp|mem~452_combout\ & (!\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~452_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~482_combout\);

-- Location: FF_X112_Y26_N5
\ram32x8_comp|mem~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~127_q\);

-- Location: LCCOMB_X112_Y27_N26
\ram32x8_comp|mem~484\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~484_combout\ = (!\SW[15]~input_o\ & (\ram32x8_comp|mem~460_combout\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \ram32x8_comp|mem~460_combout\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~484_combout\);

-- Location: FF_X112_Y24_N23
\ram32x8_comp|mem~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~111_q\);

-- Location: LCCOMB_X112_Y24_N22
\ram32x8_comp|mem~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~308_combout\ = (\SW[12]~input_o\ & ((\ram32x8_comp|mem~127_q\) # ((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & (((\ram32x8_comp|mem~111_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~127_q\,
	datac => \ram32x8_comp|mem~111_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~308_combout\);

-- Location: LCCOMB_X112_Y26_N22
\ram32x8_comp|mem~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~309_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~308_combout\ & ((\ram32x8_comp|mem~135_q\))) # (!\ram32x8_comp|mem~308_combout\ & (\ram32x8_comp|mem~119_q\)))) # (!\SW[11]~input_o\ & (((\ram32x8_comp|mem~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~119_q\,
	datab => \SW[11]~input_o\,
	datac => \ram32x8_comp|mem~135_q\,
	datad => \ram32x8_comp|mem~308_combout\,
	combout => \ram32x8_comp|mem~309_combout\);

-- Location: LCCOMB_X114_Y40_N6
\ram32x8_comp|mem~95feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~95feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \ram32x8_comp|mem~95feeder_combout\);

-- Location: LCCOMB_X113_Y30_N10
\ram32x8_comp|mem~475\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~475_combout\ = (!\SW[15]~input_o\ & (\ram32x8_comp|mem~446_combout\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \ram32x8_comp|mem~446_combout\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~475_combout\);

-- Location: FF_X114_Y40_N7
\ram32x8_comp|mem~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~95feeder_combout\,
	ena => \ram32x8_comp|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~95_q\);

-- Location: LCCOMB_X112_Y36_N10
\ram32x8_comp|mem~87feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~87feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \ram32x8_comp|mem~87feeder_combout\);

-- Location: LCCOMB_X110_Y21_N4
\ram32x8_comp|mem~474\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~474_combout\ = (\ram32x8_comp|mem~440_combout\ & (!\SW[17]~input_o\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~440_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \ram32x8_comp|mem~474_combout\);

-- Location: FF_X112_Y36_N11
\ram32x8_comp|mem~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~87feeder_combout\,
	ena => \ram32x8_comp|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~87_q\);

-- Location: LCCOMB_X112_Y25_N14
\ram32x8_comp|mem~476\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~476_combout\ = (\ram32x8_comp|mem~454_combout\ & (!\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~454_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~476_combout\);

-- Location: FF_X114_Y36_N15
\ram32x8_comp|mem~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~79_q\);

-- Location: LCCOMB_X114_Y36_N14
\ram32x8_comp|mem~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~301_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~87_q\) # ((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & (((\ram32x8_comp|mem~79_q\ & !\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~87_q\,
	datac => \ram32x8_comp|mem~79_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~301_combout\);

-- Location: LCCOMB_X112_Y25_N24
\ram32x8_comp|mem~477\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~477_combout\ = (\ram32x8_comp|mem~464_combout\ & (!\SW[15]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~464_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \ram32x8_comp|mem~477_combout\);

-- Location: FF_X112_Y36_N5
\ram32x8_comp|mem~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~103_q\);

-- Location: LCCOMB_X112_Y36_N4
\ram32x8_comp|mem~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~302_combout\ = (\ram32x8_comp|mem~301_combout\ & (((\ram32x8_comp|mem~103_q\) # (!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~301_combout\ & (\ram32x8_comp|mem~95_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~95_q\,
	datab => \ram32x8_comp|mem~301_combout\,
	datac => \ram32x8_comp|mem~103_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~302_combout\);

-- Location: LCCOMB_X113_Y30_N8
\ram32x8_comp|mem~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~310_combout\ = (\ram32x8_comp|mem~307_combout\ & ((\ram32x8_comp|mem~309_combout\) # ((!\SW[14]~input_o\)))) # (!\ram32x8_comp|mem~307_combout\ & (((\ram32x8_comp|mem~302_combout\ & \SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~307_combout\,
	datab => \ram32x8_comp|mem~309_combout\,
	datac => \ram32x8_comp|mem~302_combout\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~310_combout\);

-- Location: LCCOMB_X113_Y30_N18
\ram32x8_comp|mem~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~311_combout\ = (\SW[15]~input_o\ & (\ram32x8_comp|mem~300_combout\)) # (!\SW[15]~input_o\ & ((\ram32x8_comp|mem~310_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~300_combout\,
	datab => \ram32x8_comp|mem~310_combout\,
	datac => \SW[15]~input_o\,
	combout => \ram32x8_comp|mem~311_combout\);

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

-- Location: FF_X112_Y26_N21
\ram32x8_comp|mem~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~129_q\);

-- Location: FF_X112_Y24_N15
\ram32x8_comp|mem~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~113_q\);

-- Location: LCCOMB_X112_Y24_N14
\ram32x8_comp|mem~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~350_combout\ = (\SW[12]~input_o\ & ((\ram32x8_comp|mem~129_q\) # ((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & (((\ram32x8_comp|mem~113_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~129_q\,
	datac => \ram32x8_comp|mem~113_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~350_combout\);

-- Location: FF_X112_Y26_N7
\ram32x8_comp|mem~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~137_q\);

-- Location: FF_X112_Y24_N29
\ram32x8_comp|mem~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~121_q\);

-- Location: LCCOMB_X112_Y26_N6
\ram32x8_comp|mem~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~351_combout\ = (\ram32x8_comp|mem~350_combout\ & (((\ram32x8_comp|mem~137_q\)) # (!\SW[11]~input_o\))) # (!\ram32x8_comp|mem~350_combout\ & (\SW[11]~input_o\ & ((\ram32x8_comp|mem~121_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~350_combout\,
	datab => \SW[11]~input_o\,
	datac => \ram32x8_comp|mem~137_q\,
	datad => \ram32x8_comp|mem~121_q\,
	combout => \ram32x8_comp|mem~351_combout\);

-- Location: FF_X111_Y29_N21
\ram32x8_comp|mem~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~57_q\);

-- Location: FF_X110_Y29_N13
\ram32x8_comp|mem~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~73_q\);

-- Location: FF_X111_Y29_N23
\ram32x8_comp|mem~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~49_q\);

-- Location: FF_X113_Y29_N17
\ram32x8_comp|mem~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~65_q\);

-- Location: LCCOMB_X111_Y29_N22
\ram32x8_comp|mem~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~345_combout\ = (\SW[12]~input_o\ & ((\SW[11]~input_o\) # ((\ram32x8_comp|mem~65_q\)))) # (!\SW[12]~input_o\ & (!\SW[11]~input_o\ & (\ram32x8_comp|mem~49_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \ram32x8_comp|mem~49_q\,
	datad => \ram32x8_comp|mem~65_q\,
	combout => \ram32x8_comp|mem~345_combout\);

-- Location: LCCOMB_X110_Y29_N12
\ram32x8_comp|mem~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~346_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~345_combout\ & ((\ram32x8_comp|mem~73_q\))) # (!\ram32x8_comp|mem~345_combout\ & (\ram32x8_comp|mem~57_q\)))) # (!\SW[11]~input_o\ & (((\ram32x8_comp|mem~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~57_q\,
	datac => \ram32x8_comp|mem~73_q\,
	datad => \ram32x8_comp|mem~345_combout\,
	combout => \ram32x8_comp|mem~346_combout\);

-- Location: FF_X114_Y25_N29
\ram32x8_comp|mem~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~33_q\);

-- Location: FF_X113_Y29_N27
\ram32x8_comp|mem~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~41_q\);

-- Location: LCCOMB_X113_Y25_N4
\ram32x8_comp|mem~25feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~25feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \ram32x8_comp|mem~25feeder_combout\);

-- Location: FF_X113_Y25_N5
\ram32x8_comp|mem~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~25feeder_combout\,
	ena => \ram32x8_comp|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~25_q\);

-- Location: FF_X114_Y25_N15
\ram32x8_comp|mem~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~17_q\);

-- Location: LCCOMB_X114_Y25_N14
\ram32x8_comp|mem~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~347_combout\ = (\SW[12]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & (\ram32x8_comp|mem~25_q\)) # (!\SW[11]~input_o\ & ((\ram32x8_comp|mem~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~25_q\,
	datac => \ram32x8_comp|mem~17_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~347_combout\);

-- Location: LCCOMB_X113_Y25_N22
\ram32x8_comp|mem~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~348_combout\ = (\ram32x8_comp|mem~347_combout\ & (((\ram32x8_comp|mem~41_q\) # (!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~347_combout\ & (\ram32x8_comp|mem~33_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~33_q\,
	datab => \ram32x8_comp|mem~41_q\,
	datac => \ram32x8_comp|mem~347_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~348_combout\);

-- Location: LCCOMB_X110_Y29_N22
\ram32x8_comp|mem~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~349_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~346_combout\) # ((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~348_combout\ & !\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~346_combout\,
	datab => \ram32x8_comp|mem~348_combout\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~349_combout\);

-- Location: FF_X112_Y36_N9
\ram32x8_comp|mem~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~89_q\);

-- Location: FF_X114_Y37_N31
\ram32x8_comp|mem~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~81_q\);

-- Location: LCCOMB_X113_Y36_N4
\ram32x8_comp|mem~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~343_combout\ = (\SW[12]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & (\ram32x8_comp|mem~89_q\)) # (!\SW[11]~input_o\ & ((\ram32x8_comp|mem~81_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~89_q\,
	datab => \ram32x8_comp|mem~81_q\,
	datac => \SW[12]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~343_combout\);

-- Location: FF_X114_Y40_N23
\ram32x8_comp|mem~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~97_q\);

-- Location: FF_X112_Y36_N19
\ram32x8_comp|mem~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~105_q\);

-- Location: LCCOMB_X112_Y36_N18
\ram32x8_comp|mem~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~344_combout\ = (\ram32x8_comp|mem~343_combout\ & (((\ram32x8_comp|mem~105_q\) # (!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~343_combout\ & (\ram32x8_comp|mem~97_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~343_combout\,
	datab => \ram32x8_comp|mem~97_q\,
	datac => \ram32x8_comp|mem~105_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~344_combout\);

-- Location: LCCOMB_X111_Y33_N8
\ram32x8_comp|mem~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~352_combout\ = (\ram32x8_comp|mem~349_combout\ & ((\ram32x8_comp|mem~351_combout\) # ((!\SW[14]~input_o\)))) # (!\ram32x8_comp|mem~349_combout\ & (((\ram32x8_comp|mem~344_combout\ & \SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~351_combout\,
	datab => \ram32x8_comp|mem~349_combout\,
	datac => \ram32x8_comp|mem~344_combout\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~352_combout\);

-- Location: FF_X114_Y28_N5
\ram32x8_comp|mem~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~201_q\);

-- Location: FF_X114_Y24_N31
\ram32x8_comp|mem~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~169_q\);

-- Location: LCCOMB_X114_Y24_N30
\ram32x8_comp|mem~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~340_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~201_q\) # ((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~169_q\ & !\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~201_q\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~169_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~340_combout\);

-- Location: FF_X114_Y24_N21
\ram32x8_comp|mem~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~233_q\);

-- Location: FF_X114_Y28_N7
\ram32x8_comp|mem~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~265_q\);

-- Location: LCCOMB_X114_Y28_N6
\ram32x8_comp|mem~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~341_combout\ = (\ram32x8_comp|mem~340_combout\ & (((\ram32x8_comp|mem~265_q\) # (!\SW[14]~input_o\)))) # (!\ram32x8_comp|mem~340_combout\ & (\ram32x8_comp|mem~233_q\ & ((\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~340_combout\,
	datab => \ram32x8_comp|mem~233_q\,
	datac => \ram32x8_comp|mem~265_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~341_combout\);

-- Location: FF_X111_Y32_N5
\ram32x8_comp|mem~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~177_q\);

-- Location: FF_X112_Y32_N7
\ram32x8_comp|mem~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~241_q\);

-- Location: FF_X112_Y32_N13
\ram32x8_comp|mem~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~209_q\);

-- Location: FF_X111_Y32_N23
\ram32x8_comp|mem~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~145_q\);

-- Location: LCCOMB_X111_Y32_N22
\ram32x8_comp|mem~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~337_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & (\ram32x8_comp|mem~209_q\)) # (!\SW[14]~input_o\ & ((\ram32x8_comp|mem~145_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~209_q\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~145_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~337_combout\);

-- Location: LCCOMB_X112_Y32_N6
\ram32x8_comp|mem~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~338_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~337_combout\ & ((\ram32x8_comp|mem~241_q\))) # (!\ram32x8_comp|mem~337_combout\ & (\ram32x8_comp|mem~177_q\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~177_q\,
	datac => \ram32x8_comp|mem~241_q\,
	datad => \ram32x8_comp|mem~337_combout\,
	combout => \ram32x8_comp|mem~338_combout\);

-- Location: FF_X114_Y38_N7
\ram32x8_comp|mem~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~217_q\);

-- Location: LCCOMB_X114_Y39_N20
\ram32x8_comp|mem~185feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~185feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \ram32x8_comp|mem~185feeder_combout\);

-- Location: FF_X114_Y39_N21
\ram32x8_comp|mem~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~185feeder_combout\,
	ena => \ram32x8_comp|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~185_q\);

-- Location: FF_X114_Y34_N17
\ram32x8_comp|mem~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~153_q\);

-- Location: LCCOMB_X114_Y34_N16
\ram32x8_comp|mem~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~335_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~185_q\) # ((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~153_q\ & !\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~185_q\,
	datac => \ram32x8_comp|mem~153_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~335_combout\);

-- Location: FF_X114_Y34_N27
\ram32x8_comp|mem~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~249_q\);

-- Location: LCCOMB_X114_Y34_N26
\ram32x8_comp|mem~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~336_combout\ = (\ram32x8_comp|mem~335_combout\ & (((\ram32x8_comp|mem~249_q\) # (!\SW[14]~input_o\)))) # (!\ram32x8_comp|mem~335_combout\ & (\ram32x8_comp|mem~217_q\ & ((\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~217_q\,
	datab => \ram32x8_comp|mem~335_combout\,
	datac => \ram32x8_comp|mem~249_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~336_combout\);

-- Location: LCCOMB_X112_Y33_N20
\ram32x8_comp|mem~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~339_combout\ = (\SW[11]~input_o\ & (((\ram32x8_comp|mem~336_combout\) # (\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & (\ram32x8_comp|mem~338_combout\ & ((!\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~338_combout\,
	datab => \ram32x8_comp|mem~336_combout\,
	datac => \SW[11]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~339_combout\);

-- Location: FF_X114_Y33_N27
\ram32x8_comp|mem~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~193_q\);

-- Location: FF_X114_Y37_N13
\ram32x8_comp|mem~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~257_q\);

-- Location: FF_X114_Y40_N13
\ram32x8_comp|mem~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~225_q\);

-- Location: FF_X114_Y33_N21
\ram32x8_comp|mem~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~161_q\);

-- Location: LCCOMB_X114_Y33_N20
\ram32x8_comp|mem~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~333_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & (\ram32x8_comp|mem~225_q\)) # (!\SW[14]~input_o\ & ((\ram32x8_comp|mem~161_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~225_q\,
	datac => \ram32x8_comp|mem~161_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~333_combout\);

-- Location: LCCOMB_X114_Y37_N12
\ram32x8_comp|mem~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~334_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~333_combout\ & ((\ram32x8_comp|mem~257_q\))) # (!\ram32x8_comp|mem~333_combout\ & (\ram32x8_comp|mem~193_q\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~193_q\,
	datac => \ram32x8_comp|mem~257_q\,
	datad => \ram32x8_comp|mem~333_combout\,
	combout => \ram32x8_comp|mem~334_combout\);

-- Location: LCCOMB_X112_Y33_N6
\ram32x8_comp|mem~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~342_combout\ = (\ram32x8_comp|mem~339_combout\ & ((\ram32x8_comp|mem~341_combout\) # ((!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~339_combout\ & (((\ram32x8_comp|mem~334_combout\ & \SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~341_combout\,
	datab => \ram32x8_comp|mem~339_combout\,
	datac => \ram32x8_comp|mem~334_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~342_combout\);

-- Location: LCCOMB_X112_Y33_N16
\ram32x8_comp|mem~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~353_combout\ = (\SW[15]~input_o\ & ((\ram32x8_comp|mem~342_combout\))) # (!\SW[15]~input_o\ & (\ram32x8_comp|mem~352_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~352_combout\,
	datac => \SW[15]~input_o\,
	datad => \ram32x8_comp|mem~342_combout\,
	combout => \ram32x8_comp|mem~353_combout\);

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

-- Location: FF_X113_Y25_N25
\ram32x8_comp|mem~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~22_q\);

-- Location: FF_X113_Y25_N3
\ram32x8_comp|mem~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~38_q\);

-- Location: FF_X114_Y25_N25
\ram32x8_comp|mem~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~30_q\);

-- Location: FF_X114_Y25_N19
\ram32x8_comp|mem~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~14_q\);

-- Location: LCCOMB_X114_Y25_N18
\ram32x8_comp|mem~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~284_combout\ = (\SW[12]~input_o\ & ((\ram32x8_comp|mem~30_q\) # ((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & (((\ram32x8_comp|mem~14_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~30_q\,
	datac => \ram32x8_comp|mem~14_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~284_combout\);

-- Location: LCCOMB_X113_Y25_N2
\ram32x8_comp|mem~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~285_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~284_combout\ & ((\ram32x8_comp|mem~38_q\))) # (!\ram32x8_comp|mem~284_combout\ & (\ram32x8_comp|mem~22_q\)))) # (!\SW[11]~input_o\ & (((\ram32x8_comp|mem~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~22_q\,
	datac => \ram32x8_comp|mem~38_q\,
	datad => \ram32x8_comp|mem~284_combout\,
	combout => \ram32x8_comp|mem~285_combout\);

-- Location: LCCOMB_X114_Y40_N18
\ram32x8_comp|mem~94feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~94feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \ram32x8_comp|mem~94feeder_combout\);

-- Location: FF_X114_Y40_N19
\ram32x8_comp|mem~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~94feeder_combout\,
	ena => \ram32x8_comp|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~94_q\);

-- Location: LCCOMB_X114_Y36_N10
\ram32x8_comp|mem~78feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~78feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \ram32x8_comp|mem~78feeder_combout\);

-- Location: FF_X114_Y36_N11
\ram32x8_comp|mem~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~78feeder_combout\,
	ena => \ram32x8_comp|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~78_q\);

-- Location: LCCOMB_X113_Y36_N24
\ram32x8_comp|mem~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~282_combout\ = (\SW[12]~input_o\ & ((\ram32x8_comp|mem~94_q\) # ((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & (((\ram32x8_comp|mem~78_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~94_q\,
	datab => \ram32x8_comp|mem~78_q\,
	datac => \SW[12]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~282_combout\);

-- Location: FF_X112_Y36_N17
\ram32x8_comp|mem~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~102_q\);

-- Location: FF_X113_Y40_N19
\ram32x8_comp|mem~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~86_q\);

-- Location: LCCOMB_X112_Y36_N16
\ram32x8_comp|mem~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~283_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~282_combout\ & (\ram32x8_comp|mem~102_q\)) # (!\ram32x8_comp|mem~282_combout\ & ((\ram32x8_comp|mem~86_q\))))) # (!\SW[11]~input_o\ & (\ram32x8_comp|mem~282_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~282_combout\,
	datac => \ram32x8_comp|mem~102_q\,
	datad => \ram32x8_comp|mem~86_q\,
	combout => \ram32x8_comp|mem~283_combout\);

-- Location: LCCOMB_X112_Y29_N12
\ram32x8_comp|mem~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~286_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & ((\ram32x8_comp|mem~283_combout\))) # (!\SW[14]~input_o\ & (\ram32x8_comp|mem~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~285_combout\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~283_combout\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~286_combout\);

-- Location: FF_X111_Y29_N11
\ram32x8_comp|mem~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~46_q\);

-- Location: FF_X111_Y29_N9
\ram32x8_comp|mem~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~54_q\);

-- Location: LCCOMB_X111_Y29_N10
\ram32x8_comp|mem~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~280_combout\ = (\SW[12]~input_o\ & (\SW[11]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & ((\ram32x8_comp|mem~54_q\))) # (!\SW[11]~input_o\ & (\ram32x8_comp|mem~46_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \ram32x8_comp|mem~46_q\,
	datad => \ram32x8_comp|mem~54_q\,
	combout => \ram32x8_comp|mem~280_combout\);

-- Location: FF_X112_Y29_N25
\ram32x8_comp|mem~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~62_q\);

-- Location: FF_X112_Y29_N19
\ram32x8_comp|mem~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~70_q\);

-- Location: LCCOMB_X112_Y29_N18
\ram32x8_comp|mem~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~281_combout\ = (\ram32x8_comp|mem~280_combout\ & (((\ram32x8_comp|mem~70_q\) # (!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~280_combout\ & (\ram32x8_comp|mem~62_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~280_combout\,
	datab => \ram32x8_comp|mem~62_q\,
	datac => \ram32x8_comp|mem~70_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~281_combout\);

-- Location: FF_X112_Y24_N25
\ram32x8_comp|mem~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~118_q\);

-- Location: FF_X112_Y24_N11
\ram32x8_comp|mem~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~110_q\);

-- Location: LCCOMB_X112_Y24_N10
\ram32x8_comp|mem~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~287_combout\ = (\SW[12]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & (\ram32x8_comp|mem~118_q\)) # (!\SW[11]~input_o\ & ((\ram32x8_comp|mem~110_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~118_q\,
	datac => \ram32x8_comp|mem~110_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~287_combout\);

-- Location: FF_X112_Y26_N25
\ram32x8_comp|mem~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~126_q\);

-- Location: FF_X112_Y26_N19
\ram32x8_comp|mem~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~134_q\);

-- Location: LCCOMB_X112_Y26_N18
\ram32x8_comp|mem~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~288_combout\ = (\ram32x8_comp|mem~287_combout\ & (((\ram32x8_comp|mem~134_q\) # (!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~287_combout\ & (\ram32x8_comp|mem~126_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~287_combout\,
	datab => \ram32x8_comp|mem~126_q\,
	datac => \ram32x8_comp|mem~134_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~288_combout\);

-- Location: LCCOMB_X112_Y29_N22
\ram32x8_comp|mem~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~289_combout\ = (\ram32x8_comp|mem~286_combout\ & (((\ram32x8_comp|mem~288_combout\) # (!\SW[13]~input_o\)))) # (!\ram32x8_comp|mem~286_combout\ & (\ram32x8_comp|mem~281_combout\ & ((\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~286_combout\,
	datab => \ram32x8_comp|mem~281_combout\,
	datac => \ram32x8_comp|mem~288_combout\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~289_combout\);

-- Location: FF_X114_Y38_N25
\ram32x8_comp|mem~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~214_q\);

-- Location: FF_X114_Y34_N1
\ram32x8_comp|mem~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~150_q\);

-- Location: LCCOMB_X114_Y34_N0
\ram32x8_comp|mem~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~270_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & (\ram32x8_comp|mem~214_q\)) # (!\SW[14]~input_o\ & ((\ram32x8_comp|mem~150_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~214_q\,
	datac => \ram32x8_comp|mem~150_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~270_combout\);

-- Location: FF_X114_Y36_N1
\ram32x8_comp|mem~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~246_q\);

-- Location: FF_X113_Y40_N1
\ram32x8_comp|mem~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~182_q\);

-- Location: LCCOMB_X114_Y36_N0
\ram32x8_comp|mem~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~271_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~270_combout\ & (\ram32x8_comp|mem~246_q\)) # (!\ram32x8_comp|mem~270_combout\ & ((\ram32x8_comp|mem~182_q\))))) # (!\SW[13]~input_o\ & (\ram32x8_comp|mem~270_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~270_combout\,
	datac => \ram32x8_comp|mem~246_q\,
	datad => \ram32x8_comp|mem~182_q\,
	combout => \ram32x8_comp|mem~271_combout\);

-- Location: FF_X111_Y32_N19
\ram32x8_comp|mem~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~142_q\);

-- Location: FF_X111_Y32_N17
\ram32x8_comp|mem~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~174_q\);

-- Location: LCCOMB_X111_Y32_N18
\ram32x8_comp|mem~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~274_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\)) # (!\SW[14]~input_o\ & ((\SW[13]~input_o\ & ((\ram32x8_comp|mem~174_q\))) # (!\SW[13]~input_o\ & (\ram32x8_comp|mem~142_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~142_q\,
	datad => \ram32x8_comp|mem~174_q\,
	combout => \ram32x8_comp|mem~274_combout\);

-- Location: FF_X112_Y32_N11
\ram32x8_comp|mem~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~238_q\);

-- Location: FF_X112_Y32_N25
\ram32x8_comp|mem~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~206_q\);

-- Location: LCCOMB_X112_Y32_N10
\ram32x8_comp|mem~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~275_combout\ = (\ram32x8_comp|mem~274_combout\ & (((\ram32x8_comp|mem~238_q\)) # (!\SW[14]~input_o\))) # (!\ram32x8_comp|mem~274_combout\ & (\SW[14]~input_o\ & ((\ram32x8_comp|mem~206_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~274_combout\,
	datab => \SW[14]~input_o\,
	datac => \ram32x8_comp|mem~238_q\,
	datad => \ram32x8_comp|mem~206_q\,
	combout => \ram32x8_comp|mem~275_combout\);

-- Location: LCCOMB_X114_Y33_N0
\ram32x8_comp|mem~190feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~190feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \ram32x8_comp|mem~190feeder_combout\);

-- Location: FF_X114_Y33_N1
\ram32x8_comp|mem~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~190feeder_combout\,
	ena => \ram32x8_comp|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~190_q\);

-- Location: FF_X114_Y33_N11
\ram32x8_comp|mem~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~158_q\);

-- Location: LCCOMB_X114_Y33_N10
\ram32x8_comp|mem~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~272_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~190_q\) # ((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~158_q\ & !\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~190_q\,
	datac => \ram32x8_comp|mem~158_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~272_combout\);

-- Location: FF_X113_Y38_N9
\ram32x8_comp|mem~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~254_q\);

-- Location: LCCOMB_X114_Y40_N16
\ram32x8_comp|mem~222feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~222feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \ram32x8_comp|mem~222feeder_combout\);

-- Location: FF_X114_Y40_N17
\ram32x8_comp|mem~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~222feeder_combout\,
	ena => \ram32x8_comp|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~222_q\);

-- Location: LCCOMB_X113_Y33_N24
\ram32x8_comp|mem~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~273_combout\ = (\SW[14]~input_o\ & ((\ram32x8_comp|mem~272_combout\ & (\ram32x8_comp|mem~254_q\)) # (!\ram32x8_comp|mem~272_combout\ & ((\ram32x8_comp|mem~222_q\))))) # (!\SW[14]~input_o\ & (\ram32x8_comp|mem~272_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \ram32x8_comp|mem~272_combout\,
	datac => \ram32x8_comp|mem~254_q\,
	datad => \ram32x8_comp|mem~222_q\,
	combout => \ram32x8_comp|mem~273_combout\);

-- Location: LCCOMB_X112_Y33_N8
\ram32x8_comp|mem~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~276_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & ((\ram32x8_comp|mem~273_combout\))) # (!\SW[12]~input_o\ & (\ram32x8_comp|mem~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~275_combout\,
	datab => \ram32x8_comp|mem~273_combout\,
	datac => \SW[11]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~276_combout\);

-- Location: FF_X114_Y24_N3
\ram32x8_comp|mem~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~166_q\);

-- Location: FF_X114_Y24_N25
\ram32x8_comp|mem~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~230_q\);

-- Location: LCCOMB_X114_Y24_N2
\ram32x8_comp|mem~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~277_combout\ = (\SW[14]~input_o\ & ((\SW[13]~input_o\) # ((\ram32x8_comp|mem~230_q\)))) # (!\SW[14]~input_o\ & (!\SW[13]~input_o\ & (\ram32x8_comp|mem~166_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~166_q\,
	datad => \ram32x8_comp|mem~230_q\,
	combout => \ram32x8_comp|mem~277_combout\);

-- Location: FF_X114_Y28_N25
\ram32x8_comp|mem~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~198_q\);

-- Location: FF_X114_Y28_N27
\ram32x8_comp|mem~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~262_q\);

-- Location: LCCOMB_X114_Y28_N26
\ram32x8_comp|mem~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~278_combout\ = (\ram32x8_comp|mem~277_combout\ & (((\ram32x8_comp|mem~262_q\) # (!\SW[13]~input_o\)))) # (!\ram32x8_comp|mem~277_combout\ & (\ram32x8_comp|mem~198_q\ & ((\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~277_combout\,
	datab => \ram32x8_comp|mem~198_q\,
	datac => \ram32x8_comp|mem~262_q\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~278_combout\);

-- Location: LCCOMB_X112_Y33_N2
\ram32x8_comp|mem~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~279_combout\ = (\ram32x8_comp|mem~276_combout\ & (((\ram32x8_comp|mem~278_combout\) # (!\SW[11]~input_o\)))) # (!\ram32x8_comp|mem~276_combout\ & (\ram32x8_comp|mem~271_combout\ & (\SW[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~271_combout\,
	datab => \ram32x8_comp|mem~276_combout\,
	datac => \SW[11]~input_o\,
	datad => \ram32x8_comp|mem~278_combout\,
	combout => \ram32x8_comp|mem~279_combout\);

-- Location: LCCOMB_X112_Y33_N4
\ram32x8_comp|mem~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~290_combout\ = (\SW[15]~input_o\ & ((\ram32x8_comp|mem~279_combout\))) # (!\SW[15]~input_o\ & (\ram32x8_comp|mem~289_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram32x8_comp|mem~289_combout\,
	datac => \SW[15]~input_o\,
	datad => \ram32x8_comp|mem~279_combout\,
	combout => \ram32x8_comp|mem~290_combout\);

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

-- Location: FF_X112_Y24_N17
\ram32x8_comp|mem~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~120_q\);

-- Location: FF_X112_Y24_N19
\ram32x8_comp|mem~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~112_q\);

-- Location: LCCOMB_X112_Y24_N18
\ram32x8_comp|mem~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~329_combout\ = (\SW[12]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & (\ram32x8_comp|mem~120_q\)) # (!\SW[11]~input_o\ & ((\ram32x8_comp|mem~112_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~120_q\,
	datac => \ram32x8_comp|mem~112_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~329_combout\);

-- Location: FF_X112_Y26_N27
\ram32x8_comp|mem~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~136_q\);

-- Location: FF_X112_Y26_N1
\ram32x8_comp|mem~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~128_q\);

-- Location: LCCOMB_X112_Y26_N26
\ram32x8_comp|mem~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~330_combout\ = (\SW[12]~input_o\ & ((\ram32x8_comp|mem~329_combout\ & (\ram32x8_comp|mem~136_q\)) # (!\ram32x8_comp|mem~329_combout\ & ((\ram32x8_comp|mem~128_q\))))) # (!\SW[12]~input_o\ & (\ram32x8_comp|mem~329_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~329_combout\,
	datac => \ram32x8_comp|mem~136_q\,
	datad => \ram32x8_comp|mem~128_q\,
	combout => \ram32x8_comp|mem~330_combout\);

-- Location: FF_X111_Y29_N27
\ram32x8_comp|mem~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~48_q\);

-- Location: LCCOMB_X111_Y29_N16
\ram32x8_comp|mem~56feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~56feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \ram32x8_comp|mem~56feeder_combout\);

-- Location: FF_X111_Y29_N17
\ram32x8_comp|mem~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~56feeder_combout\,
	ena => \ram32x8_comp|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~56_q\);

-- Location: LCCOMB_X111_Y29_N26
\ram32x8_comp|mem~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~322_combout\ = (\SW[12]~input_o\ & (\SW[11]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & ((\ram32x8_comp|mem~56_q\))) # (!\SW[11]~input_o\ & (\ram32x8_comp|mem~48_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \ram32x8_comp|mem~48_q\,
	datad => \ram32x8_comp|mem~56_q\,
	combout => \ram32x8_comp|mem~322_combout\);

-- Location: FF_X112_Y29_N9
\ram32x8_comp|mem~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~64_q\);

-- Location: FF_X112_Y29_N3
\ram32x8_comp|mem~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~72_q\);

-- Location: LCCOMB_X112_Y29_N2
\ram32x8_comp|mem~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~323_combout\ = (\ram32x8_comp|mem~322_combout\ & (((\ram32x8_comp|mem~72_q\) # (!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~322_combout\ & (\ram32x8_comp|mem~64_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~322_combout\,
	datab => \ram32x8_comp|mem~64_q\,
	datac => \ram32x8_comp|mem~72_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~323_combout\);

-- Location: FF_X114_Y40_N27
\ram32x8_comp|mem~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~96_q\);

-- Location: FF_X114_Y39_N19
\ram32x8_comp|mem~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~80_q\);

-- Location: LCCOMB_X113_Y36_N10
\ram32x8_comp|mem~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~324_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & (\ram32x8_comp|mem~96_q\)) # (!\SW[12]~input_o\ & ((\ram32x8_comp|mem~80_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~96_q\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \ram32x8_comp|mem~80_q\,
	combout => \ram32x8_comp|mem~324_combout\);

-- Location: FF_X112_Y36_N7
\ram32x8_comp|mem~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~104_q\);

-- Location: LCCOMB_X113_Y40_N30
\ram32x8_comp|mem~88feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~88feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \ram32x8_comp|mem~88feeder_combout\);

-- Location: FF_X113_Y40_N31
\ram32x8_comp|mem~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~88feeder_combout\,
	ena => \ram32x8_comp|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~88_q\);

-- Location: LCCOMB_X112_Y36_N6
\ram32x8_comp|mem~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~325_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~324_combout\ & (\ram32x8_comp|mem~104_q\)) # (!\ram32x8_comp|mem~324_combout\ & ((\ram32x8_comp|mem~88_q\))))) # (!\SW[11]~input_o\ & (\ram32x8_comp|mem~324_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~324_combout\,
	datac => \ram32x8_comp|mem~104_q\,
	datad => \ram32x8_comp|mem~88_q\,
	combout => \ram32x8_comp|mem~325_combout\);

-- Location: FF_X113_Y25_N9
\ram32x8_comp|mem~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~24_q\);

-- Location: FF_X113_Y25_N27
\ram32x8_comp|mem~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~40_q\);

-- Location: FF_X114_Y25_N9
\ram32x8_comp|mem~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~32_q\);

-- Location: FF_X114_Y25_N27
\ram32x8_comp|mem~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~16_q\);

-- Location: LCCOMB_X114_Y25_N26
\ram32x8_comp|mem~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~326_combout\ = (\SW[12]~input_o\ & ((\ram32x8_comp|mem~32_q\) # ((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & (((\ram32x8_comp|mem~16_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~32_q\,
	datac => \ram32x8_comp|mem~16_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~326_combout\);

-- Location: LCCOMB_X113_Y25_N26
\ram32x8_comp|mem~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~327_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~326_combout\ & ((\ram32x8_comp|mem~40_q\))) # (!\ram32x8_comp|mem~326_combout\ & (\ram32x8_comp|mem~24_q\)))) # (!\SW[11]~input_o\ & (((\ram32x8_comp|mem~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~24_q\,
	datac => \ram32x8_comp|mem~40_q\,
	datad => \ram32x8_comp|mem~326_combout\,
	combout => \ram32x8_comp|mem~327_combout\);

-- Location: LCCOMB_X112_Y29_N4
\ram32x8_comp|mem~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~328_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & (\ram32x8_comp|mem~325_combout\)) # (!\SW[14]~input_o\ & ((\ram32x8_comp|mem~327_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~325_combout\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~327_combout\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~328_combout\);

-- Location: LCCOMB_X112_Y29_N30
\ram32x8_comp|mem~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~331_combout\ = (\ram32x8_comp|mem~328_combout\ & ((\ram32x8_comp|mem~330_combout\) # ((!\SW[13]~input_o\)))) # (!\ram32x8_comp|mem~328_combout\ & (((\ram32x8_comp|mem~323_combout\ & \SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~330_combout\,
	datab => \ram32x8_comp|mem~323_combout\,
	datac => \ram32x8_comp|mem~328_combout\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~331_combout\);

-- Location: FF_X111_Y32_N27
\ram32x8_comp|mem~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~144_q\);

-- Location: FF_X111_Y32_N25
\ram32x8_comp|mem~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~176_q\);

-- Location: LCCOMB_X111_Y32_N26
\ram32x8_comp|mem~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~316_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\)) # (!\SW[14]~input_o\ & ((\SW[13]~input_o\ & ((\ram32x8_comp|mem~176_q\))) # (!\SW[13]~input_o\ & (\ram32x8_comp|mem~144_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~144_q\,
	datad => \ram32x8_comp|mem~176_q\,
	combout => \ram32x8_comp|mem~316_combout\);

-- Location: FF_X112_Y32_N27
\ram32x8_comp|mem~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~240_q\);

-- Location: FF_X112_Y32_N9
\ram32x8_comp|mem~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~208_q\);

-- Location: LCCOMB_X112_Y32_N26
\ram32x8_comp|mem~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~317_combout\ = (\ram32x8_comp|mem~316_combout\ & (((\ram32x8_comp|mem~240_q\)) # (!\SW[14]~input_o\))) # (!\ram32x8_comp|mem~316_combout\ & (\SW[14]~input_o\ & ((\ram32x8_comp|mem~208_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~316_combout\,
	datab => \SW[14]~input_o\,
	datac => \ram32x8_comp|mem~240_q\,
	datad => \ram32x8_comp|mem~208_q\,
	combout => \ram32x8_comp|mem~317_combout\);

-- Location: FF_X114_Y37_N3
\ram32x8_comp|mem~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~256_q\);

-- Location: LCCOMB_X114_Y33_N6
\ram32x8_comp|mem~192feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~192feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \ram32x8_comp|mem~192feeder_combout\);

-- Location: FF_X114_Y33_N7
\ram32x8_comp|mem~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~192feeder_combout\,
	ena => \ram32x8_comp|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~192_q\);

-- Location: FF_X114_Y33_N25
\ram32x8_comp|mem~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~160_q\);

-- Location: LCCOMB_X114_Y33_N24
\ram32x8_comp|mem~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~314_combout\ = (\SW[14]~input_o\ & (((\SW[13]~input_o\)))) # (!\SW[14]~input_o\ & ((\SW[13]~input_o\ & (\ram32x8_comp|mem~192_q\)) # (!\SW[13]~input_o\ & ((\ram32x8_comp|mem~160_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~192_q\,
	datab => \SW[14]~input_o\,
	datac => \ram32x8_comp|mem~160_q\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~314_combout\);

-- Location: FF_X114_Y40_N25
\ram32x8_comp|mem~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~224_q\);

-- Location: LCCOMB_X113_Y33_N18
\ram32x8_comp|mem~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~315_combout\ = (\ram32x8_comp|mem~314_combout\ & ((\ram32x8_comp|mem~256_q\) # ((!\SW[14]~input_o\)))) # (!\ram32x8_comp|mem~314_combout\ & (((\SW[14]~input_o\ & \ram32x8_comp|mem~224_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~256_q\,
	datab => \ram32x8_comp|mem~314_combout\,
	datac => \SW[14]~input_o\,
	datad => \ram32x8_comp|mem~224_q\,
	combout => \ram32x8_comp|mem~315_combout\);

-- Location: LCCOMB_X112_Y33_N30
\ram32x8_comp|mem~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~318_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & ((\ram32x8_comp|mem~315_combout\))) # (!\SW[12]~input_o\ & (\ram32x8_comp|mem~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~317_combout\,
	datab => \ram32x8_comp|mem~315_combout\,
	datac => \SW[11]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~318_combout\);

-- Location: FF_X114_Y24_N9
\ram32x8_comp|mem~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~232_q\);

-- Location: FF_X114_Y24_N27
\ram32x8_comp|mem~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~168_q\);

-- Location: LCCOMB_X114_Y24_N26
\ram32x8_comp|mem~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~319_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & (\ram32x8_comp|mem~232_q\)) # (!\SW[14]~input_o\ & ((\ram32x8_comp|mem~168_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~232_q\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~168_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~319_combout\);

-- Location: FF_X114_Y28_N9
\ram32x8_comp|mem~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~200_q\);

-- Location: FF_X114_Y28_N3
\ram32x8_comp|mem~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~264_q\);

-- Location: LCCOMB_X114_Y28_N2
\ram32x8_comp|mem~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~320_combout\ = (\ram32x8_comp|mem~319_combout\ & (((\ram32x8_comp|mem~264_q\) # (!\SW[13]~input_o\)))) # (!\ram32x8_comp|mem~319_combout\ & (\ram32x8_comp|mem~200_q\ & ((\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~319_combout\,
	datab => \ram32x8_comp|mem~200_q\,
	datac => \ram32x8_comp|mem~264_q\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~320_combout\);

-- Location: FF_X114_Y38_N21
\ram32x8_comp|mem~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~216_q\);

-- Location: FF_X114_Y34_N29
\ram32x8_comp|mem~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~152_q\);

-- Location: LCCOMB_X114_Y34_N28
\ram32x8_comp|mem~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~312_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & (\ram32x8_comp|mem~216_q\)) # (!\SW[14]~input_o\ & ((\ram32x8_comp|mem~152_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~216_q\,
	datac => \ram32x8_comp|mem~152_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~312_combout\);

-- Location: FF_X114_Y34_N31
\ram32x8_comp|mem~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~248_q\);

-- Location: LCCOMB_X113_Y40_N4
\ram32x8_comp|mem~184feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~184feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \ram32x8_comp|mem~184feeder_combout\);

-- Location: FF_X113_Y40_N5
\ram32x8_comp|mem~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~184feeder_combout\,
	ena => \ram32x8_comp|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~184_q\);

-- Location: LCCOMB_X114_Y34_N30
\ram32x8_comp|mem~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~313_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~312_combout\ & (\ram32x8_comp|mem~248_q\)) # (!\ram32x8_comp|mem~312_combout\ & ((\ram32x8_comp|mem~184_q\))))) # (!\SW[13]~input_o\ & (\ram32x8_comp|mem~312_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~312_combout\,
	datac => \ram32x8_comp|mem~248_q\,
	datad => \ram32x8_comp|mem~184_q\,
	combout => \ram32x8_comp|mem~313_combout\);

-- Location: LCCOMB_X112_Y33_N24
\ram32x8_comp|mem~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~321_combout\ = (\ram32x8_comp|mem~318_combout\ & ((\ram32x8_comp|mem~320_combout\) # ((!\SW[11]~input_o\)))) # (!\ram32x8_comp|mem~318_combout\ & (((\SW[11]~input_o\ & \ram32x8_comp|mem~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~318_combout\,
	datab => \ram32x8_comp|mem~320_combout\,
	datac => \SW[11]~input_o\,
	datad => \ram32x8_comp|mem~313_combout\,
	combout => \ram32x8_comp|mem~321_combout\);

-- Location: LCCOMB_X112_Y33_N26
\ram32x8_comp|mem~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~332_combout\ = (\SW[15]~input_o\ & ((\ram32x8_comp|mem~321_combout\))) # (!\SW[15]~input_o\ & (\ram32x8_comp|mem~331_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~331_combout\,
	datac => \SW[15]~input_o\,
	datad => \ram32x8_comp|mem~321_combout\,
	combout => \ram32x8_comp|mem~332_combout\);

-- Location: LCCOMB_X112_Y33_N18
\rom_7_seg_0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_0|Mux6~0_combout\ = (\ram32x8_comp|mem~290_combout\ & ((\ram32x8_comp|mem~353_combout\) # (\ram32x8_comp|mem~311_combout\ $ (\ram32x8_comp|mem~332_combout\)))) # (!\ram32x8_comp|mem~290_combout\ & ((\ram32x8_comp|mem~311_combout\) # 
-- (\ram32x8_comp|mem~353_combout\ $ (\ram32x8_comp|mem~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~311_combout\,
	datab => \ram32x8_comp|mem~353_combout\,
	datac => \ram32x8_comp|mem~290_combout\,
	datad => \ram32x8_comp|mem~332_combout\,
	combout => \rom_7_seg_0|Mux6~0_combout\);

-- Location: LCCOMB_X112_Y33_N12
\rom_7_seg_0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_0|Mux5~0_combout\ = (\ram32x8_comp|mem~311_combout\ & (!\ram32x8_comp|mem~353_combout\ & ((\ram32x8_comp|mem~290_combout\) # (!\ram32x8_comp|mem~332_combout\)))) # (!\ram32x8_comp|mem~311_combout\ & (\ram32x8_comp|mem~290_combout\ & 
-- (\ram32x8_comp|mem~353_combout\ $ (!\ram32x8_comp|mem~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~311_combout\,
	datab => \ram32x8_comp|mem~353_combout\,
	datac => \ram32x8_comp|mem~290_combout\,
	datad => \ram32x8_comp|mem~332_combout\,
	combout => \rom_7_seg_0|Mux5~0_combout\);

-- Location: LCCOMB_X112_Y33_N14
\rom_7_seg_0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_0|Mux4~0_combout\ = (\ram32x8_comp|mem~311_combout\ & (!\ram32x8_comp|mem~353_combout\ & (\ram32x8_comp|mem~290_combout\))) # (!\ram32x8_comp|mem~311_combout\ & ((\ram32x8_comp|mem~332_combout\ & (!\ram32x8_comp|mem~353_combout\)) # 
-- (!\ram32x8_comp|mem~332_combout\ & ((\ram32x8_comp|mem~290_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~311_combout\,
	datab => \ram32x8_comp|mem~353_combout\,
	datac => \ram32x8_comp|mem~290_combout\,
	datad => \ram32x8_comp|mem~332_combout\,
	combout => \rom_7_seg_0|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y33_N0
\rom_7_seg_0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_0|Mux3~0_combout\ = (\ram32x8_comp|mem~311_combout\ & ((\ram32x8_comp|mem~290_combout\ & ((\ram32x8_comp|mem~332_combout\))) # (!\ram32x8_comp|mem~290_combout\ & (\ram32x8_comp|mem~353_combout\ & !\ram32x8_comp|mem~332_combout\)))) # 
-- (!\ram32x8_comp|mem~311_combout\ & (!\ram32x8_comp|mem~353_combout\ & (\ram32x8_comp|mem~290_combout\ $ (\ram32x8_comp|mem~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~311_combout\,
	datab => \ram32x8_comp|mem~353_combout\,
	datac => \ram32x8_comp|mem~290_combout\,
	datad => \ram32x8_comp|mem~332_combout\,
	combout => \rom_7_seg_0|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y33_N10
\rom_7_seg_0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_0|Mux2~0_combout\ = (\ram32x8_comp|mem~353_combout\ & (\ram32x8_comp|mem~332_combout\ & ((\ram32x8_comp|mem~311_combout\) # (!\ram32x8_comp|mem~290_combout\)))) # (!\ram32x8_comp|mem~353_combout\ & (\ram32x8_comp|mem~311_combout\ & 
-- (!\ram32x8_comp|mem~290_combout\ & !\ram32x8_comp|mem~332_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~311_combout\,
	datab => \ram32x8_comp|mem~353_combout\,
	datac => \ram32x8_comp|mem~290_combout\,
	datad => \ram32x8_comp|mem~332_combout\,
	combout => \rom_7_seg_0|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y33_N28
\rom_7_seg_0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_0|Mux1~0_combout\ = (\ram32x8_comp|mem~311_combout\ & ((\ram32x8_comp|mem~290_combout\ & (\ram32x8_comp|mem~353_combout\)) # (!\ram32x8_comp|mem~290_combout\ & ((\ram32x8_comp|mem~332_combout\))))) # (!\ram32x8_comp|mem~311_combout\ & 
-- (\ram32x8_comp|mem~332_combout\ & (\ram32x8_comp|mem~353_combout\ $ (\ram32x8_comp|mem~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~311_combout\,
	datab => \ram32x8_comp|mem~353_combout\,
	datac => \ram32x8_comp|mem~290_combout\,
	datad => \ram32x8_comp|mem~332_combout\,
	combout => \rom_7_seg_0|Mux1~0_combout\);

-- Location: LCCOMB_X112_Y33_N22
\rom_7_seg_0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_0|Mux0~0_combout\ = (\ram32x8_comp|mem~353_combout\ & (\ram32x8_comp|mem~290_combout\ & (\ram32x8_comp|mem~311_combout\ $ (\ram32x8_comp|mem~332_combout\)))) # (!\ram32x8_comp|mem~353_combout\ & (!\ram32x8_comp|mem~311_combout\ & 
-- (\ram32x8_comp|mem~290_combout\ $ (\ram32x8_comp|mem~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~311_combout\,
	datab => \ram32x8_comp|mem~353_combout\,
	datac => \ram32x8_comp|mem~290_combout\,
	datad => \ram32x8_comp|mem~332_combout\,
	combout => \rom_7_seg_0|Mux0~0_combout\);

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

-- Location: FF_X112_Y26_N13
\ram32x8_comp|mem~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~131_q\);

-- Location: FF_X112_Y24_N7
\ram32x8_comp|mem~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~115_q\);

-- Location: LCCOMB_X112_Y24_N6
\ram32x8_comp|mem~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~392_combout\ = (\SW[12]~input_o\ & ((\ram32x8_comp|mem~131_q\) # ((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & (((\ram32x8_comp|mem~115_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~131_q\,
	datac => \ram32x8_comp|mem~115_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~392_combout\);

-- Location: FF_X112_Y26_N15
\ram32x8_comp|mem~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~139_q\);

-- Location: FF_X112_Y24_N21
\ram32x8_comp|mem~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~123_q\);

-- Location: LCCOMB_X112_Y26_N14
\ram32x8_comp|mem~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~393_combout\ = (\ram32x8_comp|mem~392_combout\ & (((\ram32x8_comp|mem~139_q\)) # (!\SW[11]~input_o\))) # (!\ram32x8_comp|mem~392_combout\ & (\SW[11]~input_o\ & ((\ram32x8_comp|mem~123_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~392_combout\,
	datab => \SW[11]~input_o\,
	datac => \ram32x8_comp|mem~139_q\,
	datad => \ram32x8_comp|mem~123_q\,
	combout => \ram32x8_comp|mem~393_combout\);

-- Location: FF_X111_Y29_N15
\ram32x8_comp|mem~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~51_q\);

-- Location: FF_X110_Y29_N25
\ram32x8_comp|mem~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~67_q\);

-- Location: LCCOMB_X111_Y29_N14
\ram32x8_comp|mem~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~387_combout\ = (\SW[12]~input_o\ & ((\SW[11]~input_o\) # ((\ram32x8_comp|mem~67_q\)))) # (!\SW[12]~input_o\ & (!\SW[11]~input_o\ & (\ram32x8_comp|mem~51_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \ram32x8_comp|mem~51_q\,
	datad => \ram32x8_comp|mem~67_q\,
	combout => \ram32x8_comp|mem~387_combout\);

-- Location: FF_X110_Y29_N11
\ram32x8_comp|mem~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~75_q\);

-- Location: FF_X111_Y29_N5
\ram32x8_comp|mem~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~59_q\);

-- Location: LCCOMB_X110_Y29_N10
\ram32x8_comp|mem~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~388_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~387_combout\ & (\ram32x8_comp|mem~75_q\)) # (!\ram32x8_comp|mem~387_combout\ & ((\ram32x8_comp|mem~59_q\))))) # (!\SW[11]~input_o\ & (\ram32x8_comp|mem~387_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~387_combout\,
	datac => \ram32x8_comp|mem~75_q\,
	datad => \ram32x8_comp|mem~59_q\,
	combout => \ram32x8_comp|mem~388_combout\);

-- Location: FF_X114_Y25_N21
\ram32x8_comp|mem~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~35_q\);

-- Location: FF_X113_Y25_N21
\ram32x8_comp|mem~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~27_q\);

-- Location: FF_X114_Y25_N31
\ram32x8_comp|mem~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~19_q\);

-- Location: LCCOMB_X114_Y25_N30
\ram32x8_comp|mem~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~389_combout\ = (\SW[12]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & (\ram32x8_comp|mem~27_q\)) # (!\SW[11]~input_o\ & ((\ram32x8_comp|mem~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~27_q\,
	datac => \ram32x8_comp|mem~19_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~389_combout\);

-- Location: FF_X113_Y25_N31
\ram32x8_comp|mem~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~43_q\);

-- Location: LCCOMB_X113_Y25_N30
\ram32x8_comp|mem~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~390_combout\ = (\ram32x8_comp|mem~389_combout\ & (((\ram32x8_comp|mem~43_q\) # (!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~389_combout\ & (\ram32x8_comp|mem~35_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~35_q\,
	datab => \ram32x8_comp|mem~389_combout\,
	datac => \ram32x8_comp|mem~43_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~390_combout\);

-- Location: LCCOMB_X110_Y29_N28
\ram32x8_comp|mem~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~391_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~388_combout\) # ((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~390_combout\ & !\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~388_combout\,
	datab => \ram32x8_comp|mem~390_combout\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~391_combout\);

-- Location: LCCOMB_X114_Y40_N14
\ram32x8_comp|mem~99feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~99feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \ram32x8_comp|mem~99feeder_combout\);

-- Location: FF_X114_Y40_N15
\ram32x8_comp|mem~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~99feeder_combout\,
	ena => \ram32x8_comp|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~99_q\);

-- Location: LCCOMB_X111_Y40_N28
\ram32x8_comp|mem~107feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~107feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \ram32x8_comp|mem~107feeder_combout\);

-- Location: FF_X111_Y40_N29
\ram32x8_comp|mem~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~107feeder_combout\,
	ena => \ram32x8_comp|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~107_q\);

-- Location: FF_X113_Y40_N25
\ram32x8_comp|mem~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~91_q\);

-- Location: FF_X114_Y36_N31
\ram32x8_comp|mem~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~83_q\);

-- Location: LCCOMB_X114_Y36_N30
\ram32x8_comp|mem~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~385_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~91_q\) # ((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & (((\ram32x8_comp|mem~83_q\ & !\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~91_q\,
	datac => \ram32x8_comp|mem~83_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~385_combout\);

-- Location: LCCOMB_X114_Y36_N24
\ram32x8_comp|mem~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~386_combout\ = (\ram32x8_comp|mem~385_combout\ & (((\ram32x8_comp|mem~107_q\) # (!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~385_combout\ & (\ram32x8_comp|mem~99_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~99_q\,
	datab => \ram32x8_comp|mem~107_q\,
	datac => \ram32x8_comp|mem~385_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~386_combout\);

-- Location: LCCOMB_X110_Y29_N14
\ram32x8_comp|mem~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~394_combout\ = (\ram32x8_comp|mem~391_combout\ & ((\ram32x8_comp|mem~393_combout\) # ((!\SW[14]~input_o\)))) # (!\ram32x8_comp|mem~391_combout\ & (((\ram32x8_comp|mem~386_combout\ & \SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~393_combout\,
	datab => \ram32x8_comp|mem~391_combout\,
	datac => \ram32x8_comp|mem~386_combout\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~394_combout\);

-- Location: FF_X114_Y28_N13
\ram32x8_comp|mem~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~203_q\);

-- Location: FF_X114_Y24_N7
\ram32x8_comp|mem~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~171_q\);

-- Location: LCCOMB_X114_Y24_N6
\ram32x8_comp|mem~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~382_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~203_q\) # ((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~171_q\ & !\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~203_q\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~171_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~382_combout\);

-- Location: FF_X114_Y24_N13
\ram32x8_comp|mem~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~235_q\);

-- Location: FF_X114_Y28_N31
\ram32x8_comp|mem~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~267_q\);

-- Location: LCCOMB_X114_Y28_N30
\ram32x8_comp|mem~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~383_combout\ = (\ram32x8_comp|mem~382_combout\ & (((\ram32x8_comp|mem~267_q\) # (!\SW[14]~input_o\)))) # (!\ram32x8_comp|mem~382_combout\ & (\ram32x8_comp|mem~235_q\ & ((\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~382_combout\,
	datab => \ram32x8_comp|mem~235_q\,
	datac => \ram32x8_comp|mem~267_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~383_combout\);

-- Location: FF_X111_Y32_N13
\ram32x8_comp|mem~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~179_q\);

-- Location: FF_X112_Y32_N21
\ram32x8_comp|mem~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~211_q\);

-- Location: FF_X111_Y32_N7
\ram32x8_comp|mem~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~147_q\);

-- Location: LCCOMB_X111_Y32_N6
\ram32x8_comp|mem~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~379_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & (\ram32x8_comp|mem~211_q\)) # (!\SW[14]~input_o\ & ((\ram32x8_comp|mem~147_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~211_q\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~147_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~379_combout\);

-- Location: FF_X112_Y32_N23
\ram32x8_comp|mem~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~243_q\);

-- Location: LCCOMB_X112_Y32_N22
\ram32x8_comp|mem~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~380_combout\ = (\ram32x8_comp|mem~379_combout\ & (((\ram32x8_comp|mem~243_q\) # (!\SW[13]~input_o\)))) # (!\ram32x8_comp|mem~379_combout\ & (\ram32x8_comp|mem~179_q\ & ((\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~179_q\,
	datab => \ram32x8_comp|mem~379_combout\,
	datac => \ram32x8_comp|mem~243_q\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~380_combout\);

-- Location: LCCOMB_X114_Y38_N4
\ram32x8_comp|mem~219feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~219feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \ram32x8_comp|mem~219feeder_combout\);

-- Location: FF_X114_Y38_N5
\ram32x8_comp|mem~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~219feeder_combout\,
	ena => \ram32x8_comp|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~219_q\);

-- Location: FF_X113_Y34_N17
\ram32x8_comp|mem~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~251_q\);

-- Location: LCCOMB_X114_Y38_N22
\ram32x8_comp|mem~187feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~187feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \ram32x8_comp|mem~187feeder_combout\);

-- Location: FF_X114_Y38_N23
\ram32x8_comp|mem~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~187feeder_combout\,
	ena => \ram32x8_comp|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~187_q\);

-- Location: FF_X114_Y34_N23
\ram32x8_comp|mem~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~155_q\);

-- Location: LCCOMB_X114_Y34_N22
\ram32x8_comp|mem~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~377_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~187_q\) # ((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~155_q\ & !\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~187_q\,
	datac => \ram32x8_comp|mem~155_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~377_combout\);

-- Location: LCCOMB_X113_Y34_N16
\ram32x8_comp|mem~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~378_combout\ = (\SW[14]~input_o\ & ((\ram32x8_comp|mem~377_combout\ & ((\ram32x8_comp|mem~251_q\))) # (!\ram32x8_comp|mem~377_combout\ & (\ram32x8_comp|mem~219_q\)))) # (!\SW[14]~input_o\ & (((\ram32x8_comp|mem~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~219_q\,
	datab => \SW[14]~input_o\,
	datac => \ram32x8_comp|mem~251_q\,
	datad => \ram32x8_comp|mem~377_combout\,
	combout => \ram32x8_comp|mem~378_combout\);

-- Location: LCCOMB_X113_Y32_N16
\ram32x8_comp|mem~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~381_combout\ = (\SW[11]~input_o\ & (((\ram32x8_comp|mem~378_combout\) # (\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & (\ram32x8_comp|mem~380_combout\ & ((!\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~380_combout\,
	datac => \ram32x8_comp|mem~378_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~381_combout\);

-- Location: LCCOMB_X114_Y40_N4
\ram32x8_comp|mem~227feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~227feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \ram32x8_comp|mem~227feeder_combout\);

-- Location: FF_X114_Y40_N5
\ram32x8_comp|mem~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~227feeder_combout\,
	ena => \ram32x8_comp|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~227_q\);

-- Location: FF_X114_Y33_N3
\ram32x8_comp|mem~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~163_q\);

-- Location: LCCOMB_X114_Y33_N2
\ram32x8_comp|mem~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~375_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & (\ram32x8_comp|mem~227_q\)) # (!\SW[14]~input_o\ & ((\ram32x8_comp|mem~163_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~227_q\,
	datac => \ram32x8_comp|mem~163_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~375_combout\);

-- Location: LCCOMB_X111_Y40_N18
\ram32x8_comp|mem~195feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~195feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \ram32x8_comp|mem~195feeder_combout\);

-- Location: FF_X111_Y40_N19
\ram32x8_comp|mem~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~195feeder_combout\,
	ena => \ram32x8_comp|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~195_q\);

-- Location: FF_X114_Y37_N1
\ram32x8_comp|mem~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~259_q\);

-- Location: LCCOMB_X114_Y37_N0
\ram32x8_comp|mem~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~376_combout\ = (\ram32x8_comp|mem~375_combout\ & (((\ram32x8_comp|mem~259_q\) # (!\SW[13]~input_o\)))) # (!\ram32x8_comp|mem~375_combout\ & (\ram32x8_comp|mem~195_q\ & ((\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~375_combout\,
	datab => \ram32x8_comp|mem~195_q\,
	datac => \ram32x8_comp|mem~259_q\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~376_combout\);

-- Location: LCCOMB_X113_Y32_N26
\ram32x8_comp|mem~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~384_combout\ = (\ram32x8_comp|mem~381_combout\ & ((\ram32x8_comp|mem~383_combout\) # ((!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~381_combout\ & (((\ram32x8_comp|mem~376_combout\ & \SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~383_combout\,
	datab => \ram32x8_comp|mem~381_combout\,
	datac => \ram32x8_comp|mem~376_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~384_combout\);

-- Location: LCCOMB_X113_Y29_N30
\ram32x8_comp|mem~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~395_combout\ = (\SW[15]~input_o\ & ((\ram32x8_comp|mem~384_combout\))) # (!\SW[15]~input_o\ & (\ram32x8_comp|mem~394_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \ram32x8_comp|mem~394_combout\,
	datad => \ram32x8_comp|mem~384_combout\,
	combout => \ram32x8_comp|mem~395_combout\);

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

-- Location: FF_X111_Y29_N19
\ram32x8_comp|mem~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~52_q\);

-- Location: FF_X111_Y29_N1
\ram32x8_comp|mem~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~60_q\);

-- Location: LCCOMB_X111_Y29_N18
\ram32x8_comp|mem~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~406_combout\ = (\SW[12]~input_o\ & (\SW[11]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & ((\ram32x8_comp|mem~60_q\))) # (!\SW[11]~input_o\ & (\ram32x8_comp|mem~52_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \ram32x8_comp|mem~52_q\,
	datad => \ram32x8_comp|mem~60_q\,
	combout => \ram32x8_comp|mem~406_combout\);

-- Location: FF_X112_Y29_N27
\ram32x8_comp|mem~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~76_q\);

-- Location: FF_X112_Y29_N1
\ram32x8_comp|mem~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~68_q\);

-- Location: LCCOMB_X112_Y29_N26
\ram32x8_comp|mem~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~407_combout\ = (\SW[12]~input_o\ & ((\ram32x8_comp|mem~406_combout\ & (\ram32x8_comp|mem~76_q\)) # (!\ram32x8_comp|mem~406_combout\ & ((\ram32x8_comp|mem~68_q\))))) # (!\SW[12]~input_o\ & (\ram32x8_comp|mem~406_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~406_combout\,
	datac => \ram32x8_comp|mem~76_q\,
	datad => \ram32x8_comp|mem~68_q\,
	combout => \ram32x8_comp|mem~407_combout\);

-- Location: LCCOMB_X114_Y40_N10
\ram32x8_comp|mem~100feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~100feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \ram32x8_comp|mem~100feeder_combout\);

-- Location: FF_X114_Y40_N11
\ram32x8_comp|mem~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~100feeder_combout\,
	ena => \ram32x8_comp|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~100_q\);

-- Location: FF_X114_Y36_N13
\ram32x8_comp|mem~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~84_q\);

-- Location: LCCOMB_X114_Y36_N12
\ram32x8_comp|mem~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~408_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & (\ram32x8_comp|mem~100_q\)) # (!\SW[12]~input_o\ & ((\ram32x8_comp|mem~84_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~100_q\,
	datac => \ram32x8_comp|mem~84_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~408_combout\);

-- Location: FF_X112_Y36_N25
\ram32x8_comp|mem~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~108_q\);

-- Location: LCCOMB_X113_Y40_N10
\ram32x8_comp|mem~92feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~92feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \ram32x8_comp|mem~92feeder_combout\);

-- Location: FF_X113_Y40_N11
\ram32x8_comp|mem~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~92feeder_combout\,
	ena => \ram32x8_comp|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~92_q\);

-- Location: LCCOMB_X112_Y36_N24
\ram32x8_comp|mem~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~409_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~408_combout\ & (\ram32x8_comp|mem~108_q\)) # (!\ram32x8_comp|mem~408_combout\ & ((\ram32x8_comp|mem~92_q\))))) # (!\SW[11]~input_o\ & (\ram32x8_comp|mem~408_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~408_combout\,
	datac => \ram32x8_comp|mem~108_q\,
	datad => \ram32x8_comp|mem~92_q\,
	combout => \ram32x8_comp|mem~409_combout\);

-- Location: FF_X114_Y25_N1
\ram32x8_comp|mem~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~36_q\);

-- Location: FF_X114_Y25_N11
\ram32x8_comp|mem~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~20_q\);

-- Location: LCCOMB_X114_Y25_N10
\ram32x8_comp|mem~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~410_combout\ = (\SW[12]~input_o\ & ((\ram32x8_comp|mem~36_q\) # ((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & (((\ram32x8_comp|mem~20_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~36_q\,
	datac => \ram32x8_comp|mem~20_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~410_combout\);

-- Location: FF_X113_Y25_N19
\ram32x8_comp|mem~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~44_q\);

-- Location: FF_X113_Y25_N17
\ram32x8_comp|mem~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~28_q\);

-- Location: LCCOMB_X113_Y25_N18
\ram32x8_comp|mem~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~411_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~410_combout\ & (\ram32x8_comp|mem~44_q\)) # (!\ram32x8_comp|mem~410_combout\ & ((\ram32x8_comp|mem~28_q\))))) # (!\SW[11]~input_o\ & (\ram32x8_comp|mem~410_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~410_combout\,
	datac => \ram32x8_comp|mem~44_q\,
	datad => \ram32x8_comp|mem~28_q\,
	combout => \ram32x8_comp|mem~411_combout\);

-- Location: LCCOMB_X112_Y29_N28
\ram32x8_comp|mem~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~412_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & (\ram32x8_comp|mem~409_combout\)) # (!\SW[14]~input_o\ & ((\ram32x8_comp|mem~411_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~409_combout\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~411_combout\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~412_combout\);

-- Location: FF_X112_Y24_N1
\ram32x8_comp|mem~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~124_q\);

-- Location: FF_X112_Y24_N27
\ram32x8_comp|mem~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~116_q\);

-- Location: LCCOMB_X112_Y24_N26
\ram32x8_comp|mem~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~413_combout\ = (\SW[12]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & (\ram32x8_comp|mem~124_q\)) # (!\SW[11]~input_o\ & ((\ram32x8_comp|mem~116_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~124_q\,
	datac => \ram32x8_comp|mem~116_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~413_combout\);

-- Location: FF_X112_Y26_N17
\ram32x8_comp|mem~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~132_q\);

-- Location: FF_X112_Y26_N3
\ram32x8_comp|mem~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~140_q\);

-- Location: LCCOMB_X112_Y26_N2
\ram32x8_comp|mem~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~414_combout\ = (\ram32x8_comp|mem~413_combout\ & (((\ram32x8_comp|mem~140_q\) # (!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~413_combout\ & (\ram32x8_comp|mem~132_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~413_combout\,
	datab => \ram32x8_comp|mem~132_q\,
	datac => \ram32x8_comp|mem~140_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~414_combout\);

-- Location: LCCOMB_X112_Y29_N14
\ram32x8_comp|mem~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~415_combout\ = (\ram32x8_comp|mem~412_combout\ & (((\ram32x8_comp|mem~414_combout\) # (!\SW[13]~input_o\)))) # (!\ram32x8_comp|mem~412_combout\ & (\ram32x8_comp|mem~407_combout\ & ((\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~407_combout\,
	datab => \ram32x8_comp|mem~412_combout\,
	datac => \ram32x8_comp|mem~414_combout\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~415_combout\);

-- Location: FF_X114_Y38_N9
\ram32x8_comp|mem~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~188_q\);

-- Location: FF_X114_Y36_N19
\ram32x8_comp|mem~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~252_q\);

-- Location: FF_X114_Y38_N11
\ram32x8_comp|mem~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~220_q\);

-- Location: FF_X114_Y34_N25
\ram32x8_comp|mem~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~156_q\);

-- Location: LCCOMB_X114_Y34_N24
\ram32x8_comp|mem~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~396_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & (\ram32x8_comp|mem~220_q\)) # (!\SW[14]~input_o\ & ((\ram32x8_comp|mem~156_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~220_q\,
	datac => \ram32x8_comp|mem~156_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~396_combout\);

-- Location: LCCOMB_X114_Y36_N18
\ram32x8_comp|mem~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~397_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~396_combout\ & ((\ram32x8_comp|mem~252_q\))) # (!\ram32x8_comp|mem~396_combout\ & (\ram32x8_comp|mem~188_q\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~188_q\,
	datac => \ram32x8_comp|mem~252_q\,
	datad => \ram32x8_comp|mem~396_combout\,
	combout => \ram32x8_comp|mem~397_combout\);

-- Location: FF_X114_Y24_N11
\ram32x8_comp|mem~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~172_q\);

-- Location: FF_X114_Y24_N17
\ram32x8_comp|mem~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~236_q\);

-- Location: LCCOMB_X114_Y24_N10
\ram32x8_comp|mem~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~403_combout\ = (\SW[14]~input_o\ & ((\SW[13]~input_o\) # ((\ram32x8_comp|mem~236_q\)))) # (!\SW[14]~input_o\ & (!\SW[13]~input_o\ & (\ram32x8_comp|mem~172_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~172_q\,
	datad => \ram32x8_comp|mem~236_q\,
	combout => \ram32x8_comp|mem~403_combout\);

-- Location: FF_X114_Y28_N1
\ram32x8_comp|mem~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~204_q\);

-- Location: FF_X114_Y28_N11
\ram32x8_comp|mem~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~268_q\);

-- Location: LCCOMB_X114_Y28_N10
\ram32x8_comp|mem~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~404_combout\ = (\ram32x8_comp|mem~403_combout\ & (((\ram32x8_comp|mem~268_q\) # (!\SW[13]~input_o\)))) # (!\ram32x8_comp|mem~403_combout\ & (\ram32x8_comp|mem~204_q\ & ((\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~403_combout\,
	datab => \ram32x8_comp|mem~204_q\,
	datac => \ram32x8_comp|mem~268_q\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~404_combout\);

-- Location: FF_X111_Y32_N3
\ram32x8_comp|mem~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~148_q\);

-- Location: FF_X111_Y32_N1
\ram32x8_comp|mem~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~180_q\);

-- Location: LCCOMB_X111_Y32_N2
\ram32x8_comp|mem~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~400_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\)) # (!\SW[14]~input_o\ & ((\SW[13]~input_o\ & ((\ram32x8_comp|mem~180_q\))) # (!\SW[13]~input_o\ & (\ram32x8_comp|mem~148_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~148_q\,
	datad => \ram32x8_comp|mem~180_q\,
	combout => \ram32x8_comp|mem~400_combout\);

-- Location: FF_X112_Y32_N19
\ram32x8_comp|mem~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~244_q\);

-- Location: LCCOMB_X112_Y32_N16
\ram32x8_comp|mem~212feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~212feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \ram32x8_comp|mem~212feeder_combout\);

-- Location: FF_X112_Y32_N17
\ram32x8_comp|mem~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~212feeder_combout\,
	ena => \ram32x8_comp|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~212_q\);

-- Location: LCCOMB_X112_Y32_N18
\ram32x8_comp|mem~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~401_combout\ = (\ram32x8_comp|mem~400_combout\ & (((\ram32x8_comp|mem~244_q\)) # (!\SW[14]~input_o\))) # (!\ram32x8_comp|mem~400_combout\ & (\SW[14]~input_o\ & ((\ram32x8_comp|mem~212_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~400_combout\,
	datab => \SW[14]~input_o\,
	datac => \ram32x8_comp|mem~244_q\,
	datad => \ram32x8_comp|mem~212_q\,
	combout => \ram32x8_comp|mem~401_combout\);

-- Location: LCCOMB_X114_Y40_N0
\ram32x8_comp|mem~228feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~228feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \ram32x8_comp|mem~228feeder_combout\);

-- Location: FF_X114_Y40_N1
\ram32x8_comp|mem~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~228feeder_combout\,
	ena => \ram32x8_comp|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~228_q\);

-- Location: FF_X114_Y33_N13
\ram32x8_comp|mem~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~196_q\);

-- Location: FF_X114_Y33_N23
\ram32x8_comp|mem~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~164_q\);

-- Location: LCCOMB_X114_Y33_N22
\ram32x8_comp|mem~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~398_combout\ = (\SW[14]~input_o\ & (((\SW[13]~input_o\)))) # (!\SW[14]~input_o\ & ((\SW[13]~input_o\ & (\ram32x8_comp|mem~196_q\)) # (!\SW[13]~input_o\ & ((\ram32x8_comp|mem~164_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~196_q\,
	datab => \SW[14]~input_o\,
	datac => \ram32x8_comp|mem~164_q\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~398_combout\);

-- Location: LCCOMB_X114_Y37_N10
\ram32x8_comp|mem~260feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~260feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \ram32x8_comp|mem~260feeder_combout\);

-- Location: FF_X114_Y37_N11
\ram32x8_comp|mem~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~260feeder_combout\,
	ena => \ram32x8_comp|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~260_q\);

-- Location: LCCOMB_X113_Y33_N30
\ram32x8_comp|mem~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~399_combout\ = (\ram32x8_comp|mem~398_combout\ & (((\ram32x8_comp|mem~260_q\) # (!\SW[14]~input_o\)))) # (!\ram32x8_comp|mem~398_combout\ & (\ram32x8_comp|mem~228_q\ & (\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~228_q\,
	datab => \ram32x8_comp|mem~398_combout\,
	datac => \SW[14]~input_o\,
	datad => \ram32x8_comp|mem~260_q\,
	combout => \ram32x8_comp|mem~399_combout\);

-- Location: LCCOMB_X113_Y32_N28
\ram32x8_comp|mem~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~402_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & ((\ram32x8_comp|mem~399_combout\))) # (!\SW[12]~input_o\ & (\ram32x8_comp|mem~401_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~401_combout\,
	datac => \ram32x8_comp|mem~399_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~402_combout\);

-- Location: LCCOMB_X113_Y32_N22
\ram32x8_comp|mem~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~405_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~402_combout\ & ((\ram32x8_comp|mem~404_combout\))) # (!\ram32x8_comp|mem~402_combout\ & (\ram32x8_comp|mem~397_combout\)))) # (!\SW[11]~input_o\ & 
-- (((\ram32x8_comp|mem~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~397_combout\,
	datab => \ram32x8_comp|mem~404_combout\,
	datac => \SW[11]~input_o\,
	datad => \ram32x8_comp|mem~402_combout\,
	combout => \ram32x8_comp|mem~405_combout\);

-- Location: LCCOMB_X113_Y29_N16
\ram32x8_comp|mem~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~416_combout\ = (\SW[15]~input_o\ & ((\ram32x8_comp|mem~405_combout\))) # (!\SW[15]~input_o\ & (\ram32x8_comp|mem~415_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~415_combout\,
	datab => \ram32x8_comp|mem~405_combout\,
	datad => \SW[15]~input_o\,
	combout => \ram32x8_comp|mem~416_combout\);

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

-- Location: FF_X114_Y37_N21
\ram32x8_comp|mem~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~261_q\);

-- Location: FF_X114_Y33_N9
\ram32x8_comp|mem~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~197_q\);

-- Location: FF_X114_Y40_N29
\ram32x8_comp|mem~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~229_q\);

-- Location: FF_X114_Y33_N19
\ram32x8_comp|mem~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~165_q\);

-- Location: LCCOMB_X114_Y33_N18
\ram32x8_comp|mem~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~417_combout\ = (\SW[14]~input_o\ & ((\ram32x8_comp|mem~229_q\) # ((\SW[13]~input_o\)))) # (!\SW[14]~input_o\ & (((\ram32x8_comp|mem~165_q\ & !\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~229_q\,
	datab => \SW[14]~input_o\,
	datac => \ram32x8_comp|mem~165_q\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~417_combout\);

-- Location: LCCOMB_X114_Y33_N8
\ram32x8_comp|mem~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~418_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~417_combout\ & (\ram32x8_comp|mem~261_q\)) # (!\ram32x8_comp|mem~417_combout\ & ((\ram32x8_comp|mem~197_q\))))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~261_q\,
	datac => \ram32x8_comp|mem~197_q\,
	datad => \ram32x8_comp|mem~417_combout\,
	combout => \ram32x8_comp|mem~418_combout\);

-- Location: FF_X114_Y24_N5
\ram32x8_comp|mem~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~237_q\);

-- Location: FF_X114_Y28_N29
\ram32x8_comp|mem~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~205_q\);

-- Location: FF_X114_Y24_N23
\ram32x8_comp|mem~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~173_q\);

-- Location: LCCOMB_X114_Y24_N22
\ram32x8_comp|mem~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~424_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~205_q\) # ((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~173_q\ & !\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~205_q\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~173_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~424_combout\);

-- Location: FF_X114_Y28_N15
\ram32x8_comp|mem~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~269_q\);

-- Location: LCCOMB_X114_Y28_N14
\ram32x8_comp|mem~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~425_combout\ = (\ram32x8_comp|mem~424_combout\ & (((\ram32x8_comp|mem~269_q\) # (!\SW[14]~input_o\)))) # (!\ram32x8_comp|mem~424_combout\ & (\ram32x8_comp|mem~237_q\ & ((\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~237_q\,
	datab => \ram32x8_comp|mem~424_combout\,
	datac => \ram32x8_comp|mem~269_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~425_combout\);

-- Location: LCCOMB_X113_Y40_N12
\ram32x8_comp|mem~189feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~189feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \ram32x8_comp|mem~189feeder_combout\);

-- Location: FF_X113_Y40_N13
\ram32x8_comp|mem~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~189feeder_combout\,
	ena => \ram32x8_comp|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~189_q\);

-- Location: FF_X114_Y34_N11
\ram32x8_comp|mem~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~157_q\);

-- Location: LCCOMB_X114_Y34_N10
\ram32x8_comp|mem~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~419_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~189_q\) # ((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~157_q\ & !\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~189_q\,
	datac => \ram32x8_comp|mem~157_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~419_combout\);

-- Location: FF_X114_Y38_N13
\ram32x8_comp|mem~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~221_q\);

-- Location: FF_X114_Y34_N21
\ram32x8_comp|mem~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~253_q\);

-- Location: LCCOMB_X114_Y34_N20
\ram32x8_comp|mem~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~420_combout\ = (\ram32x8_comp|mem~419_combout\ & (((\ram32x8_comp|mem~253_q\) # (!\SW[14]~input_o\)))) # (!\ram32x8_comp|mem~419_combout\ & (\ram32x8_comp|mem~221_q\ & ((\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~419_combout\,
	datab => \ram32x8_comp|mem~221_q\,
	datac => \ram32x8_comp|mem~253_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~420_combout\);

-- Location: FF_X111_Y32_N15
\ram32x8_comp|mem~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~149_q\);

-- Location: FF_X112_Y32_N29
\ram32x8_comp|mem~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~213_q\);

-- Location: LCCOMB_X111_Y32_N14
\ram32x8_comp|mem~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~421_combout\ = (\SW[14]~input_o\ & ((\SW[13]~input_o\) # ((\ram32x8_comp|mem~213_q\)))) # (!\SW[14]~input_o\ & (!\SW[13]~input_o\ & (\ram32x8_comp|mem~149_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~149_q\,
	datad => \ram32x8_comp|mem~213_q\,
	combout => \ram32x8_comp|mem~421_combout\);

-- Location: FF_X111_Y32_N21
\ram32x8_comp|mem~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~181_q\);

-- Location: FF_X112_Y32_N31
\ram32x8_comp|mem~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~245_q\);

-- Location: LCCOMB_X112_Y32_N30
\ram32x8_comp|mem~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~422_combout\ = (\ram32x8_comp|mem~421_combout\ & (((\ram32x8_comp|mem~245_q\) # (!\SW[13]~input_o\)))) # (!\ram32x8_comp|mem~421_combout\ & (\ram32x8_comp|mem~181_q\ & ((\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~421_combout\,
	datab => \ram32x8_comp|mem~181_q\,
	datac => \ram32x8_comp|mem~245_q\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~422_combout\);

-- Location: LCCOMB_X113_Y32_N0
\ram32x8_comp|mem~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~423_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~420_combout\) # ((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & (((\ram32x8_comp|mem~422_combout\ & !\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~420_combout\,
	datab => \ram32x8_comp|mem~422_combout\,
	datac => \SW[11]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~423_combout\);

-- Location: LCCOMB_X113_Y32_N18
\ram32x8_comp|mem~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~426_combout\ = (\ram32x8_comp|mem~423_combout\ & (((\ram32x8_comp|mem~425_combout\) # (!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~423_combout\ & (\ram32x8_comp|mem~418_combout\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~418_combout\,
	datab => \ram32x8_comp|mem~425_combout\,
	datac => \ram32x8_comp|mem~423_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~426_combout\);

-- Location: FF_X114_Y40_N31
\ram32x8_comp|mem~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~101_q\);

-- Location: LCCOMB_X113_Y40_N6
\ram32x8_comp|mem~93feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~93feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \ram32x8_comp|mem~93feeder_combout\);

-- Location: FF_X113_Y40_N7
\ram32x8_comp|mem~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~93feeder_combout\,
	ena => \ram32x8_comp|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~93_q\);

-- Location: FF_X114_Y36_N23
\ram32x8_comp|mem~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~85_q\);

-- Location: LCCOMB_X114_Y36_N22
\ram32x8_comp|mem~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~427_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~93_q\) # ((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & (((\ram32x8_comp|mem~85_q\ & !\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~93_q\,
	datac => \ram32x8_comp|mem~85_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~427_combout\);

-- Location: FF_X112_Y36_N27
\ram32x8_comp|mem~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~109_q\);

-- Location: LCCOMB_X112_Y36_N26
\ram32x8_comp|mem~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~428_combout\ = (\ram32x8_comp|mem~427_combout\ & (((\ram32x8_comp|mem~109_q\) # (!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~427_combout\ & (\ram32x8_comp|mem~101_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~101_q\,
	datab => \ram32x8_comp|mem~427_combout\,
	datac => \ram32x8_comp|mem~109_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~428_combout\);

-- Location: FF_X113_Y25_N13
\ram32x8_comp|mem~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~29_q\);

-- Location: FF_X114_Y25_N7
\ram32x8_comp|mem~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~21_q\);

-- Location: LCCOMB_X114_Y25_N6
\ram32x8_comp|mem~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~431_combout\ = (\SW[12]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & (\ram32x8_comp|mem~29_q\)) # (!\SW[11]~input_o\ & ((\ram32x8_comp|mem~21_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~29_q\,
	datac => \ram32x8_comp|mem~21_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~431_combout\);

-- Location: FF_X113_Y25_N15
\ram32x8_comp|mem~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~45_q\);

-- Location: FF_X114_Y25_N13
\ram32x8_comp|mem~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~37_q\);

-- Location: LCCOMB_X113_Y25_N14
\ram32x8_comp|mem~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~432_combout\ = (\ram32x8_comp|mem~431_combout\ & (((\ram32x8_comp|mem~45_q\)) # (!\SW[12]~input_o\))) # (!\ram32x8_comp|mem~431_combout\ & (\SW[12]~input_o\ & ((\ram32x8_comp|mem~37_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~431_combout\,
	datab => \SW[12]~input_o\,
	datac => \ram32x8_comp|mem~45_q\,
	datad => \ram32x8_comp|mem~37_q\,
	combout => \ram32x8_comp|mem~432_combout\);

-- Location: FF_X111_Y29_N29
\ram32x8_comp|mem~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~61_q\);

-- Location: FF_X110_Y29_N19
\ram32x8_comp|mem~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~77_q\);

-- Location: LCCOMB_X110_Y29_N8
\ram32x8_comp|mem~69feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~69feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \ram32x8_comp|mem~69feeder_combout\);

-- Location: FF_X110_Y29_N9
\ram32x8_comp|mem~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~69feeder_combout\,
	ena => \ram32x8_comp|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~69_q\);

-- Location: FF_X111_Y29_N7
\ram32x8_comp|mem~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~53_q\);

-- Location: LCCOMB_X111_Y29_N6
\ram32x8_comp|mem~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~429_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & (\ram32x8_comp|mem~69_q\)) # (!\SW[12]~input_o\ & ((\ram32x8_comp|mem~53_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~69_q\,
	datab => \SW[11]~input_o\,
	datac => \ram32x8_comp|mem~53_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~429_combout\);

-- Location: LCCOMB_X110_Y29_N18
\ram32x8_comp|mem~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~430_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~429_combout\ & ((\ram32x8_comp|mem~77_q\))) # (!\ram32x8_comp|mem~429_combout\ & (\ram32x8_comp|mem~61_q\)))) # (!\SW[11]~input_o\ & (((\ram32x8_comp|mem~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~61_q\,
	datac => \ram32x8_comp|mem~77_q\,
	datad => \ram32x8_comp|mem~429_combout\,
	combout => \ram32x8_comp|mem~430_combout\);

-- Location: LCCOMB_X110_Y29_N20
\ram32x8_comp|mem~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~433_combout\ = (\SW[13]~input_o\ & (((\ram32x8_comp|mem~430_combout\) # (\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & (\ram32x8_comp|mem~432_combout\ & ((!\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~432_combout\,
	datab => \ram32x8_comp|mem~430_combout\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~433_combout\);

-- Location: FF_X112_Y26_N29
\ram32x8_comp|mem~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~133_q\);

-- Location: FF_X112_Y24_N31
\ram32x8_comp|mem~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~117_q\);

-- Location: LCCOMB_X112_Y24_N30
\ram32x8_comp|mem~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~434_combout\ = (\SW[12]~input_o\ & ((\ram32x8_comp|mem~133_q\) # ((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & (((\ram32x8_comp|mem~117_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~133_q\,
	datac => \ram32x8_comp|mem~117_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~434_combout\);

-- Location: FF_X112_Y26_N31
\ram32x8_comp|mem~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~141_q\);

-- Location: FF_X112_Y24_N5
\ram32x8_comp|mem~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~125_q\);

-- Location: LCCOMB_X112_Y26_N30
\ram32x8_comp|mem~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~435_combout\ = (\ram32x8_comp|mem~434_combout\ & (((\ram32x8_comp|mem~141_q\)) # (!\SW[11]~input_o\))) # (!\ram32x8_comp|mem~434_combout\ & (\SW[11]~input_o\ & ((\ram32x8_comp|mem~125_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~434_combout\,
	datab => \SW[11]~input_o\,
	datac => \ram32x8_comp|mem~141_q\,
	datad => \ram32x8_comp|mem~125_q\,
	combout => \ram32x8_comp|mem~435_combout\);

-- Location: LCCOMB_X110_Y29_N30
\ram32x8_comp|mem~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~436_combout\ = (\ram32x8_comp|mem~433_combout\ & (((\ram32x8_comp|mem~435_combout\) # (!\SW[14]~input_o\)))) # (!\ram32x8_comp|mem~433_combout\ & (\ram32x8_comp|mem~428_combout\ & ((\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~428_combout\,
	datab => \ram32x8_comp|mem~433_combout\,
	datac => \ram32x8_comp|mem~435_combout\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~436_combout\);

-- Location: LCCOMB_X113_Y29_N24
\ram32x8_comp|mem~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~437_combout\ = (\SW[15]~input_o\ & (\ram32x8_comp|mem~426_combout\)) # (!\SW[15]~input_o\ & ((\ram32x8_comp|mem~436_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~426_combout\,
	datab => \ram32x8_comp|mem~436_combout\,
	datad => \SW[15]~input_o\,
	combout => \ram32x8_comp|mem~437_combout\);

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

-- Location: FF_X111_Y29_N3
\ram32x8_comp|mem~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~50_q\);

-- Location: FF_X111_Y29_N25
\ram32x8_comp|mem~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~58_q\);

-- Location: LCCOMB_X111_Y29_N2
\ram32x8_comp|mem~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~364_combout\ = (\SW[12]~input_o\ & (\SW[11]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & ((\ram32x8_comp|mem~58_q\))) # (!\SW[11]~input_o\ & (\ram32x8_comp|mem~50_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \ram32x8_comp|mem~50_q\,
	datad => \ram32x8_comp|mem~58_q\,
	combout => \ram32x8_comp|mem~364_combout\);

-- Location: LCCOMB_X112_Y29_N16
\ram32x8_comp|mem~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~66feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram32x8_comp|mem~66feeder_combout\);

-- Location: FF_X112_Y29_N17
\ram32x8_comp|mem~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~66feeder_combout\,
	ena => \ram32x8_comp|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~66_q\);

-- Location: FF_X112_Y29_N11
\ram32x8_comp|mem~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~74_q\);

-- Location: LCCOMB_X112_Y29_N10
\ram32x8_comp|mem~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~365_combout\ = (\ram32x8_comp|mem~364_combout\ & (((\ram32x8_comp|mem~74_q\) # (!\SW[12]~input_o\)))) # (!\ram32x8_comp|mem~364_combout\ & (\ram32x8_comp|mem~66_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~364_combout\,
	datab => \ram32x8_comp|mem~66_q\,
	datac => \ram32x8_comp|mem~74_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~365_combout\);

-- Location: FF_X113_Y25_N1
\ram32x8_comp|mem~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~26_q\);

-- Location: FF_X113_Y25_N11
\ram32x8_comp|mem~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~42_q\);

-- Location: FF_X114_Y25_N17
\ram32x8_comp|mem~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~34_q\);

-- Location: FF_X114_Y25_N3
\ram32x8_comp|mem~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~18_q\);

-- Location: LCCOMB_X114_Y25_N2
\ram32x8_comp|mem~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~368_combout\ = (\SW[12]~input_o\ & ((\ram32x8_comp|mem~34_q\) # ((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & (((\ram32x8_comp|mem~18_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~34_q\,
	datac => \ram32x8_comp|mem~18_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~368_combout\);

-- Location: LCCOMB_X113_Y25_N10
\ram32x8_comp|mem~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~369_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~368_combout\ & ((\ram32x8_comp|mem~42_q\))) # (!\ram32x8_comp|mem~368_combout\ & (\ram32x8_comp|mem~26_q\)))) # (!\SW[11]~input_o\ & (((\ram32x8_comp|mem~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~26_q\,
	datac => \ram32x8_comp|mem~42_q\,
	datad => \ram32x8_comp|mem~368_combout\,
	combout => \ram32x8_comp|mem~369_combout\);

-- Location: LCCOMB_X114_Y40_N2
\ram32x8_comp|mem~98feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~98feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram32x8_comp|mem~98feeder_combout\);

-- Location: FF_X114_Y40_N3
\ram32x8_comp|mem~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~98feeder_combout\,
	ena => \ram32x8_comp|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~98_q\);

-- Location: FF_X114_Y36_N5
\ram32x8_comp|mem~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~82_q\);

-- Location: LCCOMB_X114_Y36_N4
\ram32x8_comp|mem~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~366_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & (\ram32x8_comp|mem~98_q\)) # (!\SW[12]~input_o\ & ((\ram32x8_comp|mem~82_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~98_q\,
	datac => \ram32x8_comp|mem~82_q\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~366_combout\);

-- Location: FF_X112_Y36_N15
\ram32x8_comp|mem~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~106_q\);

-- Location: FF_X112_Y36_N13
\ram32x8_comp|mem~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~90_q\);

-- Location: LCCOMB_X112_Y36_N14
\ram32x8_comp|mem~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~367_combout\ = (\SW[11]~input_o\ & ((\ram32x8_comp|mem~366_combout\ & (\ram32x8_comp|mem~106_q\)) # (!\ram32x8_comp|mem~366_combout\ & ((\ram32x8_comp|mem~90_q\))))) # (!\SW[11]~input_o\ & (\ram32x8_comp|mem~366_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram32x8_comp|mem~366_combout\,
	datac => \ram32x8_comp|mem~106_q\,
	datad => \ram32x8_comp|mem~90_q\,
	combout => \ram32x8_comp|mem~367_combout\);

-- Location: LCCOMB_X112_Y29_N20
\ram32x8_comp|mem~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~370_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & ((\ram32x8_comp|mem~367_combout\))) # (!\SW[14]~input_o\ & (\ram32x8_comp|mem~369_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~369_combout\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~367_combout\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~370_combout\);

-- Location: FF_X112_Y26_N9
\ram32x8_comp|mem~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~130_q\);

-- Location: FF_X112_Y26_N11
\ram32x8_comp|mem~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~138_q\);

-- Location: LCCOMB_X112_Y24_N8
\ram32x8_comp|mem~122feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~122feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram32x8_comp|mem~122feeder_combout\);

-- Location: FF_X112_Y24_N9
\ram32x8_comp|mem~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~122feeder_combout\,
	ena => \ram32x8_comp|mem~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~122_q\);

-- Location: FF_X112_Y24_N3
\ram32x8_comp|mem~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~114_q\);

-- Location: LCCOMB_X112_Y24_N2
\ram32x8_comp|mem~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~371_combout\ = (\SW[12]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & (\ram32x8_comp|mem~122_q\)) # (!\SW[11]~input_o\ & ((\ram32x8_comp|mem~114_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~122_q\,
	datac => \ram32x8_comp|mem~114_q\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~371_combout\);

-- Location: LCCOMB_X112_Y26_N10
\ram32x8_comp|mem~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~372_combout\ = (\SW[12]~input_o\ & ((\ram32x8_comp|mem~371_combout\ & ((\ram32x8_comp|mem~138_q\))) # (!\ram32x8_comp|mem~371_combout\ & (\ram32x8_comp|mem~130_q\)))) # (!\SW[12]~input_o\ & (((\ram32x8_comp|mem~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram32x8_comp|mem~130_q\,
	datac => \ram32x8_comp|mem~138_q\,
	datad => \ram32x8_comp|mem~371_combout\,
	combout => \ram32x8_comp|mem~372_combout\);

-- Location: LCCOMB_X112_Y29_N6
\ram32x8_comp|mem~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~373_combout\ = (\ram32x8_comp|mem~370_combout\ & (((\ram32x8_comp|mem~372_combout\) # (!\SW[13]~input_o\)))) # (!\ram32x8_comp|mem~370_combout\ & (\ram32x8_comp|mem~365_combout\ & ((\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~365_combout\,
	datab => \ram32x8_comp|mem~370_combout\,
	datac => \ram32x8_comp|mem~372_combout\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~373_combout\);

-- Location: FF_X111_Y32_N9
\ram32x8_comp|mem~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~178_q\);

-- Location: FF_X111_Y32_N11
\ram32x8_comp|mem~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~146_q\);

-- Location: LCCOMB_X111_Y32_N10
\ram32x8_comp|mem~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~358_combout\ = (\SW[13]~input_o\ & ((\ram32x8_comp|mem~178_q\) # ((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & (((\ram32x8_comp|mem~146_q\ & !\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~178_q\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~146_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~358_combout\);

-- Location: FF_X112_Y32_N3
\ram32x8_comp|mem~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~242_q\);

-- Location: FF_X112_Y32_N1
\ram32x8_comp|mem~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~210_q\);

-- Location: LCCOMB_X112_Y32_N2
\ram32x8_comp|mem~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~359_combout\ = (\ram32x8_comp|mem~358_combout\ & (((\ram32x8_comp|mem~242_q\)) # (!\SW[14]~input_o\))) # (!\ram32x8_comp|mem~358_combout\ & (\SW[14]~input_o\ & ((\ram32x8_comp|mem~210_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~358_combout\,
	datab => \SW[14]~input_o\,
	datac => \ram32x8_comp|mem~242_q\,
	datad => \ram32x8_comp|mem~210_q\,
	combout => \ram32x8_comp|mem~359_combout\);

-- Location: LCCOMB_X114_Y40_N8
\ram32x8_comp|mem~226feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~226feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram32x8_comp|mem~226feeder_combout\);

-- Location: FF_X114_Y40_N9
\ram32x8_comp|mem~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~226feeder_combout\,
	ena => \ram32x8_comp|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~226_q\);

-- Location: LCCOMB_X114_Y33_N30
\ram32x8_comp|mem~194feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~194feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram32x8_comp|mem~194feeder_combout\);

-- Location: FF_X114_Y33_N31
\ram32x8_comp|mem~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~194feeder_combout\,
	ena => \ram32x8_comp|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~194_q\);

-- Location: FF_X114_Y33_N17
\ram32x8_comp|mem~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~162_q\);

-- Location: LCCOMB_X114_Y33_N16
\ram32x8_comp|mem~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~356_combout\ = (\SW[14]~input_o\ & (((\SW[13]~input_o\)))) # (!\SW[14]~input_o\ & ((\SW[13]~input_o\ & (\ram32x8_comp|mem~194_q\)) # (!\SW[13]~input_o\ & ((\ram32x8_comp|mem~162_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~194_q\,
	datab => \SW[14]~input_o\,
	datac => \ram32x8_comp|mem~162_q\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~356_combout\);

-- Location: LCCOMB_X113_Y38_N18
\ram32x8_comp|mem~258feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~258feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram32x8_comp|mem~258feeder_combout\);

-- Location: FF_X113_Y38_N19
\ram32x8_comp|mem~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~258feeder_combout\,
	ena => \ram32x8_comp|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~258_q\);

-- Location: LCCOMB_X113_Y33_N28
\ram32x8_comp|mem~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~357_combout\ = (\ram32x8_comp|mem~356_combout\ & (((\ram32x8_comp|mem~258_q\) # (!\SW[14]~input_o\)))) # (!\ram32x8_comp|mem~356_combout\ & (\ram32x8_comp|mem~226_q\ & (\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~226_q\,
	datab => \ram32x8_comp|mem~356_combout\,
	datac => \SW[14]~input_o\,
	datad => \ram32x8_comp|mem~258_q\,
	combout => \ram32x8_comp|mem~357_combout\);

-- Location: LCCOMB_X113_Y32_N12
\ram32x8_comp|mem~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~360_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & ((\ram32x8_comp|mem~357_combout\))) # (!\SW[12]~input_o\ & (\ram32x8_comp|mem~359_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~359_combout\,
	datab => \ram32x8_comp|mem~357_combout\,
	datac => \SW[11]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \ram32x8_comp|mem~360_combout\);

-- Location: LCCOMB_X114_Y38_N16
\ram32x8_comp|mem~186feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~186feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram32x8_comp|mem~186feeder_combout\);

-- Location: FF_X114_Y38_N17
\ram32x8_comp|mem~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~186feeder_combout\,
	ena => \ram32x8_comp|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~186_q\);

-- Location: LCCOMB_X114_Y38_N26
\ram32x8_comp|mem~218feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~218feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram32x8_comp|mem~218feeder_combout\);

-- Location: FF_X114_Y38_N27
\ram32x8_comp|mem~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ram32x8_comp|mem~218feeder_combout\,
	ena => \ram32x8_comp|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~218_q\);

-- Location: FF_X114_Y34_N13
\ram32x8_comp|mem~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~154_q\);

-- Location: LCCOMB_X114_Y34_N12
\ram32x8_comp|mem~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~354_combout\ = (\SW[13]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & (\ram32x8_comp|mem~218_q\)) # (!\SW[14]~input_o\ & ((\ram32x8_comp|mem~154_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \ram32x8_comp|mem~218_q\,
	datac => \ram32x8_comp|mem~154_q\,
	datad => \SW[14]~input_o\,
	combout => \ram32x8_comp|mem~354_combout\);

-- Location: FF_X114_Y36_N17
\ram32x8_comp|mem~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~250_q\);

-- Location: LCCOMB_X114_Y36_N26
\ram32x8_comp|mem~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~355_combout\ = (\ram32x8_comp|mem~354_combout\ & (((\ram32x8_comp|mem~250_q\) # (!\SW[13]~input_o\)))) # (!\ram32x8_comp|mem~354_combout\ & (\ram32x8_comp|mem~186_q\ & (\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~186_q\,
	datab => \ram32x8_comp|mem~354_combout\,
	datac => \SW[13]~input_o\,
	datad => \ram32x8_comp|mem~250_q\,
	combout => \ram32x8_comp|mem~355_combout\);

-- Location: FF_X114_Y24_N19
\ram32x8_comp|mem~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~170_q\);

-- Location: FF_X114_Y24_N1
\ram32x8_comp|mem~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~234_q\);

-- Location: LCCOMB_X114_Y24_N18
\ram32x8_comp|mem~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~361_combout\ = (\SW[14]~input_o\ & ((\SW[13]~input_o\) # ((\ram32x8_comp|mem~234_q\)))) # (!\SW[14]~input_o\ & (!\SW[13]~input_o\ & (\ram32x8_comp|mem~170_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \ram32x8_comp|mem~170_q\,
	datad => \ram32x8_comp|mem~234_q\,
	combout => \ram32x8_comp|mem~361_combout\);

-- Location: FF_X114_Y28_N17
\ram32x8_comp|mem~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~202_q\);

-- Location: FF_X114_Y28_N19
\ram32x8_comp|mem~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram32x8_comp|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram32x8_comp|mem~266_q\);

-- Location: LCCOMB_X114_Y28_N18
\ram32x8_comp|mem~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~362_combout\ = (\ram32x8_comp|mem~361_combout\ & (((\ram32x8_comp|mem~266_q\) # (!\SW[13]~input_o\)))) # (!\ram32x8_comp|mem~361_combout\ & (\ram32x8_comp|mem~202_q\ & ((\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~361_combout\,
	datab => \ram32x8_comp|mem~202_q\,
	datac => \ram32x8_comp|mem~266_q\,
	datad => \SW[13]~input_o\,
	combout => \ram32x8_comp|mem~362_combout\);

-- Location: LCCOMB_X113_Y32_N6
\ram32x8_comp|mem~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~363_combout\ = (\ram32x8_comp|mem~360_combout\ & (((\ram32x8_comp|mem~362_combout\) # (!\SW[11]~input_o\)))) # (!\ram32x8_comp|mem~360_combout\ & (\ram32x8_comp|mem~355_combout\ & ((\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~360_combout\,
	datab => \ram32x8_comp|mem~355_combout\,
	datac => \ram32x8_comp|mem~362_combout\,
	datad => \SW[11]~input_o\,
	combout => \ram32x8_comp|mem~363_combout\);

-- Location: LCCOMB_X113_Y29_N28
\ram32x8_comp|mem~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram32x8_comp|mem~374_combout\ = (\SW[15]~input_o\ & ((\ram32x8_comp|mem~363_combout\))) # (!\SW[15]~input_o\ & (\ram32x8_comp|mem~373_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \ram32x8_comp|mem~373_combout\,
	datad => \ram32x8_comp|mem~363_combout\,
	combout => \ram32x8_comp|mem~374_combout\);

-- Location: LCCOMB_X113_Y29_N10
\rom_7_seg_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_1|Mux6~0_combout\ = (\ram32x8_comp|mem~374_combout\ & ((\ram32x8_comp|mem~437_combout\) # (\ram32x8_comp|mem~395_combout\ $ (\ram32x8_comp|mem~416_combout\)))) # (!\ram32x8_comp|mem~374_combout\ & ((\ram32x8_comp|mem~395_combout\) # 
-- (\ram32x8_comp|mem~416_combout\ $ (\ram32x8_comp|mem~437_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~395_combout\,
	datab => \ram32x8_comp|mem~416_combout\,
	datac => \ram32x8_comp|mem~437_combout\,
	datad => \ram32x8_comp|mem~374_combout\,
	combout => \rom_7_seg_1|Mux6~0_combout\);

-- Location: LCCOMB_X113_Y29_N12
\rom_7_seg_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_1|Mux5~0_combout\ = (\ram32x8_comp|mem~395_combout\ & (!\ram32x8_comp|mem~437_combout\ & ((\ram32x8_comp|mem~374_combout\) # (!\ram32x8_comp|mem~416_combout\)))) # (!\ram32x8_comp|mem~395_combout\ & (\ram32x8_comp|mem~374_combout\ & 
-- (\ram32x8_comp|mem~416_combout\ $ (!\ram32x8_comp|mem~437_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~395_combout\,
	datab => \ram32x8_comp|mem~416_combout\,
	datac => \ram32x8_comp|mem~437_combout\,
	datad => \ram32x8_comp|mem~374_combout\,
	combout => \rom_7_seg_1|Mux5~0_combout\);

-- Location: LCCOMB_X113_Y29_N22
\rom_7_seg_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_1|Mux4~0_combout\ = (\ram32x8_comp|mem~395_combout\ & (((!\ram32x8_comp|mem~437_combout\ & \ram32x8_comp|mem~374_combout\)))) # (!\ram32x8_comp|mem~395_combout\ & ((\ram32x8_comp|mem~416_combout\ & (!\ram32x8_comp|mem~437_combout\)) # 
-- (!\ram32x8_comp|mem~416_combout\ & ((\ram32x8_comp|mem~374_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~395_combout\,
	datab => \ram32x8_comp|mem~416_combout\,
	datac => \ram32x8_comp|mem~437_combout\,
	datad => \ram32x8_comp|mem~374_combout\,
	combout => \rom_7_seg_1|Mux4~0_combout\);

-- Location: LCCOMB_X113_Y29_N0
\rom_7_seg_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_1|Mux3~0_combout\ = (\ram32x8_comp|mem~395_combout\ & ((\ram32x8_comp|mem~416_combout\ & ((\ram32x8_comp|mem~374_combout\))) # (!\ram32x8_comp|mem~416_combout\ & (\ram32x8_comp|mem~437_combout\ & !\ram32x8_comp|mem~374_combout\)))) # 
-- (!\ram32x8_comp|mem~395_combout\ & (!\ram32x8_comp|mem~437_combout\ & (\ram32x8_comp|mem~416_combout\ $ (\ram32x8_comp|mem~374_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~395_combout\,
	datab => \ram32x8_comp|mem~416_combout\,
	datac => \ram32x8_comp|mem~437_combout\,
	datad => \ram32x8_comp|mem~374_combout\,
	combout => \rom_7_seg_1|Mux3~0_combout\);

-- Location: LCCOMB_X113_Y29_N18
\rom_7_seg_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_1|Mux2~0_combout\ = (\ram32x8_comp|mem~416_combout\ & (\ram32x8_comp|mem~437_combout\ & ((\ram32x8_comp|mem~395_combout\) # (!\ram32x8_comp|mem~374_combout\)))) # (!\ram32x8_comp|mem~416_combout\ & (\ram32x8_comp|mem~395_combout\ & 
-- (!\ram32x8_comp|mem~437_combout\ & !\ram32x8_comp|mem~374_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~395_combout\,
	datab => \ram32x8_comp|mem~416_combout\,
	datac => \ram32x8_comp|mem~437_combout\,
	datad => \ram32x8_comp|mem~374_combout\,
	combout => \rom_7_seg_1|Mux2~0_combout\);

-- Location: LCCOMB_X113_Y29_N20
\rom_7_seg_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_1|Mux1~0_combout\ = (\ram32x8_comp|mem~395_combout\ & ((\ram32x8_comp|mem~374_combout\ & ((\ram32x8_comp|mem~437_combout\))) # (!\ram32x8_comp|mem~374_combout\ & (\ram32x8_comp|mem~416_combout\)))) # (!\ram32x8_comp|mem~395_combout\ & 
-- (\ram32x8_comp|mem~416_combout\ & (\ram32x8_comp|mem~437_combout\ $ (\ram32x8_comp|mem~374_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~395_combout\,
	datab => \ram32x8_comp|mem~416_combout\,
	datac => \ram32x8_comp|mem~437_combout\,
	datad => \ram32x8_comp|mem~374_combout\,
	combout => \rom_7_seg_1|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y29_N14
\rom_7_seg_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_1|Mux0~0_combout\ = (\ram32x8_comp|mem~416_combout\ & (!\ram32x8_comp|mem~395_combout\ & (\ram32x8_comp|mem~437_combout\ $ (!\ram32x8_comp|mem~374_combout\)))) # (!\ram32x8_comp|mem~416_combout\ & (\ram32x8_comp|mem~374_combout\ & 
-- (\ram32x8_comp|mem~395_combout\ $ (!\ram32x8_comp|mem~437_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram32x8_comp|mem~395_combout\,
	datab => \ram32x8_comp|mem~416_combout\,
	datac => \ram32x8_comp|mem~437_combout\,
	datad => \ram32x8_comp|mem~374_combout\,
	combout => \rom_7_seg_1|Mux0~0_combout\);

-- Location: LCCOMB_X99_Y7_N0
\rom_7_seg_4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_4|Mux6~0_combout\ = (\SW[0]~input_o\ & ((\SW[3]~input_o\) # (\SW[2]~input_o\ $ (\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\) # (\SW[2]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \rom_7_seg_4|Mux6~0_combout\);

-- Location: LCCOMB_X99_Y7_N10
\rom_7_seg_4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_4|Mux5~0_combout\ = (\SW[2]~input_o\ & (\SW[0]~input_o\ & (\SW[3]~input_o\ $ (\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \rom_7_seg_4|Mux5~0_combout\);

-- Location: LCCOMB_X99_Y7_N12
\rom_7_seg_4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_4|Mux4~0_combout\ = (\SW[1]~input_o\ & (((!\SW[3]~input_o\ & \SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (!\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \rom_7_seg_4|Mux4~0_combout\);

-- Location: LCCOMB_X99_Y7_N30
\rom_7_seg_4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_4|Mux3~0_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[2]~input_o\ & (\SW[3]~input_o\ & !\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & (\SW[2]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \rom_7_seg_4|Mux3~0_combout\);

-- Location: LCCOMB_X99_Y7_N8
\rom_7_seg_4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_4|Mux2~0_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\ & ((\SW[1]~input_o\) # (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\SW[1]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \rom_7_seg_4|Mux2~0_combout\);

-- Location: LCCOMB_X99_Y7_N26
\rom_7_seg_4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_4|Mux1~0_combout\ = (\SW[3]~input_o\ & ((\SW[0]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[0]~input_o\ & (\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (\SW[2]~input_o\ & (\SW[1]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \rom_7_seg_4|Mux1~0_combout\);

-- Location: LCCOMB_X99_Y7_N20
\rom_7_seg_4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_4|Mux0~0_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ $ (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[0]~input_o\ & (\SW[3]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \rom_7_seg_4|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y12_N0
\rom_7_seg_5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_5|Mux6~0_combout\ = (\SW[4]~input_o\ & ((\SW[7]~input_o\) # (\SW[6]~input_o\ $ (\SW[5]~input_o\)))) # (!\SW[4]~input_o\ & ((\SW[5]~input_o\) # (\SW[6]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \rom_7_seg_5|Mux6~0_combout\);

-- Location: LCCOMB_X109_Y12_N10
\rom_7_seg_5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_5|Mux5~0_combout\ = (\SW[6]~input_o\ & (\SW[4]~input_o\ & (\SW[5]~input_o\ $ (\SW[7]~input_o\)))) # (!\SW[6]~input_o\ & (!\SW[7]~input_o\ & ((\SW[5]~input_o\) # (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \rom_7_seg_5|Mux5~0_combout\);

-- Location: LCCOMB_X109_Y12_N12
\rom_7_seg_5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_5|Mux4~0_combout\ = (\SW[5]~input_o\ & (((\SW[4]~input_o\ & !\SW[7]~input_o\)))) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & ((!\SW[7]~input_o\))) # (!\SW[6]~input_o\ & (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \rom_7_seg_5|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y12_N22
\rom_7_seg_5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_5|Mux3~0_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\ & (\SW[4]~input_o\)) # (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & \SW[7]~input_o\)))) # (!\SW[5]~input_o\ & (!\SW[7]~input_o\ & (\SW[6]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \rom_7_seg_5|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y12_N24
\rom_7_seg_5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_5|Mux2~0_combout\ = (\SW[6]~input_o\ & (\SW[7]~input_o\ & ((\SW[5]~input_o\) # (!\SW[4]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[5]~input_o\ & (!\SW[4]~input_o\ & !\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \rom_7_seg_5|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y12_N2
\rom_7_seg_5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_5|Mux1~0_combout\ = (\SW[5]~input_o\ & ((\SW[4]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[4]~input_o\ & (\SW[6]~input_o\)))) # (!\SW[5]~input_o\ & (\SW[6]~input_o\ & (\SW[4]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \rom_7_seg_5|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y12_N4
\rom_7_seg_5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_5|Mux0~0_combout\ = (\SW[6]~input_o\ & (!\SW[5]~input_o\ & (\SW[4]~input_o\ $ (!\SW[7]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[4]~input_o\ & (\SW[5]~input_o\ $ (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \rom_7_seg_5|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y21_N8
\rom_7_seg_6|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_6|Mux6~0_combout\ = (\SW[11]~input_o\ & ((\SW[14]~input_o\) # (\SW[12]~input_o\ $ (\SW[13]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\) # (\SW[14]~input_o\ $ (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \rom_7_seg_6|Mux6~0_combout\);

-- Location: LCCOMB_X110_Y21_N10
\rom_7_seg_6|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_6|Mux5~0_combout\ = (\SW[12]~input_o\ & (!\SW[14]~input_o\ & ((\SW[11]~input_o\) # (!\SW[13]~input_o\)))) # (!\SW[12]~input_o\ & (\SW[11]~input_o\ & (\SW[14]~input_o\ $ (!\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \rom_7_seg_6|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y21_N12
\rom_7_seg_6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_6|Mux4~0_combout\ = (\SW[12]~input_o\ & (\SW[11]~input_o\ & (!\SW[14]~input_o\))) # (!\SW[12]~input_o\ & ((\SW[13]~input_o\ & ((!\SW[14]~input_o\))) # (!\SW[13]~input_o\ & (\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \rom_7_seg_6|Mux4~0_combout\);

-- Location: LCCOMB_X110_Y21_N22
\rom_7_seg_6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_6|Mux3~0_combout\ = (\SW[12]~input_o\ & ((\SW[11]~input_o\ & ((\SW[13]~input_o\))) # (!\SW[11]~input_o\ & (\SW[14]~input_o\ & !\SW[13]~input_o\)))) # (!\SW[12]~input_o\ & (!\SW[14]~input_o\ & (\SW[11]~input_o\ $ (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \rom_7_seg_6|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y21_N0
\rom_7_seg_6|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_6|Mux2~0_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\ & ((\SW[12]~input_o\) # (!\SW[11]~input_o\)))) # (!\SW[14]~input_o\ & (\SW[12]~input_o\ & (!\SW[11]~input_o\ & !\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \rom_7_seg_6|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y21_N26
\rom_7_seg_6|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_6|Mux1~0_combout\ = (\SW[12]~input_o\ & ((\SW[11]~input_o\ & (\SW[14]~input_o\)) # (!\SW[11]~input_o\ & ((\SW[13]~input_o\))))) # (!\SW[12]~input_o\ & (\SW[13]~input_o\ & (\SW[11]~input_o\ $ (\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \rom_7_seg_6|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y21_N28
\rom_7_seg_6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_7_seg_6|Mux0~0_combout\ = (\SW[14]~input_o\ & (\SW[11]~input_o\ & (\SW[12]~input_o\ $ (\SW[13]~input_o\)))) # (!\SW[14]~input_o\ & (!\SW[12]~input_o\ & (\SW[11]~input_o\ $ (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \rom_7_seg_6|Mux0~0_combout\);

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

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;
END structure;


