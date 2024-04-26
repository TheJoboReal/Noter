#### System Description
![[Pasted image 20240426091245.png]]
i de blå er der blevet sat $2$ matricer på som fungerer som feed forward. En kombination af de to matricer hjælper os med at sætte nulpunkter.
Og DC forstærkningen er bestemt af $CA^{-1}B$

![[Pasted image 20240426091553.png]]

#### Zeros of State Space Model
![[Pasted image 20240426091924.png]]
Her er determinanten lig nulpunkterne i vores system uden regulator, altså vores åbensløjfe system.

![[Pasted image 20240426092837.png]]
igen har vi nulpunkterne for systemet uden regulator, og nedenfor nulpunkter for lukke-sløjfe systemet.

#### Placement of Closed-Loop Zeros
![[Pasted image 20240426092942.png]]

#### Algorithm for zero assignment
1. Design $\tilde M$ assigning zeros close to the cut-off frequency of the Bode plot, such that the ’horizontal’ part is extended.
2. Compute $N$ such that the DC-value of the transfer function from $r$ to $y$ is unity:
$$
N=-(C_{cl}A^{-1}_{cl} \tilde B_{cl})^{-1}
$$
Hvor $N$ faktisk bare er DC forstærkningen men inverteret og hvor: 
$$
A_{cl}=\begin{bmatrix}
A & BF \\
-LC & A+BF+LC
\end{bmatrix}
,\ \tilde B_{cl}=\begin{bmatrix}
B \\
M
\end{bmatrix}
$$
$$
C_{cl}=\begin{bmatrix}
C & 0
\end{bmatrix}
$$
3. Compute $M=MN^{-1}=\tilde MN$.

##### Example zero allignment
![[Pasted image 20240426093606.png]]
for at øje båndbredden ligger vi poler ved de første mindst negative.
![[Pasted image 20240426093649.png]]
vi bruger place() eller lign i matlab for at få de tal ud.
![[Pasted image 20240426093654.png]]
![[Pasted image 20240426093905.png]]
![[Pasted image 20240426093912.png]]
Her er den røde meget bedre, og det har ikke engang kostet et oversving.
Vi kan kun sætte to nulpunkter ind fordi vi har 2x2 matricer.

> Der må ikke være nulpunkter før vores poler i lukke sløjfe systemet så får man wierd shit.

