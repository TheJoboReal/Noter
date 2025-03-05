---
tags:
  - lecture-slide
  - uni
course: Numeriske Metoder
lecture: Lecture 5
date: 2025-03-05
---
>[!Link]
>https://www.geeksforgeeks.org/program-for-bisection-method/?ref=gcse_outind
#### Definition
The bisection method is a technique for finding solutions to equations with a single unknown variable. Among various numerical methods, it stands out for its simplicity and effectiveness, particularly when dealing with ***transcendental equations*** (those that cannot be solved using algebraic methods alone). The method is also called the interval halving method, the binary search method or the dichotomy method.

#### Example
We use the bisection method to find the root of the polynomial: $f(x)=x3−x−2$

**Step 1: Initial Interval Selection*** Choose $a= 1$ and $b= 2$.  
Evaluate the function: $f(1) = −2, f(2) = 4$

Since f(1) and f(2) have opposite signs, there is a root between 1 and 2.

***Step 2: First Iteration***, Calculate the midpoint:  $c1=1+22=1.5c1​=21+2​=1.5$.
Evaluate the function at $c1 ​: f(1.5) = −0.125$

Since f(1.5) is negative, update the interval to $[1.5, 2]$.

**Step 3: Repeat***: Repeat the process until the interval becomes sufficiently small, converging on the root.

A few steps of the bisection method applied over the starting range $[a1;b1]$. The bigger red dot is the root of the function.
![[Pasted image 20250305114203.png]]
