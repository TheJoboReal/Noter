![[Pasted image 20230926133203.png]]
#### Flag:
A PPP Frame starts and ends with a byte flag, which has the bit pattern of
01111110.
Although this pattern is the same as in the [[High-Level Data Link Control (HDLC)|HDLC]] protocol, there is a big
difference: [[High-Level Data Link Control (HDLC)|HDLC]] is bit-oriented while PPP is byte-oriented.
The flag is thus handled as a byte

#### Address
![[Pasted image 20230926133403.png]]
The address field in this protocol is a constant with the value 11111111
(broadcast address).
Through negotiation, the two entities may agree to omit this field.

#### Control
![[Pasted image 20230926133437.png]]
Control: This field is also set to a constant 00000011
(imitating unnumbered frames in [[High-Level Data Link Control (HDLC)|HDLC]]).
As we will see later, PPP does not offer flow control and error control is
limited to detection.
This means that the field is not used, and through negotiation, the two
entities can agree to omit this field.

#### Protocol
![[Pasted image 20230926133529.png]]
Protocol: The protocol field defines what the contents of the data field are (either user data or other information).
This field is 2 bytes long, but the two devices can negotiate to use only 1 byte for this field.

#### Payload
![[Pasted image 20230926133551.png]]
This field contains user data and other information.
The field is a sequence of bytes but a default maximum of 1500 bytes.
But this can be changed by negotiation by the two entities.

#### FCS
![[Pasted image 20230926133611.png]]
Frame Ckeck Sequence (FCS) is a 2-byte or 4-byte field and is used for
standard CRC.


#### Byte Stuffing
![[Pasted image 20230926133647.png]]
Since PPP is a byte-oriented protocol, the flag must be escaped
whenever it appears in the frame data (payload) section.
The byte used as Esc code is 01111101. Thus, this Esc byte is inserted
before the flag (or another Esc byte) in the data section, by the sender.
It is removed again on the receiver side.