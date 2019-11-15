library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity lab8_del2 is
    port(
        CLOCK_50 : in    std_logic;
        KEY      : in    std_logic_vector(3 downto 0);
        SW       : in    std_logic_vector(17 downto 0);
        GPIO     : inout std_logic_vector(35 downto 0);
        LEDR     : out   std_logic_vector(17 downto 0);
        LEDG     : out   std_logic_vector(7 downto 0)
    );
end entity lab8_del2;
architecture RTL of lab8_del2 is
    component Enable_gen Is
        Port(clock_50    : in  std_logic;
             resetn      : in  std_logic;
             velg_enable : in  std_logic_vector(2 downto 0);
             Enable      : out std_logic);
    End component;
    component reset_sync is
        port(
            clk        : in  std_logic;
            rst_n : in  std_logic;
            rst_clk_n  : out std_logic
        );
    end component reset_sync;
    component baudrate_gen is
    port(
        CLOCK_50 : in std_logic;
        resetn : in std_logic;
        velg_baudrate : in std_logic_vector(2 downto 0);
        start_teller : in std_logic;
        baud_enable_m : out std_logic;
        baud_enable_s :out std_logic
    );
end component baudrate_gen;
    signal resetn : std_logic;
    signal hallo_enable : std_logic;
    signal hallo : std_logic;
    signal sender : std_logic;
    signal mottatt_blink : std_logic;
    signal vippe_a, vippe_b : std_logic;
    signal start_teller, baud_enable_m, baud_enable_s : std_logic;
    type sender_state_type is (s_idle, s_transmit, s_shift_out, s_finish, s_wait);
    signal sender_state : sender_state_type;
    type mottak_state_type is (s_idle, s_wait_for_sender, s_shift_in, s_offload, s_error);
    signal mottak_state : mottak_state_type;
    signal start_sender : std_logic;
    signal send_shiftregister : std_logic_vector(9 downto 0);
    signal START_BIT : std_logic := '0';
    signal STOP_BIT : std_logic := '1';
    signal data_ut : std_logic;
    signal data_inn, data_inn_q, data_inn_qq, data_inn_qqq : std_logic;
    signal start, start_q, start_qq : std_logic;
    signal error_signal : std_logic;
    signal mottak_shiftreg : std_logic_vector(9 downto 0);
    signal mottatt_data : std_logic_vector(7 downto 0);
