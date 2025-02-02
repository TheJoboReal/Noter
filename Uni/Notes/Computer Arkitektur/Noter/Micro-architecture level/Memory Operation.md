---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---
On the Mic-1, we have two ways to access memory.
* Via MAR (Memory Address Reg.) / MDR (Memory Data Reg.) 32-bit reg. which accesses the memory in word sizes (32-bit) 1 Giga addresses of 32-bit data (= 4GB)
![[Pasted image 20231110215550.png]]
* Via PC (Program Counter) / MBR (Memory Byte Reg.) 32-bit reg. which accesses the memory in byte sizes (8-bit) 4 Giga addresses of 8-bit data (= 4GB)

#### MAR
The Memory Address Register (MAR) is a component in a computer's architecture that stores the address in memory of the data or instruction that is currently being accessed or processed by the CPU (Central Processing Unit). In other words, the MAR holds the memory address of the location where the CPU needs to read data from or write data to. When a program or instruction is executed, the CPU uses the value stored in the MAR to specify the location in the computer's memory where the required data or instruction is located.

#### MDR
The Memory Data Register (MDR) is a component in a computer's architecture that holds the actual data that is read from or written to the computer's memory. When the CPU fetches data from a specific memory address (as indicated by the Memory Address Register or MAR), the retrieved data is temporarily stored in the MDR. Similarly, when the CPU needs to write data to a specific memory address, it first places the data in the MDR before it is written to the specified location in memory. The MDR acts as a buffer for data moving between the CPU and memory, ensuring smooth and efficient data transfer during program execution.

#### PC/MBR
PC/MBR combination is used to read the executable ISA-level program, which consists of a byte stream.

8-bit MBR can be put onto the 32-bit B bus in 2 different ways.
* Unsigned 
	Here the MBR is put on the 8 LSBs, the upper 24 bits are set to 0
 ![[Pasted image 20231110215714.png]]
* Signed 
	Here the MBR is put on the 8 LSBs, the upper 24 bits are set, cf. the MSB bit in MBR (called Sign Extension)
![[Pasted image 20231110215804.png]]
