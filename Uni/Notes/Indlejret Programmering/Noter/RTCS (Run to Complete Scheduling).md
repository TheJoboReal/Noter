---
tags:
  - lecture-note
  - uni
course: Indlejret Programmering
---
#### Definition
● Non-preemptive scheduling
● Each task runs until it is finished
● Concept not complex – implementation might be
● Superloop now within the schedule() function
![[Pasted image 20240408125722.png]]

> Can be bad if you have a task that takes a lot of time, since its has to run every time, and thus slows down the entire program.

