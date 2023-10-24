During the 1980s, several manufacturers developed routers that implement switch technology. Later, IETF (Internet Engineering Task Force) approved a standard, called Multi-Protocol Label Switching ( MPLS).

These routers can then replace conventional routers.
* These routers can forward packets based on the destination address,
* But also behave like a switch when packets need to be forwarded based on labels.

**A new header**
To be able to simulate connection-oriented switching using protocols such as IP, you need to add an extra field to the packet that contains the label.

>IPv4 does not allow this extension. (but IPv6 does!)


***
#### The Solution
Encapsulate the IPv4 datagram in an MPLS packet.
Here MPLS will simulate a layer between the [[Data Link Layer]] Layer and the [[Network Layer]].

The whole IP packet is encapsulated as the payload in an MPLS packet and an MPLS header is added.
![[Pasted image 20231024125159.png]]
