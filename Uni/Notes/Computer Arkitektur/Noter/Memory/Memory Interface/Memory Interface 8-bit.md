---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---
![[Pasted image 20231102233305.png]]
>Where /WR is **WriteRead** and /RD is read.
>Whether the memory is read from or written to is decided by the /RD and /WR pins, respectively.  

>Pin A0 to A15 is addresses. There is 16 of them, making it a 16bit system.

**Pins**
The ADx(address/data) pins are bi-directional pins that are used for both receiving information (data) and sending out information (address or data).They are primarily realized using latches (single memory cells); during two clock cycles: (1)an address is “latched” (stored), (2) data can be sent or be received on the same lines.Source: https://www.tutorialspoint.com/ad7-0-pins-in-8085-microprocessor

**RAM (Random-access memory)**
The RAM chipset will only be active when no signal is entering the /CS pin. The [[Gates#NAND, NOR, XNOR Gates|NAND]] gate regulates the activation of this chipset, which means that the chipset will be selected when all the pins A12-A15 are 1. 
>This practically puts the RAM block to the top of the memory space

**ROM (Read-only memory)**
The ROM chipset will only be active when no signal is entering the /CS pin. The OR gate regulates the activation of the chipset, which means that the chipset will be selected when all the pins A8-A15 must be 0. 
>This practically puts the ROM block to the bottom of the memory space.

![[Pasted image 20231102233250.png|250]]
