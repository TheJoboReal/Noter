---
tags:
  - lecture-note
  - uni
course: Data Kommunikation
---
In order to be able to send a message from one process to another, the transport layer protocol has to encapsulate and decapsulate the messages.
![[Pasted image 20231031133301.png]]
* **Encapsulation** happens at the sender site. When a process wants to send a message, it is delivered to the transport layer with a pair of socket addresses (sender/receiver) and some other information depending on the transport layer's protocol.
* **Decapsulation** happens at the receiver site. When the packet arrives at the receiver. The header of the packet is removed, and data is delivered to the process specified by the port address. The sender socket address is also handed over to the process in case it needs to respond to the received message. 

