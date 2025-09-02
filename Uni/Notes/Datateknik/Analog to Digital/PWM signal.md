---
tags:
  - lecture-note
  - uni
course: Datateknik
---
> For definition, see [[PWM example|PWM]]
#### Building a PWM signal
![[Pasted image 20240320124631.png]]
![[Pasted image 20240320124638.png]]


#### PWM clock divider
> Clock dividers are needed to align the input frequency with the desire operating frequency of an application or an interface.  For example the digital clock assignment, 16kHz is the desired operating frequency of the circuit.

To generate a PWM signal with ex. a frequency of 16kHz from a 125MHz clock signal, we need to divide the clock frequency down to 16kHz.
The formula to calculate the number of counter bits needed for this division is:
$$
M=\frac{f_{clock}}{f_{PWM}}
$$
$N$ is the number of bits needed.
$f_{clock}$ is the clock frequency (125MHZ in this case).
$f_{PWM}$ is the desired PWM frequency (16kHz in this case)
$M$ is the factor of times lower that the clock has to be.

$$
M=\frac{125\cdot10^6}{16 \cdot10^3}=7812.5
$$
$$
N=\log_{2}(7812.5)=12.93=13
$$
We then take $Log_{2}$ of $M$ to get the needed number of bits($N$).
Therefore 13 bits are needed to generate a PWM with a frequency of 16kHz from a 125MHz clock signal.
