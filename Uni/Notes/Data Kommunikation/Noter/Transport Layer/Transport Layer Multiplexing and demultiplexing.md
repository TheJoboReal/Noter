---
tags:
  - lecture-note
  - uni
course: Data Kommunikation
---
**Multiplexing**
On the sender side, there can be many processes that need to send packets. However, only one transport layer protocol is available. This is called a many‐to‐one relationship and requires multiplexing.

**Demultiplexing**
On the receiver side, the transport layer protocol accepts messages from different source processes and distributes them to the correct destination processes according to their port numbers. This is a one-to-many relationship and requires demultiplexing.

***
#### Example
![[Pasted image 20231031133553.png]]
Three client processes run on the client host: P1, P2 and P3
* P1 and P3 send requests to their corresponding server processes running on a server
* P2 sends a request to its corresponding server processes running on another server
