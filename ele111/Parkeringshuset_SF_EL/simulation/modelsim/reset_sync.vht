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
-- Generated on "10/18/2019 14:04:27"
                                                            
-- Vhdl Test Bench template for design  :  reset_sync
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY reset_sync_vhd_tst IS
END reset_sync_vhd_tst;
ARCHITECTURE reset_sync_arch OF reset_sync_vhd_tst IS
-- constants       
	constant periode : time := 10 us;                                          
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL rst_clk_n : STD_LOGIC;
SIGNAL rst_n : STD_LOGIC;
COMPONENT reset_sync
	PORT (
	clk : IN STD_LOGIC;
	rst_clk_n : OUT STD_LOGIC;
	rst_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : reset_sync
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	rst_clk_n => rst_clk_n,
	rst_n => rst_n
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
	rst_n <= '0', '1' after 50 us, '0' after 70 us, '1' after 102 us;                    
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
END reset_sync_arch;
