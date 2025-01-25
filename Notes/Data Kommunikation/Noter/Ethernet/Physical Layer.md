Standard Ethernet defines a number of physical layer implementations. But only four of them became popular during the 1980s.
![[Pasted image 20231003135022.png]]
![[Pasted image 20231003135539.png]]
Standard Ethernet uses [[Polar Manchester and differentiel Manchester|Manchester]] coding

![[Pasted image 20231003135148.png]]
***
#### 10Base5: Thick Ethernet
This was the first specification of Ethernet that used bus topology with an external transceiver (transmitter/receiver) connected via a tap to a thick coaxial cable. The cables were large and difficult to bend.
![[Pasted image 20231003135321.png]]
***
#### 10Base2: Thin Ethernet
10Base2 also uses a bus topology, but with thinner cables and cheaper hardware.
![[Pasted image 20231003135333.png]]

***
#### 10Base-T: Twisted-pair Ethernet.
10Base-T uses a star topology.
The stations are connected to a hub via two pairs of twisted cables.
(2 pairs = 1 pair for sending and 1 for receiving)
![[Pasted image 20231003135403.png]]
In this setup, the maximum length of the cables is set to 100 m, to minimize the effect of attenuation in the twisted cable.

***
#### 10Base-F: Fiber Ethernet
Star topology is also used here.
For each connection, one fiber is used for sending and the other one for receiving.
![[Pasted image 20231003135449.png]]

***

The physical layer of Fast Ethernet is more complex than Standard Ethernet. Two stations can be connected as Point-To-Point and three or more stations need to be connected in star topology (with a hub or switch in the middle).
![[Pasted image 20231003140322.png]]

Fast Ethernet implementation at the physical layer can be categorized as either two-wire or four-wire implementation.
• Two-wire: category 5 UTP (100Base-TX), fiber-optic cable (100Base-FX).
• Four-wire: category 3 UTP (100Base-T4).
![[Pasted image 20231003140353.png]]
