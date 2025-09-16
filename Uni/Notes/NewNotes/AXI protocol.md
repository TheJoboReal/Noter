---
tags:
  - lecture-slide
  - uni
course: Embedded Systems
lecture: Lecture 2
date: 2025-09-16
---
#### Abstract
The Advanced eXtensible Interface (AXI), is part of ARM AMBA, a family of micro controller buses first introduced in 1996.
* It’s a communication interface to interact with a RAM
* Reads/writes can have variable latencies
* Write address can be sent at different times.
* Reads/writes can fail
* There are three types of AXI4 interfaces:
* AXI4: for high-performance memory-mapped requirements.
* AXI4-Lite: for simple, low-throughput memory-mapped communication.
* AXI4-Stream: for high-speed streaming data.
* Data can move in both directions between the master and slave simultaneously, and data transfer sizes can vary.
* The limit in AXI4 is a burst transaction of up to 256 data transfers.
* AXI4-Lite allows only one data transfer per transaction.
![[Pasted image 20250916135701.png]]


