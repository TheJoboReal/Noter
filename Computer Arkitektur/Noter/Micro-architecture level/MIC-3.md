Pipelined design

The data path is divided into 3 parts
* Three latches (registers) are inserted in the middle of each bus.
* The latches are updated on each cycle.
* The clock speed is now three times faster, and delay per part is shorter
* Each part can work on different parts of the [[IJVM instruction set]] at the same time.
![[Pasted image 20231201084717.png]]

#### Example - SWAP
The [[MIC-2]] microcode for SWAP runs on 6 micro instructions
![[Pasted image 20231201084801.png]]
Because of the Mic-3’s latches, each micro instruction is divided into 3
microsteps. Here we will refer to them as cycles (ΔT per cycle), i.e.:
**1 micro instruction = 3·ΔT**
Or put another way:
Time corresponding to 1 micro instruction cycle in Mic-2 is 3 cycles in Mic-3

**SWAP will take 18 ΔT (in Mic-2)**

![[Pasted image 20231201084940.png]]
We can start a new micro instruction after each cycle …Almost!
If we started Swap3 in ΔT3, a Read After Write (RAW) dependence (hazard)
would occur (a microstep wants to read a register that has not been written).
* **rd** starts in cycle 3, then we need to postpone reading MDR until cycle 5
* The solution is to make a pipeline stall of 2 cycles

>Note that SWAP only takes 11 ΔT and not 18 as in [[MIC-2]]

#### Pipeline
The shaded area indicate that the area is in use. 

When the pipeline is full, all areas are in use, but with different micro- instructions (e.g., cycle4) 

as we can see, there is no stalling in this sequence. 
![[Pasted image 20231201085132.png]]


#### General theory
In general, an instruction can divided into the following phases
* F – fetch. The instruction is retrieved into the CPU.
* D – decode. The instruction is decoded. (possible operands are retrieved)
* E – execute. The instruction is executed.
* W – write back. The result of the performed instruction is written back to the memory.

**Instruction execution on CPUs without pipeline**
![[Pasted image 20231201085233.png]]
>**If 4 instructions are executed in this way, it will take 16 ΔT , where each clock cycle takes ΔT .**

***
Same Instruction execution time as before, but better throughput as a new instruction is started every cycle.
![[Pasted image 20231201085330.png]]
Just like before, the different areas of the data path are called Stages,
which take care of different tasks. See e.g., ΔT4:
* Stage 1 performs the F phase for instruction d
* Stage 2 performs the D phase of instruction c
* Stage 3 performs the E phase of instruction b
* Stage 4 performs the W phase for instruction a

>Now, the same 4 instructions can be completed within 7 ΔT

#### Hazards and their solutions
We distinguish between 3 types of pipeline hazards:
###### **Structural hazards**
These occur when there are resource conflicts, i.e., when the hardware cannot support certain combinations of instructions simultaneously. If different instructions in different stages of the pipeline are to use the same resource, we will get a pipeline stall. How the pipeline works General theory – Hazards
![[Pasted image 20231201085717.png]]
We can see that this is a [[Von Neumann Architecture]], as [[CPU|MAR]] is used to fetch program instructions.

Solution:
By duplicating resources, the problem can be remedied.
* Dual-cache (separate for opcode and data) with separate internal buses
* Multi-port CPU registers (e.g., MAR) and duplication of internal buses.

###### **Data hazards** 
Occurs when an instruction depends on the result of a previous instruction so that this result does not exist at the time when it is to be used due to the instruction overlap.

We have previously mentioned Read After Write (RAW) hazard. Here's
an example:
![[Pasted image 20231201085935.png]]

***
**Out-of-order execution (Reordering)**
![[Pasted image 20231201090405.png]]
Here 2 instructions (c and d), which have nothing to do with instructions a and b, are inserted in between them, which fill the “hole” left by the
pipeline stall. 
This keeps the pipeline utilized completely and the optimal throughput and performance can remain unchanged.

***
**Forwarding**
Forwarding is a design change of the Data Path.
Here, data hazards can be remedied in the case of register-to-register instructions.
If the instruction involves an access to the memory, then this solution is not applicable.
![[Pasted image 20231201090519.png]]

###### **Control hazards**
Occurs when branch jumps, or other flow control commands change the instruction flow in program execution and thus in the pipeline.

This occurs when a branch needs to be made for a new target instruction
* A pipeline flush is performed in which all retrieved instructions in the pipeline are deleted.
* Instructions from the new location are retrieved
* Consequence: performance deteriorates

***
**Solution → Branch prediction**
* The CPU is trying to guess the result of a branch.
* A branch that points backwards is taken approx. 90% of cases.
* A branch that points forward is taken approx. 50% of cases.
* Dynamic Branch prediction (recording and statistics) correct rate: approx. 90%

***
**Solution → Branch target cache**
* The first few instructions of each possible branch (corresponding to the size of the pipeline) are stored in a special cache.
* The pipeline can then be overwritten from this cache, which is faster than fetching instructions from memory again.

###### Pipeline stall solution
![[Pasted image 20231201090054.png]]

By making a pipeline stall for 2 ΔT, the problem can be solved.
* Result from add instruction is known in ΔT4
* The result is used first in ΔT5 by sub instruction.

>But a pipeline stall lowers down the throughput and performance