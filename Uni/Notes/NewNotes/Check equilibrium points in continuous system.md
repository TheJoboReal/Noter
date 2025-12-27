---
tags:
  - lecture-slide
  - uni
course: Control of Autonomous Systems
lecture: null
date: 2025-12-22
---

#### Definition
To check if equilibrium points are stable, we check the system with the following simulink implementation.

![[Pasted image 20251222134727.png]]
Inside the function block we have our system.
```matlab
function x_dot = f(x,u)

x_dot = [ x(1)*x(2) - x(1) ;

-4/3*x(1)*x(2) + 2/3*x(2) + u ];
```