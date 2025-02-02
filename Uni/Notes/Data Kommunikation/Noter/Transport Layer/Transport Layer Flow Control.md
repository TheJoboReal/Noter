---
tags:
  - lecture-note
  - uni
course: Data Kommunikation
---
Whenever an entity produces items and another entity consumes them, there should be a balance between production and consumption rates.

If the items are produced faster than they can be consumed, the consumer can be overwhelmed and may need to discard some items.

Flow control is needed to prevent losing the data items at the consumer site.

***
#### Pushing or Pulling
Delivery of data from producer to consumer can take place in two ways:
**Pushing:** If the producer/sender delivers data whenever it is produced, without a prior request from the consumer/receiver.
**Pulling:** If the producer delivers data only when the receiver first requests them.
![[Pasted image 20231031133724.png]]
When the producer pushes the items, the consumer may be overwhelmed and there is a need for flow control, in the opposite direction, to prevent discarding of the items. However, there is no need for flow control when the consumer pulls the items (since it requests when it is ready). 

***
When we deal with communication at the transport layer, we are dealing with four entities:
* Sender process
* Sender transport layer
* Receiver process
* Receivertransportlayer
The sender process at the application layer is only a producer. It produces messages and passes them on to the transport layer.

The sender transport layer has a dual role:
* It is consumer - packets are received from sender application layer through pushing.
* It is producer – packets are encapsulated and sent to the receiver transport layer through **pushing**.

The receiver transport layer also has a dual role:
* It is consumer – packets received from the sender transport Layer through pushing.
* It is producer – packets are decapsulated and delivered to the receiver application layer through **pulling**.

![[Pasted image 20231031133918.png]]
So, we need the flow control in at least the first two phases of this procedure:
▪ from the sending transport layer to the sending application layer.
▪ from the receiving transport layer to the sending transport layer.

***
#### Buffers
Although flow control can be implemented in several ways, two buffers will often be used:
* One at the sender transport layer.
* One at the receiver transport layer.
* When the buffer at the sender transport layer is full, the application layer is informed to stop delivering messages.
* When the buffer has some vacancies, the application layer is informed that it can continue the delivery of messages.
* When the buffer at the receiver transport layer is full, the sender transport layer is informed to stop delivering messages.
* When the buffer has some vacancies, the sender transport Layer is informed that it can continue the delivery of messages.

One could implement one ring-buffer (on the sender and receiver sides) for this flow
control.