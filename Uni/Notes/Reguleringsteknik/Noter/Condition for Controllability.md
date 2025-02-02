---
tags:
  - lecture-note
  - uni
course: Reguleringsteknik
---
#### Definition
For a time continuous system:
$$
\dot{x}(t)=Ax(t)+Bu(t) \rightarrow x(0)=0
$$
is said to be controllable iff for any $\xi \in  R_{n}$ there exists $u(t)$ such that for some $T>0$

A discrete time system
$$
x_{k+1}=\Phi x_{k}+T_{uk} \rightarrow x_{0}=0
$$

is said to be controllable iff for any $\xi \in  R_{n}$ there exists (u0, u1, . . .) such that for some $N>0, x_{N}=\xi$
![[Pasted image 20240412083321.png]]

#### Discrete time system
![[Pasted image 20240412083339.png]]
![[Pasted image 20240412083351.png]]
Det er controll matrixen som vi bruger til at teste om systemet er styrbar.
![[Pasted image 20240412083557.png]]

#### Example Parallel Conection
![[Pasted image 20240412083731.png]]
System er ikke styrbar fordi vi har to udgange som hver har forskellig tilstand. fks to biler med samme speeder kan ikke køre forskellige hastigheder, fordi vi kun har en pedal som styrer begge.
![[Pasted image 20240412084343.png]]
Det kan også udregnes som overnstående.

#### Example Series Connection
![[Pasted image 20240412084421.png]]
![[Pasted image 20240412084435.png]]
