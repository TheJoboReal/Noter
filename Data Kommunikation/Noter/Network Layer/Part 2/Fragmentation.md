*A datagram can travel through many different networks.*

Every router it encounters:
* decapsulates the IP datagram from the frame it receives
* processes it
* encapsulates it back in another frame.

The format and size of the received frame depends on the protocol used by the physical network where the frame came from.

The format and size of the sent frame depends on the protocol used by the physical network where the frame is going to travel.

**Example:** If a router connects a LAN to a WAN, it receives a frame in the LAN format and sends a frame in the WAN format.

***
A datagram can be fragmented by the source or any router in the path.
* It is fragmented into sizes that meet the requirement of the used data link layer in the network in terms of MTU constraint.

Once a datagram is fragmented, each fragment is independent and will have its own header
* Where most fields are the same.
* But some fields have been changed.

A fragmented datagram may itself be fragmented if it encounters a network with an even smaller MTU. In other words, a datagram may be fragmented several times before it reaches the final destination.
Reassembly of the fragmented datagram is done only at the receiver (not the routers).

***
#### Maximum Transfer Unit (MTU)
![[Pasted image 20231024131718.png]]
