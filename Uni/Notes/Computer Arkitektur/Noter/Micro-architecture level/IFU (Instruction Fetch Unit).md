---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---
![[Pasted image 20231201084220.png]]
This unit automatically fetches instructions (opcodes) and indexes (operands)
* Instructions in MBR1 (8-bit)
* Indexes in MBR2 (16-bit) H = MBR<<8 and H = H OR BMRU are avoided here
* IMAR fetches instructions from method area in words (4 bytes per word)
* PC will always point to the first byte that has not yet been fetched/consumed.

#### Finite State Machine
![[Pasted image 20231201084249.png]]
* (←) indicates reading from MBR1 (8 bits are replaced) or MBR2 (16 bits are replaced)
* (→) indicates writing to the shift register (32 bits are replaced)

#### Explained
IFU typically stands for "Instruction Fetch Unit." The Instruction Fetch Unit is a component within a computer's central processing unit (CPU) that is responsible for fetching instructions from memory for execution. It is a crucial part of the instruction cycle, which is the sequence of steps that a [[CPU]] follows to fetch, decode, and execute instructions.


1. **Fetch Stage:** During the fetch stage of the instruction cycle, the IFU retrieves the next instruction from the memory. The memory address from which the instruction needs to be fetched is usually stored in a program counter (PC) register.
    
2. **Program Counter (PC):** The program counter is a register that keeps track of the memory address of the next instruction to be executed. After fetching an instruction, the PC is typically incremented to point to the next sequential instruction.
    
3. **Memory Access:** The IFU communicates with the system's memory subsystem to retrieve the instruction located at the memory address stored in the program counter.
    
4. **Instruction Register (IR):** Once the instruction is fetched, it is stored in a special register called the instruction register (IR). The instruction register holds the binary representation of the instruction until it is further processed.
    
5. **Next Instruction:** After fetching the instruction, the CPU proceeds to the decode and execute stages of the instruction cycle. The instruction is decoded to determine the operation to be performed, and the appropriate execution unit is activated to carry out the operation.
    

The IFU ensures a continuous flow of instructions into the CPU, enabling the processor to execute a series of instructions in a program. Efficient operation of the IFU is essential for maintaining a high level of instruction throughput and overall system performance.

In more advanced processors, especially those with multiple cores or pipelines, the IFU may be part of a more complex structure that includes branch prediction mechanisms and other optimizations to further enhance instruction fetching efficiency.