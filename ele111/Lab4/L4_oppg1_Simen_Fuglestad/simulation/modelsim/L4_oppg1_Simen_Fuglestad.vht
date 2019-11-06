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
-- Generated on "10/07/2019 08:36:43"
                                                            
-- Vhdl Test Bench template for design  :  L4_oppg1_Simen_Fuglestad
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY L4_oppg1_Simen_Fuglestad_vhd_tst IS
END L4_oppg1_Simen_Fuglestad_vhd_tst;
ARCHITECTURE L4_oppg1_Simen_Fuglestad_arch OF L4_oppg1_Simen_Fuglestad_vhd_tst IS
constant periode : time := 10 us;
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT L4_oppg1_Simen_Fuglestad
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	Y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : L4_oppg1_Simen_Fuglestad
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	clk => clk,
	Y => Y
	);


init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once 
	A <= '0';
	B <= '0';
	C <= '0';     
	wait for periode;

	A <= '1';
	B <= '0';
	C <= '0';     
	wait for periode;  

	A <= '0';
	B <= '1';
	C <= '0';   
	wait for periode;

	A <= '1';
	B <= '1';
	C <= '0';   
	wait for periode;

	A <= '0';
	B <= '0';
	C <= '1';    
	wait for periode;

	A <= '1';
	B <= '0';
	C <= '1';   
	wait for periode;

	A <= '0';
	B <= '1';
	C <= '1';    
	wait for periode;

	A <= '1';
	B <= '1';
	C <= '1';   
	wait for periode; 
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
	                                 
BEGIN                                                         
        -- code executes for every event on sensitivity list
	clk <= '0';
	loop
		wait for periode/2;
		clk <= not clk;
	end lorop;
WAIT;                                                        
END PROCESS always;                                          
END L4_oppg1_Simen_Fuglestad_arch;
