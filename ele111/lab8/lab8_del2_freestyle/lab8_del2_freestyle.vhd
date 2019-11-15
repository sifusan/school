library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab8_del2_freestyle is
  port (
        CLOCK_50 : in std_logic;
        SW       : in  std_logic_vector(17 downto 0);
        KEY      : in  std_logic_vector(3 downto 0);
        GPIO     : in  std_logic_vector(35 downto 0);
        LEDR     : out std_logic_vector(17 downto 0)
  );
end entity;

architecture rtl of lab8_del2_freestyle is

  component reset_sync is
  	port(
  			clk : in std_logic;
  			rst_n : in std_logic;
  			rst_clk_n : out std_logic
  		);
  end component;


  type send_state_type is (idle, notify, wait_init, transmit, wait_confirm, done);
  signal send_state : send_state_type;

  type rec_state_type is (wait_notify, send_confirm, receive, send_confirm);
  signal rec_state : rec_state_type;

  signal bits_to_send                       : std_logic_vector(7 downto 1);
  signal bits_to_rec                        : std_logic_vector(7 downto 1);

  signal is_sending                         : std_logic;

  signal confirmed_transfer : std_logic;
  signal notify_s, notify_s_d, notify_s_dd  : std_logic;

  signal sync_rst : std_logic;
begin

  sync_rst_inst : sync_rst
  port map (
            clk       => CLOCK_50,
            rst_n     => KEY(3),
            rst_clk_n => sync_rst
  );

  is_sending <= SW(17);
  notify_s <= KEY(0);

  p_sync_notify : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if sync_rst = '0' then
        notify_s_d   <= '0';
        notify_s_dd   <= '0';
      else
        notify_s_d <= not notify_s;
        notify_s_dd <= notify_s_d;
      end if;
    end if;
  end process;

  p_sender : process(CLOCK_50) is
  begin
    if rising_edge(CLOCK_50) then
      if is_sending = '1' then
        case send_state is
          when idle          =>

          when notify        =>

          when wait_init     =>

          when transmit      =>

          when wait_confirm  =>

          when done          =>

        end case;
      end if;
    end if;
  end process;

end architecture;
