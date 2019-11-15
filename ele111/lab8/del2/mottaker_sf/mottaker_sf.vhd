library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mottaker_sf is
  port (
        CLOCK_50 : in     std_logic;
        KEY      : in     std_logic_vector(3 downto 0);
        GPIO     : inout  std_logic_vector(35 downto 0);
        LEDR     : out    std_logic_vector(17 downto 0);
        SW       : in     std_logic_vector(17 downto 0)
  );
end entity mottaker_sf;

architecture rtl of mottaker_sf is

signal vippe_a, vippe_b : std_logic;
signal mottatt_blink    : std_logic;
signal sender_reset     : std_logic;
signal resetn           : std_logic;
signal error_signal     : std_logic;
signal shiftreg         : std_logic_vector(9 downto 0) := "1000000000";
signal din              : std_logic;
signal data_reg         : std_logic_vector(7 downto 0);

type state_type is (s_idle, s_wait_for_sender, s_shift_in, s_offload, s_error);
signal state : state_type;

signal start_teller : std_logic;
signal baud_enable_m : std_logic;
signal baud_enable_s : std_logic;
signal din_q, din_qq, din_qqq : std_logic;

component baudrate_gen is
    port(
        CLOCK_50 : in std_logic;
        resetn : in std_logic;
        velg_baudrate : in std_logic_vector(2 downto 0);
        start_teller : in std_logic;
        baud_enable_m : out std_logic;
        baud_enable_s :out std_logic
    );
end component;

begin
  LEDR(17) <= mottatt_blink;
  LEDR(16) <= error_signal;
  LEDR(7 downto 0) <= data_reg;

  GPIO(7) <= 'Z';
  din <= GPIO(7);

  GPIO(5) <= 'Z';
  sender_reset <= GPIO(5);

  baud_gen : baudrate_gen
  port map (
            CLOCK_50      => CLOCK_50,
            resetn        => sender_reset,
            velg_baudrate => SW(16 downto 14), --MUST BE EQUAL TO BAUDRATE IN SENDER
            start_teller  => start_teller,
            baud_enable_m => baud_enable_m,
            baud_enable_s => baud_enable_s
  );
  --
  -- p_start_teller : process(CLOCK_50) is
  -- begin
  --   if rising_edge(CLOCK_50) then
  --     if sender_reset = '0' then
  --       start_teller <= '0';
  --       din_q <= '0';
  --       din_qq <= '0';
  --       din_qqq <= '0';
  --     else
  --       start_teller <= '0';
  --       din_q <= din;
  --       din_qq <= din_q;
  --       din_qqq <= din_qq;
  --
  --       if din_qqq = '1' and din_qq = '0' then
  --         if state = s_wait_for_sender then
  --           start_teller <= '1';
  --         end if;
  --       end if;
  --     end if;
  --   end if;
  -- end process;
  --

  -- p_motta_state : process(CLOCK_50) is
  -- begin
  --   if rising_edge(CLOCK_50) then
  --     if sender_reset = '0' then
  --       state <= s_idle;
  --       error_signal <= '0';
  --       shiftreg <= (9 => '1', others => '0');
  --     else
  --       case state is
  --         when s_idle =>
  --           din_q <= din;
  --           din_qq <= din_q;
  --
  --           if din_qq = '0' then
  --             state <= s_wait_for_sender;
  --           end if;
  --         when s_wait_for_sender =>
  --           if din_qq = '1'
    p_state_machine : process(CLOCK_50) is

  begin
    if rising_edge(CLOCK_50) then
      if sender_reset = '0' then --reset styres av sender
        state <= s_idle;
        din_q <= '0';
        din_qq <= '0';
      else
        if baud_enable_m = '1' then
          start_teller <= '0';
          case state is
            when s_idle =>
              din_q <= din;
              din_qq <= din_q;
              error_signal <= '0';
              shiftreg <= (9 => '1', others => '0');
              if din_qq = '1' then
                state <= s_wait_for_sender;
              end if;
            when s_wait_for_sender =>
              if din_qq = '0' then
                start_teller <= '1';
                state <= s_shift_in;
              end if;
            when s_shift_in =>
              shiftreg <= din_qq & shiftreg(9 downto 1);
              if shiftreg(0) = '1' and shiftreg(9) = '1' then
                state <= s_offload;
                LEDR(15) <= '1';
              elsif shiftreg(0) = '0' and shiftreg(9) = '1' then
                state <= s_error;
              end if;
            when s_offload =>
              data_reg <= shiftreg(8 downto 1);
              state <= s_idle;
            when s_error =>
              error_signal <= '1';
            when others =>
              state <= s_idle;
          end case;
        end if;
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
