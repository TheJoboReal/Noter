---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---
#### Dynamic Loading
Unlike before, where the entire program and all data of a process, should be in the physical memory when it was to be executed.
To obtain better memory-space utilization, we can use dynamic loading. a
routine is not loaded until it is called. All routines are kept on disk in a relocatable load format. The basic idea here is that not all functionality in a program should be used every time. As a result, a program will take up less space, and there may be more processes in the memory at the same time – i.e., better utilization.

>Dynamic loading does not require special support from the operating system. It is the responsibility of the users to design their programs to take advantage of such a method.

***
#### Dynamic Linking
**Dynamically linked libraries (DLLs)** (a.k.a. shared libraries) are system libraries that are linked to user programs when the programs are run. Some operating systems support only static linking, in which system libraries are treated like any other object module and are combined by the loader into the binary program image.

**Dynamic linking**, in contrast, is similar to dynamic loading. Here, though, linking, rather than loading, is postponed until execution time.

* Without this facility, each program on a system must include a copy of its (language) library in the executable image. This requirement not only increases the size of an executable image but also may waste main memory.
* A second advantage of DLLs is that these libraries can be shared among multiple processes, so that only one instance of the DLL in main memory.

Unlike dynamic loading, dynamic linking and shared libraries generally require help from the operating system. If the processes in memory are protected from one another, then the operating system is the only entity that can check to see whether the needed routine is in a memory space that can allow multiple processes to access.

***
#### Contiguous Memory Allocation - Memory Protection
When the CPU scheduler selects a process for execution, the dispatcher loads the relocation and limit registers with the correct values as part of the context switch.
we can protect both the operating system and the other users' programs and data from being modified by this running process by checking against these registers.
![[Pasted image 20231006123037.png]]
![[Pasted image 20231006123110.png]]

***
#### Contiguous Memory Allocation
Available memory blocks comprise a set of holes of various sizes scattered
throughout memory. When a process arrives and needs memory, the system searches the set for a hole that is large enough for this process. The following 3 strategies can be used:
* First-fit: Allocates the first hole in the set of holes that is large enough for the process
* Best-fit: Allocates the smallest hole in the set of holes that is large enough for the process
	o the entire set must be searched (unless it is sorted by size) other strategy leaves the smallest hole in the memory (utilization)
* Worst-fit: Allocates the largest hole in the list
	o the entire set must be searched (unless it is sorted by size)
	o the strategy leaves the largest hole in the memory (which may be large enough and can be used for other processes.
 
>First-fit and best-fit are better than worst-fit in terms of decreasing time and memory utilization

***
#### Fragmentation and Compaction
### Fragmentation
![[Pasted image 20231006123420.png]]
### Compaction
![[Pasted image 20231006123503.png]]
![[Pasted image 20231006123511.png]]

***
#### Swapping
![[Pasted image 20231006124440.png]]
Swapping makes it possible for the total physical address space of all processes to exceed the real physical memory of the system, thus increasing the degree of multiprogramming in
a system.

***
#### Swapping with [[Paging]]
![[Pasted image 20231006124520.png]]
Memory management - optimization strategies
Swapping with paging Here only a subset of the process pages is swapped in/out. Those that are not swapped here could be pages that contain I/O buffers.
