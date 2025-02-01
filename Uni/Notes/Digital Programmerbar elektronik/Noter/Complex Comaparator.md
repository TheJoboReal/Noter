#### Definition
* std_logic_vector type does not indicate a value of the bus. To compare two buses, unsigned or signed types are used as comparison must be preformed between signals or variables that have a defined values.
* Example:
	* a,b,c,d,e,f are unsigned

#### VHDL example
```vhdl
process(a,b,c,d,e,f)
begin
	if(a = b and (c /= d or e >= f)) then
		y <= '1';
	else
		y <= '0';
	end if;
end process;
```
> *Extra parentheses enclosing “c /= d or e >= f” means that either one of these conditions and “a = b” must be true for the output to be at logic 1.