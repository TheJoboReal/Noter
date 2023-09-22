![[Pasted image 20230922085415.png|250]]
![[Pasted image 20230922085502.png]]
Only one active process is allowed at a time.

***

Monitors are good in the sense that they can prevent the programmer from making the typical copy-paste error.
But a monitor cannot do more than what you can do with semaphore.
Section 6.7.2 “Implementing a Monitor Using Semaphores” describes how to make a monitor with semaphores, you can read it if you want to go in depth here (it is not a requirement).
Several languages have the monitor concept built into them, e.g., Java…
(when a method is declared synchronized, it usually has a monitor facility)