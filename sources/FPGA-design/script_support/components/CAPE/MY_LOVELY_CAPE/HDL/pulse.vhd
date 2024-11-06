library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity pulse is
port(
    C   : in std_logic;
    R   : in std_logic;
	O 	: out std_logic
);
end entity pulse;

architecture rtl of pulse is
signal counter : unsigned(24 downto 0);
begin
    process(C) is
    begin
        if rising_edge(C) then
            if R = '0' then
                counter <= (others => '0');
            else
				counter <= counter + 1;
                if counter = (counter'range => '1') then 
					O <= '1';
				else 
					O <= '0';
				end if;
            end if;
        end if;
    end process;
end architecture rtl;
