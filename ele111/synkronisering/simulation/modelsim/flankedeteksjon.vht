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
-- Generated on "10/14/2019 09:38:59"
                                                            
-- Vhdl Test Bench template for design  :  flankedeteksjon
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY flankedeteksjon_vhd_tst IS
END flankedeteksjon_vhd_tst;
ARCHITECTURE flankedeteksjon_arch OF flankedeteksjon_vhd_tst IS
-- constants
	constant periode : time := 10 us;                              
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL data_in : STD_LOGIC;
SIGNAL flanke_puls : STD_LOGIC;
SIGNAL neg_flanke_puls : STD_LOGIC;
COMPONENT flankedeteksjon
	PORT (
	clk : IN STD_LOGIC;
	data_in : IN STD_LOGIC;
	flanke_puls : OUT STD_LOGIC;
	neg_flanke_puls : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : flankedeteksjon
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	data_in => data_in,
	flanke_puls => flanke_puls,
	neg_flanke_puls => neg_flanke_puls
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
	data_in <= '0', '1' after 37 us, '0' after 53 us, '1' after 83 us;                     
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
END flankedeteksjon_arch;
