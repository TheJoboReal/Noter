![[Pasted image 20240419091922.png]]
![[Pasted image 20240419091948.png]]

#### Separations principle
![[Pasted image 20240419092221.png]]
An observer based controller for the system
$$
\dot{x}=Ax+Bu \ x \in R^n
$$
$$
y=Cx
$$
with observer gain $L$ and feedback gain $F$ results in $2n$ closed loop poles, coinciding with the eigenvalues of the two matrices.

> Når man vælger $L$ er det vigtigt at $A+LC$ er omkring 7 gange længere til venstre end $A+BF$(altså systemet).

#### Example
![[Pasted image 20240419093326.png]]
For at få observer-based Control tættere på state feedback skal vi placere $A+LC$ polerne længere mod venstre halvplan.
