IPv6 allows a relationship between the IP address and the link-layer address.

Two common link layer addressing methods can be considered for this purpose:
* 64-bit Extended Unique Identifier (EUI-64), defined by the IEEE
* 48-bit MAC address defined by Ethernet
![[Pasted image 20231031123321.png]]
EUI-64 mapping To relate a 64-bit link-layer address to an Interface ID, the global/local bit must be changed from 0 to 1 (local to global)

![[Pasted image 20231031123406.png]]
**Mapping of Ethernet MAC addresses**
To relate a 48-bit MAC address to an Interface ID, the global/local bit must be changed from 0 to 1, and 16 more bits must be added, consisting of 15 1-digits and a 0 digit: FFFE16. 
>Note that, the 16 extra bits are inserted in the middle of the Interface ID. The MAC address itself is split into two parts on the two sides of this Interface ID.

