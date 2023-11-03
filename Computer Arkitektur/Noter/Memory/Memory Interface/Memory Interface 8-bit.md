![[Pasted image 20231102233305.png]]
**RAM (Random-access memory)**
The RAM chipset will only be active when no signal is entering the /CS pin. The [[Gates#NAND, NOR, XNOR Gates|NAND]] gate regulates the activation of this chipset, which means that the chipset will be selected when all the pins A12-A15 are 1. 
>This practically puts the RAM block to the top of the memory space

**ROM (Read-only memory)**
The ROM chipset will only be active when no signal is entering the /CS pin. The OR gate regulates the activation of the chipset, which means that the chipset will be selected when all the pins A8-A15 must be 0. 
>This practically puts the ROM block to the bottom of the memory space.

Whether the memory is read from or written to is decided by the /RD and /WR pins, respectively.  
![[Pasted image 20231102233250.png|250]]
