#### Intro
* In 1982, the development of the CAN bus started at Bosch GmbH®
* they wanted a serial bus, which was suitable for use in vehicles
* In 1986, this protocol was officially released at the Society of

Automotive Engineers (SAE) conference in Detroit.
Since then, Bosch has launched several versions of the CAN specification.
* The latest specification is CAN 2.0 which came in 1991.

The specification consists of two parts:
* CAN 2.0A – which uses an 11-bit identifier.
* CAN 2.0B – which uses a 29-bit identifier.

The CAN bus is a serial multi-master bus
The CAN bus follows the CSMA (Carrier Sense Multiple Access) design

The new things about CAN are the mechanisms of the access to the
bus. They are:
* A distributed nondestructive arbitration mechanism (or Collision Avoidance (CA))
* Error detection and management mechanisms (or fault tolerance)

***
Both Intel® and Philips®, also including others today, produce controller chips
for CAN using two different solutions.
* Intel controllers are often also called **FullCAN**.
* Philips has chosen to do what is called **BasicCAN**.

**FullCAN** requires less host CPU power (application programs), since most of the communication and network management functions are done by the hardware, i.e., the CAN controller (chip).

**BasicCAN** has simpler hardware, and to achieve the same functions, more CPU power (application programs) is required to interface the CAN controller in order to handle communication and network management.

Other chip manufacturers such as NXP, makes CAN transceiver, to which you can connect your own microcontroller, and thus get access to the CAN bus, this solution requires that everything is implemented in software.


#### Concept of the protocol
If you view the protocol from an OSI model perspective:
* The CAN protocol stack consists of only the bottom layers
of the OSI model, physical and data link layers.

This design principle has the following benefits:
* Implementation is more efficient and inexpensive
* Few protocol layers imply less processing delay
* Simpler communication software
***

![[Pasted image 20231208082820.png]]
The protocol consists of:
* A Physical Layer
* A Data Link layer which in turn is divided into:
		→ Logical Link Control (LLC)
		→ Medium Access Control (MAC)

