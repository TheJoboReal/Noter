#### Definition
* FSMs are mathematical abstractions that are used to solve a large variety of problems, among which are electronic design automation, communication protocol design, parsing and other engineering applications.
* It is a step beyond the sequential circuit design.
![[Pasted image 20240410123528.png]]

**An FSM is a machine with a finite number of states.** The machine is always in one of the states until an event occurs. Each event is associated with two reactions: defining the list (possibly empty) of actions to be performed and determining the next state (which can be the same as the current state). 
One of the states must be defined as the initial state, the state in which the machine starts when it turns on.

#### Moore State Machine
The outputs of a Moore state machine depend only on the present state. The outputs are written only when the state changes (on the clock edge).
![[Pasted image 20240410123422.png]]

#### Mearly State Machine
The outputs of a Mealy state machine depend on both the inputs and the current state. When the inputs change, the outputs are updated without waiting for a clock edge.
![[Pasted image 20240410123445.png]]

#### FSM in hardware
![[Pasted image 20240410123736.png]]

#### Code Example
##### Interrupt Circuit
![[Pasted image 20240410123847.png]]

Mapping of the different block to code:
![[Pasted image 20240410124126.png]]

