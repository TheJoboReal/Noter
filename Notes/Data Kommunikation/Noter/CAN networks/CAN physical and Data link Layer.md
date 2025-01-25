#### Physical Layer
**The Physical layer**, this layer takes care of:
* Mechanical and electrical aspects (e.g., voltage levels)
* Bit timing
* Synchronization

**Medium Access Control (MAC)**, this sublayer takes care of:
* Arbitration - The bus access mechanism.
* Frame encoding and decoding
* Error checking and signaling
* Fault confinement (e.g., shutdown of faulty devices)

**Logical Link Control (LLC)**, this sublayer takes care of:
* User interface (API) characterized by a well-defined set of communication services

![[Pasted image 20231208083040.png]]
The bus terminates with a resistor of 120Ω at each end.
* This is used to suppress signal reflections.
* Stubs should not be more than 30 cm for the connecting devices if you want to use a speed of 1 MB/s.
![[Pasted image 20231208083228.png]]

##### Transmission Media

**Two-wire bus:**
Pair-twisted double-shielded cable with enhanced immunity to
electromagnetic interferences.
![[Pasted image 20231208083516.png]]
**Single-wire bus**
* This type of bus is simpler and thus also cheaper.
* lower immunity to noise and interference.
>This type is mostly used in automotive applications.



##### Bit Encoding and Synchronization
**Bit encoding**
* The CAN bus uses an NRZ (non-return to zero) line coding
strategy.

**Bit synchronization**
* There is no separate clock signal
* The edges of the signal itself are used to synchronize the local clock
* A Digital-Phase Locked Loop (DPLL) technique is used here to extract the timing information directly from the bit stream

When the synchronization depends on the edge detection, then we
have to ensure that the data stream contains a sufficient number of
edges. (Too many 0s or 1s can cause sync problems!)

##### [[Bit-oriented framing#Bit Stuffing|Bitsuffing]]
CAN uses bit-stuffing technique to ensure synchronization
![[Pasted image 20231208083632.png]]
**The rule is as follows:**
Five consecutive bits, consisting of either dominant (0) or recessive (1) bits.
Then a complementary bit is inserted at the sender (after CRC calculation)
* 11111 → insert a 0
* 00000 → insert a 1
The bit is of course removed again at the receiver (before CRC check)
* 11111 →remove the next bit
* 00000 → remove the next bit

**Bit-stuffing may reduce encoding efficiency.**
* If you look at the theoretical worst case, then the encoding efficiency can be as low as 80%.
* Practical simulations show, however, that only 2-4 bits are inserted in each frame.
* Bit-stuffing is not applied to all fields in a frame. Only applied to fields from the SOF bit up to the CRC sequence.
![[Pasted image 20231208083911.png]]


#### MAC layer: Frame format 
CAN specification defines both a standard (CAN2.0A) and an extended (CAN2.0B) frame format.

**CAN 2.0 A format** 
Here, 2048 different objects (11-bit identifier) can exist in the same network 
![[Pasted image 20231208084228.png]]
**CAN 2.0B format**
![[Pasted image 20231208084239.png]]
There may be 536,870,912 (29-bit identifier, more than half a billion) different objects here in the same network
>Note: it is not a good idea to mix the two formats in the same network