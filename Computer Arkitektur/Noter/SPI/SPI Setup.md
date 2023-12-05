Let's assume that FOSC = 8 MHz
We wish:
* A SPI bus speed of 1 MHz
* This device must be a master
* We will read on falling clock edge
* We change data on rising clock edge
* MSB is transmitted first

We first write to SPSR, here we need to set LSB, namely SPI2X
![[Pasted image 20231205140027.png]]

We are now writing to SPCR, to enable SPI with the desired specifications.
![[Pasted image 20231205140042.png]]
