---
tags:
  - lecture-note
  - uni
course: Reguleringsteknik
---

![[Pasted image 20240419084629.png]]
Her er det gule system en kopi af det originale sorte system.
Så en observer er en tilbage kobling fra et estimat, hvor tilbage koblingen er den målte fejl fra det reelle system. 

![[Pasted image 20240419085100.png]]
System:
$$
\dot{x}=Ax+Bu
$$
$$
y=Cx
$$
Observer:
$$
\dot{x}=A\dot{x}+Bu+L(C\hat{x}-y)
$$
$$
y=C\dot{x}
$$

Error, $e=\hat{x}-x$:
$$
\dot{e}=\dot{\hat{x}}-\dot{x}=A\hat{x}+Bu+L(C\hat{x}-y)-(Ax+Bu)
$$
$$
=A(\hat{x}-x)+L(C\hat{x}-Cx)
$$
$$
=(A+LC)(\hat{x}-x)=(A+LC)e
$$
$$
\dot{e}=(A+LC)e
$$
Vi vil have at $\dot{e}=-e$ så hvis vi har en positiv fejl, så vi trækker fejlen fra, istedet for at amplify fejlen.
Så da $A$ er en matrix, for at den skal være negativ skal vi have egen-værdierne til at være på venstre halvplan. Hvor $L$ er gain i observeren.

#### Observer Gain
For at finde observer gain bruges følgende
$$
A+LC
$$
For at isolere $L$ transponere vi matricerne
$$
(A+LC)^T=A^T+C^T+L^T
$$
$$
L=place(A^T,-C^T,poler)^T
$$

#### Theorem
THEOREM. A full order observer for the system
$$
\dot{x}=Ax+Bu
$$
$$
y=Cx
$$
with observer gain $L$ is stable, if and only if the eigenvalues of the matrix $A+LC$ all have negative real part.
Moreover, such an $L$ always exists, if $(A,C)$ is observable.

For at undgå at systemet bliver fucked, skal polerne ligge 5-7 gange længere væk fra 

![[Pasted image 20240419093350.png]]For the observer based control to be closer to the state feedback. Place the $A+LC$ poles further to the left in the $s$-plane.

#### Observable Cannonical form
![[Pasted image 20240419090127.png]]
![[Pasted image 20240419090134.png]]
![[Pasted image 20240419090140.png]]
![[Pasted image 20240419090146.png]]

#### Example Observable Cannonical form
![[Pasted image 20240419090211.png]]
![[Pasted image 20240419090220.png]]
![[Pasted image 20240419090227.png]]
