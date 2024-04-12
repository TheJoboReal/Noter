#### Definition
![[Pasted image 20240412084644.png]]
The single input state space model
$$
\dot{x}_{c}=A_{c}x_{c}+B_{c}u, \rightarrow u \in R
$$
is said to on controllable canonical form if
$$
A_{c}=[\frac{a^T}{I_{n-1}|0_{(n-1)\times 1}}]
$$
and 
$$
B_{c}=\left[ \frac{1}{0_{(n-1)\times_{1}}} \right]
$$
![[Pasted image 20240412085042.png]]

##### Example
![[Pasted image 20240412091145.png]]

#### Transformation to Controllable Canonical form
![[Pasted image 20240412091307.png]]
$T$ matrix skal være [[Den Inverse af en Matrix|invertibel]], da vi skal kunne gå begge veje.
![[Pasted image 20240412091615.png]]
![[Pasted image 20240412091625.png]]
![[Pasted image 20240412091829.png]]
vi får så controll matrices $s_{3}[B,AB, A²B]=[0,0,1]$

#### Example: Companion Form
![[Pasted image 20240412092127.png]]
Først findes controll matricen. Og vi kan se at systemet er styrbar da $\det(c)$ ikke er lig $0$.
![[Pasted image 20240412092214.png]]
![[Pasted image 20240412092405.png]]
![[Pasted image 20240412092411.png]]
