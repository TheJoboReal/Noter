---
tags:
  - lecture-slide
  - uni
course: Numeriske Metoder
lecture: Lecture 6
date: 2025-03-12
---

>[!Tip] Also See
>[[Bisection Method]]
#### Definition
![[Pasted image 20250312092014.png]]
When using False Position Method we start by drawing the secant from $f(a)$ and $f(b)$, we then find the point where the secant cuts the x-axis. Then we can replace $a$ or $b$ with $c$ depending on the signs(to make sure that $f(a)$ and $f(b)$ has different signs). 

![[Pasted image 20250312092630.png]]
* Slope $m=\frac{\Delta y}{\Delta x}$
* $m_{1}=m_{2}$
* $\frac{f(b)-f(a)}{b-a}=\frac{0-f(b)}{c-b}$
* $(c-b)(f(b)-f(a))=(b-a)(0-f(b))$
* $c=b-f(b)\frac{b-a}{f(b)-f(a)}$

With $c$ we can then check:
```pseudocode
If f(c) = 0 or |f(c)| < epsilon
	return c
Else if sign(f(c)) = sign(f(a))
	a <- c
Else
	b <- c
```

FPM is usually faster than [[Bisection Method]] but can in cases be slower.