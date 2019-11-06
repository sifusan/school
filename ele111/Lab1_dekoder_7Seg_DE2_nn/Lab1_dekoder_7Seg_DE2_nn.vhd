LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Dekoder_7Seg_DE2_nn IS
	PORT(sw		: in std_logic_vector(17 DOWNTO 0);
	     HEX0	: out std_logic_vector(6 DOWNTO 0));
END;

ARCHITECTURE struct OF Dekoder_7seg_DE2_nn IS

	COMPONENT Dekoder_7Seg_nn IS
		PORT( c					:IN std_logic_vector(2 DOWNTO 0);
				Syv_seg_kode	:OUT std_logic_vector(6 DOWNTO 0));
	END COMPONENT;

BEGIN
	dekoder_7seg : component Dekoder_7Seg_nn
		port map(
			c(2) => sw(17),
			c(1) => sw(16),
			c(0) => sw(15),
			Syv_seg_kode => HEX0
		);
END;