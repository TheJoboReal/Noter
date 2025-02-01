IPv6 uses two large blocks for private addressing and one large block for multicasting.
![[Pasted image 20231031124011.png]]

**Unique local unicast block:** Addresses in this block can be freely selected by the organization.
Note that packets with a destination address in this block are not expected to leave the organization. The 40 bits of random number must help minimize the probability of two identical addresses. (used for private communication in the same LAN)

**Link local block:** Addresses in this block can be used as private addresses on the organization's network. (used e.g., for autoconfiguration)

**Multicast block:** An address from this block is used to define a group of hosts and not just one host. 
As we can see, the group can be permanent (0 for the flag), if it is, then the address is defined by the internet authorities. The group can also be transient or temporary (1 for the flag), and the address does not have to be defined by the internet authorities. Scope field tells something about the domains within which the group appears. 

