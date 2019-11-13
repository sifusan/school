library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mottaker_sf is
  port (
        CLOCK_50 : in     std_logic;
        KEY      : in     std_logic_vector(3 downto 0);
        GPIO     : inout  std_logic_vector(35 downto 0);
        LEDR     : out    std_logic_vector(17 downto 0)
  );
end entity mottaker_sf;

architecture rtl of mottaker_sf is

signal vippe_a, vippe_b : std_logic;
signal mottatt_blink    : std_logic;
signal sender_reset     : std_logic;
signal error_signal     : std_logic;
signal shiftreg         : std_logic_vector(9 downto 0) := "1000000000";
signal din              : std_logic;
signal data_reg         : std_logic_vector(7 downto 0);

type state_type is (s_idle, s_wait_for_sender, s_shift_in, s_offload, s_error);
signal state : state_type;

begin

  LEDR(17) <= mottatt_blink;

  p_state_machine : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      GPIO(5) <= 'Z';
      sender_reset <= GPIO(5);
      if sender_reset = '1' then --reset styres av sender
        state <= s_idle;
      else
        case state is
          when s_idle =>
            din <= '1';
            shiftreg <= (9 => '1', others => '0');
            state <= s_wait_for_sender;
          when s_wait_for_sender =>
            if din = '0' then
              state <= s_shift_in;
            end if;
          when s_shift_in =>
            shiftreg <= din & shiftreg(9 downto 1);
            if shiftreg(0) = '1' and shiftreg(9) = '1' then
              state <= s_offload;
            else
              state <= s_error;
            end if;
          when s_offload =>
            data_reg <= shiftreg(8 downto 1);
            state <= s_idle;
          when s_error =>
            if sender_reset = '1' then
              state <= s_idle;
            end if;
          when others =>
            state <= s_idle;
        end case;
      end if;
    end if;
  end process;

  p_motta : process(CLOCK_50) is
  begin
      if rising_edge(CLOCK_50) then
        GPIO(1) <= 'Z';
        vippe_a <= GPIO(1);
        vippe_b <= vippe_a;
        mottatt_blink <= vippe_b;
      end if;
  end process;

end architecture;