begin
    Enable_gen_inst : Enable_gen
        port map(
            clock_50    => CLOCK_50,
            resetn      => resetn,
            velg_enable => "000",
            Enable      => hallo_enable
        );
        reset_synchronizer_inst : reset_sync
            port map(
                clk        => CLOCK_50,
                rst_n      =>  KEY(3),
                rst_clk_n  => resetn
            );
            -- lag lokalt blinkesignal
            p_hallo : process (CLOCK_50) is
            begin
                if rising_edge(CLOCK_50) then
                    if resetn = '0' then
                        hallo <= '0';
                    elsif hallo_enable = '1' then
                        hallo <= not hallo;
                    end if;
                end if;
            end process p_hallo;
        LEDR(17) <= hallo;
        sender <= SW(17);
        LEDG(0) <= sender;
        LEDG(7) <= mottatt_blink;

    p_send_motta_hallo:  process (CLOCK_50) is
    begin
        if rising_edge(CLOCK_50) then
            if sender = '1' then
                GPIO (1) <= hallo;
                mottatt_blink <= '0';
            else
                -- mottar hallo
                GPIO(1) <= 'Z';
                vippe_a <= GPIO(1);
                vippe_b <= vippe_a;
                mottatt_blink <= vippe_b;
            end if;
        end if;
    end process;

    baudrate_gen_inst : baudrate_gen
        port map(
            CLOCK_50      => CLOCK_50,
            resetn        => resetn,
            velg_baudrate => SW(16 downto 14),
            start_teller  => start_teller,
            baud_enable_m => baud_enable_m,
            baud_enable_s => baud_enable_s
        );

    p_sender : process(CLOCK_50) is
    begin
      if rising_edge(CLOCK_50) then
        if reset_n = '0' then
          sender_state <= s_idle;
        else
          case sender_state is
            when s_idle =>

            when s_transmit =>

            when s_shift_out =>

            when s_finish =>

            when s_wait =>

          end case;
        end if;
      end if;
    end process;
    data_inn <= GPIO(7) when sender = '0' else '1';
    GPIO(7) <= data_ut when sender = '1' else 'Z';

    p_start_teller : process (CLOCK_50) is
    begin
        if rising_edge(CLOCK_50) then
            if resetn = '0' then
                start_teller <= '0';
                data_inn_q <= '0';
                data_inn_qq <= '0';
                data_inn_qqq <= '0';
            else
                start_teller <= '0';
                data_inn_q <= data_inn;
                data_inn_qq <= data_inn_q;
                data_inn_qqq <= data_inn_qq;
                if data_inn_qqq = '1' and data_inn_qq = '0' then
                    --fallende flanke
                    if mottak_state = s_wait_for_sender then
                        start_teller <= '1';
                    end if;
                end if;
            end if;
        end if;
    end process p_start_teller;

    start_sender <= KEY(0);

    p_synk_start_sender : process(CLOCK_50) is
    begin
      if rising_edge(CLOCK_50) then
        if resetn = '0' then
          start_q <= '0';
          start_qq <= '0';
        else
          start_q <= not start_sender;
          start_qq <= start_q;
        end if;
      end if;
    end process;

    p_sender : process(CLOCK_50) is
    begin
      if rising_edge(CLOCK_50) then
        if resetn = '0' then
          sender_state <= s_idle;
        else
          if sender = '1' then
            case sender_state is
              when s_idle =>
                data_ut <= '1';
                send_shiftregister <= (others => '0');
                if start_qq = '1' then
                  sender_state <= s_transmit;
                end if;
              when s_transmit =>
                send_shiftregister <= STOP_BIT & SW(8 downto 1) & START_BIT;
                if baud_enable_s = '1' then
                  sender_state <= s_transmit;
                end if;
              when s_shift_out =>
                  if baud_enable_s = '1' then
                    if send_shiftregister = "0000000000" then
                      sender_state <= s_finish;
                      data_ut <= '1';
                    else
                      data_ut <= send_shiftregister(0);
                      send_shiftregister <= '0' & send_shiftregister(9 downto 1);
                  end if;
                end if;
              when s_finish =>
                data_ut <= '1';
                if baud_enable_s = '1' then
                  sender_state <= s_wait;
                end if;
              when s_wait =>
                data_ut <= '1';
                if baud_enable_s = '1' then
                  sender_state <= s_transmit;
                end if;
            end case;
          end if;
        end if;
      end if;
    end process;

    LEDR(16) <= error_signal;
    LEDR(8 downto 1) <= mottatt_data;
    p_motta : process(CLOCK_50) is
    begin
      if rising_edge(CLOCK_50) then
        if resetn = '0' then
          mottak_state <= s_idle;
        else
          if sender = '0' then
            case mottak_state is
              when s_idle =>
                error_signal <= '0';
                mottak_shiftreg <= (9 => '1', others => '0');
                if data_inn_qq = '1' then
                  mottak_state <= s_wait_for_sender;
                end if;
              when s_wait_for_sender =>
                if start_teller = '1' then
                  mottak_state <= s_shift_in;
                end if;
              when s_shift_in =>
                if mottak_shiftreg(0) = '1' and mottak_shiftreg(9) = '0' then
                  mottak_state <= s_error;
                elsif mottak_shiftreg(0) = '1' and mottak_shiftreg(9) = '1' then
                  mottak_state <= s_offload;
                elsif baud_enable_m = '1' then
                  mottak_shiftreg <= data_inn_qq & mottak_shiftreg(9 downto 1);
                end if;
              when s_offload =>
                mottatt_data <= mottak_shiftreg(8 downto 1);
                mottak_state <= s_idle;
              when s_error =>
                error_signal <= '1';
            end case;
          end if;
        end if;
      end if;
    end process;
end architecture RTL;
