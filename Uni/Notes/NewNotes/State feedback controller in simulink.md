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
xstar = [ 0.5 ; 1];

A = [ 0 1/2 ; -4/3 0 ];

B = [ 0 ; 1 ];

K = place(A,B, [-9.9 -10.1])
```
Where $A$ and $B$ matrices are aquired from the Jacobian.

![[Pasted image 20251222154332.png]]

![[Assignment cas re.pdf#page=4]]