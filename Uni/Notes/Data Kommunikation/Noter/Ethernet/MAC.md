* Ethernet has no mechanisms to acknowledge received frames.
* Therefore, it is considered an unreliable medium.
* If a receipt is to be received for received frames, it must be implemented in higher layers.
![[Pasted image 20231003133720.png]]

**Preamble:** This field consists of 7 bytes (56 bits) of alternating 0s and 1s.
The field is used to alert the receiver to the coming frame and allows the receiver to synchronize its clock with the sender.
In fact, this field is actually added at the physical layer and is therefore
not officially part of the frame.

**Start frame delimiter (SFD):** This field has 1 byte and contains a constant value 10101011. It signals the start of a frame. The receiver is warned that this is the last chance to get ready to receive the coming frame.
This field is also added at the physical Layer.

**Destination address (DA):** This field has 6 bytes and contains the link-layer address of the destination station or stations, i.e.,receiver(s).

**Source address (SA):** This field has 6 bytes and contains the link-layer address of
the sender of the packet.

**Length or Type:** The standard Ethernet uses this field for type indication, while IEEE uses the field to specify the number of bytes in the data field.
Both statements are common today.
If type is used, this value is larger than 1536 (0x0600) and indicates the upper-layer protocol whose packet is encapsulated in the frame. Here, interpackets gap (which is the distance between frames = 12 byte) is used to detect the frame length.
E.g.: 0x0806 = ARP and 0x86DD = IPv6

**Data:** This field contains data encapsulated from the upper layers. The size is between 46 and 1500 bytes.
If data in this field is less than 46 bytes, then 0s are inserted (padding).


**What is multiple access control (MAC)** and why is it necessary?
Nodes may be connected to common link (multipoint), where the medium (channel) needs to be shared
by multiple nodes and therefore requires a protocol to manage multiple-access.

[[Data Link Control DLC|CRC]]: This field contains error detection information, in this case CRC-32.

***
Ethernet has restrictions on both the minimum and maximum lengths of a frame.
![[Pasted image 20231003134322.png]]The minimum length is a requirement for the proper functioning of
[[CSMA or CD|CSMA/CD]]. It is set to be at least 512 bits or 64 bytes.
The reason is that the transmission time for a frame ($T_{fr}$) must be at least $2 \cdot T_{p}$(propagation) for collision detection.
If the upper layer delivers less than 46 bytes to the MAC layer, then some padding is conducted to fit.

The maximum limit has two historical reasons.
* In the early days of Ethernet, memory was very expensive. By
limiting the size, one could also limit the size of buffers.
* The maximum limit should help ensure that a station does not monopolize the shared medium for too long at a time.

***
#### MAC Control Layer
Since standard Ethernet was designed as a connectionless protocol without [[Flow and error control]]. Then it was necessary to add a layer in between the LLC layer and the MAC layer that could handle these controls. This layer is called MAC Control Layer.
