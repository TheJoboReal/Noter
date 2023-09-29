For a deadlock to occur, the [[Deadlock Situations|four conditions]] must be met.
If we can ensure that at least one of these conditions cannot hold, we can prevent the occurrence of a deadlock.
We elaborate on this approach by examining each of the four
necessary conditions separately.

***
#### Mutual Exclusion
If we want to break this condition. Then all resources must be
shareable …
It is unrealistic to think that such a system exists…
E.g.: mutex, semaphore, CPU time, etc.

***
#### Hold and Wait
A thread can only start program execution when all the resources it
needs to perform its work can be allocated.

E.g. retrieve data from DVD → save it in a file → read-only file → print

**Protocol 1:**
allocate DVD, file, printer → perform work→ release resources

**Protocol 2:**
allocate DVD, file → copy → release resources
allocate file → sort → release resources
allocate file, printer → print → release resources

>Poor utilization of resources and possibility of starvation
***
#### No Preemption
A thread that holds resources and requests another resource that cannot
be immediately allocated to it, must implicitly release (devote) all its
allocated resources.

Alternative
A thread that holds resources and requests new resources.
* if they are available, they are taken.
* if they are allocated to a waiting thread, they are taken.
* if they are not available and allocated to a running thread, the thread has to wait, and all the allocated resources are preempted.

A thread can only continue once it has received all the resources it has
been deprived of (preempted), as well as those it lacked.

>Is often used in connection with resources whose state can be easily saved.

***
#### Circular Wait
Each resource type in the system is assigned a unique integer number,
which allows us to compare two resources and to determine whether
one precedes another in our ordering.

The rule is that all threads only request resources in ascending number
order.
*see [[Resource allocation|graph]]*
e.g.
R1→R3→R27→R33
if:
R1→R3→R27→R33→ next is R5. Release R27 and R33 and start over…
R1→R3→R5→R27→R33

>There is no guarantee. It requires the threads to comply with the rule

***
This strategy requires that the system receive some additional
information about the threads before they are executed.

• The simplest and most useful method is that the thread tells how
many resources (maximum) of each type it may need to use in its
lifetime. Given this a priori information, it is possible to construct
an algorithm that ensures that the system will never enter a
deadlocked state.

• A deadlock-avoidance algorithm dynamically examines the
resource-allocation state to ensure that a circular-wait condition
can never exist.

• The resource-allocation state is defined by the number of
available and allocated resources and the maximum demands of
the threads.