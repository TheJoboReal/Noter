8-bit microcontroller (ATmega103 compatible = configuration B)
![[Pasted image 20231102234212.png]]

***
#### multiplexed address/data bus
Here, a latch is used to separate address information and data information
e.g., a TTL circuit 74x73 type
![[Pasted image 20231102234244.png]]

***
#### Configurable split of the sectors, with different wait state settings
![[Pasted image 20231102234322.png]]

***
#### Configurable wait state setup
The SRW11 and SRW10 bits in MCU Control Register (MCUCR) control the number of wait-states for the upper sector of the external memory address space.
The SRW01 and SRW00 bits in External Memory Control Register A (XMCRA) control the number of wait-states for the lower sector of the external memory address space.
![[Pasted image 20231102234458.png]]

***
#### Bus Cycle
##### Bus cycle: no wait state
![[Pasted image 20231102234533.png]]

##### Bus cycle: 1 wait state
![[Pasted image 20231102234603.png]]

##### Bus cycle: 2 wait state
![[Pasted image 20231102234618.png]]

##### Bus cycle: 2 wait state + 1 wait state before the next memory cycle
![[Pasted image 20231102234639.png]]


#### Configurable external address space setup
When the external memory is enabled, all Port C pins are by default used for the high address byte. If the full 60KB address space is not required to access the external memory, some, or all of Port C pins can be released for normal Port Pin function as described in the table below by setting the XMM0, 1 and 2 bits in the External Memory Control Register B (XMCRB).  
![[Pasted image 20231102234803.png]]
