A deadlock situation can arise if the following four conditions hold
simultaneously in a system:

#### **Mutual exclusion:**
At least one resource must be held in a nonsharable mode; that is, only one thread at a time can use the resource. If another thread requests that resource, the requesting thread must be delayed until the resource has been released.

#### **Hold and wait:** a thread holds at least one resource while waiting
for additional resources held by other threads.

#### **No preemption:** a resource is only released voluntarily by the
thread that holds it when it has completed its task.

#### Circular wait:
if there exists a set {T0, T1,…, Tn} of waiting threads
such that T0 waits for a resource held by T1, T1 waits for a resource
held by T2,…, Tn – 1 waits for a resource held by Tn and Tn waiting
for a resource held by T0.

>See also [[Dining-Philosophers Problem]]

