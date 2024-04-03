
#### Defintion
Serial Peripheral Interface Bus, SPI-bus eller blot SPI er en synkron seriel dataforbindelse standard, navngivet af Motorola, som benytter fuld dupleks.

Enheder kommunikerer i master/slave tilstand hvor master-enheden starter datarammer. 

Flere slave-enheder er tilladt i form af individuel slave-select (chip-select) linjer. 

Nogle gange kaldes SPI for en four-wire serielbus, i kontrast til tre-, to- og one-wire serielle busser (stel/skærm er ikke talt med). 
SPI refereres ofte til som SSI (Synchronous Serial Interface). 


![[Pasted image 20240327093812.png]]
SPI-bussen specificerer flere logik signaler:
- SCLK: _serial clock (output from master)_;
- MOSI; SIMO: _master output, slave input (output from master)_;
- MISO; SOMI: _master input, slave output (output from slave)_;
- SS: _slave select.

Alternative navngivningskonventioner er også udbredt:
- SCK; CLK: _serial clock (output from master)_
- SDI; DI, DIN, SI, SDA: _serial data in; data in, serial in_
- SDO; DO, DOUT, SO, A0: _serial data out; data out, serial out_
- nCS, CS, CSB, CSN, nSS, STE: _chip select, slave transmit enable, output from master)_

>SDI/SDO (DI/DO, SI/SO) konventionen forudsætter at SDO på master er forbundet til SDI på slaven – og vice-versa. 
>Chip select polariteten er sjældent aktiv høj, selvom nogle notationer (såsom SS eller CS i stedet for nSS eller nCS) foreslår det.
***

![[Pasted image 20240327094120.png]]
>En master med mange slaves eks.

#### Pros and cons
 **Advantages of SPI:**
* It's faster than [[Asynchronous Balanced Mode (ABM)|asynchronoues]] serial
* The receive hardware can be a simple [[Shift Registers VHDL|shift register]]
- It supports multiple peripherals

**Disadvantages of SPI:**
- It requires more signal lines (wires) than other communications methods
- The communications must be well-defined in advance (you can't send random amounts of data whenever you want)
- The controller must control all communications (peripherals can't talk directly to each other)
- It usually requires separate CS lines to each peripheral, which can be problematic if numerous peripherals are needed.