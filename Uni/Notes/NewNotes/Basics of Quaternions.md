---
tags:
  - lecture-slide
  - uni
course: Guidance Navigation and Control
lecture: Lecture 3
date: 2026-02-23
---
>[!TIP] See [Link](https://en.wikipedia.org/wiki/Quaternion) for more info

#### Definition
A quaternion is a number with one scalar part and 3 imaginary parts:
$$
q=\eta+i\epsilon_{1}+j\epsilon_{2}+k\epsilon_{3}
$$
With $i,j,k$ being the imaginary numbers.


Similarly to imaginary numbers, a quaternion can be represented by a vector:
![[Pasted image 20260223124323.png]]
Where $\eta$ being the real part and $\epsilon$ being the imaginary part.
![[Pasted image 20260223124334.png]]

#### Properties of Quaternions

![[Pasted image 20260223124549.png]]

-----
![[Pasted image 20260223124507.png]]
Get rid of the real part of the quarternion

---
![[Pasted image 20260223124518.png]]

---
![[Pasted image 20260223124528.png]]

---
![[Pasted image 20260223124608.png]]
![[Pasted image 20260223124617.png]]

---
![[Pasted image 20260223124639.png]]

#### Angle-axis to Quaternions
Going from angle-axis (𝜷, 𝒌) to a quaternion (𝜼, 𝝐) is mathematically simple:
![[Pasted image 20260223124728.png]]
![[Pasted image 20260223124736.png]]
$k$ gives an idea of the axis of rotation(not exact) and $\frac{\beta}{2}$ is how much it is turning.

![[Pasted image 20260223124918.png]]

Thus:
![[Pasted image 20260223124948.png]]
There is no $\cos()$ or $\sin()$ so this is a lot easier to compute on a computer or a microcontroller. As calculating those on a computer uses [Taylor Series](https://www.geeksforgeeks.org/engineering-mathematics/taylor-series/). 

#### Rotations using Quaternions

![[Pasted image 20260223125345.png]]
![[Pasted image 20260223125357.png]]
![[Pasted image 20260223125336.png]]
