
In order to read the keypad a counter loops through the rows waits for a keypress. When a keypress is detected the MUX translates that to a high-bit output, which then runs back into the counter that is active-low and stops it. We then see what row the counter was on to determine the key that was pressed. The pressed key is output as a 4 bit vector. 
![[Pasted image 20240428220455.png]]

***
A mask that can translate the keypad presses to characters was created. Unfortunately Vivado does not allow the character functions inside blockdiagrams. Therefore the binary values of the keys were used through the project. The mask works by looking at the pressed key and checks if there was infact a keypress. It then sets the outpur to the corresponding percentage in binary

***
Using the FSM complex model for our lock we create a state machine. The models makes sure that a person cant bruteforce the lock easily. The machine switches state when a keypress is detected and chooses the next state according to what key was pressed(ei to continue if the press was correct or to reset if wrong)
When the correct combination is input, the system goes from the locked to the unlocked state. This turns on an LED and allows the user to press a number from $0$ to A to set the PWM duty cycle between $100\%$ to $0\%$. 
![[Pasted image 20240428220433.png]]

***
To make sure the correct corresponding duty cycle is output, a mask is put between the PWM generator and the state machine. 

A clock divider is used to get a frequency of $16$kHz for the LED and keypad. For the clock divider the formula is used $125\cdot \frac{10^6}{10\cdot 10^3}=7812.5$ and then to get the needed amount of bits $\log_{2}(7812.5)=12.93=13$.
Therefore 13 bits are used in the clock divider.

***
I had a bunch of issues with Vivado crashing when attempting to simulate anything and once i finally got a correct simulation i got an error saying failed due to earlier errors. So i included all the importen code down below and i hope you can see that 

***
***

Clock Divider Code
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_divider is
    generic(n_bits : positive := 13);
    Port ( rst : in STD_LOGIC := '0';
           clk : in STD_LOGIC := '0';
           clk_div : out STD_LOGIC);
end clock_divider;

architecture Behavioral of clock_divider is
signal cnt : unsigned(n_bits-1 downto 0) := (others => '0');
begin
process(rst, clk)
begin
if(rst = '1') then
    cnt <= (others => '0');
elsif(rising_edge(clk)) then
    cnt <= cnt + 1;
end if;
end process;
clk_div <= '1' when cnt = (2**n_bits)-1 else '0';

end Behavioral;
```

***

PWM Code.
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity PWM_gen is
generic(size : positive := 4);
    Port ( cnt : in std_logic_vector(size-1 downto 0) := (others => '0');
           duty : in std_logic_vector(size-1 downto 0) := (others => '0');
           pwm : out STD_LOGIC
           );
end PWM_gen;

architecture Behavioral of PWM_gen is

begin
    pwm <= '1' when unsigned(cnt) < unsigned(duty) else '0';
end Behavioral;
```

***
PWM Counter Code

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_pwm is
    Port ( clk : in STD_LOGIC;
           cnt : out unsigned(3 downto 0));
end counter_pwm;

architecture Behavioral of counter_pwm is
    signal  cnt_int :   UNSIGNED(3 downto 0) :=  (others => '0');

begin
    process(clk)
    begin
        if rising_edge(clk) then
            cnt_int <= cnt_int + 1;
        elsif cnt_int = 10 then
            cnt_int <= (others => '0');
        end if;
    end process;

    cnt <= cnt_int;

end Behavioral;
```

***
Decoder Code

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder is
Port (
    a: in std_logic_vector(1  downto 0) := (others => '0');
    y: out std_logic_vector(3 downto 0)
 );
end decoder;

architecture Behavioral of decoder is

begin
    y <= "0001" when a = "00" else
    "0010" when a = "01" else
    "0100" when a = "10" else
    "1000" when a = "11" else
    "1111";

end Behavioral;
```

***
Mask Code For Keypad

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mask is
    Port ( cnt : in std_logic_vector(3 downto 0);
           key : out character;
           en : in std_logic
    );
end mask;

architecture Behavioral of mask is

begin
    key <=  '1' when cnt = "0001" else
            '2' when cnt = "0010" else
            '3' when cnt = "0011" else
            'a' when cnt = "0100" else
            '4' when cnt = "0101" else
            '5' when cnt = "0110" else
            '6' when cnt = "0111" else
            'b' when cnt = "1000" else
            '7' when cnt = "1001" else
            '8' when cnt = "1010" else
            '9' when cnt = "1011" else
            'c' when cnt = "1100" else
            '*' when cnt = "1101" else
            '0' when cnt = "1110" else
            '#' when cnt = "1111" else
            'd';
end Behavioral;
```

***
Mask for duty to PWM Code

```vhdl
entity mask_duty is
    Port ( key : in std_logic_vector(3 downto 0);
           key_pressed : in std_logic;
           duty : out std_logic_vector(15 downto 0)
    );
end mask_duty;

architecture Behavioral of mask_duty is

begin
    process(key, key_pressed)
        begin
            if key_pressed = '1' then
                if key = "0000" then        -- Keypad row 1
                    duty <= "00000000";
                elsif key = "0001" then
                    duty <= "00001010";
                elsif key = "0010" then
                    duty <= "00010100";

                elsif key = "0100" then     -- Keypad row 2
                    duty <= "00011110";
                elsif key = "0101" then
                    duty <= "00101000";
                elsif key = "0110" then
                    duty <= "00110010";

                elsif key = "0100" then     -- Keypad row 3
                    duty <= "00111100";
                elsif key = "1000" then
                    duty <= "01000110";
                elsif key = "1010" then
                    duty <= "01010000";

                elsif key = "0011" then     -- key A
                    duty <= "01011010";
                end if;
            end if;
    end process;
end Behavioral;
```

***

Mux Code
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity mux_4x1 is
    generic (N: positive := 2);

    Port ( d : in std_logic_vector(N**2 -1 downto 0);
           y : out STD_LOGIC;
           s : in std_logic_vector(N-1 downto 0)
    );
end mux_4x1;

architecture Behavioral of mux_4x1 is
begin
    y <= d(to_integer(unsigned(s)));
end Behavioral;
```
***

4 Bit Splitter Code

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spittler_4bit is
    Port ( cnt : in std_logic_vector(3 downto 0);
           top : out std_logic_vector(1 downto 0);
           bottom : out std_logic_vector(1 downto 0)
    );
end spittler_4bit;

architecture Behavioral of spittler_4bit is

begin
    top <= cnt(3 downto 2);
    bottom <= cnt(1 downto 0);

end Behavioral;
```

***
