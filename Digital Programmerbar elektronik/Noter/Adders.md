#### Half Adder
* Half adder (HA): it adds two single binary digits A and B.
* It has two outputs, sum (S) and carry (C).
	* S = A XOR B
	* C = A AND B

![[Pasted image 20240403125525.png]]
![[Pasted image 20240403125535.png]]

##### Code Example
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
entity Half_Adder is
Port ( a : in STD_LOGIC;
b : in STD_LOGIC;
s : out STD_LOGIC;
c : out STD_LOGIC);
end Half_Adder;
architecture Behavioral of Half_Adder is
begin
process
begin
s <= a xor b;
c <= a and b;
end process;
end Behavioral;
```

#### Full Adder
* Full Adder (FA): it adds three bits, often written as A, B, and $C_{in}$ ; A and B are the operands, and $C_{in}$ is a bit carried in from the previous less-significant stage (e.g., coming from a previous half adder).
* S = A XOR B XOR $C_{in}$
* $C_{out}$ = (A AND B) OR ($C_{in}$ AND (A XOR B))

![[Pasted image 20240403125658.png]]
![[Pasted image 20240403125710.png]]

##### Code Example
```VHDL
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

  

-- Uncomment the following library declaration if using

-- arithmetic functions with Signed or Unsigned values

--use IEEE.NUMERIC_STD.ALL;

  

-- Uncomment the following library declaration if instantiating

-- any Xilinx leaf cells in this code.

--library UNISIM;

--use UNISIM.VComponents.all;

  

entity Full_Adder is

Port ( a : in STD_LOGIC;

b : in STD_LOGIC;

cin : in STD_LOGIC;

s : out STD_LOGIC;

cout : out STD_LOGIC);

end Full_Adder;
architecture Behavioral of Full_Adder is
begin
process(a, b, cin)
begin
s <= a xor b xor cin;
cout <= (a and b) or (b and cin) or (a and cin);
end process;
end Behavioral;
```

#### Ripple-carry adder
An iterative array to perform binary addition, full adders
chained together
* The longest path delay is from (A0 or B 0) to S 3, 
	Or from $C_{i.0}$ to $C_{0.3}$
* It has the advantage of requiring less hardware
![[Pasted image 20240403130033.png]]

#### Carry-look-ahead adder
A hierarchical adder to improve performance (faster
than Ripple adder but takes more resources)
* It is based on Propagate and Generate concept
* P = A XOR B , G = A AND B
* P and G can be calculated in advance since none of them depends on the carry bit (Cin).
![[Pasted image 20240403130122.png]]
![[Pasted image 20240403130135.png]]
![[Pasted image 20240403130146.png]]
