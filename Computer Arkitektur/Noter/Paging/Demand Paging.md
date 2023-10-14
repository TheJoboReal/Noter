With demand-paged virtual memory, pages are loaded only when they are demanded during program execution.
Demand paging requires hardware support for: (a) page table, and (b) secondary memory. Furthermore, a crucial requirement for demand paging is the ability to restart any instruction after a page fault.
![[Pasted image 20231013085757.png]]

***
#### Page Fault Handling
![[Pasted image 20231013085833.png]]

***
#### Restarting Instruction
A crucial requirement for demand paging is the ability to restart any instruction after a page fault. Because we save the state (registers, condition code, instruction counter) of the interrupted process when the page fault occurs, we must be able to restart the process in exactly the same place and state, except that the desired page is now in memory and is accessible.
![[Pasted image 20231013090147.png]]
In most cases, this requirement is easy to meet. The major difficulty arises when one instruction may modify several different locations, e.g., Block move.
* Solution 1: the microcode computes and attempts to access both ends of both blocks. If a page fault is going to occur, it will happen at this step, before anything is modified.
* Solution 2: uses temporary registers to hold the values of overwritten locations. If there is a page fault, all the old values are written back into memory before the trap occurs.
