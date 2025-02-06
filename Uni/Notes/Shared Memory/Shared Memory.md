---
tags:
  - lecture-note
  - uni
course: Individuel Studieaktivitet
---
#SharedMemory

> https://stackoverflow.com/questions/49103709/how-to-use-shared-memory-in-python-and-c-c
> https://docs.python.org/3/library/multiprocessing.shared_memory.html
> https://raspberry-projects.com/pi/programming-in-c/memory/shared-memory

---

Another strategy is to put the two tasks in separate processes and exchange messages between the two with [ZeroMQ](https://zeromq.org/) 
1. Write a small shim in C that reads data from the hardware and sends whatever it finds as a message.
2. Write a Python interface between the new and existing infrastructure.

