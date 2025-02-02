---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---
We must protect the operating system from access by user processes, as well as protect user processes from one another. This protection must be
provided by the hardware.
Each process has a separate memory space. Separate per-process memory
space protects the processes from each other and is fundamental to
having multiple processes loaded in memory for concurrent execution.
To separate memory spaces, The base register holds the smallest legal
physical memory address while the limit register specifies the size of the
range.

![[Pasted image 20231006121813.png]]

***
#### Protection of Memory Space
Protection of memory space is accomplished by having the CPU hardware compare every generated address with the registers.
Any attempt by a program executing in user mode to access operating-system memory or other users' memory results in a trap to the operating system, which treats the attempt as a fatal error.
This scheme prevents a user program from (accidentally or deliberately) modifying the code or data structures of either the operating system or other users.
![[Pasted image 20231006121910.png]]
