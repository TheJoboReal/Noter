---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---
▪ A new thread that enters the system must state its maximum needs
for the different types of resources. These needs must not exceed
the total number of different types of resources.

▪ When a thread requests a set of resources, then investigate the system about if this allocation will leave the system in a safe state.
* if so, then assign the set of resources to the thread.
* if no, then the thread has to wait…

***
#### Example

![[Pasted image 20230929093840.png]]

![[Pasted image 20230929093900.png]]

![[Pasted image 20230929093916.png]]