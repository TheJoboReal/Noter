---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---
A symbolic microprogramming language
When designing the language, one possible approach is simply to list all the signals that should be activated in each clock cycle (micro instruction):
>Example: Suppose that in one cycle we want to increment the value of SP. We also want to initiate a read operation, and we want the next instruction to be the one residing at location 122 in the control store. 

ReadRegister = SP, ALU = INC, WSP, Read, NEXT_ADRESSE = 122 

This notation is complete but hard to understand. If we write instead: SP = SP+ 1; rd 

Here it says the same as before, just in a more readable and manageable way, which is the purpose of designing MAL. MAL is tailored to reflect the characteristics of the microarchitecture. 
**Note that we leave it to the compiler to calculate NEXT_ADRESSE** 

#### Syntax
Legal syntax examples:
* MDR = SP copies SP to MDR (assignment statement)
* MDR = H + SP is the same as MDR = SP + H (commutative)
* SP = MDR = SP + 1 increase SP by 1 and save in MDR and SP (multiple assignments)

Illegal syntax examples:
* MDR = SP + MDR cannot be performed, H must be the one of the operands for an addition.
* H = H – MDR H must be subtrahend (minuend – subtrahend = difference)
**Note: It is up to the micro assembler to reject statements that look valid but are, in fact, illegal.**

***
Here is an overview table of all permitted operations SOURCE can be any of MDR, PC, MBR, MBRU, SP, LV, CPP, TOS, or OPC (MBRU implies the unsigned version of MBR). These registers can all act as sources to the ALU on the B bus. 

Similarly, DEST can be any of MAR, MDR, PC, SP, LV, CPP, TOS, OPC, or H, all of which are possible destinations for the ALU output on the C bus. 

All operations here can be extended with <<8 This will cause to shift the result one byte to the left. E.g.: H = MBR <<8 
![[Pasted image 20231201081301.png]]

##### Memory Access
It is not possible to write for example:
**MAR = SP;rd
MDR =H**
This will cause the memory and H to write to the MDR at the same time. This conflict will lead to an undefined result for MDR 

Also note that memory access has other challenges
**MAR =SP; rd** Read the top word on the stack
**H = MDR** H will not contain the read value!

This, for instance, will work
**MAR =SP; rd** Read the top word on the stack
**SP = SP +1
H =MDR**

This, or any other micro instruction
Now H is going to contain the read value!

##### Branch function
Syntax - Branch function
We remember that micro instructions do not have to be in order.
* The micro assembler fills in the NEXT_ADDRESS field itself

But sometimes there is a need to control the NEXT_ADDRESS field for branching away either unconditionally or conditionally.
Unconditional Branch examples:
**goto Main1
goto L1**
**goto (MBR** OR value) value is almost always 0 (to start an IJVM instruction)

Conditional Branch is determined by the Z and N bits together with JAMZ and
JAMN. Z and N bits can be set by checking if TOS is zero:
**TOS = TOS** this operation will update both Z and N bits
**Z = TOS or N = TOS** both will also update both Z and N bits

Conditional Branch examples:
**If (Z) goto L1; else goto L2 note L1 = L2** OR 0x100 (256 – 511)
**Z = TOS; If (Z) goto L1; else goto L2** these two statements can be combined
