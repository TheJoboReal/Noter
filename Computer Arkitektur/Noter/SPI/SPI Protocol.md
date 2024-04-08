#### Definition
The SPI bus was originally started by Motorola Corp., but in recent
years has become a widely used standard adapted by many
semiconductor chip companies.
![[Pasted image 20231205132122.png]]
* SPI has the advantage that there is only a 4‐wire connection between microcontroller and the peripheral equipment unlike a traditional parallel bus connection.
* 4-wire SPI is full duplex.

#### SPI bus signals
* SCLK: serial clock (output from master);
* MOSI; SIMO: master output, slave input (output from master);
* MISO; SOMI: master input, slave output (output from slave);
* /SS: slave select (active low, output from master).
![[Pasted image 20231205132748.png]]
>Note here that you often write / SS instead of SS, it is the same. (But easier to write as text)

Alternative naming conventions that you will encounter in various
types of literature:
* SCK; CLK: serial clock
* SDI; DI, DIN, SI: serial data in; data in, serialin
* SDO; DO, DOUT, SO: serial data out; data out, serialout
* nCS, CS, CSB, CSN, nSS, STE: chip select, slave transmit enable

Although the SPI bus usually has 4 wires, there is also a variant with only 3
wires.
Some SPI 4-wire devices can be used as 3‐wire versions by connecting SDI
and SDO together.
But the device must support the 3‐wire connection to make it possible.
In 3-wire devices, SDI and SDO are replaced by SISO pins
(Seriel in seriel out)

3‐wire connection is mostly used for low performance devices e.g.:
* Boot-up EEPROM
The 3-wire protocol is reduced to half duplex.

#### How the bus works
![[Pasted image 20231205133052.png]]
![[Pasted image 20231205133114.png]]

<span style="color:red">SPI consists of two shift registers,
which are 8 bits in width. </span>

<span style="color:lightblue">The two shift registers are connected to
each other through MOSI and MISO.</span>

<span style="color:lightgreen">The clock generator is located at the
master and provides clock to the shift
registers in both master and slave.</span>

After 8 clock pulses, the contents of the two shift registers are interchanged. So that SPI is full duplex. Note: MSB goes first(as opposed to RS232)

#### SPI modes
There are 4 modes in SPI:
![[Pasted image 20231205134011.png]]
This translates into the following timing
![[Pasted image 20231205134018.png]]

#### Single‐byte write (direct)
* Set CE (chip enable, low-active)= 0 to start single-byte writing
* The address is shifted in (MSB first) - bit 8 is special because 1 = WR
* Data for the selected location is shifted in (MSB first)
* Set CE = 1 to end the write cycle
![[Pasted image 20231205134125.png]]

#### Multi‐byte write (burst)
* Set CE = 0 to start multi-byte writing
* The address is shifted in (MSB first) - bit 8 is special because 1 = WR
* Data0 for the selected location is shifted in (MSB first)
* Data1..N are shifted in and placed in the consecutive addresses
* Set CE = 1 to end the write cycle
![[Pasted image 20231205134155.png]]

#### Single‐byte read (direct)
* Set CE = 0 to start a single‐byte reading..
* The address is shifted in (MSB first) - bit 8 is special because 0 = Read
* Data from the selected location is sent out after 8 clock pulses (MSB first)
* Set CE = 1 to end the read cycle
![[Pasted image 20231205134229.png]]

#### Multi‐byte read (burst)
* Set CE = 0 to start a multi‐byte reading.
* The address is shifted in (MSB first) - bit 8 is special because 0 = Read
* Data0 from the selected location is sent out after 8 Clock pulses (MSB first)
* Data1..N are sent out from the consecutive addresses afterwards
* Set CE = 1 to end the read cycle
![[Pasted image 20231205134325.png]]

#### 16‐bit read/write
Of course, there are other devices that have more than 128 addresses.
Here is an example ‐ SPI EEPROM 25AA160A<span style="color:lightblue">(2KByte EEPROM)</span>
![[Pasted image 20231205134453.png]]
Here A7 (MSB) is not used (as before) to indicate whether it is a write or
read operation you want to perform. Instead, we use an 8-bit instruction.

#### 16‐bit read sequence
![[Pasted image 20231205134524.png]]

#### 16‐bit write sequence
![[Pasted image 20231205134537.png]]

#### Multi slave configurations
If you need to connect several devices to your microcontroller, there are
two methods: one is **Independent Chip Select.**
![[Pasted image 20231205134558.png]]
Note: MISO is not shown here, but is connected in parallel in the same way as MOSI if it is to be used

If you need to connect several devices to your microcontroller, there are
two methods: the other is Daisy chain.
![[Pasted image 20231205134730.png]]The gain is there are less pins at the microcontroller, but also more cumbersome to use, as data must be switched through other devices.

