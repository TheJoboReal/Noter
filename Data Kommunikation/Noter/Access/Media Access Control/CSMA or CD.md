Carrier Sense Multiple Access with Collision Detection (CSMA/CD)


• [[CSMA]] does not specify what to do if a collision occurs.
• CSMA/CD describes an collision handling algorithm.

To better understand CSMA/CD, let's look at the first bit transmitted by two stations involved in a collision…

![[Pasted image 20231003124418.png]]
• At time t1, station A performs its persistent procedure and starts the transmission of its frame.

• At time t2, station C performs its persistent procedure and starts the transmission of its frame.

• At some point after t2 (but before t3) the two frames collide.

• At time t3, station C detects that the medium was not available nyway (sender A) and therefore interrupts its transmission.

• At time t4, station A detects that the medium was not available anyway (sender C) and therefore interrupts its transmission.

***
![[Pasted image 20231003124705.png]]If station A had finished transmitting before t4 (e.g., A’s Tframe < t4 – t1), then station A would no longer monitor the channel for collisions,
thereby can not detect the collision, Which would not meet CD in
CSMA/CD.

$T_{frame}$ must therefore be at least $2 \cdot T_{p}$ (propagation)

***
#### Modes
If you measure the energy level of a channel, it can have 3 modes:
• Transmission (normal)
• Idle (zero)
• Collision (abnormal)
![[Pasted image 20231003125045.png]]
***

[[ALOHA]] compared to **CSMA/CD**
![[Pasted image 20231003124838.png]]

***
#### [[ALOHA#Throughput|Throughput]]
The throughput at CSMA/CD is greater than at both Pure ALOHA
and Slotted ALOHA.
The throughput obviously depends on the value of the G value
(and the p-value if the p-persistent method is used)
• For 1-persistent method, the throughput is approx. 50% (at G=1)
• For non-persistent method up to 90% (at G between 3 and 8)

***
#### Avoid Collision in wireless network

As we saw, collisions could be detected by energy measurement.
It is also easy enough in a wired system, where the energy is doubled in the event of a collision.
But in a wireless system, much of the energy is lost in the transmission itself. Therefore, a collision may add only 5-10% extra energy.
This provides no effective way to detect collisions.
We must therefore avoid collisions in a wireless network
because they can be difficult to detect.

* [[CSMA or CD#Interframe Space (IFS)|Interframe Space (IFS)]]
* [[CSMA or CD#Contention window|Contention Window]]
* [[CSMA or CD#Acknowledments|Acknowledgment]]

![[Pasted image 20231003125636.png]]

##### Interframe Space (IFS)
Collision is initially avoided by delaying the transmission even if the
channel is found idle.
The station does not transmit immediately. It awaits a period called
Interframe Space (IFS).
If the channel is still available after IFS, then the station is almost
ready to transmit. It must first go through the Contention time
(corresponding to the contention window).
The time for IFS can be used to make priority, the shorter the time the
higher the priority, and conversely the longer the time the lower the
priority. This can apply to either the station or the importance of the
transmitted frame.

##### Contention window
This window consists of a certain amount of time, which is divided into slots.
When a station is ready to send, it waits a random number of slots before it starts sending.
The waiting time changes according to the binary exponential Backoff
strategy.
This means that the maximum value of the slot number is doubled every time the station cannot detect an idle channel after the IFS time.
(this is very similar to the p-persistent method).
Note that the station needs to sense the channel after each time slot:
If the channel is busy, the timer is stopped until the channel is idle again.
Then continue with the next time slot until the set number of time slots is expected.

##### Acknowledments
Even though we have all these precautions, collisions can still
occur which can corrupt our data.
Therefore, an ACK and a time-out timer should help guarantee that
the receiver has received the frame correctly.

***

![[Pasted image 20231003125707.png]]

An example (figure on the next page)
1. Before sending a frame, the source station senses the medium by checking the energy level at the carrier frequency.
a. The channel uses a persistent strategy with "backoff" until the channel is idle.
b. When the channel is found idle. The sender is waiting for a time called DCF interfarme space (DIFS). Then a control frame, Request To Send (RTS), is sent.

2. After receiving RTS and waiting for a period called short interframe space (SIFS), the receiver sends a control frame: Clear To Send (CTS) to indicate that it is ready to receive data.

3. The sender sends data (after a SIFS period)

4. The receiver sends a receipt ACK. Note that this is necessary as the stations cannot use collision detection in CSMA/CD 

(only 5-10% extra energy is added in the carrier)

![[Pasted image 20231003130039.png]]

***
#### Noticeable things
• Since there is no collision detection, collisions can occur during the handshaking period if several stations send an RTS and do not receive a CTS (due to collision).
Then the "backoff" strategy (random pause) is used before RTS is sent again.

• In the figure, there is a field called NAV = Network Allocation Vector.
Both RTS and CTS indicate the value of NAV in their control frame.
The value is the duration of the time the channel is occupied by data
traffic between sender and receiver.

• We can see that a RTS-frame cannot reach C and D. That is why both RTS- and CTS-frames contain the value NAV.
All stations that are not involved in the communication (here C and D) start a timer with the value of NAV to first check if it has expired before sensing the physical medium again.
