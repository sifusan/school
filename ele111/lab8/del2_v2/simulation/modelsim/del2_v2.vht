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
-- Generated on "11/15/2019 11:27:23"
                                                            
-- Vhdl Test Bench template for design  :  del2_v2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY del2_v2_vhd_tst IS
END del2_v2_vhd_tst;
ARCHITECTURE del2_v2_arch OF del2_v2_vhd_tst IS
-- constants                   
constant periode : time := 20 ns;
constant input : std_logic_vector := "11100110011011";
                              
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL GPIO : STD_LOGIC_VECTOR(35 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDG : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(17 DOWNTO 0);
signal start : std_logic;
signal reset : std_logic;
signal d : std_logic;
signal reset_s : std_logic;

COMPONENT del2_v2
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	GPIO : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(17 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : del2_v2
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	GPIO => GPIO,
	KEY => KEY,
	LEDG => LEDG,
	LEDR => LEDR,
	SW => SW
	);
SW(8 downto 1) <= "00110011";
SW(16 downto 14) <=  "111";
SW(17) <= '0'; -- set 1 for sender
KEY(0) <= start;
KEY(3) <= reset;
GPIO(7) <= d;
gpio(5) <= reset_s;
KEY(1) <= '1';
clk_p : process
begin
	CLOCK_50<= '0';
	loop
		wait for periode/2;
			CLOCK_50 <= not CLOCK_50;
	end loop;
wait;
end process clk_p;

start_signal_p : process
begin
	start <= '1'; wait for 200 ns;
	--d <= '1';
	start <= '0'; wait for 12000 ns;
	start <= '1';
wait;
end process start_signal_p;

din_signal : process
begin
	for i in input' range loop
		wait for 50 * periode;
		wait until CLOCK_50 = '0';
		d <= input(i);
	end loop;
end process din_signal;

reset_signal_s : process
begin
	reset_s <= '1';
	wait for 300 ns;
	reset_s <= '0';
	for i in 1 to 2 loop
		wait until clock_50 = '1';
	end loop;
	reset_s <= '1';
	wait;
end process reset_signal_s;

reset_signal : process
begin
	reset <= '0';
	for i in 1 to 2 loop
		wait until clock_50 = '1';
	end loop;
	reset <= '1';
	wait;
end process reset_signal;

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
END del2_v2_arch;
