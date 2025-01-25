#### The principle of locality
* Approx. 90% of the running time is spent within approx. 10% of the codes.

There are 2 types of locality
1. **Temporal locality** (time locality). If data/code is accessed by the CPU, there is a high probability that the same data/code will be accessed in the near future. Maybe within a few nanoseconds.
2. **Spatial locality** (area locality). If data/code is accessed by the CPU, there is a high probability that other data/code that is physically located close to them will be accessed in the near future.

##### Example of cache
![[Pasted image 20231201090939.png]]
* The cache contains a copy of a small section of the main memory
* The cache can be accessed much faster (here 400MHz) than the memory
* Efficiency depends on construction and replacement policies

#### Construction
The cache is divided into slots, which consist of a number of bytes
* E.g., 32 bytes
![[Pasted image 20231201091052.png]]
**Data traffic:**
* Between CPU and cache takes place in bytes or words
* Between cache and memory takes place in slots (e.g., blocks of 32 bytes)

**Performance and cost**
* Depends a lot on the chosen address mapping method

>Via an example, we look at the basic ideas in the 3 most common methods

##### Example - Structure
An example
* Primary memory of 4 Gigabytes (this will equate to 232 bytes)
* Slot size of 32 bytes (this will equate to 25 bytes)
* Cache size 8192 slots (this will correspond to 213 slots)
Cache size (8192 x 32) = 262,144 bytes or 256 kB

Then we divide the memory into 227 blocks of 25 bytes.
* The memory is not divided in a physical way, but the cache views the memory that way.
* The slot size is often between 16 and 64 bytes.

##### Example - Mapping method
###### Fully associative mapped cache
![[Pasted image 20231201091230.png]]
**greater complexity→ better hit rate → higher price**

###### Direct mapped cache
![[Pasted image 20231201091324.png]]
**Less complexity → lower Hit rate → lower price**

###### N-way set associative mapped cache
![[Pasted image 20231201091456.png]]


#### Example - cache
![[Pasted image 20231201091648.png]]The Intel® CPU has a pseudo Least Recently Used replacement policy.
* The LRU bits (r0 - r2) determine which one of the 4 possible slots needs to be replaced
* The valid bits indicate whether the contents of a slot are usable
e.g., r0 = 1 and r1 = 0 → slot 2 is therefore replaced

#### Cache Operations
![[Pasted image 20231201091729.png]]
>Note: these options are implemented in hardware and can be selected as setup in special registers in the CPU


#### Design Considerations
When establishing a cache, there are some parameters to consider such as: **cache size, slot size** and **associativity**.
![[Pasted image 20231201092335.png]]
Common sizes used today
* Primary cache (L1): 1 kB – 256 kB
* Secondary cache (L2) : 256 kB – 4096 kB
* Slot sizes: 16 - 64 bytes
![[Pasted image 20231201092351.png]]


#### Access Time
Assume the hit rate is H, the access time of the cache ta1 and the access time of the primary memory ta2. Then the expression of the mean access time ta:
$$
t_{a}=H\cdot t_{a_{1}}+(1-H)\cdot(t_{a_{2}}+t_{a_{1}})
$$
If we also have a secondary cache (L2), then the expression for mean access
time comes out as follows:
$$
t_{a}=H_{1}\cdot t_{a_{1}}+H_{2}\cdot(1-H_{1})\cdot(t_{a_{2}}+t_{a_{1}})+(1-H_{1})\cdot(1-H_{2})\cdot(t_{a_{3}}+t_{a_{2}}+t_{a_{1}})
$$
