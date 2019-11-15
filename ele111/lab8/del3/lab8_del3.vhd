library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab8_del3 is
  port (
        CLOCK_50 : in    std_logic;
        KEY      : in    std_logic_vector(3 downto 0);
        SW       : in    std_logic_vector(17 downto 0);
        GPIO     : inout std_logic_vector(35 downto 0);
        LEDR     : out   std_logic_vector(17 downto 0);
        LEDG     : out   std_logic_vector(7 downto 0)
  );

end entity lab8_del3;

architecture arch of lab8_del3 is

  component reset_sync is
  	port(
  			clk : in std_logic;
  			rst_n : in std_logic;
  			rst_clk_n : out std_logic
  		);
  end component;

  component baud_gen is
    port (
            CLOCK_50          : in std_logic;
            resetn            : in std_logic;
            select_baudrate   : in std_logic_vector(2 downto 0);
            start_count       : in std_logic;
            baud_enable_r     : out std_logic;
            baud_enable_s     : out std_logic
    );
  end component baud_gen;

  component enable_gen Is
  	port ( clock_50 		 : in std_logic;
  			 resetn 			   : in std_logic;
  			 select_enable	 : in std_logic_vector(2 downto 0);
  			 enable			     : out std_logic
  	);
  end component;

  --Part 1 signals
  signal sync_rst                     : std_logic;
  signal start_count                  : std_logic;
  signal baud_enable_s, baud_enable_r : std_logic;
  signal sender                       : std_logic;
  signal enable_out, hello            : std_logic;
  signal rec_hello               : std_logic;
  signal dff, dff_1                   : std_logic;

  --Part 2 signals
  type sender_state_type is (s_idle, s_transmit, s_shift_out, s_wait, s_finish);
  signal sender_state : sender_state_type;

  type rec_state_type is (s_idle, s_wait_for_sender, s_shift_in, s_offload, s_error);
  signal rec_state : rec_state_type;

  signal start_sender, start_q, start_qq  : std_logic;
  signal dout                             : std_logic;

  signal send_shift_reg                   : std_logic_vector(9 downto 0);
  signal rec_shift_reg                    : std_logic_vector(10 downto 0);

  signal stop_bit                         : std_logic := '1';
  signal start_bit                        : std_logic := '0';

  signal error_signal                     : std_logic;
  signal rec_data                    : std_logic_vector(7 downto 0);

  signal din, din_q, din_qq, din_qqq      : std_logic;

  signal rst_gpio                         : std_logic;
begin

  enable_out_inst : enable_gen
  port map (
            clock_50      => CLOCK_50,
            resetn        => sync_rst,
            select_enable => "000",
            enable        => enable_out
  );

  reset_sync_inst : reset_sync
  port map (
            clk       => CLOCK_50,
            rst_n     => KEY(3),
            rst_clk_n => sync_rst
  );

  baud_gen_inst : baud_gen
  port map (
            CLOCK_50        => CLOCK_50,
            resetn          => sync_rst,
            select_baudrate => SW(16 downto 14),
            start_count     => start_count,
            baud_enable_r   => baud_enable_r,
            baud_enable_s   => baud_enable_s
  );

  -- Part 1 signal assignments
  sender <= SW(17);
  LEDR(17) <= hello when sender = '1' else rec_hello;
  LEDG(0) <= rec_hello when sender = '0' else '0';

  --Part 1 processes
  p_send_receive_hello : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if sender = '1' then
        GPIO(1) <= hello;
        rec_hello <= '0';
      else
        GPIO(1) <= 'Z';
        dff   <= GPIO(1);
        dff_1 <= dff;
        rec_hello <= dff_1;
      end if;
    end if;
  end process;

  p_hello : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if enable_out = '1' then
        hello <= not hello;
      end if;
    end if;
  end process;

--Part 2 signal assignments
start_sender <= KEY(0);

