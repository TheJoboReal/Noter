---
tags:
  - lecture-note
  - uni
course: Data Kommunikation
---
We have seen how we can use DHCP to configure a host in IPv4. we can still do that in IPv6. 
BUT a host can also configure itself in IPv6, which is called Autoconfiguration

The following steps are followed for the autoconfiguration in IPv6:
1. First, the host creates a link local address for itself. This is done as follows:
		first 10-bit = 1111 1110 10
		then 54-bit with 0s is added.
		finally, the Interface ID, which can be extracted from the network card, is used.
***
2. The host tests whether the generated link local address is unique. Since the
		Interface ID from the network card must be assumed to be unique, the local link address is unique with a high probability. but to be sure, the host sends a neighbor solicitation message (does anyone have my ID?) and waits for a neighbor advertisement message (yes I have!) If there are others, the configuration fails and DHCP has to used for instance.
  ***
  3. If the uniqueness of the link local address is passed, the host stores this address as its link local address for private communication.
But it still lacks a Global unicast address. Now a router solicitation message is sent to a local router. If there is a running router on the network, it sends a router advertisement message back to the host. The message contains the Global prefix and the Subnet ID that the host needs to add to its interface identifier in order to generate its Global unicast address. 
If the router cannot help the host with the Global unicast address, then the process fails and then [[DHCP Dynamic Host Configuration Protocol|DHCP]] must be used.
