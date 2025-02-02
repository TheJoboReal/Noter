---
tags:
  - lecture-note
  - uni
course: Data Kommunikation
---
Originally, The Ethernet LAN was developed in the 1970s by Robert Metcalfe and David Boggs. Since then, it has gone through four generations as the demands for higher data rate have been increasing, we will look at 3 of them:
![[Pasted image 20231003133649.png]]

***
#### Access method
Standard Ethernet uses [[CSMA or CD|CSMA/CD]] with 1-persistent method.
Slot time The slot time is referred to as the time it takes to send 512 bits.
This means that the slot time depends on the data rate.
For traditional 10-Mbps Ethernet, the slot time is 51,2μs.

***
#### Slot time and collision detection
The choice of a 512-bit slot time is not random. It is selected for [[CSMA or CD|CSMA/CD]] to work properly.
In Ethernet, roundtrip time is the time it takes for a frame to be transmitted from one end of a network to the other and back again.
This is equivalent to two nodes (A and B) furthest apart in a network doing the following:
* Node A transmits 512 bit.
* Just before the first of the 512 bits arrives at node B, B also sends 512 bits.
* When B’s first bit arrives at A, then A must not have sent its last bit.

The choice of a 512-bit slot time is not random. It is selected for CSMA/CD to work properly.
![[Pasted image 20231003134912.png]]


>Remember A and B only do collision detection while transmitting!

***
#### Slot time and maximum network length
There is a relationship between the slot time and the maximum length of a network (the collision domain).
It depends on the propagation rate. In most transmission media, signals move at a speed of 2x108 m/s (equivalent to 2/3 of the propagation rate in air).
We can thus calculate:
![[Pasted image 20231003134952.png]]
However, we should also consider delays in repeaters and interfaces, as well as the time required to send jam signals. These circumstances in practice reduce the maximum length to 2500 m (48% of the theoretical value).
