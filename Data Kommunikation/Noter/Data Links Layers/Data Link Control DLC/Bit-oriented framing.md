In this type of framing, the data section consists of a sequence of bits.
These are then interpreted by the upper layers as: text, graphics, audio
and video, respectively.
Besides Header and (maybe) Trailer, we still need a flag to delimit the
individual Frames.

>Most protocols use an 8-bit pattern 01111110 as the flag.
![[Pasted image 20230926123205.png]]

***
#### Bit Stuffing
Method:
If a 0 and 5 consecutive 1s exist, then an extra 0 is added right after them
regardless of which bit (0 or 1) coming after this sequence.
![[Pasted image 20230926123306.png]]
