---
tags:
  - lecture-slide
  - uni
course: Isa Watering pot
lecture:
date: 2026-07-15
---

#### Definition
The pico pi can enter **sleep mode** leaving the clock active to be able to wake up at a determined time. This mode consumes approx $33$mW. Instead the pico can be put into **dormant mode** with the clock turned off and setting up an external wake signal on a pin. This mode consumes approx $6$mW. For this the bit counter below is used. [Datasheet](https://www.ti.com/lit/ds/symlink/sn74hc4060.pdf).


![[Pasted image 20260715145911.png]]


### Example
Here is an example from the official git: [example](https://github.com/raspberrypi/pico-examples/blob/master/low_power/low_power_dormant/low_power_dormant_gpio.c) 
Another example using pico pi for a plant pot: [YT](https://www.youtube.com/watch?v=ndmJR6Z_u5w)
Low power guide for pico pi dormant mode: [link](https://www.youtube.com/watch?v=05o5QOZkpwg)

### Setup
We should use a $1 \mu F$ Capacitor for the $f_{osc}\approx \frac{1}{2.2\cdot R_{x}\cdot C_{x}}$ using the Q14 output that divides the frequency by $2^{14}$.
The target frequency of once every 6 hours is $f_{osc}=\frac{16384}{6\cdot_{3}3600}$. This gives a resistor of $$R=\frac{1}{2.2\cdot C_{f}}=\frac{1}{2.2\cdot_{1}\mu F\cdot_{0}.7593}=598k\ohm$$ 
So $\approx 600k\ohm$.