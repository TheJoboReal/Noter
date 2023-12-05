Mic-1 is a processor architecture whose
data path contains 32-bit registers, buses,
ALU and shifter.
![[Pasted image 20231110214757.png]]

#### Mic-1 ALU 1-bit version
![[Pasted image 20231110214929.png]]

#### Mic-1 ALU 8-bit version
![[Pasted image 20231110215025.png]]
* F1 and F0 are connected in parallel to all the [[ALU (Arithmetic Logic Unit)|ALUS]]s
* ENA, ENB and INVA are also connected in parallel, although we do not see them here.

This is called a modular design and it provides good expansion possibilities If you connect 32 pieces of 1-bit ALUs after the same idea, then a 32-bit ALU is obtained This is exactly what a Mic-1 processor has

#### Overview
![[Pasted image 20231110220118.png]]

#### Branching functionality
This functionality is determined by the JAM field in the microinstruction e.g.
![[Pasted image 20231110221439.png]]
High bit = (JAMZ AND Z) OR (JAMN AND N)
If JMPC = 1, then the address field is usually 0. The next instruction is determined by the contents of the [[Memory Operation#PC/MBR|MBR]] register. In a typical use, [[Memory Operation#PC/MBR|MBR]] contains an opcode, so the use of JMPC will result in a unique selection for the first microinstruction to be executed for every possible opcode. 

>The first microinstruction in an instruction is located in the Control Store at the address indicated by the machine code of the instruction. 

#### Local Variables
Mic-1 uses stacks to support local variables (like all other machines)
Here, two registers are used as pointers that support this concept
* LV (Local Variable) points to the base of the local variables of the current procedure
* SP (Stack Pointer) points to the highest variable of the current procedure
![[Pasted image 20231110221525.png]]
(a) procedure A has 3 local variables lying on the Stack

(b) procedure A has called procedure B, which has 4 variables lying on the Stack

(c) procedure B has called procedure C, which has 2 variables lying on the Stack

(d) procedure C and B are completed, and A has called procedure D which has 5 variables

#### Operand Stack
[[Computer Arkitektur/Noter/Micro-architecture level/IJVM instruction set|IJVM]] is a Stack machine
Java uses this concept as it does not require the [[CPU]] design for special registers in the [[CPU]] for the various operations.
Let us see an example: a1 = a2 + a3
![[Pasted image 20231110221621.png]]

#### [[Computer Arkitektur/Noter/Micro-architecture level/IJVM instruction set|IJVM]] memory model
The Data Path contains registers that handle the memory model
![[Pasted image 20231110221719.png]]
