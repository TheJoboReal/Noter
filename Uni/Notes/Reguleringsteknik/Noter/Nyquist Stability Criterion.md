---
tags:
  - lecture-note
  - uni
course: Reguleringsteknik
---
#### Definition
Nyquist Plot viser det samme som et bode plot, men på et Nyquist plot er det meget nemmere at vurdere om systemet er stabilt.

#### Nyquist plot
![[Pasted image 20240307211931.png]]
![[Pasted image 20240307211957.png]]

> Se videoer 
> <iframe width="560" height="315" src="https://www.youtube.com/embed/sof3meN96MA?si=ZhM2yeChz8IreJaM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
> 
> <iframe width="560" height="315" src="https://www.youtube.com/embed/tsgOstfoNhk?si=HQV24MVrxSQdWScG" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### Stability
To verify the stability of a system, one needs to determine the number of closed-loop poles in the right half-plane. Thus, the Nyquist plot is a map of a contour that encircles the entire right-half plane. 

The number of closed-loop poles in the right half-plane equals the number of right half-plane zeros of $1+KG(s)$.

To only work with the open-loop transfer function $KG(s)$, it suffices to count the number of encirclements of the point $-1$ when considering a contour that encircles the right half-plane for $KG(s)$. 

#### Stability Criterion
Let N denote the number of clockwise encirclements of $-1$. Then the number of zeros in the right half plane Z (closed-loop poles) minus the number of open-loop poles in the right half-plane P is:
$$
N=Z-P
$$
