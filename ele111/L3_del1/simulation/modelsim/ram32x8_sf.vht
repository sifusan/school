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
-- Generated on "09/25/2019 08:47:08"
                                                            
-- Vhdl Test Bench template for design  :  ram32x8_sf
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ram32x8_sf_vhd_tst IS
END ram32x8_sf_vhd_tst;
ARCHITECTURE ram32x8_sf_arch OF ram32x8_sf_vhd_tst IS
-- constant
constant wrs : std_logic_vector := "100010100000111110101000101111";
constant period : time := 10 us;
constant sample_in_data : std_logic_vector :="0000000000000001000000100000001000000101000001110000100000001001"; --read 8 bits a time from here
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL WR : STD_LOGIC;
COMPONENT ram32x8_sf
	PORT (
	address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	clk : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	WR : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ram32x8_sf
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	clk => clk,
	data_in => data_in,
	data_out => data_out,
	WR => WR
	);

p_clk : process
begin
	clk <= '0';
	loop
		wait for period/2;
		clk <= not clk;
	end loop;
	wait;
end process;

p_wr : process
begin
	WR <= '0';
	for i in wrs'range loop
		wait for period/2;
		WR <= wrs(i);
	end loop;
	wait;
end process;


p_address : process
begin
	address <= 	"00000" AFTER 0 US,
			"00001" AFTER 10 US,
			"00010" AFTER 20 US,
			"00100" AFTER 30 US,
			"00101" AFTER 40 US,
			"00000" AFTER 50 US,
			"00001" AFTER 60 US,
			"00010" AFTER 70 US,
			"00100" AFTER 80 US,
			"00101" AFTER 90 US;
	wait;
end process p_address;

p_data_in : process
begin
	data_in <= 	sample_in_data(0 to 7) AFTER 0 US,
		  	sample_in_data(8 to 15) AFTER 15 US,
			sample_in_data(16 to 23) AFTER 32 US,
			sample_in_data(24 to 31) AFTER 55 US,
			sample_in_data(0 to 7) AFTER 65 US,
		  	sample_in_data(8 to 15) AFTER 80 US,
			sample_in_data(16 to 23) AFTER 100 US,
			sample_in_data(24 to 31) AFTER 110 US;
	wait;
end process p_data_in;

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
END ram32x8_sf_arch;
