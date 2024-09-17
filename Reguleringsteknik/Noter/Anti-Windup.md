#### Definition
Anti-windup er at man skal stoppe med at integrere når begrænsninger er opnået.

Two anti-windup mechanisms are considered
* Back-Calculation
* Conditional Integration
Both methods utilize the following signal:
![[Pasted image 20240405085300.png]]
> *"Back-Calculation can be used for analog systems while condition integration are digital since we turn on and off a signal very fast"*
>~ Balder

#### Back-Calculation
![[Pasted image 20240405084204.png]]
The input to the integrator is given by
$$
\frac{1}{T_{t}e_{s}}+\frac{K_{p}}{T_{i}}e
$$
where $e_{s}$ is zero when the system is not saturated.
In steady state, the output of the integrator is constant; hence, its input must be zero, i.e.
$$
e_{s}=\frac{K_{p}T_{t}}{T_{i}}
$$
in steady state. Since $e_{s}=u-v$
$$
u=u_{lim}+\frac{K_{p}T_{t}}{T_{i}}
$$

![[Pasted image 20240405084144.png]]


#### Conditionel Integration
The anti-windup scheme called **conditional** **integration** (also known as clamping) is a bit simpler, and just stops integrating, when the system is in saturation(when the actuator is within its limits).
![[Pasted image 20240405090550.png]]

Although conditional integration is simpler than back-calculation, it also improves the performance of the system. 
![[Pasted image 20240405085124.png]]
