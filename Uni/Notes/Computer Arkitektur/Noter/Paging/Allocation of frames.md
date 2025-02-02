---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---
Besides the [[Page Replacing|page replacing]], the other important issue in the
implementation of demand paging is frame allocation, i.e., How do
we allocate a fixed amount of free memory (frames) among the
various processes?

Here are 2 main schemes when frames are to be allocated
* Equal (or fixed) allocation
* Proportional allocation

There is also a requirement for the minimum number of frames a
process is assigned
* This is defined by the computer architecture (while the maximum number is defined by the amount of available physical memory).

***
#### Equal allocation - example
If we have a system with 128 frames with a 1-KB frame size 
the operating system occupies 35 KB i.e., 35 frames 93 frames for user processes

If there are 5 processes, then they get 18 frames each. (5 x 18 = 90
frames) the leftover 3 pages are placed in the free-frame buffer pool.
Since the processes can have very different sizes, so this may not be a fair distribution of resources.

***
#### Proportional allocation - example
Assume we have m = 62 available free frames for user processes
if there are 2 processes, one of 10 KB and the other one of 127 KB and they got 31 each according to the equal allocation
* then the small process would not be able to utilize all its assigned frames.
* and the big process would get unnecessarily many page faults.

Assume $Si$ is the virtual memory of process $\pi$, and define $S$:
![[Pasted image 20231013093705.png]]

***
#### Local and Global allocation
Another important factor is how frames are allocated to processes when there are no more available frames in page replacement.
There are 2 options for multiple processes competing for frames.
* Local allocation - page replacement occurs within the process's own
frames
o more consistent performance for each process without influence of
different external circumstances (the other processes)
o possibly poorer utilization of memory

* Global allocation - page replacement occurs among the set of all frames including those from all lower-priority processes
o execution time for processes can vary greatly due to the "theft"
o but better system throughput, so therefore most commonly used.

