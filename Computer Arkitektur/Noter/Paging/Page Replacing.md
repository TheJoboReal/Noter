![[Pasted image 20231013091006.png]]
![[Pasted image 20231013091028.png]]

***
#### Page Replacement Algorithms
![[Pasted image 20231013091101.png]]

![[Pasted image 20231013091111.png]]
To determine the number of page faults for a particular reference string and page- replacement algorithm, we need to know the number of page frames available.
As the number of frames available increases, the number of page faults decreases.

***
#### First in First out Algorithm
A FIFO replacement algorithm creates a FIFO queue to hold all the pages in memory. We replace the page at the head of the queue. When a page is brought into memory, we insert it at the tail of the queue.
![[Pasted image 20231013091216.png]]
**Problem:** if we select for replacement a page that is in active use, after we replace an active page with a new one, a fault occurs almost immediately to retrieve the active page. A bad replacement choice increases the page-fault rate and slows process execution.

The algorithm replaces the page that will not be used for the longest period of time.
It has the lowest page-fault rate of all algorithms has been called OPT or MIN.
![[Pasted image 20231013091348.png]]
On our sample reference string, the optimal page-replacement algorithm would yield 9- page faults, and is better than a FIFO algorithm, which results in 15-page faults.
Problem: the optimal page-replacement algorithm is difficult to implement, because it requires future knowledge of the reference string.

***
#### LRU
The idea is to use the recent past as an approximation of the near future, in order to replace the page that has not been used for the longest period of time (least recently used).
The stack implementation maintains a stack of page numbers; when a page is referenced it is moved to the top of the stack. Therefore, the most recently used page is always at the top of the stack, and the
least recently used page is always at the bottom.
It can also be implemented using counters, but this has several issues: (a) it requires overflow man- agement, (b) allocation of memory for counter (which may never be used again), and (c) it requires a search to find the page with the lowest counter.

#### Least Recently Used algorithm (LRU)
If the optimal algorithm is not feasible, perhaps an approximation of the optimal algorithm is possible. If we use the recent past as an approximation of the near future, then we can replace the page that has not been used for the longest period of time. This approach is
the least recently used (LRU) algorithm.
![[Pasted image 20231013091606.png]]
LRU replacement associates with each page the time of that page's last use. When a page must be replaced, LRU chooses the page that has not been used for the longest period of time.

##### Least Recently Used (LRU) – Stack-based
Another approach to implementing LRU replacement is to keep a stack of page numbers.
Whenever a page is referenced, it is removed from the stack and put on the top. In this way, the most recently used page is always at the top of the stack, and the least recently used page is always at the bottom.
![[Pasted image 20231013091752.png]]

#### LRU-approximation page replacement – Second-Chance (clock) algorithm 
Many systems provide some help in the form of a reference bit. The reference bit for a page is set to 1 by the hardware whenever that page is referenced.
If the value is 0, we proceed to replace this page. But if the
reference bit is set to 1, we give the page a second chance and move on to select the next FIFO page. When a page gets a second
chance, its reference bit is cleared to 0.

Implementation:
Circular queue
![[Pasted image 20231013092006.png]]

#### LRU-approximation page replacement – Enhanced Second-Chance Algorithm
In addition to the reference bit, a so-called modify (or dirty) bit is introduced to reflect if a page is modified or not. For a page, which is not modified, we need not write the memory page to storage since it is already in storage.
There will be 4 possible classes for an ordered pair in the decision process:
![[Pasted image 20231013092339.png]]

#### Counting-based Page Replacement
Least Frequently Used (LFU):
Here the page with the smallest count is replaced. Based on the philosophy that actively used page should have a large reference count.

Most Frequently Used (MFU):
Here the page with the largest count is replaced.
This algorithm is based on an argument that the page with the smallest count value was probably just brought into memory and therefore need to be used shortly.
Some other algorithms use a counter of the number of references that have been made to each page to select the page to be replaced.

Neither MFU nor LFU replacement is common. The implementation of these algorithms is expensive, and they do not approximate OPT replacement well.
