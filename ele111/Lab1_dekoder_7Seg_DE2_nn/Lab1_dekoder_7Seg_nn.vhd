LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Dekoder_7Seg_nn IS
PORT( c					:IN std_logic_vector(2 downto 0);
		Syv_seg_kode	:OUT std_logic_vector(6 downto 0));
END;

ARCHITECTURE behavior OF Dekoder_7Seg_nn IS

BEGIN
		WITH c SELECT
			Syv_seg_kode <= 	"0001001" WHEN "000",
									"0001000" WHEN "001",
									"1000111" WHEN "010",
									"1000111" WHEN "011",
									"1000000" WHEN "100",
									--"1111111" WHEN "101",
									--"1111111" WHEN "111",
									"1111111" WHEN OTHERS;

END;
	