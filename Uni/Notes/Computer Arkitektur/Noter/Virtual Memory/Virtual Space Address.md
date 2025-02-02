---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---
The virtual address space of a process refers to the logical (or virtual) view of how a process is stored in memory; virtual address spaces that include holes are known as sparse address spaces. The memory management unit (MMU) maps logical pages to physical page frames in memory.
***
The virtual address space of a process refers to the logical (or virtual) view of how a process is stored in memory, i.e., a process begins at
address 0 and ends at address max in contiguous virtual memory.
The gap between [[Memory(Heap and Stacks)|Heaps and Stacks]] is part of the virtual address space. but will require actual physical page frames only:
* When the stack or heap grow.
* Or when libraries or other shared objects are dynamically linked during the program execution.
![[Pasted image 20231013085223.png|350]]

***
#### Example Shared Libraries
![[Pasted image 20231013085551.png]]
