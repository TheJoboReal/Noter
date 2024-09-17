#### Definition
* Real-time operating system
* Don’t confuse with RTCS – run to complete scheduling
* Responds to events within a strictly defined time (deadline)
* Scheduler is deterministic
* Of interest to embedded systems especially
* Priority assigned to each thread
* Threads = tasks
* process data as it comes in, typically without buffer delays

***
#### Multitasking
* Kernel – core of OS
* If it can execute tasks seemingly simultaneously – multi-tasking
* Allows complex applications to be subdivided into small tasks
![[Pasted image 20240415125058.png]]

***
#### Scheduler
* Part of the kernel deciding which task will be executed when
* The scheduler can suspend and resume tasks
* Tasks can suspend themselves too
* A keypress will not take over as it does not have higher priority.
* Control task will always take over as it has highest priority.
![[Pasted image 20240415125122.png]]

***
#### Choice of FreeRTOS
* **Pre-emptive**
	* Always runs the highest priority available task. Tasks of identical priority share CPU time (fully [[Deadlock Prevention#With preemptive scheduling|pre-emptive]] with [[Round-Robin]] time slicing).
* **Co-operative**
	* [[Deadlock Prevention#Context switching|Context switching]] only occur if a task blocks or explicitly calls taskYIELD()

***
#### Context switching
* Tasks use different resources of the microcontroller – registers, stack, etc. – context 
* When the kernel switches tasks, it saves its context
* When a task is resumed, the context is restored

***
#### Task states
* **Running**
	* Actually executing – using the processor
* **Ready**
	* Able to execute (not blocked nor suspended)
	* Not executing because another task with equal or higher priority is already running
* **Blocked**
	* Waiting for a temporal or external event
	* Can block waiting for a queue or semaphore event
* **Suspended**
	* Not available for scheduling
	* Tasks only enter or exit suspend by vTaskSuspend() and xTaskResume()
![[Pasted image 20240415125744.png]]

***