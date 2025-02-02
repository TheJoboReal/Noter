---
tags:
  - lecture-note
  - uni
course: Data Kommunikation
---
One logical PPP frame can be divided into several fragments, which are carried as payload of actual PPP frames and transmitted through multiple channels. To show that the actual PPP
Frame carries a fragment of a logical frame, the protocol field is set to 0x003D.
In addition, the PPP Frame must also have a sequence number to indicate the position of the fragment in the logical PPP Frame.

Using a Link Control Protocol frame, PPP can be configured to use IP datagrams for the payload via Network Control Protocol (which is a category of protocols), specifically the IPCP protocol, meaning that, once configured, the payload of the PPP frame can consist of network layer data packets.

![[Pasted image 20230926135120.png]]
