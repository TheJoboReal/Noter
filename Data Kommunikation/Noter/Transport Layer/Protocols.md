One of the questions you might ask yourself is:
If the Data Link layer is reliable and offers [[Flow and error control]] (as we have seen that before), then do we also need to have [[Flow and error control]] on the Transport layer? 

The answer is YES !
Reliability on the Data Link layer is between two nodes!
We also need reliability between two ends (process to process)!

***
Now we have viewed some of the general principles that underlie the Transport Layer. We will now take a closer look at the specific protocols available in the [[TCP (Transmission Control Protocol)|TCP]]/IP Protocol Suite.
![[Pasted image 20231107130943.png]]

***
In the TCP/IP protocol suite there are three common transport layer protocols:
* User Datagram Protocol (UDP) which is:
	o Unreliable
	o Connectionless
This protocol is simple and efficient.
It is used by applications that can add error control
(at the application layer level).

* [[TCP (Transmission Control Protocol)]] which is:
	o Reliable
	o Connection‐oriented.
This protocol can be used by all applications where reliability is important.
The application does not have to provide error control itself,
(it is at Transport layer level)
* [[SCTP (Stream Control Transmission Protocol)]] which is a reliable and connection-oriented.
A new protocol that combines the good features of [[UDP (User Datagram Protocol)|UDP]] and [[TCP (Transmission Control Protocol)|TCP]].

**Portnumbers**
![[Pasted image 20231107131117.png]]
