library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity top is
    Port (  clk: in std_logic;
            switch_red: in std_logic; -- switch_red
            switch_green: in std_logic; -- switch_green
            switch_blue: in std_logic; -- switch_blue
            adc_input: in std_logic;
            led5_r:out std_logic;
            led5_g:out std_logic;
            led5_b:out std_logic
    );
end top;

architecture Behavioral of top is
    component pwm is
        Port (
            clk: in std_logic;
            value: in std_logic_vector(7 downto 0);
            pwm: out std_logic
        );
    end component;
    
    component design_1_wrapper is
        Port(
            dclk_in_0 : in STD_LOGIC;
            daddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
            vauxp14_0 : in STD_LOGIC;
            vauxn14_0 : in STD_LOGIC;
            do_out_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
            drdy_out_0 : out STD_LOGIC
        );
    end component;
    
    signal intensity: std_logic_vector(7 downto 0) := "11111111";
    signal intensity_std_logic : std_logic;
    
    signal drdy: std_logic := '0';
    signal xadc_val: std_logic_vector(15 downto 0);
    
begin

    led5_r <= intensity_std_logic when switch_red = '1' else '0';
    led5_g <= intensity_std_logic when switch_green = '1' else '0';
    led5_b <= intensity_std_logic when switch_blue = '1' else '0';

    intensity <= xadc_val(15 downto 8) when drdy='1' else intensity;

    pwm_red: pwm port map(
        clk=>clk,
        value=> intensity,
        pwm=> intensity_std_logic
    );
    
    xadc: design_1_wrapper port map(
        dclk_in_0=> clk,
        daddr_in=>"0011110",
        do_out_0=>xadc_val,
        drdy_out_0=>drdy,
        vauxn14_0=>'Z',
        vauxp14_0=>adc_input
    );
end Behavioral;