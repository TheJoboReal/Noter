#### Data Frame
##### CAN 2.0 A
This type is used to send information over the network.
![[Pasted image 20231208084334.png]]
**A Data frame starts with a Start of Frame bit (SOF).**
* SOF is a dominant bit (logic 0)
* SOF indicates the start of a frame just as in a conventional UART
* SOF is also used to synchronize the receiving nodes

This field is part of the bus access mechanism (arbitration) but is
also part of the protocol frame check mechanism

***
**The identifier field identify uniquely the content of the frame**
* The number in this field is unique across the entire network
* The MAC uses the field number for access control on the bus
* Lower number has higher priority(bc they have more low-bits in them since low-bits have higher priority)
* The Wired-AND technique determines who gets access to the bus

This field is part of the bus access mechanism (arbitration)

***
**Remote transmission request (RTR)**
* The field distinguishes between data and remote frames
* If the value is dominant (logic 0), then it is a data frame
* If the value is recessive (logic 1), then it is a remote frame
* According to the Wired-AND technique, data frames have higher priority than remote frames

This field is part of the bus access mechanism (arbitration).

***
**Identifier extention (IDE)**
* This field indicates whether it is a **CAN 2.0A** or **CAN 2.0B** frame
* If the value of the field is dominant (logic 0), it is a CAN 2.0A frame

***
**Reserved bit (r0)**
* The value of the field is dominant (logic 0)

This field is part of the protocol frame check mechanism

***
**Data length code (DLC)**
* The field is 4 bits long
* The value of the field indicates the length of the data field in bytes
* The value of the field must be between 0 and 8
* Values between 9 and 15 can be used in specific applications
* If values between 9 and 15 are used, then the length of the data field is supposed to be 8 bytes

***
**Data field**
* The field contains the actual payload
* The short length of the field ensures a quick response, as the bus becomes available quickly.
* The short length of the field minimizes priority inversion phenomenon.

***
**CRC field**
* The field is a total of 16 bits long (15 + 1)
* The CRC used is a CRC15 $\left({x}^{15} + {x}^{14} + {x}^{10} + {x}^{8} + {x}^{7} + {x}^{4} + {x}^{3} + {x}^{0}\right)$
* CRC is performed on all bits between SOF and CRC
* The last bit is a delimiter and recessive (logic 1), which is used to separate this field from the next field, at the same time, the bit is part of the protocol frame check mechanism
* CRC is performed before bit-stuffing

***
**ACK field**
* This field is a 2 bit long, the first bit is the [[Flow and error control#ACK|ACK]] field itself
* The sender set this bit as recessive (logic 1)
* All nodes that receive the frame correctly overwrite the bit as dominant (logical 0).
* If the sender reads this bit as dominant, then the sender knows that the frame is received successfully by at least one node.
* Last bit is a delimiter and resistive (logic 1), which is used to separate it from the next field, at the same time, the bit is part of the protocol frame check mechanism.

***
**EOF field**
* The field is 7 bits long
* All bits are recessive (logic 1)
* The field indicates the end of a frame

This field is part of the protocol frame check mechanism

***
**Intermission (IMS) field**
* The field is 3 bits long
* All bits are recessive (logic 1)
* The field separates consecutive frames exchanged on the bus


##### CAN 2.0 B
![[Pasted image 20231208085237.png]]
**Substitute remote request (SRR)**
* This field is a placeholder that is used to preserve the structure of the frames
* The value in this field is recessive (logic 1)

***
**The identifier extension field identify uniquely the content of the frame**
* The number in this field is (together with the base ID) unique on the whole network.
* The MAC uses the field number (together with the base ID) for access control on the bus.
* Lower number has higher priority.
* The Wired-AND technique determines who gets access to the bus 

This field is part of the bus access mechanism (arbitration)

***
**Reserved bits (r0, r1)**
* The values of the fields are dominant (logic 0)
The field is part of the protocol frame check mechanism

#### Remote Frame
Remote frames are similar to data frames except that remote
frames do not carry any data and do not have a data field.
Remote frames are used to request that a given data frame is sent
from another node (remote node) on the network.
It is up to the receivers to discover the one that has to reply.
![[Pasted image 20231208085410.png]]
* In a remote frame, **RTR** is set to recessive (logic 1).
* DLC indicates the length of data that the sender of a remote
frame wants to receive.

Note this is NOT the length of the data field in the sender
remote frame, but the length of what is to be sent back from a
remote node.

Remember that a data frame with the same identifier as a remote
frame sent at the same time will win the bus access because of the
way the RTR bit is encoded.

#### Error Frame
This type of frame is used to notify the nodes in the network
that an error has occurred.
If the node that detects the error is in **Error-Active mode**, then
the Error frame will look like this:
![[Pasted image 20231208085548.png]]
* First, 6 dominant bits are sent (logic 0)
* This action violates the bit-stuffing rule!
* All other nodes see this violation
* And sends Echo Error flags, which are 6 dominant bits (logical 0)
* Finally ends with 8 recessive bits (logic 1)
* The sending node, which was interrupted, retransmits its frame

***
This type of frame is used to notify the nodes in the network
that an error has occurred.
If the node that detects the error is in **Error-Passive mode**, then
the Error frame will look like this:
![[Pasted image 20231208085817.png]]
* First, 6 dominant bits are sent (logic 0)
* This action violates the bit-stuffing rule!
* All other nodes see this violation
* And sends Echo Error flags, which are 6 dominant bits (logical 0)
* Finally ends with 8 recessive bits (logic 1)
* The sending node, which was interrupted, retransmits its frame

***
##### Error-active/passive mode
The rules for active and passive error modes are used in a fault
confinement mechanism of CAN specification.
**A node can be in the following three states:**
* Error-active Here the traffic is interrupted by an active error frame
* Error-passive As we have just seen, this does NOT disturb the traffic on the bus
* Bus-off Here the node interrupts itself and does not transmit anything

**There are two counters:**
* Transmission error count (TEC)
* Receive error count (REC)

A faulty transmission will increment the counter **up by more** than 1
A correct transmission will decrement the counter **down** by 1

When any counter value **127** is exceeded: Error-active → Error-passive
When any counter value **255** is exceeded: Error-passive → Bus-off


