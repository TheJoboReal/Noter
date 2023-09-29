![[Pasted image 20230926133727.png]]
#### Dead
In this phase, the link is not used (i.e., there is no active carrier at the
physical layer). The line is quiet.

#### Establish
![[Pasted image 20230926133747.png]]
When one of the nodes starts the communication, the connection
enters this phase.
In this phase, different options are negotiated between the two nodes.

#### Authenticate
![[Pasted image 20230926133810.png]]
This phase is optional.
If it is used, then some authentication frames are sent.

#### Network
![[Pasted image 20230926133828.png]]
In the network phase, the network layer protocol is negotiated.
PPP specifies that the two nodes must have an agreement on the
network layer before data can be exchanged between the network
layers of the nodes.

This is done because PPP supports many of the network layer protocols.

If a node uses the protocols of several different network layers, then the
receiver must know which protocol will be used for receiving the data.

#### Open
![[Pasted image 20230926133853.png]]
In this phase, data transmission will take place.
When a connection reaches this stage, then the exchange of data
packets can take place.
The connection remains in this phase until one of the nodes wants to
terminate the connection.


#### Terminate
![[Pasted image 20230926133916.png]]
In this phase, the connection is terminated.
Several frames are exchanged between the nodes in this phase to clear
and close the link properly.
The system remains in this state until the carrier (physical-layer signal) is
dropped, which moves the system to the dead state again.
