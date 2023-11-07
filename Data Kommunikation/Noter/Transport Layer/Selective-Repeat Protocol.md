The Go‐Back‐N protocol simplifies the process on the receiver side.
Here you only need to keep track of one variable, and you do not need any buffers to keep track of out-of-order packets, they are simply discarded.

All these nice things have their "price": This type of protocol is very inefficient when the network layer loses many packets. 

The Selective Repeat protocol resend only selective packets that are actually lost, not all the outstanding packets. This is more efficient, but it also means that the receiver becomes more complex 


On the sender side, the window is similar to the one from the [[Go-Back-N Protocol|Go-Back-N]], it's just smaller. Later we will see why the size is smaller.
The receiver window in Selective-Repeat is totally different from the one in [[Go-Back-N Protocol|Go-Back-N]]. The size of the receiver window is the same as the size of the sender window.
![[Pasted image 20231107125240.png]]

#### The size of the window
We will now show why the size of the window may only be up to half of $2^m$ (m is the number of bits in the sequence numbering)

E.g., m = 2 (numbers from 0 to 3), which means that the maximum window size is $\frac{2^m}{2}=2$.

The figure in the next slide compares a window of size 2 and another one of size 3.
* If the window size is 2 and all [[Flow and error control#ACK|ACK]]s are lost, then timer 0 will expire and packet 0 will be resent.
But the receiver is waiting for packet 2, not packet 0, so this duplicate is discarded.
**Which is correct**.

* If the window size is 3 and all [[Flow and error control#ACK|ACK]]s are lost, then timer 0 will expire and packet 0 will be resent.
The receiver is waiting for a new packet 0 rather than the old packet 0 which is resent.
The receiver mistakenly accepts this duplicate.
**Which is wrong**.
***
![[Pasted image 20231107125811.png]]


#### Sender Window
![[Pasted image 20231107125328.png]]
On the sender side, the window has become a little more complex
* The red boxes are packets for which the receipts ([[Flow and error control#ACK|ACK]]) have not yet been received.
* The gray box is a packet for which the receipt ([[Flow and error control#ACK|ACK]]) has been received (but out of order).
When packets 0 and 1 are acknowledged, the window will slide by three boxes to the right.

***
#### Receiver Window
![[Pasted image 20231107125351.png]]
On the receiver side, the window has become more complex.
* The gray boxes are packets received out-of-order.
* The white boxes are the expected packets.
In this case, the window will slide by two boxes to the right when the packet 3 is received, because then packets 3 and 4 will be in order, and they can thus be delivered on up to the application layer.

***
#### Example
Packet 0 is sent and acknowledged 

Packet 1 is lost, packets 2 and 3 are received out‐of‐order (and acknowledged). 

>Note: the timer runs for packet 1, as it is the earliest packet that has not been acknowledged. 

When the timer expires, packet 1 is resent, and the receiver acknowledges this. 

Packets 1, 2 and 3 can be delivered to the application layer in order. 
![[Pasted image 20231107125517.png]]
