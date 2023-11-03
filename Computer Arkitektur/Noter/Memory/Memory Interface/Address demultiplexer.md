#### 74xx137 3 to 8 decoder
This decoder is used when you have several memory chipsets that are used to form an address block
* The Y-outputs are fed to the CS on the circuits
* The address pins that do not fit on the memory chipsets (A15-17) are placed on A, B and C on the 74xx137, which are used to select a specific chipset
* If there are multiple address pins left (A18-19), they are used to select the 74xx137 via the CS pin
![[Pasted image 20231102233804.png]]

***
#### 74xx139 2 to 4 decoder - same principle as before
![[Pasted image 20231102233846.png]]

***
#### Programmable Array Logic
This type of address demultiplexer circuit can be programmed with
Boolean algebra
![[Pasted image 20231102233925.png]]
