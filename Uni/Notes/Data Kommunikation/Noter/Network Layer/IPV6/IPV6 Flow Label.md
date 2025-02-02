---
tags:
  - lecture-note
  - uni
course: Data Kommunikation
---
A sequence of packets, that are sent from a specific sender to a specific receiver and that needs a special handling by the routers along the way, are called a "flow" of packets.
Seen from a router, "a flow" is a sequence of packets that have the same characteristics as e.g.
* They travel the same path on the Internet.
* They use the same resources on their way.
* They have the same kind of security. 
and so on

A router that supports the handling of flow labels (flow sequences) has a flow label table. 
This table has an entry for each active flow sequence, which defines what service is required for that particular sequence of packets. 
Note that it is not the Flow Label itself that determines which services should be provided for the flow sequence. 
The flow label table is filled in by others: e.g., information from the option section (located between the base header and the data section) or other routing protocols.  

**Flow label** table can increase the router's handling speed: instead of having to look up the regular routing table and then run a routing algorithm to find the address of the next hop. Then the address of the next hop is found directly by looking up the flow label table. 

A process (a sender) can reserve in advance various resources such as:
* high bandwidth
* large buffers
* dedicated paths through routers
It is then guaranteed that real-time data will not be delayed due to lack of resources.

The use of real-time data and advance reservation of resources requires other protocols e.g.,
* Real-time Transport Protocol (RTP)
* Resource Reservation Protocol (RSVP)

To allow efficient use of flow labels, there are 3 rules:
1. Flow labels are assigned to the packets by the sender. The label is a random number between 1 and 220-1.
The sender must not reuse flow labels in a new flow sequence if they have been used in an ongoing sequence.
2. If the sender does not support flow sequences, then the flow label field is set to 0.
If a router does not support flow sequences, then the field is ignored.
3. All packets belonging to the same flow sequence must have the same sender, receiver, security level and options.