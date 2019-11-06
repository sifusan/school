library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tilstandsmaskin is
    port(
        CLOCK_50 : in std_logic;
        KEY      :    std_logic_vector(3 downto 0);
        LEDR     :    std_logic_vector(17 downto 0)
    );
end entity tilstandsmaskin;

architecture RTL of tilstandsmaskin is

    Component Enable_gen Is
        Port(clock_50    : in  std_logic;
             resetn      : in  std_logic;
             velg_enable : in  std_logic_vector(2 downto 0);
             Enable      : out std_logic);
    End component;

    Signal reset_n, clk, Enable, hallo : std_logic;
    Signal q, velg_enable              : std_logic_vector(2 downto 0);
    type tilstand is (s_null, en, to2, tre, fire, fem);
    signal state                       : tilstand;

begin
    LEDR(17)             <= hallo;
    clk         <= CLOCK_50;
    LEDR(2 downto 0)             <= q;
    reset_n     <= key(3);
    velg_enable <= "000";

    --fullfør component-instantiering;    
    Enable_gen_inst : component Enable_gen
        port map(
            -- 1
        );

    -- fullfør processen
    blinkede_lysdiode_hallo : process (clk) is
         begin
             if rising_edge(clk) then

            -- her


             end if;
         end process blinkede_lysdiode_hallo;
         
    -- fullfør processen
    tilstandsmaskin : process (clk) is
    begin
        if rising_edge(clk) then
            if reset_n = '0' then
                
            else
               case state is


               end case;
                
            end if;
        end if;
end process tilstandsmaskin;
         
    p_q : process(state) is
    begin
        case state is


        end case;
        
    end process p_q;
        

end architecture RTL;
