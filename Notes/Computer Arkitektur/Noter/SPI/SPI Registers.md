![[Pasted image 20231205135934.png]]
#### SPSR
![[Pasted image 20231205134821.png]]
SPIF: SPI Interrupt Flag
In Master mode, set this flag in two situations:
* If a data transfer is complete.
* If the SS pin is an input and is driven low by an external device .

If the SPIE flag in the SPCR (SPI Control Register) register is set, then an interruption is generated when the SPIF is set to one. Global
Interruption must also be enabled.

##### WCOL: Write COLlision Flag
![[Pasted image 20231205135003.png]]
This flag is set if writing to **SPDR (SPI Data Register)** during a data transfer.

##### SPI2X: doubling the SPI speed
![[Pasted image 20231205135027.png]]If you are in SPI master mode, the SPI speed doubles when this bit is set to 1.
#### SPCR
![[Pasted image 20231205135306.png]]
##### SPIE: SPI Interrupt Enable
Setting this bit to one enables the SPI interrupt.

##### SPE: SPI Enable
This flag enables the SPI function in ATmega32

##### DORD: Data Order
This bit determines the order in which data is transmitted:
* 1 = LSB →MSB
* 0 = MSB →LSB

##### MSTR: Master/Slave Select
This bit determines whether this device should be master or slave:
* 1 = Master mode
* 0 = Slave mode
Note: If SS is configured as input and is driven low while in Master mode
(MSTR = 1) , then switch to Slave mode (MSTR = 0) and set SPIF.

##### CPOL:CPHA: Clock Polarity/Phase
The setting of these two bits determines which SPI mode is selected:
![[Pasted image 20231205135448.png]]

##### SPR1:SPR0: SPI Clockrate
These two bits determine the SCK rate of the device in master mode:
![[Pasted image 20231205135824.png]]


#### SPDR
![[Pasted image 20231205135856.png]]
The SPI Data Register is a read/write register. To write into SPI shift register,
data must be written to SPDR. To read from the SPI shift register, you should read from SPDR.
Writing to the SPDR register initiates data transmission.
