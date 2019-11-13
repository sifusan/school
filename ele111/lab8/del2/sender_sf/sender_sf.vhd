library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity sender_sf is
  port (
        CLOCK_50  : in    std_logic;
        KEY       : in    std_logic_vector(3 downto 0);
        SW        : in    std_logic_vector(17 downto 0);
        GPIO      : inout std_logic_vector(35 downto 0);
        LEDR      : out   std_logic_vector(17 downto 0);
        LEDG      : out   std_logic_vector(7 downto 0)
  );
end entity sender_sf;

architecture rtl of sender_sf is


component baudrate_gen is
  port(
        CLOCK_50      : in std_logic;
        resetn        : in std_logic;
        velg_baudrate : in std_logic_vector(2 downto 0);
        start_teller  : in std_logic;
        baud_enable_m : out std_logic;
        baud_enable_s : out std_logic
  );
end component baudrate_gen;

component Enable_gen Is
	port ( clock_50 		: in std_logic;
			 resetn 			  : in std_logic;
			 velg_enable	  : in std_logic_vector(2 downto 0);
			 enable			    : buffer std_logic
	);
end component;

component reset_sync is
	port(
			clk : in std_logic;
			rst_n : in std_logic;
			rst_clk_n : out std_logic
		);
end component;

signal hallo          : std_logic;
signal enable_out     : std_logic;
signal synched_reset  : std_logic;
signal dout           : std_logic;
signal shiftreg       : std_logic_vector(9 downto 0);
signal start_teller   : std_logic;

signal start_bit : std_logic := '0';
signal stop_bit : std_logic := '0';


signal baud_enable_m, baud_enable_s : std_logic;

type state_type is (s_idle, s_transmit, s_shift_out, s_finish, s_wait);
signal state : state_type;

begin

  LEDR(17) <= hallo;

  GPIO(5) <= synched_reset;
  GPIO(7) <= dout;

p_state_machine : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if synched_reset = '0' then
        state <= s_idle;
        GPIO(5) <= '1';
      else
        GPIO(5) <= '0';
        case state is
          when s_idle =>
            dout <= '1';
            shiftreg <= (others => '0');
            if KEY(0) <= '0' then
              state <= s_transmit;
            end if;
          when s_transmit =>
            dout <= '1';
            shiftreg <= stop_bit & SW(8 downto 1) & start_bit;
            state <= s_shift_out;
          when s_shift_out =>
            if shiftreg = "0000000000" then
              state <= s_finish;
            elsif baud_enable_s = '1' then
                shiftreg <= '0' & shiftreg(9 downto 1);
                dout <= shiftreg(0);
            end if;
          when s_finish =>
            dout <= '1';
            state <= s_wait;
          when s_wait =>
            state <= s_transmit;
          when others =>
            state <= s_idle;
        end case;
      end if;
    end if;
  end process;

  baud_gen : baudrate_gen
  port map (
            CLOCK_50      => CLOCK_50,
            resetn        => synched_reset,
            velg_baudrate => SW(16 downto 14),
            start_teller  => start_teller,
            baud_enable_m => baud_enable_m,
            baud_enable_s => baud_enable_s
  );

  enable_gen_1 : Enable_gen
  port map (
            clock_50    => CLOCK_50,
            resetn      => synched_reset,
            velg_enable => "000",
            enable      => enable_out
  );

  reset_syncher : reset_sync
  port map (
            clk       => CLOCK_50,
            rst_n     => KEY(3),
            rst_clk_n => synched_reset
  );

  p_hallo : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if enable_out = '1' then
        hallo <= not hallo;
      end if;
    end if;
  end process;

  p_send : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      GPIO(1) <= hallo;
    end if;
  end process;
end architecture;
