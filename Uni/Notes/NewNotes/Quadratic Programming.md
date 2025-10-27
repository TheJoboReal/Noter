---
tags:
  - lecture-slide
  - uni
course: Control of Autonomous Systems
lecture: Lecture 6
date: 2025-10-27
---

#### Definition
How is $J(k)$ minimized in real-time?(for each iteration k)
On a computer, that is **Quadratic Programming**

We want to find vector $z$ to minimize $\frac{1}{2}z^THz+F^Tz$ **quadratic cost function**.
with $dim(z)=dim(F)$ and the quadratic term $z^THz$ Vector z is also possible subject to the constraints:
$$
Gz=q \quad  Wz\leq v
$$
or:
$$
z_{-}\leq z \leq \bar{z}
$$

