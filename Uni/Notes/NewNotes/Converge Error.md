---
tags:
  - lecture-slide
  - uni
course: Numeriske Metoder
lecture: Lecture 6
date: 2025-03-12
---

#### Definition
Assume that we have an iterative method such as [[False Position Method]] or [[Bisection Method]] that generates a sequence $x_{0}, x_{1}\dots,x_{k}$ and that we write the unknown exact solution as:
$$
\tilde x \quad \text{meaning that } \quad f(\tilde x)=0
$$
We write the error $\epsilon_{k}$ for iteration $k$:
$$
\epsilon_{k} = x_{k} - \tilde x \quad  \text{Unknown}
$$
And we write the change at the $k$'th iteration $d_{k}$:
$$
d_{k}=x_{k}-x_{k-1} \quad \text{Computeable from the output}
$$
$$
\tilde x=x_{k}+\sum^\infty_{i=1} d_{k+i}
$$
$$
\epsilon_{k}=x_{k}-\tilde x=-\sum^\infty_{i=1}d_{k+i}=-[d_{k+1}+d_{k+2}+d_{k+3}+\dots]
$$
Unfortunately also unknown as the $d_{k}$ values are only known up to the last computed iteration.

---

If a method satisfies that:
$$
\frac{d_{k}}{d_{k-1}} \to C \quad \text {as} \quad k\to \infty \quad \text{where } |C|<1
$$
This is **False Position**.
$$
\epsilon_{k} \approx -d_{k}[C+C^2+C^3+\dots]=\frac{-C}{1-C}d_{k}
$$
We can now do the error estimation for False Position.

#### Example

![[Pasted image 20250312100901.png]]
