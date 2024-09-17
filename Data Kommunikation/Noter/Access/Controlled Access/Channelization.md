Channel partition is a multi-access method where the available
bandwidth of a link is shared in:
* Frequency
* Time
* Through coding
… among different stations

We look at the following channel partition protocols:
• Frequency-Division Multiple Access (FDMA)
• Time-Division Multiple Access (TDMA)
• Code-Division Multiple Access (CDMA)

***
####  Frequence-Division Multiple Access (FDMA)
Here the bandwidth is divided into frequency bands. Each station is allocated to a frequency band where it can transmit its data. This frequency band belongs to the station at all times.
To avoid interference, the frequency bands are separated by a narrow Guard band.
![[Pasted image 20231003132301.png]]

***
#### Time-Division Multiple Access (TDMA)
Here the bandwidth in the link is divided in time. Each station has its own time slot in which it can send data. The data stream is divided into packets.
![[Pasted image 20231003132352.png]]
* The main problem with TDMA lies in achieving synchronization between the individual stations.
* Each station must know when its time slot starts.
* This can be difficult if the stations are spread over a larger area, because then propagation delays must also be taken into account.
* However, we can compensate for this by inserting guard times between the time slots.
* Synchronization is usually achieved by having some synchronization bits at the beginning of each time slot.

***
#### Code-Division Multiple Access (CDMA)
The idea for CDMA was conceived decades ago, but recent advances in electronic technology have finally made its implementation possible.
* CDMA differs from FDMA because only one channel has the full bandwidth of the link.
* CDMA differs from TDMA because all stations can broadcast simultaneously. There is no timesharing.

Let us assume that 4 stations 1, 2, 3 and 4 are connected to the same channel.
* Data from station 1 is d1, data from station 2 is d2 and so on
* The code associated with station 1 is c1, the code associated with station 2 is c2 and so on

We assume the associated codes have two properties.
1. If we multiply one code by another, we get the result 0.
2. If we multiply a code by itself, then we get the number of stations (here 4)
![[Pasted image 20231003132533.png]]

**Example**
Station 1 and 2 communicate with each other. Station 2 want to see what station 1 is broadcasting. Therefore, station 2 multiplies the data on the channel with station 1’s code c1.
![[Pasted image 20231003132649.png]]

* $c_{1} \cdot c_{1}=4$ (property 2)
* $c_{1} \cdot c_{2}=0$ (property 1)
* $c_{1} \cdot c_{3}=0$ (property 1)
* $c_{1} \cdot c_{4}=0$ (property 1)
then, by dividing by 4, station 2 will be able to find out what station 1 has sent.

***
#### Chip Sequences
>Just like multiplying vectors with the dot product
![[Pasted image 20231003133009.png]]

***
#### Data Representation
* A bit that is 0 is presented as -1
* A bit that is 1 is presented as +1
* If nothing is sent, it is presented as 0
![[Pasted image 20231003133136.png]]
![[Pasted image 20231003133144.png]]
![[Pasted image 20231003133204.png]]

***
#### Walsh Tables
![[Pasted image 20231003133351.png]]
