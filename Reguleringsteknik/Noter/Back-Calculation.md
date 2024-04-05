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

> Anti-windup er at man skal stoppe med at integrere når begrænsninger er opnået.

