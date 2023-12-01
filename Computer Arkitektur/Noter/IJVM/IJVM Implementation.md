
By decodingMicro Instruction Register(MIR), we can see what a micro
instruction does, but this interpretation is not easy for programmers.
![[Pasted image 20231201080934.png]]
The micro instructions that make up an IJVM instruction do not have
to be in order in the control store.
* a micro instruction explicitly designate its successor by using Addr bits (next address).
The first micro instruction in an IJVM instruction must be located at the
address specified by the IJVM instruction's machine code (binary number).

![[Pasted image 20231201080853.png]]

We therefore need a symbolic microprogramming language as well as 
a micro assembler that solves the following tasks:
* Translate symbolic instructions into machine codes (bit patterns)
* Handling / calculation of absolute addresses for symbolic labels of micro instructions
* Location in the control store with the calculation of NEXT_ADR field for each micro instruction

#### 