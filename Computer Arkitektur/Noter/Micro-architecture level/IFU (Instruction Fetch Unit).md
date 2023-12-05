![[Pasted image 20231201084220.png]]
This unit automatically fetches instructions (opcodes) and indexes (operands)
* Instructions in MBR1 (8-bit)
* Indexes in MBR2 (16-bit) H = MBR<<8 and H = H OR BMRU are avoided here
* IMAR fetches instructions from method area in words (4 bytes per word)
* PC will always point to the first byte that has not yet been fetched/consumed.

#### Finite State Machine
![[Pasted image 20231201084249.png]]
* (←) indicates reading from MBR1 (8 bits are replaced) or MBR2 (16 bits are replaced)
* (→) indicates writing to the shift register (32 bits are replaced)

