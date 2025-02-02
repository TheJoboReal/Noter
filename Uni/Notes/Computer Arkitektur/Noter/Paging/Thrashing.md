---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---
When a process is spending more time paging than executing is said to be thrashing. This can occur if, for example, the OS uses a global allocation scheme and tries to increase CPU utilization by increasing the degree of multiprogramming (more processes), which in turn leads to more page faults (new processes need memory), leading to lower CPU utilization – and the cycle repeats.

When a process spends almost all its time on page replacement. This high paging activity is called thrashing.
![[Pasted image 20231013094136.png]]

The effects of thrashing can be limited by using a [[Allocation of frames#Local and Global allocation|local replacement algorithm]].
As mentioned earlier, local replacement requires that each process
select from only its own set of allocated frames. Thus, if one process
starts thrashing, it cannot steal frames from another process and cause the latter to thrash as well.

Ro prevent thrashing, we must provide a process with as many frames
as it needs. One strategy is to utilize the locality model to figure out the current need of a process. Because all processes have locality (e.g., 90% of the time within 10% of the code)
* processes move from one locality to another
* localities may have overlap

