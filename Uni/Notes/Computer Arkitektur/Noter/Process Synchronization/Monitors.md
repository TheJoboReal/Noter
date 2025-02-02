---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---
![[Pasted image 20230922085415.png|250]]
![[Pasted image 20230922085502.png]]
Only one active process is allowed at a time.

***

Monitors are good in the sense that they can prevent the programmer from making the typical copy-paste error.
But a monitor cannot do more than what you can do with semaphore.
Section 6.7.2 “Implementing a Monitor Using Semaphores” describes how to make a monitor with semaphores, you can read it if you want to go in depth here (it is not a requirement).
Several languages have the monitor concept built into them, e.g., Java…
(when a method is declared synchronized, it usually has a monitor facility)

***
1. **Encapsulation:**
    
    - Monitors encapsulate both the shared data and the procedures (methods) that operate on that data. This encapsulation ensures that the internal state of the monitor is protected and can only be accessed through the defined methods.
2. **Mutual Exclusion:**
    
    - Monitors provide mutual exclusion by default. Only one process or thread can execute a monitor procedure at a time. This ensures that the shared data within the monitor is accessed in a mutually exclusive manner, preventing race conditions and data corruption.
3. **Condition Variables:**
    
    - Monitors often include condition variables, which allow processes or threads to wait for a particular condition to be satisfied before proceeding. Condition variables are used in conjunction with monitors to coordinate the execution of different processes or threads.
4. **Signaling and Broadcasting:**
    
    - Monitors typically provide signaling and broadcasting mechanisms to notify waiting processes or threads when a condition has been met. Signaling typically wakes up one waiting process, while broadcasting wakes up all waiting processes.
5. **Automatic Locking and Unlocking:**
    
    - The entry and exit to a monitor's procedures are automatically locked and unlocked. When a process or thread enters a procedure within a monitor, it gains exclusive access to the monitor's internal state. Upon exiting the procedure, the lock is automatically released.
6. **Modularity and Abstraction:**
    
    - Monitors promote modularity and abstraction by encapsulating the details of synchronization within the monitor itself. This makes it easier to reason about the correctness of the concurrent program and enhances code readability.