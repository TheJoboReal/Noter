---
tags:
  - lecture-slide
  - uni
course: Isa Watering pot
lecture:
date: 2026-07-15
---

#### Definition
The pico pi can enter **sleep mode** leaving the clock active to be able to wake up at a determined time. This mode consumes approx $33$mW. Instead the pico can be put into **dormant mode** with the clock turned off and setting up an external wake signal on a pin. This mode consumes approx $6$mW


![[Pasted image 20260715145911.png]]


### Example
Here is an example from the official git: [example](https://github.com/raspberrypi/pico-examples/blob/master/low_power/low_power_dormant/low_power_dormant_gpio.c) 
Another example using pico pi for a plant pot: [YT](https://www.youtube.com/watch?v=ndmJR6Z_u5w)
Low power guide for pico pi dormant mode: [link](https://www.youtube.com/watch?v=05o5QOZkpwg)
