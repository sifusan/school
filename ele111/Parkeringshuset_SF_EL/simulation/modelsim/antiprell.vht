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
-- Generated on "10/18/2019 14:38:35"
                                                            
-- Vhdl Test Bench template for design  :  antiprell
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY antiprell_vhd_tst IS
END antiprell_vhd_tst;
ARCHITECTURE antiprell_arch OF antiprell_vhd_tst IS
-- constants
constant periode : time := 10 us;                                                  
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL input : STD_LOGIC;
SIGNAL passering : STD_LOGIC;
SIGNAL reset_clk : STD_LOGIC;
COMPONENT antiprell
	PORT (
	clk : IN STD_LOGIC;
	input : IN STD_LOGIC;
	passering : BUFFER STD_LOGIC;
	reset_clk : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : antiprell
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	input => input,
	passering => passering,
	reset_clk => reset_clk
	);
p_clk : process
begin
	clk <= '0';
	loop
		wait for periode/2;
		clk <= not clk;
	end loop;
	wait;
end process p_clk;

init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
	input <= '0', '1' after 100 us, '0' after 10111 us;                  
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
END antiprell_arch;
