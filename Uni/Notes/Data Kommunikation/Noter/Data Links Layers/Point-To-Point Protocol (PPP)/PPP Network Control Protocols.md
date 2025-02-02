---
tags:
  - lecture-note
  - uni
course: Data Kommunikation
---
PPP Network Control Protocols
PPP supports many of the network layer protocols, for example:
• Internet
• OSI
• Xerox
• DECnet
• AppleTalk
• Novel
• And so on
To do this, PPP has defined a specific Network Control Protocol (NCP) for each Network Protocol. E.g.:
• IPCP (Internet Protocol Control Protocol) configures a connection that   can carry IP data packets.
• Xerox CP does the same for Xerox
• And so on
Note that none of the NCP packets carry network-layer data, they just configure the link at the network layer for the incoming data.

>A connection-oriented protocol first establishes (configures) a connection, where after data can be transmitted. A connection-less protocol transmits data without any prior configuration.
#### IPCP Example
![[Pasted image 20230926134709.png]]

#### Other Protocols 
PPP Network Control Protocols: Other Protocol
There are other NCP protocols for setting up other Network Layer protocols.
E.g.
• OSI network layer control protocol has a protocol field value of 0x8023
• Xerox NS IDP control protocol has a protocol field value of 0x8025
• And so on
but all have the same codes and format.
![[Pasted image 20230926134807.png]]