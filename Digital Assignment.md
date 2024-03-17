


#### Simulation
![[Pasted image 20240316200003.png|1000]]

#### Code
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock is
    Port (
           clk,
           rst : in STD_LOGIC:= '0';
           seconds_out : out std_logic_vector(3 downto 0);
           minuts_out : out std_logic_vector(3 downto 0));
end clock;

architecture Behavioral of clock is

constant clock_speed: integer := 1000;
signal count: unsigned(31 downto 0) := (others => '0');
signal seconds: unsigned(7 downto 0) := (others => '0');
signal minuts: unsigned(7 downto 0) := (others => '0');

begin
    process(clk, rst)
begin
    if(rst = '1') then
        seconds_out <= (others => '0');
        minuts_out <= (others => '0');
    elsif(rising_edge(clk)) then
        count <= count + 1;
    if(count = clock_speed) then
        count <= (others => '0');
        seconds <= seconds +1;
        if(seconds = 60) then
            seconds <= (others => '0');
            minuts <= minuts + 1;
        end if;
    end if;
end if;
end process;

seconds_out <= std_logic_vector(seconds);
minuts_out <= std_logic_vector(minuts);

end Behavioral;

´´´