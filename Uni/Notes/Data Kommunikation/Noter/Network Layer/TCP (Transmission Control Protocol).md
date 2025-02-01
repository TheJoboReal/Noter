1. TCP (Transmission Control Protocol):
    
    - TCP is a connection-oriented and reliable protocol.
    - It establishes a connection before data transmission and ensures that data packets are delivered in order and without errors.
    - It is slower than [[UDP (User Datagram Protocol)|UDP]] due to the overhead of managing connections and error correction.
    - TCP is commonly used for applications where data accuracy and completeness are essential, such as web browsing, email, and file transfers.

***
TCP is, unlike UDP, a stream-oriented protocol.
In [[UDP (User Datagram Protocol)|UDP]], a process sends its messages with some predefined sizes. [[UDP (User Datagram Protocol)|UDP]] adds a header and forwards them to IP for encapsulation and transmission. Neither [[UDP (User Datagram Protocol)|UDP]] nor IP perceives a connection between datagrams. However, TCP allows a sending process to deliver a data stream, and the protocol also allows a receiving process to receive a data stream. TCP creates an environment in which the two processes seem to be connected by an imaginary “tube” that carries their bytes across the Internet.
![[Pasted image 20231107133636.png]]

#### Sending and receiving buffers
Since the sending and receiving processes may not write and read at the same speed, buffers are needed.
There are two buffers, a sending buffer and a receiving buffer. As we will see later, these buffers are also used for [[Flow and error control]]. These buffers are often implemented as circular buffers.
(shown here with 20 bytes, but in practice they will be much larger)
![[Pasted image 20231107133727.png]]

On the sender side, the buffer is divided into three areas:
* The white area is empty and can be filled with data from the sending process.
* The red area contains data that has been sent but has not been acknowledged.
* The black area contains data that TCP has not yet sent.
![[Pasted image 20231107133815.png|300]]
**The size of the black area does not always depend on the TCP on the sender side, it can also be controlled by the receiver or connection (or only part of this area is to be sent).**

#### Segments
Although buffering can handle processing speed differences between producer and consumer, it takes one more step before we can send data. 

The network layer, as a service provider for TCP, needs to send data in packets, not as a stream of bytes. 

At the transport layer, TCP groups a number of bytes together into a packet called a Segment. TCP adds a header to each segment (for control purposes) and delivers the segment to the network layer for transmission. 
![[Pasted image 20231107133915.png]]
>Note that segments do not have to be the same size

#### Properties
**Full‐Duplex communication**
TCP offers [[Full-Duplex Switched Ethernet|Full-Duplex]] service, which means that data can flow in both directions at the same time (e.g., Telephone).
Each process that uses TCP has both sending and receiving buffers.

**Connection‐oriented service**
TCP offers a connection-oriented service. It behaves as follows in three phases:
1. Two processes with access to TCP establish a connection between them.
2. Data is exchanged in both directions simultaneously ([[Full-Duplex Switched Ethernet|Full-Duplex]]).
3. The connection is terminated.

**Remember the connection established in the first phase is a logical
connection, not a physical one.**
The TCP segment is encapsulated in an IP datagram and can be sent out of order, or lost or corrupted, and then resent. Each may be routed over a different path to reach the destination.

Connection-oriented service means TCP creates a stream-oriented environment in which it accepts the responsibility of delivering the bytes in order to the other site. 

**Reliable service**
TCP is a reliable transport protocol. 

