---
tags:
  - lecture-slide
  - uni
course: Control of Autonomous Systems
lecture: null
date: 2025-12-22
---

#### Definition

We add disturbance of $-2$ and use a linear state feedback controller to compensate for the disturbance.
![[Pasted image 20251222161043.png]]
Inside the linear state-feedback controller.
![[Pasted image 20251222161059.png]]
Here, $C=[0,1]$ the integrator is initialized at $0$, the integral gain is $-1$ and matrix gain is $zeros(1,2)$.

To calculate the gains:

```matlab
sysCT = ss(A,B,C,D)

Q = 10*eye(size(A)+1)
R = eye(1) % if dont work, change to 2.

K_lqi = lqi(sysCT, Q, R)

K_state = K_lqi(1:2) % 2 is number of states.
K_int = K_lqi(3)  % the parameter to be tracked.

```
