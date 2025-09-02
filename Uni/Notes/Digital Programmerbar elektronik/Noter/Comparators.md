---
tags:
  - lecture-note
  - uni
course: Digital Programmerbar elektronik
---
#### Definition
* A comparator compares two or more inputs using one, or a number of different comparisons.
* When the given relationship(s) is true, an output signal is given (logic 0 or logic1).
* Comparators are only modeled using the if statement with an else clause and no else-if clauses.
* Any two data objects are compared using equality and relational operators in the expression part of the if statement. Only two data objects can be compared at once, that is, statements like “if (a = b = c)” cannot be used.
* However, logical operators can be used to logically test the result of multiple comparisons, for example, “if ((a = b) and (a = c))”.
* The single bit output is at logic ‘1’ when the two n-bit input buses are the same, otherwise it is at logic ‘0’.
![[Pasted image 20240320123757.png]]

#### VHDL Example
![[Pasted image 20240320123751.png]]
```vhdl
entity comparator is
	port(
	a : in std_logic_vector(3 downto 0);
	b : in std_logic_vector(3 downto 0);
	y : out std_logic
	);
end comparator;

architecture Behavioral of comparator is
begin
    process(a,b)
    begin
      if (a = b) then
          y <= '1';
      else
          y <= '0';
      end if;
    end process;
end Behavioral;
```