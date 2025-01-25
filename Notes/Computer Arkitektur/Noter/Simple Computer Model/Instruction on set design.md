The construction of an instruction set is one of the most important
aspects of processor design.
![[Pasted image 20231025132134.png]]
When an instruction set is designed, then one must seek answers to
these questions.
* How many instructions are needed?
* What types of operations are needed?
* How many operand fields and what types of operands will be allowed in each instruction?


* How many instructions are needed?
The number of instructions helps determine the size of the Opcode
![[Pasted image 20231025132309.png]]
The larger the number of instructions, the wider the Opcode field.
Wider Opcode field →each instruction takes up more memory
More instructions→the program can be written with fewer and more precise instructions

**More instructions** lead to the **[[CISC]]** design: Complex Instruction Set Computer.
The complexity means that each instruction can take several clock cycles, but the total execution speed of a program is increased due to less instructions.


**The fewer** the number of instructions, the narrower the Opcode field.
Narrower Opcode field →each instruction takes up less memory

Fewer instructions→the program takes up more space as more Instructions need to be done to achieve the same functionality
Fewer instructions lead to the **RISC** design: Reduced Instruction Set Computer
It also leads to slower execution time due to the program needing more smaller instructions.

Simplicity means that instructions are often performed within 1 clock cycle, so the execution speed of individual instruction is increased.

***
#### How many instructions are needed?
This is a trade-off of whether you want functionality to be
implemented as instructions in the CPU:
* Shorter access time (compared to access to memory)
* However, slower than RISC due to the complexity
* Smaller program
* More power consumption

Or as subroutines in the program:
* Longer access time (compared to access to the CPU)
* However, faster than [[CISC]] thanks to the simplicity
* Larger program (with subroutines or libraries)
* Less power consumption

***
#### What types of operations are needed
* What types of operations are needed?

>Although the instruction sets vary in the different processor types, they almost all contain the same types of operations. These operations can be divided as follows:

* **Data transfer operations:** move (or copying) data from one location (memory or register) to another location (also memory or register).
* **Arithmetic operations:** perform basic arithmeticoperations.
* **Logical operations:** perform Boolean operations.
* **Control operations:** check a sequence of instruction executions, e.g., SKIP, RETURN, HALT.
* **System operations:** Instructions specifically designed for use with the operating system, e.g., system calls and memory management.
* **I/O operations:** move data between memory and external I/O devices.

***
#### How many operand fields and what types of operands will be allowed in each instruction?
In a typical set of instructions, the size of the operand field is quite limited.

However, it is necessary to be able to refer to a very large amount of memory from this limited operand field. In order to achieve this, various addressing modes have been introduced. The most commonly used addressing modes are:
##### Immediate addressing
In this addressing mode, the operand field contains the data itself and
the data does not have to be retrieved from the memory first via an
operand fetch.

The disadvantage is that the value range of the operands is limited by the limited size of the operand field and that data must be known at the time of compilation (constants).

##### Direct addressing
In this addressing mode, the operand field contains an address for the
data you want to access, which is also known as absolute addressing

If the field points to a register that contains data, this is called register direct addressing. 

It only requires a memory (or register) reference, which does not require any special calculation of the address in order to perform an operand fetch. However, the size of the operand field has a direct influence on the size of memory that can be addressed.

##### Indirect addressing
In this addressing mode, the operand field contains an address of a memory location or a register for the target address, which contains the data you want to access. 

If the field points to a register which contains the address of the data you want to access, this is called register indirect addressing. 

In this addressing mode, the area that can be addressed depends on the length of the memory cell or register referenced via the operand field. It will often be a much larger area than what can be addressed with direct addressing mode. The main disadvantage is that two references are required to reach the target operand.

##### Displacement addressing
In this addressing mode, direct addressing and register indirect addressing are combined. It requires that the operand field consists of two subfields.
One of the two subfield is used to provide an address to access to a predefined register whose value is added to the value of the other
subfield. The sum is the target address.

The value of one operand field is called the offset from the address the other operand field points to. The term displacement is used because the values in the subfields are not large enough to address the entire memory.

##### Stack addressing
A stack can be considered as a linear array of address locations. Data units can be only moved to or removed from the top of a stack.

The stack addresses are actually one kind of register indirect addresses, since the address of the top element of a stack is always
stored by a special register, namely the stack register. 

This addressing mode is used, for example, by Java, as it does not make any special demands on the hardware. On the other hand, it is not very fast, as memory is accessed frequently.
