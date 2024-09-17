![[Pasted image 20230926131127.png]]

Control field:
This field is 1-2 bytes long, it is used for flow and error control. The
interpretation of the individual bits depends on the frame type.

***
#### Control field for I-Frames
![[Pasted image 20230926131528.png]]
Frames are designed to transmit user data. These Frames can also contain flow and error control information (piggybacking).
• Bit 0: defines the type (I-Frame) and is always 0
• Bit 1 - 3: is called N(S) and defines a sequence number for the frame.
Here you can have sequence numbers between 0 and 7. But if the extended version of the control field (2 bytes) is used, there can be more sequence numbers.
• Bit 4: the P/F bit can have two meanings:
o Server to client: (Request) here the meaning P=Poll is used.
P is "0" for all frames except the last one, where P = 1.
This indicates that there is a "poll" for a response from the client.
o Client to Server: (Response) here the meaning F=Final is used.
F is "0" for all frames except the last one, where F = 1.
This indicates that it is the "Final" frame from the client.
• Bit 5 - 7: is called N(R) and defines an acknowledgment number when
using [[Piggybacking]].

>See also [[Stop-and-wait]]

***

#### Control field for S-Frames
![[Pasted image 20230926131831.png]]
The Supervisory Frame is used for flow and error control when it is not possible
or appropriate to use piggybacking (e.g., if a station itself does not have
something it should have sent).
• Bit 0 - 1: defines the type (S-Frame) and is always 10.
• Bit 2 - 3: type code:

* 00 = Receive Ready (RR) an [[Flow and error control#ACK|ACK]] for error-free reception of a frame or group of frames.

* 01 = Reject (REJ) a NAK negative acknowledgment (not as in selective repeat ARQ), but it can be used in Go-Back-N [[Flow and error control#ARQ|ARQ]] to inform a sender before a timeout occurs. This will make the protocol more efficient.

 * 10 = Receive not Ready (RNR) an ACK for error-free reception of a frame or group of frames. But the receiver is busy now and can not receive any more right now. it acts as a congestion-control mechanism.

* 11 = Selective reject (SREJ) a NAK negative acknowledgment that can be used in the Selective Repeat ARQ protocol.

Bit 4: The P/F bit can have two meanings:
* Server to client: (Request) here the meaning P = Poll is used. P is "0" for all frames except the last one, where P = 1. This indicates that there is a "poll" for a response from the client. 

* Client to Server: (Response) here the meaning F = Final is used. F is "0" for all frames except the last one, where F = 1. This indicates that it is the "Final" frame from the client.
* 
• Bit 5 - 7: is called N(R) and defines an acknowledgment number (ACK) or a negative acknowledgment number (NAK). This depends on the type of S- Frame, as indicated in bits 2 and 3.


Unnumbered Frames are used to exchange session management and
control information between connected devices.
Like a S-Frame, this Frame also contains an information field. However, this is not used for user data, but for management data.

![[Pasted image 20230926132222.png]]