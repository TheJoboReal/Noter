>e.g., read only, read-write or execute only

One additional bit is generally attached to each entry in the page table: a valid–invalid bit. When this bit is set to valid, the associated page is in the process's logical address
space and is thus a legal (or valid) page. When the bit is set to invalid, the page is not in the process's logical address space.

![[Pasted image 20231006123956.png]]

***
#### Shared Pages
![[Pasted image 20231006124033.png]]

***
#### Hierarchical Page Table structure
![[Pasted image 20231006124121.png]]
E.g., a 32-bit address space and a page size of 4 Kb gives over 1 million entries.
Here the solution can be several levels in a page table, so the whole table can be divided into small pieces.

![[Pasted image 20231006124136.png]]
The advantage: does not have to have such a large amount of page table related data in memory.
The cost for this is longer access times (which can be partially remedied with [[Paging#TLB|TLB]])

***
#### Hashed Page Table
![[Pasted image 20231006124338.png]]

***
#### Inverted Page Table
![[Pasted image 20231006124406.png]]
only one page table in the system, one entry for each page of phsical memory.
Reduces administration but loses the ability to share pages.