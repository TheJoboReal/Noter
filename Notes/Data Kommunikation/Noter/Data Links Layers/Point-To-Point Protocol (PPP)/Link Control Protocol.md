PPP Link Control Protocol
Link Control Protocol (LCP) is responsible for:
• Establishment of links.
• Maintenance of links.
• Configuration of links.
• Termination of links.
The protocol also offers negotiation mechanisms to set different options
between the two endpoints. Both nodes must reach an agreement about
the options before a link is established.
All LCP packets are carried in the payload field in the PPP frame with the
protocol field set to C021 in hexadecimal.

![[Pasted image 20230926134015.png]]

***
#### The Code Field
![[Pasted image 20230926134109.png]]

#### Information Field
PPP Link Control Protocol: information field (setting options)
There are many setting options that can be negotiated by two endpoints.
These options are inserted in the information field of the configuration
packets. The information field will be divided into three fields:
• Option type
• Option length
• Option data
![[Pasted image 20230926134142.png]]
>On the right in red we can see how many bytes it will take to send the different Info.

#### Authentication

Authentication plays an important role in PPP, as PPP is designed for use
over dial-up links, where the user's identity is necessary to know if the user wants to access different resources in a system.
PPP offers two protocols for this purpose.
• Password Authentication Protocol (PAP)
• Challenge Handshake Authentication Protocol (CHAP)
##### PAP
![[Pasted image 20230926134334.png]]
>Notice that the protocol is C023 and not C021

##### Chap
PPP Authentication Protocols: CHAP
1. The system sends the user a challenge packet containing a challenge value, usually a few bytes.
2. The user applies a predefined function that takes the challenge value and the user’s own password and creates a result. The user sends the result in the response packet to the system.
3. The system does the same. It applies the same function to the password of the user (known to the system) and the challenge value to create a result. If the result created is the same as the result sent in the response packet, access is granted; otherwise, it is denied.

CHAP is more secure than PAP, especially if the system constantly changes the challenge values. Even if an intruder learns the challenge value and the result, the password is still secret and then the system is still safe since the challenge value will never be the same.
![[Pasted image 20230926134533.png]]
