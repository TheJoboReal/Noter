---
tags:
  - lecture-note
  - uni
course: Algoritmer og Datastruktur
date: 2025-02-02
lecture: lecture 12
---
--- 
#### Definition
Kan hente og gemme objekter i konstant tid *-O(1)-*.
Det kræver at hvert objekt har en entydig nøgle: ellers er genfinding umulig.
Objekter er lagt i et array hvis størrelsen er et primtal.
High performance kræver at objekterne er ensartet distribueret i arrayet. 

Hashing is a process that transforms input data (like a password or a file) into a fixed-size string of characters, typically a sequence of numbers and letters, using a mathematical function called a **hash function**. The output, known as a **hash value** or **hash code**, uniquely represents the original data.

Key properties of hashing:

1. **Deterministic**: The same input always produces the same hash.
2. **Fixed output size**: Regardless of input size, the hash value has a fixed length.
3. **Fast computation**: Hashing is quick to compute.
4. **Irreversibility**: It's nearly impossible to reverse the hash back to the original data.
5. **Unique**: Even a small change in input drastically changes the hash (known as the **avalanche effect**).

Hashing is widely used in data retrieval, cryptography (for passwords, digital signatures), and checksums to verify data integrity.

##### Loadfactor
The **load factor** in the context of a hash table is a measure that indicates how full the table is. It is defined as the ratio of the number of elements (or entries) in the hash table to the total number of slots (or buckets) available in the table.

**Formula:**
$$
\text{Load Factor}(\alpha)=\frac{\text{Number of Elements}}{\text{Table Size}}
$$
**Example:**
If a hash table has 10 slots and currently holds 7 elements, the load factor would be:
$$
\alpha=\frac{7}{10}=0.7
$$
##### Significance of the Load Factor:

1. **Performance**:
    
    - A low load factor means many empty slots, which results in fewer collisions and faster insertions, deletions, and lookups.
    - A high load factor means more elements are packed into the table, increasing the chance of collisions, which can slow down operations.
2. **Threshold for Rehashing**:
    
    - Many hash tables have a predefined **load factor threshold** (e.g., 0.7 or 0.75). When the load factor exceeds this threshold, **rehashing** is triggered, which increases the table size and redistributes the elements to balance the table.
3. **Space vs. Time Trade-off**:
    
    - A **lower load factor** (e.g., 0.5) improves lookup speed because there are fewer collisions, but it requires more memory as many slots may remain empty.
    - A **higher load factor** (e.g., 0.9) uses memory more efficiently but might lead to more collisions, reducing performance.

---
#### Cuckoo-hashing
* The power of two choices.
* To tabeller; to hash-funktioner (måske).
* Hvis pladsen er optaget, så smid beboeren ud (derfor navnet).
* Egenskaber: – Risiko for Risiko for cykler; dog, meget lille, hvis λ < 0,5. – Det duer ikke, hvis λ > 0,5. Hvor $\lambda$ er [[Hashing#Loadfactor|loadfactor]]
* Adskillige ændringer og forbedringer.

#### Hopscotch Hashing
* En forbedring af linear probing.
* I visse moderne arkitekturer er nærhed proximity) vigtigere end antallet af forsøg.
* Stort set ikke behov for rehashing hvis λ < 0,5. Hvor $\lambda$ er [[Hashing#Loadfactor|loadfactor]]
* Er Cuckoo-hashing overlegen på de fleste arametre.

##### Examples
![[Pasted image 20240916134801.png]]
![[Pasted image 20240916134741.png]]

---
#### Hashing Problemer

##### 1. **Rehashing**

Rehashing refers to the process of resizing and recalculating the hash table when it becomes too full, usually because of an increase in the number of entries. When the load factor (ratio of entries to table size) reaches a certain threshold, a new larger table is created, and all the existing entries are **rehashed** (reinserted) into this new table using the updated hash function. This helps prevent performance degradation and reduces collisions.

Når en kolission konstateres, placeres objektet på den næste ledige plads. 
Problemet er at den løsning kan forsage klyngedannelse(clustering) lidt ligesom klynger af lastbiler på motorvejen.

##### 2. **Separate Chaining (Hash)**

**Separate chaining** is a method used to handle hash collisions (when two keys hash to the same index). In this method, each index in the hash table stores a linked list (or another data structure like a list) of all the entries that hash to that index. If multiple keys produce the same hash, they are simply appended to the list. This way, multiple elements can share the same index without overwriting each other.

- **Pros**: Easy to implement and effective in handling collisions.
- **Cons**: Performance degrades as chains grow longer (if many collisions occur).

##### 3. **Linear Probing**

**Linear probing** is an open addressing collision resolution method. Instead of using separate lists, when a collision occurs, linear probing places the item in the **next available slot** in the hash table. It checks sequentially (one index at a time) until it finds an empty slot. The process continues in a linear fashion.

- **Pros**: Simple and uses less memory than separate chaining.
- **Cons**: Clustering can occur, where a group of adjacent occupied slots makes future insertions slower.

##### 4. **Double Hashing**

**Double hashing** is another open addressing method that handles collisions by applying a **second hash function**. If a collision occurs, instead of moving to the next sequential slot (like linear probing), it jumps by a number of slots determined by the second hash function. This reduces clustering and spreads the keys more uniformly.

- **Pros**: Reduces clustering and is more efficient than linear probing.
- **Cons**: Slightly more complex due to the need for a second hash function.

##### 5. **Quadratic Hashing**

**Quadratic hashing** is similar to linear probing but avoids clustering by moving further away from the original collision point in a quadratic manner. When a collision happens, instead of checking the next slot, it checks slots that are a quadratic distance away (e.g., 1², 2², 3², etc.). This makes collisions less likely to cluster near each other.

- **Pros**: Reduces primary clustering, and performs better than linear probing in most cases.
- **Cons**: Secondary clustering (keys with the same hash value follow the same quadratic pattern) can still occur.


##### Summary Table:

| **Method**            | **Collision Handling Strategy**           | **Pros**                                | **Cons**                                  |
| --------------------- | ----------------------------------------- | --------------------------------------- | ----------------------------------------- |
| **Rehashing**         | Resizes table and recalculates hashes     | Prevents degradation when table is full | Requires rebuilding table (expensive)     |
| **Separate Chaining** | Linked list at each index for collisions  | Simple, effective for small tables      | Slower when many collisions (long chains) |
| **Linear Probing**    | Sequentially searches for next empty slot | Simple, less memory overhead            | Clustering slows down performance         |
| **Double Hashing**    | Uses a second hash function to jump slots | Reduces clustering                      | Requires extra hash function              |
| **Quadratic Hashing** |                                           |                                         |                                           |

