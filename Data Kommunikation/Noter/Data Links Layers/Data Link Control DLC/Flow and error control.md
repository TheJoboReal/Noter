#### ACK
Flow control coordinates the amount of data that can be sent before an acknowledgment is to be received.
This is one of the most important tasks for the Data Link layer.
Every receiving node has a limit to the speed at which they can
receive data. E.g.:
• Limited memory for storing incoming data (buffers).
• The time it takes to process incoming data

After transmitting one packet, **the sender waits for an acknowledgment (ACK) from the receiver before transmitting the next one**. In this way, the sender can recognize that the previous packet is transmitted successfuly and we could say "[[Stop and Wait Protocol]]" guarantees reliable transfer between nodes.
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


#### What is Flow Control?
In most protocols, flow control is a set of procedures that tells the sender how much data it can transmit before it must wait for an acknowledgment from the receiver.

#### How is error control typically achieved in the Data Link Layer?
Most protocols implement error control using re-transmission, a process called the automatic repeat request (ARQ). Here, acknowledgment messages are used to indicate whether a transmission was successful, were a corrupt message (identified via e.g., CRC) is then re-transmitted.