It uses an acknowledgement mechanism to check that data reaches its receiver safely without errors. (we'll look at that later) 

#### Features
In order to offer the service that we have just mentioned, TCP needs to have some features that we will now look at.

**Numbering system**
TCP keeps track of the segments sent and received, even though there is no field in the segment header where a segment number can be specified. 

Instead, there are two other fields in the segment header:
* **Sequence number.**
* **Acknowledgment number.**
These fields refer to the byte number, not the segment number.

**Byte number**
* TCP numbers all bytes that are transmitted via the connection.
* The numbering is independent of the direction.
* When TCP receives data (bytes) from a process, they are stored in the sending buffer and numbered.
* The numbering does not necessarily start from 0
* TCP generates a random number between 0 and $2^{32}-1$ for the number of the first byte.
* We will see later that this byte numbering is used for [[Flow and error control]].

**Sequence number**
After the bytes have been numbered, TCP assigns a sequence number to each segment that is being sent.
This sequence number is the same as the byte number of the first data byte of in the segment. When a segment carries both data and control information (called [[Bidirectional protocols#Piggybacking|Piggybacking]]), the sequence number is used as a reference. 

If a segment does not contain a data part, then it does not logically define a sequence number as it corresponds to the first data byte number in the sequence. (the field is in the header, but the value is not valid!) However, some segments, when carrying only control information, need a sequence number to allow an acknowledgment from the receiver. These segments are used for connection establishment, termination, or abortion. Each of these segments consume one sequence number as though it carries one byte, but there are no actual data.

#### Segmentformat
Let us now take a closer look at the TCP packet format which is called a segment.
![[Pasted image 20231107134743.png]]
The segment consists of a header of 20 to 60 bytes, followed by data from an application
program. The header is 20 bytes if no options are specified.

**Source (sender) port address**: This 16-bit field specifies the port number of the application program on the host that sent the segment.
This field has the same function as the [[UDP (User Datagram Protocol)|UDP]] header's Source port address.

**Destination (receiver) port address:** This 16-bit field indicates the port number of the application program on the host that received the segment.
This field has the same function as the [[UDP (User Datagram Protocol)|UDP]] header's Destination port address.

**Sequence number:** This 32-bit field indicates the number that was assigned the first data
byte in the segment.

Remember that TCP numbers all the bytes, so the next segment has a sequence number, which is the current sequence number + number of bytes in the current segment

**Acknowledgment number:** This 32-bit field indicates the sequence number of the segment that the receiver expects to receive from the sender.
if the receiver itself has data to be sent back to the sender, then the acknowledgement can be sent back to the sender together with the data. This is called [[Bidirectional protocols#Piggybacking|Piggybacking]].

**Header length (HLEN):** This 4-bit field indicates the header size in terms of the number of 4-byte words in the TCP header.
The header can be between 20 and 60 byte.
Therefore, the value in this field is between 5 and 15.
(5 = 5 x 4 = 20 and 15 = 15 x 4 = 60)

**Reserved:** This 6-bit field is reserved for future use

**Control:** This 6-bit field indicates 6 different flags (one or more can be activated at a time)
![[Pasted image 20231107135103.png]]
These flags enable flow control, connection establishment and termination, connection abortion and the mode of data transfer in TCP.
![[Pasted image 20231107135122.png]]

**Window size:** This 16-bit field indicates the window size of the sending TCP in bytes.
The value in the field is often referred to as the ” [[Go-Back-N Protocol#Receiver window|receiving window]]”(RWND) and is determined by the receiver. The sender must obey the dictation of the receiver in this case.

**Checksum:** This 16-bit field contains the checksum.
The calculation of this follows the same procedure as for [[UDP (User Datagram Protocol)|UDP]].
However, the checksum was optional to include in [[UDP (User Datagram Protocol)|UDP]] datagrams, whereas it is mandatory to include it in TCP segments.
The pseudoheader serves the same purpose in this protocol as in [[UDP (User Datagram Protocol)|UDP]].
Note, however, that the protocol field has the value of 6
![[Pasted image 20231107135417.png]]

**Urgent pointer:** This 16-bit field, whose value is only valid when the URG flag is set, is used when segments contain data of an urgent nature!

The value in the field must be added to the sequence number to find the number of the last urgent byte in the data section of the sequence. (we'll take a closer look at this later).

**Options:** There can be up to 40 bytes of optional information in a TCP header.
Encapsulation
* A TCP segment encapsulates the data received from the application layer.
* The TCP segment is encapsulated in an IP datagram at the network layer.
* The IP datagram is encapsulated in a frame at the data link layer.

#### TCP connection
TCP is connection-oriented, the connection is logical (not physical). TCP operates at a higher level. TCP uses the services of IP to deliver individual segments to the receiver, but it controls the connection itself.
IP thus has no knowledge of this connection; it simply provides service to TCP which manages the connection. For instance, If a segment is lost or corrupted, it is retransmitted. Unlike TCP, IP is unaware of this retransmission. If a segment arrives out of order, TCP holds it until the missing segments arrive; IP is unaware
of this reordering.
In TCP, connection-oriented transmission requires three phases:
1. connection establishment
2. data transfer
3. and connection termination

#### 3‐way handshaking
![[Pasted image 20231107135651.png]]
The server application notifies its TCP that it is ready to receive a connection (from any host in the world).
This is called **passive open**.
The client process sends a request to connect to the server.
This is called **active open**.
![[Pasted image 20231107135744.png]]
The client sends the first segment, a so-called SYN segment, where only the SYN flag is set. This is done to give the client a starting point for the following sequence numbers.

>Note that the SYN segment is a control segment and carries no data. However, it consumes one sequence number because it needs to be acknowledged. We can say that the SYN segment carries one imaginary byte.

![[Pasted image 20231107135651.png]]
The server sends, a so-called SYN + [[Flow and error control#ACK|ACK]] segment, where the SYN and [[Flow and error control#ACK|ACK]] flags are set. SYN is set to give the server a starting point for the following sequence numbers.
[[Flow and error control#ACK|ACK]] is a receipt for the previously received segment.
The receive window size at the server side is defined as 5000.

![[Pasted image 20231107135851.png]]
The client sends, an [[Flow and error control#ACK|ACK]] segment, where the [[Flow and error control#ACK|ACK]] flag is set.
[[Flow and error control#ACK|ACK]] is a receipt for the previously received segment.
Note that the [[Flow and error control#ACK|ACK]] segment does not contain data, therefore consumes no sequence number.
The receive window size at the client side is defined as 10000.

#### SYN floodingattack
The procedure used to establish connection in TCP is vulnerable to a serious security issue called SYN flooding attack. 

This happens when one or more malicious attackers send a large number of SYN segments to a server pretending that each of them is coming from a different client by faking the source IP addresses in the datagrams. 

The server assumes that the clients are performing the active open, and therefore allocates resources (such as buffers, etc.) to them. 

The server sends SYN + [[Flow and error control#ACK|ACK]] segments to the fake IP addresses, these segments are of course lost. 

But the server rapidly runs out of its resources and is likely to crash! The attack is also called denial‐of‐service attack. 

##### Prevention
Strategies exist to prevent such attacks:
* There may be a limit to how many SYN requests you will accept within a certain period of time.
* One can filter away datagrams that come from unwanted IP addresses.
* One can postpone the resource allocation until the server can verify that the connection request is coming from a valid IP address. This can be done with so-called cookies. [[SCTP (Stream Control Transmission Protocol)|SCTP]] uses this method.

#### Data transfer
The client sends 2000 bytes of data in two segments 

The server sends 2000 in one segment 

The client set the PSH (Push) flag, indicating that data should be delivered to the server process as soon as TCP on the server side has received it. 
![[Pasted image 20231107140235.png]]

#### Pushing Data
If a sender wants to get the data sent off quickly, then it does not wait for a window of agreed size to be completely filled with data.
• Data is sent immediately in segments!
• And the PSH flag is set.

This indicates to the receiver that this data should be processed and delivered to the application layer as soon as it arrives. So, you do not have to wait for more data (which could fill a receiving window).

NOTE Although the PSH flag can be enabled, most TCP implementations ignore such requests nowadays.

##### UrgentData
TCP is a steam-oriented protocol. That is, data is presented as a data stream to the applications.
Each byte in the data stream has its own number.
But in special cases, applications need to send urgent bytes. some bytes that need to be treated in a special way by the application at the other end. The solution is to send a segment with the URG bit set.
* TCP on the sender side creates a segment where the block of urgent data is inserted first in the data section.
* TCP sets the URG flag
* and inserts the offset, in the urgent pointer field, which indicates the last urgent byte in the data section.

#### Connection termination
Either of the two parties involved in the data exchange (client or server) can close a connection.
It is usually the client which takes this initiative.
Most implementations today allow two procedures for connection termination:
* [[TCP (Transmission Control Protocol)#3‐way handshaking|3‐way handshaking]]
* 4‐way handshaking with half‐close option.
![[Pasted image 20231107140647.png]]
The client sends the first segment, so-called FIN segment, where the FIN flag(Finished flag) is set. Note that the FIN segment can include the last chunk of data sent by the client or it can also just be a control segment as shown in the figure.
The segment consumes a [[Go-Back-N Protocol#**Sequence numbering**|sequence number]], as the segment must be acknowledged.

![[Pasted image 20231107140837.png]]
The server informs its associated process of the situation and sends a FIN + [[Flow and error control#ACK|ACK]] segment where the FIN and [[Flow and error control#ACK|ACK]] flags are set. Also note here that this segment can also contain the last chunk of data from the server, or it can also just be a control segment as shown in the figure.
The segment takes a sequence number, as the segment must be acknowledged.

![[Pasted image 20231107140926.png]]
The client sends the last segment, an [[Flow and error control#ACK|ACK]] segment where the [[Flow and error control#ACK|ACK]] flag is set.
This segment is an acknowledgment of the receipt of the segment from the server.
Note that the segment cannot carry data and therefore does not consume a [[Go-Back-N Protocol#**Sequence numbering**|sequence number]].

In TCP, one end can stop sending data while still receiving data. This is called a half-close. Either the server or the client can issue a half-close request. It can occur when the server needs all the data before processing can begin, e.g., sorting.
![[Pasted image 20231107141049.png]]