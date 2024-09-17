

The clock timer has two inputs, a clock and a reset signal. In the code 3 signals are created to be used as temporary variables(count, seconds and minuts). A process is created with clock and reset as inputs. The count signal is incremented at every rising edge of the clock, and when the counter equals the clock speed, we then know that a second has passed, and we can thus increment the seconds signal. When the seconds equal 60 a minut has passed, and we can then increment the minuts signal. At the end the seconds and minuts signals are then used for the outputs.
#### Simulation
![[Pasted image 20240316200003.png|1000]]
We can see that at every rising edge the counter increments by one. 
And at a clock speed of 1000, the seconds signal increments every time the counter reaches 1000.
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