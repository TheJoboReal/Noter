#### Problem Formulation
We consider a linear control system of the form:
$$
\dot{x}=Ax+Bu,\ x(0)=x_{0}
$$
$$
y=Cx
$$
A control law for such a system is said to be optimal, if it minimizes the cost functional:
$$
\mathcal{J}=\int^\infty_{0} x^TQx+u^TRu \, dT 
$$
Where $\mathcal{J}$ er selve kosten på hele systemet. Så den vejer egentlig det hele op.
Where $Q=Q^T=transponeret(Q)$ is a positive semi-definite matrix and $R=R^T$ is a positive difinite matrix. Og hvor $x^TQx$ er *prisen* på at afvige for $0$. $x$ er afvigelse fra $0$  og $Q$ er en vægtning. 
Og $u^TRu>0$ for alle $u\neq 0$

#### The Algebraic Riccati Equation
![[Pasted image 20240426085024.png]]

#### Optimal state feedback control
Consider a linear system of the form:
$$
\dot{x}=Ax+Bu,\ x(0)=x_{0}
$$
$$
y=Cx
$$
Let $P$ be a stabilizing solution to the ARE:
$$
A^TP+PA-PBP^{-1}B^TP+Q=0
$$
Then the optimal state feedback law is givin by:
$u=Fx$ where $F=-R^{-1}B^TP$

#### Output Variance Minimization
![[Pasted image 20240426085355.png]]

#### Tuning using Bryson’s Rule
![[Pasted image 20240426085412.png]]
stor $Q$ værdi giver god perfomance.

#### Optimal state estimation
![[Pasted image 20240426085519.png]]
$\mathcal{E}(ww^T)$ er process støj og $\mathcal{E}(vv^T)$ er måle støj.
![[Pasted image 20240426085735.png]]

#### Example
![[Pasted image 20240426085752.png]]
![[Pasted image 20240426085818.png]]
![[Pasted image 20240426085850.png]]
Vi kan her se at kosten er høj her fordi vi får et oversving, men vi har en hurtig stigetid. Så det er kosten på hurtig stigetid er et overshoot.
