![[Pasted image 20231025130430.png]]
From the control unit, there are connections that control the
various registers of the [[CPU|CPU]].

It is the control unit that executes a sequence of operations that will correspond to a specific instruction. E.g., the [[Program execution of the LOAD instruction|LOAD]] instruction 

This sequence of operations, which implement the instruction, are called: **micro‐instructions**

***
#### The control unit of Hardwired Circuit design
![[Pasted image 20231025130829.png]]
Here, a Programmable Logic Array **(PLA)** is used to implement a
hardwired circuit for the control unit. 

**Disadvantage:** Inflexible later changes in the control unit require a total redesign of the entire circuit. 

**Advantage:** Efficient

***
#### the control unit of Microprogram design
![[Pasted image 20231025131045.png]]
Here, each instruction is executed as a form of subroutine consisting of micro-instructions

**Advantage:** Flexible

>A computer in a computer

**Disadvantage:** Less efficient

***
#### Design of the Control Unit
The following considerations should be made when designing micro-
instruction words:

* Minimizing the size of the microcode memory in width, i.e., micro-word size.
* Minimizing the size of the microprogram, i.e., the size of the microcode memory in length.
* Maximizing the flexibility of adding and changing microinstructions.
* Maximizing the simultaneous execution of microoperations.
