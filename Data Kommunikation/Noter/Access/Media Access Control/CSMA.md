Media Access Control: Carrier Sense Multiple Access (CSMA)

The risk of collision can be reduced if the station examines the medium before attempting to use it.
The principle is called “sense before transmit” or “listen before talk”.
![[Pasted image 20231003123451.png]]

![[Pasted image 20231003123620.png]]
If one station transmits and another station starts a transmission within this time period (TP) after the start of the first station’s transmission, then a collision is very likely to happen.

***
#### Avoiding Collisions
What should a station do if the channel is busy?
what should a station do if the channel is free?
3 methods have been developed to answer these questions:
• 1-persistent method
• Nonpersistent method
• p-persistent method


**1-persistent method** is the simplest. Measure all the time until the
medium is free, then send.
This method has the highest risk of collision among the three methods.
Ethernet uses this method.
![[Pasted image 20231003123818.png]]


**Nonpersistent method.** A station has a frame to send. If the channel is free, it sends immediately. If the channel is busy, it waits a random amount of time and then sense the channel again.
This reduces the risk of collision (compared to the first method).
![[Pasted image 20231003123839.png]]


**p-persistent method.** This method is used if the channel is divided into time slots whose length is greater than or equal to the propagation time.
This method combines the advantages of the two previous methods. This reduces the risk of collisions and improves efficiency.
![[Pasted image 20231003123916.png]]

>If the media is free it will not send the data.
>A random number is send and if the number is higher than *p* it will continue to transmit, else it will wait a random amount of time.

