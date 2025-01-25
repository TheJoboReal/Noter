The problem with the previous protocol is that we only send one packet when we have received a receipt ([[Flow and error control#ACK|ACK]]) that shows the previous packet has been received correctly.
Therefore, we are now expanding this protocol so that we can send more than one packets while the sender is waiting for acknowledgement.In other words, multiple packets must be in transition to keep the channel busy.
![[Pasted image 20231107123435.png]]

>Note that: [[Stop-and-wait]] is a special case of Go‐Back‐N
>
>[[Stop-and-wait]] has only two sequence numbers,while Go‐Back‐N has several.In addition, the sender window size in Stop‐and‐Wait is only 1.in Go‐Back‐N, it is usually more than 1.Transport LayerGo‐Back‐N Protocol

#### **Sequence numbering**
Also, in this protocol we have a field in the header for numbering the packets, and here it also applies that we use modulus $2^m$. Thus, the numbering for m bit, goes from 0 to $2^m-1$. 

#### **Sliding Window** 
Once we have determined a number of sequence numbers we will apply, then it is important to understand that we can only use less than $2^m$ numbers in a sender sliding window, which means that the sender can only have a limited number of outstanding packets, i.e., sent packets that have not yet been acknowledged.

#### Sender Window
* The packets acknowledged (far left), the sender no longer has copies of them.
* The packets in the dark field, the sender needs to have copies of them, as their fate is not known yet, we do not know if they should be resent later yet.
* To the right of the dark block, the range of sequence numbers for packets that can be sent. However, the corresponding data have not yet been received from the application layer.
![[Pasted image 20231107123653.png]]
![[Pasted image 20231107123712.png]]
variable **Sf** defines the sequence number of the first (oldest) outstanding packet.
variable **Sn** holds the sequence number that will be assigned to the next packet to be sent.

The size of the window thus depends on how many packets the sender can keep copies of.
##### Sender window size
Now we need to see why the window should be less than 2m.
Example:
We choose $m=2$.
The size of the window is selected: $2^m-1=3$ .
In the figure (full size next slide), a window size of 3 **(a)**
compared against with one of 4 **(b)**.
* If the window is 3 (i.e., less than $2^2$) and all receipts are lost, then the timer for packet 0 will expire and all three packets will be retransmitted. Nothing special would happen.
* If the window is 4 (i.e., equal to $2^2$) and all receipts are lost, then the timer for packet 0 will expire and all four packets will be retransmitted.

>But at that point, the receiver expects packet 0 and mistakenly accepts the resent packet 0 as a new packet 0.

![[Pasted image 20231107124132.png]]
#### Receiver window
The receiver's window is of only size 1.
The receiver only waits for a specific packet (here 5), all other received packets are discarded and must be retransmitted.
![[Pasted image 20231107123828.png]]

Opening and closing the window of the receive window In order to achieve flow control, [[TCP (Transmission Control Protocol)|TCP]] forces the sender and receiver to adjust their windows in a coordinated way.
* The receive window closes (moves its left wall to the right) when more bytes arrive from the sender.
* The receiver window opens (moves its right wall to the right) when more bytes are pulled by the process.
* Note here that it is not allowed to shrink (move the right wall to the left) the receive window. Opening, closing and shrinking of the send window is controlled by the receiver.
* The send window closes (moves its left wall to the right) when a new acknowledgments ([[Flow and error control#ACK|ACK]]) allow it to do so.
* The send window opens (moves its right wall to the right) when the receive window size (rwnd) advertised by the receiver allows it to do so (new ackNo + new rwnd > last ackNo + last rwnd).
* The send window shrinks (moves its right wall to the left) in the event this situation does not occur.

#### Timers
Only one timer is used here.
The timer is set all the time so that it reflects the time of dispatch of the oldest packet (the first outstanding packet) that has not yet been acknowledged.

If the timer expires, all outstanding packets are retransmitted.

That is why the protocol is called Go-Back-N.
On a time-out, the machine goes back N locations and resends all packets.

#### Example
![[Pasted image 20231107124226.png]]
>Notice: cumulative [[Flow and error control#ACK|ACK]] can help here. Communication may continue even if acknowledgments are delayed or lost. That is, although [[Flow and error control#ACK|ACK]] 2 is lost, [[Flow and error control#ACK|ACK]] 3 is cumulative and serves as both [[Flow and error control#ACK|ACK]] 2 and [[Flow and error control#ACK|ACK]] 3.

#### Example 2
The sender sends packets 0, 1, 2 and 3 is sent, but packet 1 is lost.

The receiver receives packets 2 and 3, but they are discarded as they are received out‐of‐order. 

The receiver sends an [[Flow and error control#ACK|ACK]] on packet 1 both when packets 2 and 3 are received, as it is packet 1 it expects. 

The sender discards these [[Flow and error control#ACK|ACK]]s the [[Flow and error control#ACK|ACK]] number is equal to **Sf** and not greater than it. 

Time‐out on packet 1 occurs and packets 1, 2 and 3 are retransmitted. 

The received packets are acknowledged (and the timer eventually stops) 

![[Pasted image 20231107124700.png]]