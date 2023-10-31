#### CIDR (Classless Inter-Domain Routing) notation
* IPv6 uses hierarchical addressing.
* Therefore, one can use [[IPV4 Addressing#CIDR Example|CIDR]] notation. That is, IPv6 address consists of a prefix and a suffix.
![[Pasted image 20231031122523.png]]

***
IPv6 has a very large address space: 2128 addresses. This address space is 296 times the IPv4 address space
![[Pasted image 20231031122542.png]]

***
#### Three types of Addresses
In the IPv6 address system, a destination address can belong to one of the following three types:
* Unicast
* Anycast
* Multicast

**Unicast:** Such an address defines a single interface (computer or router). The packets sent to a unicast address are sent to only one receiver.

**Anycast:** Such an address defines a group of computers that all share one address. A packet sent to anycast address is only delivered to one member of the group, the easiest one to reach.
>Ex. If you anycast to Facebook in Odense you will connect to the Datacenter in Odense and not the one in USA.

* Anycast communication is used e.g., when multiple servers can respond to an inquiry.
* The request is sent only to the one who is easiest to reach.
* Hardware and software generate only one copy of the request.
* This copy reaches only one of the servers.
* IPv6 does not designate a special block for Anycast addresses, the address is taken from the Unicast block.

**Multicast:** Such an address also defines a group of computers, all of which share one address.
But unlike Anycast, where only one copy of a packet was sent to only one member of the group, each members in the group will receive a copy of the packet. IPv6 has a special block for Multicasting, from which the same address is assigned to all members of a group.
>Note that IPv6 does not define Broadcasting. IPv6 considers broadcasting as a special case of Multicasting.

***
#### Address Space Allocation
![[Pasted image 20231031122814.png]]
Global unicast addresses
Let's take a closer look at the block used for unicast (one-on-one) communication. The block is called Global Unicast Address Block. CIDR for the block is 2000::/3. This means that the 3 MSB bits are the same for the whole block (001). This means that there are 2125 addresses in a block (4,2535295865117307932921825928971e+37).
>That should be more than enough for Internet expansion for many years to come.

***
![[Pasted image 20231031122917.png]]
An address in this block is divided into three parts:
* Global routing prefix (recommended length: 48 bit)
* Subnet identifier (recommended length: 16 bit)
* Interface identifier (recommended length: 64 bit)

**Global routing prefix:** here the 3 MSB bits go for the block prefix, then there are 45 bits left.
This global routing prefix is used to send packets through the Internet to reach a specific ISP or organization.
$2^{45}$ or 35.184372088832e+12 different ISPs or organizations (e.g., SDU).

**Subnet ID:** Once the packet has reached the ISP or organization, it can itself have 216 or 65,536 different subnets, which should be enough! (could correspond to faculties at SDU)

**Interface ID:** Each subnet can have 264 or 8.446744073709551616e+18 different addresses.

>Note that in IPv6 it is called an Interface ID and in IPv4 we call it a Host ID. It is actually more correct to call it Interface ID because if you move a host to another connection on the Internet, it must also have a new IP address.

