---
tags:
  - lecture-note
  - uni
course: Data Kommunikation
---
Addresses that use the prefix (0000::/8) are reserved, but part of this block is used to define some special addresses.
![[Pasted image 20231031123602.png]]
**Unspecified:** is a block with only one address (all bits are 0). This address is used during booting when a host does not yet know its own address.
(we have seen this in the DHCP Dynamic Host Configuration Protocol)

**Loopback:** is a block with only one address (all bits 0 except LSB, which is 1). when this IP address is applied, the packet does not leave the host and is used for testing purposes.
>NOTE: For IPv4, there are many addresses in this block while in IPv6 there is only one!

**Compatible address:** is an address of 96 bits of zero followed by 32 bits of IPv4 address. It is used when an IPv6 host wants to communicate with another IPv6 host (can be used in the transition phase from IPv4 to IPv6)

**Mapped address:** is an address of 80 bits of zero followed by 16 bits of one and 32 bits of IPv4 addresses. It is used when an IPv6 host wants to communicate with an IPv4 host (can be used in the transition phase from IPv4 to IPv6)

The smart thing about the last two blocks of Compatible and mapped addresses is that a calculation of the checksum can either be done on the entire IPv6 address or only the IPv4 address, it does not change the result of the checksum. 
>If 0 or 1 digits appear in multiples of 16, then it does not change the checksum.

This is important for [[UDP (User Datagram Protocol)|UDP]] and [[TCP (Transmission Control Protocol)|TCP]], which use a pseudoheader to calculate the checksum,
because the checksum calculation is not affected if the address of the packet is changed from
IPv6 to IPv4 by a router.

