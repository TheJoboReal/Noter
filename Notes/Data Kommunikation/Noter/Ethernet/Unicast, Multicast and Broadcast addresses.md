A source address is always a unicast address, the frame only comes from one station. But the destination address can be unicast, multicast or broadcast addresses.
* If the least significant bit (lsb) in the first byte is 0, then it is a unicast address.
* If the lsb in the first byte is 1, then it is a multicast address.
* If all bits in the address are 1 (FF:FF:FF:FF:FF:FF), then it is a broadcast address.

![[Pasted image 20231003134621.png]]

>See also [[Addressing]]
