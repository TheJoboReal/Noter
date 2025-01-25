Data Link control functions include:
	• Framing
	• Flow control
	• Error control
There are software-implemented protocols that offer these features
and provide a smooth and reliable transmission.
Regarding flow and error control, We have already looked at some methods for detecting and/or correcting errors (Hamming distance, CRC, etc.)

***

In order to implement Data Link control, we need to have some protocols,
i.e., a set of rules that both sender and receiver comply with.
We will look at some of these protocols:
	• Simple protocol
	• Stop-and-Wait protocol
	• Stop-and-Wait protocol with numbering
Finally, we will look at how a bit-oriented protocol is actually implemented.
For this purpose, we use
High-level Data Link Control (HDLC) protocol.
We are also looking at another popular (byte-oriented) protocol, namely
Point-to-Point Protocol (PPP).