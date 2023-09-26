#### ACK
Flow control coordinates the amount of data that can be sent before an
acknowledgment is to be received.
This is one of the most important tasks for the Data Link layer.
Every receiving node has a limit to the speed at which they can
receive data. E.g.:
• Limited memory for storing incoming data (buffers).
• The time it takes to process incoming data

![[Pasted image 20230926123443.png]]

***
#### ARQ
Error control. This involves both error detection and correction.
This control allows the receiver to inform the sender of the lost or
corrupted frames during transmission and to coordinate a
retransmission of these frames.
In the Data Link layer, the primary method of error control is
Retransmission.
This method is called Automatic Repeat reQuest (ARQ).