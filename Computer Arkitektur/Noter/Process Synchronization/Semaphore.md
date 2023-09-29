![[Pasted image 20230922084124.png]]
![[Pasted image 20230922084136.png]]
>Used only with `wait()` and `signal()` 

***
#### Mutex or Semaphore
Mutex and Semaphore both provide synchronization. A Mutex is different than a semaphore as it is a locking mechanism while a semaphore is a signaling mechanism. A binary semaphore can be used as a Mutex but a Mutex can never be used as a semaphore.
A semaphore is a signaling mechanism and a thread that is waiting on a semaphore can be signaled by another thread. This is different than a mutex as the mutex can be signaled only by the thread that
called the wait function (source).
A mutex is an object but semaphore is an integer variable. In mutex, the lock can only be acquired and released by the same process at a time. But the value of the semaphore variable can be modified
by any process that needs some resource but only one process can change the value at a time.

#### Binary semaphore
A binary semaphore can only have a value of 0 or 1, whereas a counting semaphore is essentially an integer that can be incremented and decremented.
***

#### The problem
![[Pasted image 20230922084225.png|250]]

***
#### Implementation
![[Pasted image 20230922084156.png]]