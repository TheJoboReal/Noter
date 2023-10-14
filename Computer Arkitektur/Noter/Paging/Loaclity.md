![[Pasted image 20231013094520.png]]

***
#### Working-set mode
he working-set model is based on the assumption of locality; a working-set window is the 𝑛 last referenced pages at time 𝑡, being an approximation of the program’s locality at time 𝑡 (i.e., a moving window).
The task is then to determine the working-set size for a given process, which allows the operating system to monitor the working set of each process and allocate the required number of frames. If there are enough extra frames, another process can be initiated, otherwise, a process might be suspended to prevent thrashing.

The working-set model is based on the assumption of locality. This model uses a parameter, Δ, to define a working-set window. Δ is the number of the most recent page references. The set of pages in the working-set window is the working set.
![[Pasted image 20231013094636.png]]
A process performs well if it has enough pages that cover its working set. This working set can vary over time! Assume WSSi is the working-set size for each process

∑ 𝑾𝑺𝒔𝒊 > physical memory → thrashing

>If the sum of the working-set sizes (total demand for frames) exceeds the amount of physical memory, then thrashing occurs.

![[Pasted image 20231013094801.png]]
A peak in the page-fault rate occurs when we begin demand-paging a new locality.
However, once the working set of this new locality is in memory, the page-fault rate falls.
The span of time between the start of one peak and the start of the next peak represents the transition from one working set to another.
