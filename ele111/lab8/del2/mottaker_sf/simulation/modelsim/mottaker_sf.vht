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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/13/2019 15:14:07"
                                                            
-- Vhdl Test Bench template for design  :  mottaker_sf
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mottaker_sf_vhd_tst IS
END mottaker_sf_vhd_tst;
ARCHITECTURE mottaker_sf_arch OF mottaker_sf_vhd_tst IS
-- constants         
constant periode : time := 10us;                                        
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL GPIO : STD_LOGIC_VECTOR(35 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(17 DOWNTO 0);
COMPONENT mottaker_sf
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	GPIO : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(17 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mottaker_sf
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	GPIO => GPIO,
	KEY => KEY,
	LEDR => LEDR,
	SW => SW
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           


always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END mottaker_sf_arch;
