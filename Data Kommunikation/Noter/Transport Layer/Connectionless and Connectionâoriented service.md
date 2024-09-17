In a Connectionless service, packets are sent without the need of establishing a logical connection at the beginning and closing it in the end.
* Packets are not numbered,
* or can be lost,
* or arrive at the receiver ”out‐of‐order”,
* There is no receipt for received packets,
* [[UDP (User Datagram Protocol)|UDP]] protocol is an example of such a "Connectionless service". 

In a Connection‐oriented service, there must be:
* first, a logical connection is established between sender and receiver,
* Then data is sent,
* and the logical connection is closed in the end.
* [[TCP (Transmission Control Protocol)|TCP]] and [[SCTP (Stream Control Transmission Protocol)|SCTP]] are examples of ”Connection‐oriented service”.
Transmission Control Protocol ([[TCP (Transmission Control Protocol)|TCP]])
User Datagram Protocol ([[UDP (User Datagram Protocol)|UDP]])
Stream Control Transmission Protocol ([[SCTP (Stream Control Transmission Protocol)|SCTP]])
>[[UDP (User Datagram Protocol)|UDP]] is often used for robots
***
#### Example
![[Pasted image 20231031135524.png]]
Here we can e.g., see that the three packets do not arrive at the server host in order because of the extra delay in transportation of the second packet.
>No flow control, error control, or congestion control can be effectively implemented in a connectionless service.

![[Pasted image 20231031135555.png]]
A connection is established first and packets are delivered to the receiver process in the right order thanks to the coordination of the two host at the transport layer.
Flow control, error control, and congestion control can be implemented in a connection- oriented protocol.
