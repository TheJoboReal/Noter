The need for even faster data speeds led to the design of the Gigabit Ethernet protocol. IEEE has given it the name standard 802.3z.
The following Gigabit Ethernet targets can be summarized:
1. Upgrade the speed to 1 Gbps.
2. Make it compatible with Standard and Fast Ethernet.
3. use the same 48-bit [[MAC]] address.
4. Keep the same frame format.
5. Maintain the same minimum and maximum lengths for Frames.
6. Support [[Fast Ethernet#Autonegotiation|Autonegotiation]] as defined in [[Fast Ethernet]].

***
#### MAC Sublayer
One of the main considerations in the development of Gigabit Ethernet was to keep the MAC sublayer untouched.
But this was no longer possible if one wanted to achieve 1Gbps.
Gigabit Ethernet has two distinctive approaches for medium access:
* Half-duplex.
* [[Full-Duplex Switched Ethernet|Full Duplex]].

***
#### Full Duplex
* In Full-duplex, there is a central switch, which is connected to all stations or switches.
* Here, each switch has a buffer in all input ports, which holds data until it is sent.
* Since the switch divides the collision domain into N domains, there are no collisions, therefore [[CSMA or CD|CSMA/CD]] is not used.
* This means that the length of the cables is determined by the attenuation of the cables, and not by the collision detection algorithm (CD).

***
#### Half Duplex
3 methods are defined:
* Traditional
* Carrier Extention
* Frame Bursting.
Traditional: here the same minimum length is used on the frame as in traditional Ethernet (512bit). But since the length of a bit is 1/100 shorter in Gigabit Ethernet than in traditional Ethernet (10Mbps), the slot time is reduced to 0.512μs, which means that collision is detected 100 times earlier, which in turn means that the
cable length can only be 25 m.

***
#### MAC sublayer – Half-Duplex mode
***Carrier Extention:*** to allow a longer (larger) network, we increase the minimum length of a frame. Here, the minimum frame length is defined as 512 bytes = 4096 bit. This means that the minimum length is increased 8 times. This also increases the cable length 8 times to 200 m (100 m from station to hub).
If less than 4096 bit is to be transmitted, bit padding is used.

***Frame Bursting:*** Carrier Extension is very inefficient if only short messages (bit padding and redundant bits) are sent.
Instead of adding extension to each frame, more frames are sent.
But to make these multiple frames look like a frame, bit-padding is added in between the frames.
This makes the many frames look like one, and since the medium is not idle between the frames, other stations are deceived into thinking that only a very large frame has been transmitted.

***
#### Summary
![[Pasted image 20231003141350.png|900]]
