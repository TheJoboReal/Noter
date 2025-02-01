A state is safe if the system can allocate resources to each thread (up to its maximum) in some order and still avoid a deadlock.

A system is in a safe state only if there exists a safe sequence. A sequence of threads <T1, T2, …, Tn> is a safe sequence for the current allocation state if, for each Ti, the resource requests that Ti can still make can be satisfied by the currently available resources plus the resources held by all Tj, with j < i.

A safe state is not a deadlocked state. Conversely, a deadlocked state is an unsafe state. However, not all unsafe states are deadlocks. An unsafe state may lead to a deadlock.
![[Pasted image 20230929092103.png]]

***
Displays three threads using a particular resource with 12 available instances


If there is an order in which the threads can be allocated resources
up to their maximum needs, and release them after use.
Then the system is in safe state because there is a safe sequence.
Here, the safe sequence is: **<T1,T0,T2>**
![[Pasted image 20230929092238.png|400]]
If T2 was allocated another instance of the resource (i.e., 3), then a
safe sequence would no longer exist. T1 would be able to get its 2
instances and then release 4available instances, but neither T0 nor
T2 can be allocated up to their maximum needs of 5 + 5 and 3 + 6
instances, respectively!

***
