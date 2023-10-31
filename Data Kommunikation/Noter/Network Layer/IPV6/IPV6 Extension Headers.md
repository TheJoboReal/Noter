![[Pasted image 20231031125942.png]]

* **Hop-by-hop option:** This extension header is used when a sender needs to provide information to all the routers visited by its datagram. 
So far, only 3 options have been defined:
o **Pad1:** This option is 1 byte long and is designed for alignment purposes. Some options need to start at a specific bit of the 32-bit word. If an option falls short of this requirement by exactly one byte, **Pad1** is added.

o **PadN:** similar to Pad1 but used when 2 or more bytes are needed for alignment.

o **Jumbo payload:** This option is used to define payloads longer than 65,535 bytes.

* Destination option: This option is used when the sender wants to pass information only to the receiver. This means that routers are not allowed to access this information.
* Source Routing: This Extension combines the concepts of Strict Source Route and Loose Source Route from the IPv4 protocol.
* Fragmentation: This extension is used when fragmentation is needed.
	Unlike IPv4, where it was either the sender itself or a given router on the way to the receiver that was responsible for the fragmentation if the MTU (Max. Transfer unit) for the network used was less than the datagram size. In IPv6, only the sender can perform this fragmentation. The sender must use a path MTU discovery technique to find the smallest MTU supported by any network on the path and use it to fragment the datagram after. 
	
	If the source does not use a Path MTU Discovery technique, it fragments the datagram to a size of 1280 bytes or smaller. This is the minimum size of MTU required for each network connected to the Internet.  

* **Authentication:** This extension has a dual purpose: it validates the sender and ensures the integrity of the received data. 
	The former is needed so the receiver can be sure that a message is from the genuine sender and not from an imposter. The latter is needed to check that the data is not altered in transition by some hacker. 
 
 • **Encrypted Security Payload: (ESP)** is an extension that offers confidentiality and guards against eavesdropping.