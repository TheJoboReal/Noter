#### Definition
* A parallel register is simply a bank of D-type flip- flops, its implementation has the same structure as for one flip-flop but with extended inputs and outputs.
* A typical example for a parallel 8 bits register is modeled, based on the flip-flop model shown previously but with inputs and outputs are extended as buses.
* Registers are banks of [[D-Type Flip-Flop|flip-flops]].
![[Pasted image 20240228144045.png]]


#### Modeling of a parallel 8 bits register with enable
* The same as the previous example but with an added enable signal to provide control over the register, so that the register only register the value at its inputs when enable is active, otherwise remaining the contents unchanged.
* Also, an “others” statement in the reset action line is added to fill registers with any size with zeros.
![[Pasted image 20240228144212.png]]

