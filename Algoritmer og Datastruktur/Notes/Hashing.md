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

---
#### Hashing Problemer


##### Solution: Separate Chaining-hash function %10


##### Solution: Linear Probing
Når en kolission konstateres, placeres objektet på den næste ledige plads. 
Problemet er at den løsning kan forsage klyngedannelse(clustering) lidt ligesom klynger af lastbiler på motorvejen.

##### Quadratic Probing

##### Double Hashing

##### Rehashing