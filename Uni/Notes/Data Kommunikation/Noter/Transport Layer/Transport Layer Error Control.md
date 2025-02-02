---
tags:
  - lecture-note
  - uni
course: Data Kommunikation
---
Since the network layer is unreliable (IP protocol), we need to make the transport layer reliable if an application requires reliability.
This reliability can be e.g., achieved by adding an error control service to the transport layer.
Error control at transport layer's level is responsible for:
1. Detecting and discard corrupted packets.
2. Keeping track of lost and discarded packets and resending them.
3. Recognizing duplicate packets and discarding them.
4. Buffering out-of-order packets until the missing packets arrive.

Error control only involve the sender and receiver transport layers
![[Pasted image 20231031134129.png]]
As with the case of flow control, the receiving transport layer manages error control, most of the time, by informing the sending transport layer about the problems.

***
#### Sequence Numbers
Error control requires that:
* The sender transport layer knows which packets is to be resent.
* The receiver transport layer knows which packet is a duplicate, or which packet has arrived out of order.

**This can be done if the packets are numbered!**

We add a sequence number in a field in the transport layer packet.

With this sequence number, the above error control can be performed.

* The packet numbering takes place sequentially (i.e., consecutively).
* The sequence number field sets a limit on the size of the sequence numbers.
* When the maximum number is reached, we can wrap around the sequence. (the sequence numbers are modulo 2m and m is the number of the bits in the field.)

0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, ...

***
#### Acknowlegdement
* The receiver can send receipts ([[Flow and error control#ACK|ACK]]) back to the sender when error-free packets are received.
* The sender starts a timer when a packet is sent. If the sender does not receive this receipt before the timer expires, the packet will be resent.
* If the receiver had sent a receipt that did not arrive in time, the receiver will receive the resent duplicate package (which can be just discarded silently based on the sequence number by the receiver)

**Combination of Flow and Error Control**
Sequence numbering and acknowledgement can be combined if we use two numbered buffers on the sender and receiver sides, which place packets in the buffer in relation to the sequence number.

***
#### Sliding Window
Since the sequence numbers use modulo 2m , a circle can represent sequence numbers from 0 to 2m –1. The buffer is represented as a set of slices, called sliding window, that occupies part of the circle at any time.
![[Pasted image 20231031134757.png]]
>The sequence numbers are in modulo 16 and the size of the window is 7

![[Pasted image 20231031134825.png]]
* The leftmost packets are acknowledged (12 - 15), the sender no longer has copies of them. They are finished.
* The packets in the shaded field of the window, the sender needs to have copies of them, as they have been sent, but their fate is not known yet, we do not know if they should be resent or not.
* The white packets in the window are ready to be sent, but data has not yet been handed over to the network layer. As receipts received, the window slides to the right.
>The size of the window thus depends on how many packets of which the sender can keep copies.
