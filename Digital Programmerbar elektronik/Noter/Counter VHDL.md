#### Definition
A register that goes through a predetermined sequence of binary values (states), upon the application of input pulses on one or more inputs, is called a counter.
Counters count the number of occurrences of an event, that is, input pulses that occur either randomly or at uniform intervals of time. Counters are used extensively in digital design for all kinds of applications. Apart from general purpose counting, counters can be used as clock dividers and for generating timing control signals
![[Pasted image 20240228145034.png]]

#### Modeling of a 4 bits binary counter
* The simplest and most common way of modeling a binary counter that can increment or decrement is by adding or subtracting a constant 1 using the “+” or “−” arithmetic operators in assignments residing in a section of code inferring synchronous logic.
* An intermediate signal definition is made to define a new bus (count_temp) to hold the counter state which is necessary because we cannot assign value to output and read it in the same time; (we cannot do something like that: count_out <= count_out + 1 because count _out is defined as output), so we cannot read it inside (can not appear on the right hand side of any assignment), also the “+ 1” operation cannot by applied over std_logic_vector types as they do not implicitly have an equivalent value, instead an unsigned or signed types has to be used.
* Before the end of the architecture the value of the intermediate bus is then passed to the output bus after doing a type conversion to convert the type unsigned to std_logic_vector type used in the output bus definition in the entity declaration.
![[Pasted image 20240228145130.png]]

#### Modeling of a 4 bits binary counter with enable
The same counter implemented before is used but with adding extra control over the counting event, so this counter only counts when the enable signal is active, otherwise the counter holds its state.
![[Pasted image 20240228145210.png]]

