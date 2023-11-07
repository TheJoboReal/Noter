1. UDP (User Datagram Protocol):
    
    * UDP is a connectionless and lightweight protocol.
    * It does not establish a direct connection before sending data and does not guarantee the delivery or order of data packets.
    * It is faster and more efficient for real-time applications where some packet loss is acceptable, such as video streaming and online gaming.
    * UDP is often used when speed is more critical than data integrity.

***

This protocol is characterized as follows:
* Connectionless
* Unreliable communication
It does not really add any extra functionality compared to the IP protocol.
However, it offers process-to-process communication instead of host-to-host communication. There is also a very limited error control (through checksum).
Do you want to use UDP even though it is so limited? The answer is YES!
UDP is simple, it generates a minimum of overhead.
It requires less sender-receiver interaction than [[TCP (Transmission Control Protocol)|TCP]] or [[SCTP (Stream Control Transmission Protocol)|SCTP]].
