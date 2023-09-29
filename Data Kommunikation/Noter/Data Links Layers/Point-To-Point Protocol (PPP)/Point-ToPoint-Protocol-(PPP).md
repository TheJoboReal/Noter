PPP offers various services:
1. PPP defines the format of the frames exchanged between devices.
2. PPP defines how two entities can negotiate the establishment of a link and the exchange data.
3. PPP defines how data from the Network layer is encapsulated in the Data Link Frame.
4. PPP defines how two devices can verify the authenticity of each other.
5. PPP offers services to the Network layer, which supports a large selection of Network layer protocols.
6. PPP provide connection over multiple parallel links (new version called multilink PPP).
7. PPP offers network address configuration, which is extremely useful when a home user needs a temporary network address to connect to the Internet.

> See [[PPP Example|Example]]

***
### Services not provided by PPP:
1. PPP does not offer flow control. A sender can send several frames to a receiver without knowing if the receiver is able to handle them.

2. PPP has a very simple error check. A CRC field is used to detect errors. If a frame is defective, it is simply discarded. The layers above the Data Link layer must take care of these problems. Lack of error control and sequence numbering may cause a packet to be received out of order.

3.  PPP does not offer a sophisticated addressing mechanisms to handle frames in a multipoint configuration.

Note: PPP is a byte-oriented protocol.