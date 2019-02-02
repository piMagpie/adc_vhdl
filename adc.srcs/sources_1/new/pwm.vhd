library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity pwm is
 Port (
    clk: in std_logic;
    value: in std_logic_vector(7 downto 0);
    pwm: out std_logic
);
end pwm;

architecture pwm_generator of pwm is
   signal counter : unsigned(7 downto 0) := (others => '0');
begin
    counting:process(clk) is
    begin
        if rising_edge(clk) then
            counter <= counter + 1;
        end if;
    end process;

    pwm <= '1' when counter < (unsigned(value)) else '0';
end pwm_generator;
