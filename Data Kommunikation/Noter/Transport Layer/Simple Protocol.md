This protocol has neither Flow nor Error control, where the packets move in one direction.
* assume the receiver can handle all packets it receive immediately.
* and it immediately removes packet header and passes data on to the application layer without any delay.
* In other words, we imagine that the receiver will never be overwhelmed with too much incoming data.
![[Pasted image 20231107122118.png]]

Here there is no need for flow control.
* The transport layer, on the sender side, gets its data from its application layer, encapsulates data and sends them (via its network layer).
* The transport layer, on the receiver side, receives packets (from its network layer), extracts data from it and passes it on to its application layer (a process).
![[Pasted image 20231107122147.png]]

***
#### Flow Diagram
![[Pasted image 20231107122242.png]]
The sender sends packets one after another without even thinking about the receiver. You can see the transmission time (the packet lines are a little inclined)
