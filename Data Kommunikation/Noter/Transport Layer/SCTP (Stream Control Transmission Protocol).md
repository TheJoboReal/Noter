Stream Control Transmission Protocol (SCTP) is a transport layer protocol used for reliable and message-oriented communication. It was designed to address some of the limitations of Transmission Control Protocol ([[TCP (Transmission Control Protocol)|TCP]]) and User Datagram Protocol ([[UDP (User Datagram Protocol)|UDP]]).

Key features of SCTP include:

1. **Reliable Data Transfer:** SCTP ensures the reliable delivery of data by using acknowledgments and retransmissions, similar to [[TCP (Transmission Control Protocol)|TCP]].
    
2. **Message-Oriented:** SCTP treats data as messages, preserving message boundaries, which is different from [[TCP (Transmission Control Protocol)|TCP]], where data is treated as a stream of bytes.
    
3. **Multi-Homing:** SCTP supports multiple network interfaces on both the sender and receiver sides, providing fault tolerance and improved redundancy.
    
4. **Ordered and Unordered Delivery:** SCTP allows for the delivery of messages in order or out of order, offering flexibility for different application requirements.
    
5. **Flow Control:** SCTP includes built-in flow control mechanisms to prevent congestion and manage the rate of data transfer.
    
6. **Partial Reliability:** SCTP allows for partial reliability, meaning that an application can specify that certain data can be delivered even if not all of it is received.
    
7. **Association Establishment:** SCTP uses a process called association establishment to set up connections between endpoints.
    

SCTP is often used in applications where reliable, message-oriented communication is essential, such as telecommunication signaling, Voice over IP (VoIP), and network services that require high availability and redundancy.