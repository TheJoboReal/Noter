#### Definition
* Note: Division is the most complex of the four basic arithmetic operations.
* Hardware solutions are correspondingly larger and more complex than the solutions for other operations, it is best to minimize the number of divisions in any algorithm

* Clk divider by $2^n$ (PWM)
* Division by subtraction
* Division by multiplication: $A\cdot \frac{1}{B}=A\cdot\left( \frac{2^n}{B} \right)2^n=\frac{10}{4}=10.10$

![[Pasted image 20240403133520.png]]
![[Pasted image 20240403133545.png]]
* IP Divider cores by vendors (https://www.xilinx.com/support/documentation/ip_documentation/div_gen/v5_1/pg151-div-gen.pdf )
	* LUTMult; A simple lookup estimate of the reciprocal of the divisor followed by a Multiplier
	* Radix-2. non-restoring integer division using integer operands, allowing either a fractional or an integer remainder to be generated