LEDR(16) <= error_signal when sender = '0' else '0';
LEDR(8 downto 1) <= rec_data;

din <= GPIO(7) when sender = '0' else '1';
GPIO(7) <= dout when sender = '1' else 'Z';

GPIO(5) <= 'Z' when sender = '0' else sync_rst;
rst_gpio <= GPIO(5);

--Part 2 processes
p_sync_start : process(CLOCK_50) is
begin
  if rising_edge(CLOCK_50) then
    if sync_rst = '0' then
      start_q  <= '0';
      start_qq <= '0';
    else
      start_q <= not start_sender;
      start_qq <= start_q;
    end if;
  end if;
end process;

p_state_machine : process(CLOCK_50) is
begin
  if rising_edge(CLOCK_50) then
    if sender = '1' then
      if sync_rst = '0' then
        sender_state <= s_idle;
      else
        case sender_state is
          when s_idle       =>
            dout <= '0';
            send_shift_reg <= (others => '0');
            if start_qq = '1' then
              sender_state <= s_transmit;
            end if;

          when s_transmit   =>
            dout <= '1';
            send_shift_reg <= stop_bit & SW(8 downto 1) & start_bit;
            if baud_enable_s = '1' then
              sender_state <= s_shift_out;
            end if;

          when s_shift_out  =>
            if baud_enable_s = '1' then
              if send_shift_reg = "0000000000" then
                sender_state <= s_finish;
                dout <= '1';
              else
                dout <= send_shift_reg(0);
                send_shift_reg <= '0' & send_shift_reg(9 downto 1);
              end if;
            end if;

          when s_finish     =>
            rec_data <= send_shift_reg(8 downto 1);
            dout <= '1';
            if baud_enable_s = '1' then
              sender_state <= s_wait;
            end if;

          when s_wait       =>
            dout <= '1';
            if baud_enable_s = '1' then
              sender_state <= s_transmit;
            end if;
        end case;
      end if;

    elsif sender = '0' then
      if rst_gpio = '0' then
        rec_state <= s_idle;
        rec_data <= (others => '0');
      else
        case rec_state is
          when s_idle            =>
            dout <= '1';
            error_signal <= '0';
            rec_shift_reg <= (10 => '1', others => '0');
            if din_qq = '1' then
              rec_state <= s_wait_for_sender;
            end if;

          when s_wait_for_sender =>
            dout <= '1';
            if din_qq = '0' then
              rec_state <= s_shift_in;
            end if;

          when s_shift_in        =>
            -- LEDR(13) <= '1';
            if rec_shift_reg(0) = '1' and rec_shift_reg(10) = '0' then
              rec_state <= s_error;
              -- LEDR(12) <= '1';
            elsif rec_shift_reg(0) = '1' and rec_shift_reg(10) = '1' then
              rec_state <= s_offload;
              -- LEDR(11) <= '1';
            elsif baud_enable_r = '1' then
              -- LEDR(10) <= '1';
              rec_shift_reg <= din_qq & rec_shift_reg(10 downto 1);
            end if;

          when s_offload         =>
            -- LEDR(9) <= '1';
            rec_data <= rec_shift_reg(8 downto 1);
            rec_state <= s_idle;
          when s_error           =>
            error_signal <= '1';
        end case;
      end if;
    end if;
  end if;
end process;

p_sync_din_and_baud_gen : process(CLOCK_50) is
begin
  if rising_edge(CLOCK_50) then
    if sync_rst = '0' then
      start_count <= '0';
      din_q <= '0';
      din_qq <= '0';
      din_qqq <= '0';
    else
      start_count <= '0';
      din_q <= din;
      din_qq <= din_q;
      din_qqq <= din_qq;
      if din_qqq = '1' and din_qq = '0' then
          if rec_state = s_wait_for_sender then
            start_count <= '1';
          end if;
      end if;
    end if;
  end if;
end process;
end architecture;
