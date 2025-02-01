#### Definition
Hvis man fks har to målinger. Altså hvis man har mere end en regulator.
![[Pasted image 20240216100158.png]]
Hvor $C_{p}$ er den primære reference og $C_{s}$ er den sekundære reference.

#### Design
Cascade control can be used when
* There should be a well defined relation between the primary and secondary measured variable
* Essential disturbances should act in the inner loop
* The inner loop should be faster than the outer loop. A rule of thumb is that the average residence times should have a ratio of at least five.
* should be possible to have a high gain in the inner loop.
##### Tuning
The following procedure should be followed to tune a cascade control
1. Tune inner-loop controller $C_{s}$ such that the transfer function from $u'$ to $y_{s}$ is critically
damped or over damped (unity DC gain is not a requirement).
2. Tune the outer-loop controller $C_{p}$ such that the desired performance is obtained.
#### Eksempel på forstyrrelses-undertrykkelse
![[Pasted image 20240216100522.png]]
![[Pasted image 20240216100526.png]]
![[Pasted image 20240216100538.png]]
Vi kan se den røde(Kaskade reguleringen) er mindre følsom overfor forstyrrelse.

#### DC motor model
![[Pasted image 20240216101337.png]]
![[Pasted image 20240216101345.png]]
![[Pasted image 20240216101357.png]]
Differentiale ligning over spændingen i system:
$$
u_{a}=R_{A}I_{a}+L_{a}\cdot \frac{d\ I_{a}}{dt}+K\omega
$$
Differentiale ligning over strømmen i system:
$$
I_{a}=\frac{1}{L_{a}}u_{a}-\frac{R_{a}}{L_{a}}I_{a}-\frac{K}{L_{a}}u
$$

Differentiale ligning over mekanisk i system:
$$
J_{m}\dot{\omega}=\tau_{n}-b\omega -\tau_{L}
$$
![[Pasted image 20240216101407.png]]

