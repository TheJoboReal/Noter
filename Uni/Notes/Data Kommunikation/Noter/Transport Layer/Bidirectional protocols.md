---
tags:
  - lecture-note
  - uni
course: Data Kommunikation
---
#### Piggybacking
All the protocols we have viewed here are unidirectional protocols.
But in the real world, bidirectional communication is usually used.
* Therefore, receipts ([[Flow and error control#ACK|ACK]]) to be returned to a sender are embedded in the packets sent the other way around, and vice versa.
* Thus, a packet header will contain both a sequence number for what is sent and an [[Flow and error control#ACK|ACK]] number for what is received.
![[Pasted image 20231107130738.png]]
Piggybacking is shown here with [[Go-Back-N Protocol|Go-Back-N]].
The client and server each use two independent sender and receiver windows

>See also [[Piggybacking]]
