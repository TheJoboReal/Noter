---
tags:
  - lecture-slide
  - uni
course: Control of Autonomous Systems
lecture: null
date: 2025-12-22
---

#### Definition
$$
\begin{pmatrix}
\dot{p_{1}}(t)= p_{1}(t)p_{2}(t)-p_{1}(t) && \\
\dot{p}_{2}(t)=-\frac{4}{3}p_{1}(t)p_{2}(t)+\frac{2}{3}p_{2}(t)+u(t)

\end{pmatrix}
$$


To discretize this system, we use the euler method:
```matlab
function xp1 = f_D(x,u)

Ts = 0.01;

xp1 = x + Ts*[ x(1)*x(2) - x(1) ;

-4/3*x(1)*x(2) + 2/3*x(2) + u ];
```
It can be seen that the variables are all just set to $t=1$ and the euler steps is multiplied to each system plus $x$

it can be implemented as follows:

![[Pasted image 20251222085641.png]]