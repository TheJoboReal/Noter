---
tags:
  - lecture-note
  - uni
course: Digital Programmerbar elektronik
---
#### Definition
A clock divider is a digital circuit that takes an input clock signal and produces an output clock signal at a lower frequency.

It works by counting a certain number of input clock cycles and then toggling the output signal. 
For example, if you have a clock divider set to divide by 2, it will produce an output pulse every two input pulses. This effectively reduces the frequency of the output signal compared to the input signal. 
Clock dividers are commonly used in digital systems to generate clock signals for various components operating at different speeds or to synchronize timing between different parts of a system.
***
* Note: Division is the most complex of the four basic arithmetic operations.
* Hardware solutions are correspondingly larger and more complex than the solutions for other operations, it is best to minimize the number of divisions in any algorithm
***
* Clk divider by $2^n$ (PWM)
* Division by subtraction
* Division by multiplication: $A\cdot \frac{1}{B}=A\cdot\left( \frac{2^n}{B} \right)2^n=\frac{10}{4}=10.10$

![[Pasted image 20240403133520.png]]
![[Pasted image 20240403133545.png]]
* IP Divider cores by vendors (https://www.xilinx.com/support/documentation/ip_documentation/div_gen/v5_1/pg151-div-gen.pdf )
	* LUTMult; A simple lookup estimate of the reciprocal of the divisor followed by a Multiplier
	* Radix-2. non-restoring integer division using integer operands, allowing either a fractional or an integer remainder to be generated

