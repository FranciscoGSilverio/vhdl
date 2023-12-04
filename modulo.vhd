library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Modulo is
    Port ( Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Output : buffer integer range 0 to 7);
end Modulo;

architecture Behavioral of Modulo is

begin
    process(Clock, Reset) 
    begin
        if (Reset = '1') then 
            Output <= 0;
        elsif rising_edge(Clock) then
            if Output = 0 then
                Output <= 5;
            elsif Output = 5 then
                Output <= 4;
            elsif Output = 4 then
                Output <= 2;
            elsif Output = 2 then
                Output <= 6;
            elsif Output = 6 then
                Output <= 3;
            elsif Output = 3 then
                Output <= 1;
            elsif Output = 1 then
                Output <= 0;
            else
                Output <= 0;
            end if;
        elsif falling_edge(Clock) then
            Output <= Output;
        end if;
    end process;

end Behavioral;
