$$
D(s)=K \frac{s+z}{s+p}
$$
> Hvis $z<p$, så er $D(s)$ en lead kompensator.
> Hvis $z>p$ så er $D(s)$ en lag kompensator.
#### Lead kompensator
##### Definition
Approximates the PD control, i.e, it lowers the rise time and decrease the overshoot.

Approximates the PI control, i.e, it improves the steady state tracking.
![[Pasted image 20240322094517.png]]
##### Design
![[Pasted image 20240322094531.png]]
1.2 Hvis du fks har en båndbredde på $5$ så skal din $K$ være $2.5$.
![[Pasted image 20240322094753.png]]

##### Example
![[Pasted image 20240322094934.png]]![[Pasted image 20240322094943.png]]
![[Pasted image 20240322094951.png]]
![[Pasted image 20240322095023.png]]
![[Pasted image 20240322095045.png]]
Vi vil gerne have en fase på 45 grader eller mere.
![[Pasted image 20240322095053.png]]

#### Lag kompensator
##### Definition
![[Pasted image 20240322095631.png]]
![[Pasted image 20240322095645.png]]

##### Design
![[Pasted image 20240322095708.png]]

##### Example
![[Pasted image 20240322095722.png]]
![[Pasted image 20240322095745.png]]
![[Pasted image 20240322095758.png]]
