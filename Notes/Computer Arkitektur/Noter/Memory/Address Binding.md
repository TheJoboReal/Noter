To run, the program must be brought into memory and placed within the context of a process.
Most systems allow a user process to reside in any part of the physical memory.
The binding of processes’ instructions and data to memory addresses can be done at any step along the way:

*  Compile time: If you know at compile time where the process will reside in memory, then absolute code can be generated.
* Load time: If it is not known at compile time where the process will reside in memory, then the compiler must generate relocatable code. i.e., final binding is delayed until load time.
* Execution time: If the process can be moved during its execution from one memory segment to another, then binding must be delayed until run time.

![[Pasted image 20231006122124.png]]