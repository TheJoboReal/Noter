---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---
Thrashing has a high page-fault rate. For a process, if the page-fault rate is too high, it needs more frames. Conversely, a low page-fault rate indicates that the process may have too many frames. A lower and upper bound can be defined for the page-fault rate, used to administer frame allocation.
![[Pasted image 20231013094919.png]]
* If the page-fault rate falls below a lower bound: the OS reclaim frames from the process to the free frame list.
* If the page-fault rate exceeds an upper bound: the OS allocate frames to the process from the free frame list.

***
#### Page Fault
A page fault is an exception that is raised by the [[Virtual Space Address|MMU]] when a process tries to access a page that was not brought into memory. A major page fault occurs when a page is referenced and the page is not in memory. Minor page faults occur when a process does not have a logical mapping to a page, yet that page is in memory (e.g., shared memory).
