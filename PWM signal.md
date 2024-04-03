> For definition, see [[Datateknik/Microcontrollers/ATmega32/PWM example|PWM]]
#### Building a PWM signal
![[Pasted image 20240320124631.png]]
![[Pasted image 20240320124638.png]]


#### PWM clock divider
> Clock dividers are needed to align the input frequency with the desire operating frequency of an application or an interface.  For example the digital clock assignment, 1Hz is the desired operating frequency of the circuit.

To generate a PWM signal with ex. a frequency of 1Hz from a 125MHz clock signal, we need to divide the clock frequency down to 1Hz.
The formula to calculate the number of counter bits needed for this division is:
$$
N=\frac{f_{clock}}{f_{PWM}}
$$
$N$ is the number of bits needed.
$f_{clock}$ is the clock frequency (125MHZ in this case).
$f_{PWM}$ is the desired PWM frequency (1Hz in this case)

$$
N=\frac{125\cdot10^6}{1}=27
$$
Therefore 27 bits are needed to generate a PWM with a frequency of 1Hz from a 125MHz clock signal.
