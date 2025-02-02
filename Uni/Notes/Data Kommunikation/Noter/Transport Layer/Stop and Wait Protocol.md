---
tags:
  - lecture-note
  - uni
course: Data Kommunikation
---
Here, a simple error control mechanism is added to the protocol, which makes it possible to find and correct errors. In order to find and correct errors in the sent packets, we need to add redundant bits to our packets. (Checksum or [[Stop-and-wait|CRC]]) 

When a package is received, it is examined for errors 
* If it is defective, it is simply discarded 
**When an error is found, cf. this protocol, this is manifested by a receiver remaining silent. (an acknowledgement will be sent back if no error)**

***
Packets lost during transmission are more difficult to handle
The received packet could be:
* Correct
* Duplicate
* Out of order (and we could not know the order)
The solution is to number the packets with sequence numbers, then the recipient can determine if the received packet is in the right order or if it is out of order.
* If so, then other packets are either lost or duplicated.

***
#### Corrupted
Corrupted or lost packages must be retransmitted, cf. this protocol.
* If the receiver does not respond, then an error has occurred.
* The sender who saves a copy of the sent packet starts a timer at the time of dispatch.
If no [[Flow and error control#ACK|ACK]] is received before the timer expires, the packet is retransmitted and the timer is restarted.

The copy is saved until an [[Flow and error control#ACK|ACK]] is received before the timer expires. Since an [[Flow and error control#ACK|ACK]] packet can also be damaged and lost, they must also have redundant bits and a sequence number. 

In this protocol, corrupted [[Flow and error control#ACK|ACK]] packets are discarded and out-of-order [[Flow and error control#ACK|ACK]] packets are ignored.

![[Pasted image 20231107122804.png]]
The Stop-and-Wait protocol is a connection-oriented protocol that provides flow and error control. Note that only one packet and one acknowledgment can be in the channels at any time.

***
#### Sequence numbering
An important consideration here is how many different sequence numbers we need to have in order to make a unique communication.
Sequence numbers can turn around.
* This means that if you have a sequence number field of m bits, then sequence numbers can go from 0 to $2^m-1$, then they are repeated.

In this protocol only 2 different sequence numbers (1 bit) are needed since receipt ([[Flow and error control#ACK|ACK]]) for each packet is arrived before the next is sent. An [[Flow and error control#ACK|ACK]] packet, sent as a receipt for a correctly received packet, contains the sequence number of the next packet that the receiver expects to receive.

![[Pasted image 20231107123030.png]]
