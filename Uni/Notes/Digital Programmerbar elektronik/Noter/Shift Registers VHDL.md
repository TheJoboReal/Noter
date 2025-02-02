---
tags:
  - lecture-note
  - uni
course: Digital Programmerbar elektronik
---
#### Definition
* Shift registers are registers with added features that enable them to shift their contents in either directions. * A typical parallel shift register that has added controls to achieve these features; signals shift_left and shift_ right.
* These signals control whether the register is to shift its contents to left or right.
* Depending on the usage of the register, the empty place appears after shifting is filled whether with ‘0’, or ‘1’, or the shifted bit from the other side of the register (barrel shifters)
* Signals are simply a bank of D-type flip-flops, its implementation has the same structure as for one flip-flop but with extended inputs and outputs
![[Pasted image 20240228144302.png]]

#### Modeling of a parallel 8 bits shift register
* A typical example for a parallel 8 bits shift register contains controls shift_left, and shift_right signals and combined them together into one bus. That also facilitates the use of case statements afterward.
* An intermediate signal definition is made to define a new bus (reg_ temp) to hold the register contents which is necessary because we cannot assign value to output and read it in the same time; (we cannot do something like that: reg_out <= reg_out because reg_out is defined as output), so we cannot read it inside (can not appear on the right-hand side of any assignment). Before the end of the architecture, the value of the intermediate bus is then passed to the output bus.
![[Pasted image 20240228144400.png]]
