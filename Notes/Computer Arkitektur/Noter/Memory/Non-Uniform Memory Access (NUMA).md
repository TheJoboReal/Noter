Until now, we have assumed that all main memory is created equal. However, on non- uniform memory access (NUMA) systems with multiple CPUs, a given CPU can access local memory section faster than it can access other CPUs' memory sections.
The OS must take into account the CPU affiliation of processes.
![[Pasted image 20231013094004.png]]
