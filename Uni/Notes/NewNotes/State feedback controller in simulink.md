---
tags:
  - lecture-slide
  - uni
course: Control of Autonomous Systems
lecture: null
date: 2025-12-22
---

#### Definition
To implement state feedback we need the K vector:
```matlab
% Variable q_n are defined above.

A = [-q_1*omega, -q_1*m;
q_2/J, -q_3/J]

B = [1;0];

K = double(place(A,B, [-9.99999 -10.0]))
```
Where $A$ and $B$ matrices are acquired from the Jacobian.
The added constant in the bottom is the desired point. It is to make sure that the system stops when the point is reached.

![[Pasted image 20260104113822.png]]
![[Assignment cas re.pdf#page=4]]