**Wait state e.g., Intel**
Some chipsets, e.g., EPROM may require additional time to fetch the necessary data, for which a wait-state generator can be implemented.
![[Pasted image 20231102233548.png]]
Notice that it is the CS signal that starts the wait-state generator

>CLR' only activates when receiving a 0. Therefore Reading and writing does not activate the clear

***
Wait states are necessary when wanting to interface the slower external logic and memory, in which the read/write states must be prolonged. Wait states lengthen (for a number of clock cycles) the time the CPU waits for external memory or an external I/O port during a read/write operation.

***
![[Pasted image 20231103084247.png]]
>Source: https://www.manualslib.com/manual/169735/Texas-Instruments-Tms320c2xx.html?page=364
