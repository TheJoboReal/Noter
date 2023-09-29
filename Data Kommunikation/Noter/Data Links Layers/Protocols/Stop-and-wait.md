In the Stop-and-wait protocol, only one frame is sent at a time, then an
acknowledge frame (ACK [[Flow and error control#ACK]]) is awaited before the next frame is sent.
A CRC is used for each data frame and ACK frame to detect errors.
A time at sender side is used for ARQ [[Flow and error control#ARQ]].

![[Pasted image 20230926124224.png]]
***
When a frame is received, it is checked for errors, if it is corrupted it is simply
discarded. When an error is found, cf. this protocol, this is manifested by the
receiver remaining silent.

>Blocked state means it cant send.

![[Pasted image 20230926124401.png]]
***

![[Pasted image 20230926124810.png]]
#### With numbering
![[Pasted image 20230926124954.png]]
The duplicate frame is discarded because the frame it received was not a 1.

***
#### Sequence numbering
An important consideration here is how many different sequence numbers we need to have in order to make a unique communication.
if a sequence number has m bits, then the sequence numbers can go from 0 to 2m-1, then they are repeated.
In this protocol only 2 different sequence numbers are needed since one
acknowledgment frame (ACK) for each Frame before the next is sent.
An ACK Frame sent as a receipt for a correctly received frame contains the sequence number of the next frame that the receiver expects to receive.