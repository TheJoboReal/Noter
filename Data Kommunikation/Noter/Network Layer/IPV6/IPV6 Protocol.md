Many more addresses: As we have seen, there are far more addresses in IPv6 (2^128) than in IPv4 (2^32): 2^96, or 79,228,162,514,264,337,593,543,950,336 or 7.9x10^27 times.

* Better header format: IPv6 uses a new header format, where options are separated from the base header and inserted between the base header and the data section when needed. This simplifies and speeds up the routing process as most of the options do not need to be checked by the routers.
* New options: IPv6 has new options to allow for additional functionality.
* Possibility of extension: IPv6 is designed to allow the extension of the protocol if required by new technologies or applications.
* Resource allocation support: In IPv6, the "type-of-service" field has been removed, but two new fields, traffic class and flow label, have been added to enable the sender to request special handling of the packet. This mechanism can be used to support traffic such as real-time audio and video.
* Support for more security: The encryption and authentication options in IPv6 provide confidentiality and integrity of the packet.

***
#### Packet Format
![[Pasted image 20231031125052.png]]
The payload consists of two parts:
* Optional extension header(s).
* Data from the upper layer.

Compared to IPv4, the payload field in IPv6 has a different format and meaning. The payload in IPv6 is a combination of zero or more extension headers (options) followed by the data from other protocols ([[UDP (User Datagram Protocol)|UDP]], [[TCP (Transmission Control Protocol)|TCP]], and so on). Options as part of the header in IPv4 are designed as extension headers In IPv6.
![[Pasted image 20231031125127.png]]

* **Version (VER):** this 4-bit field indicates the version number of the IP. For IPv6, this value is 6.
* **Traffic Class:** this 8-bit field is used to distinguish different payloads with different delivery requirements. It replaces the type-of-service field in IPv4.
* **Flow label:** this 20-bit field is designed to provide special handling for a particular flow of data.
* **Payload length:** This 2-byte field indicates the length of the datagram excluding the base header (40 bytes).

* **Next header:** this 8-bit field indicates the type of headers that come after the base header. Next header can either be type of the option headers (extension headers) if present, or the type of the encapsulated data in the datagram, e.g., [[UDP (User Datagram Protocol)|UDP]] or [[TCP (Transmission Control Protocol)|TCP]] (see figure and table below). 
>Note that the field is called protocol in IPv4.

![[Pasted image 20231031125423.png]]

* **Hop limit:** This 8-bit field serves the same purpose as the TTL (Time-To-Live) field in IPv4. To determine how many routers it may jump through
* **Source address:** This 16-byte (128 bits) field indicates the Internet address of the sender.
* **Destination address:** This 16-byte (128 bits) field indicates the Internet address of the receiver.
* **Payload:** This field contains all the data coming from the upper protocols and all the possible next headers.
