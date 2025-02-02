---
tags:
  - lecture-note
  - uni
course: Data Kommunikation
---
#### Pure ALOHA
![[Pasted image 20231003122353.png]]

In Pure ALOHA, the station transmitting a frame expects an [[Flow and error control#ACK|ACK]] from the receiver once it has received the frame successfully.
If the sender has not received an [[Flow and error control#ACK|ACK]] before a timeout. Then it assumes that frame has been lost and resends it.
If all the stations involved in a collision try to resend after a timeout, then the collision happens again.
Pure ALOHA therefore dictates that: When the timeout period is over, each station waits for another random time period before resending.
We call this random time period Backoff time TB.
Pure ALOHA has another method to prevent the channel (medium) from being flooded with retransmitted frames. After a maximum number of retransmission attempts KMAX, the station gives up and tries again later.

![[Pasted image 20231003122839.png]]

If we assume that frames have fixed sizes and it takes $T_{fr}$ to send a frame, then it can be shown that the vulnerable time in such a system is $2xT_{fr}$:
![[Pasted image 20231003122928.png]]
#### Throughput
$$
S=G \cdot e^{-2G}
$$
Where G is the average number of frames generated during a frame
transmission time $T_{fr}$.
Throughput is the percentage of the frames which can reach their destination successfully.
At max throughput, $G=0.5$, as the vulnerable time is $2 \cdot T_{fr}$. Which
gives $S_{max}=0.184$ or **18,4% of the sent frames arrive without error.**

***
#### Slotted ALOHA
![[Pasted image 20231003123324.png]]
![[Pasted image 20231003123351.png]]