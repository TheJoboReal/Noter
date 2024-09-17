We need to have an addressing system so that we can distinguish different processes on a host. The address in this transport layer is called a port number. 

This address has 16 bits, giving 65,536 different addresses (0 - 65,535) 

The client program defines itself by a port number (ephemeral port number). This (random) number is selected by the transport layer software running on the client's host. 

The server process must also define itself by a port number. This port number, however, cannot be chosen randomly (otherwise the client could not find the server). 

It has been decided by [[TCP (Transmission Control Protocol)|TCP]]/IP to use universal numbers for servers, that is, well-known port numbers.

***
#### Example
![[Pasted image 20231031132833.png]]
As we can see, the daytime client has been given a random port number (52,000), while the daytime server has a well-known port number (13)

It should be clear that the IP address and port number have their different roles to play when finding the final receiver of some data. 
**IP address** selects the host among the different hosts in the world. 
**Port number** selects a specific process on this selected host.
![[Pasted image 20231031132924.png]]
