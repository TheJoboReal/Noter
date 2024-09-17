Polling works with topologies, in which one station is designated as the primary station and other devices are secondary stations. All data exchange must take place through the primary station.

• The primary station controls the link.

• The secondary station follows the instructions of the primary station.

• It is up to the primary station to decide who is allowed to use the channel at a given time.

• The primary station is always the initiator of a session.


>Two functions are used

***
#### Select (SEL)
This function is used when the primary station has something to send.
Remember that the primary station controls the link.
• First, SEL is sent and an [[Flow and error control#ACK|ACK]] is awaited.
• Then data is sent and an [[Flow and error control#ACK|ACK]] is awaited.
![[Pasted image 20231003130535.png|400]]

***
#### Poll
This function is used by the primary station when it wants to request transmission from the secondary station.
When the primary station is ready to receive data, it (polls) asks the secondary stations in turn if they have anything to send.
* If a secondary station has nothing to transmit, it sends a NAK.
* If a secondary station has something to send, it sends its data and waits for an ACK.
![[Pasted image 20231003130623.png|400]]

***
#### Token Passing
In this method, the stations are organized in a logical ring. In other words, there is a predecessor and a successor to each station in the network.

*  The station that has the token right now also has access to the channel.
* When the current station has no more to send, it passes the token on to its successor.


How is such a token passed on to the next station?

* In this method, a special packet (token) circulates around the ring.
* When a station has some data to send, it waits until it receives the token from its predecessor.
* When it receives the token, it sends its data.
* It then passes the token on to its successor when it has no more data to send

However, some overall management is needed in connection with the token:
* The time a station can have a token must be limited.
* The token must be monitored to ensure that it is not lost or destroyed.
* Priority must be given to stations and types of data that are transmitted.
* A low priority station should only be forced to hand over the token to a higher priority station.

**Logical Ring Topology**
![[Pasted image 20231003130948.png]]
