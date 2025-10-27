---
tags:
  - lecture-slide
  - uni
course: Control of Autonomous Systems
lecture: Lecture 6
date: 2025-10-27
---

#### Definition


##### Cost function
The cost function is very similar to LQR:
$$
J = \sum^{N-1}_{k=0}[x^T(k)Qx(k)Ru(k)]
$$
open-loop control (start from known x0, and apply u(0), u(1),…,u(N-1)

Transform into feedback: starting with x(0), minimizing J and apply only u(0), measure resulting x(1), start from x(1), minimize J, and apply only u(1)… known 

![[Pasted image 20251027123250.png]]

> [!Tip] Remarks: - Q, R matrices and N are all tuning parameters - the above MPC framework allows to include saturation limits 
