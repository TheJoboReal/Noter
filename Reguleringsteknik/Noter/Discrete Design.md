#### Definition
The discrete design method relies on a discretized plant model. The discrete transfer function of a system $G(s)$ and preceding zero-order hold is
$$
G(z)=(1-z^{-1}) \mathcal{Z} \left \{\frac{G(s)}{s} \right\}
$$
where $\mathcal{Z}$ denotes the z-transformation.

Subsequent to the discretization, the control system can be analyzed based on the closed-loop transfer function
$$
T_{cl}(z)=\frac{K(z)G(z)}{1+K(z)G(z)}
$$
Since the structure of the continuous and discrete closed-loop transfer functions are the same, the stability of the system can be studied via the characteristic equation 
$$
1+K(z)G(z)=0
$$
Consequently, the controller $K(z)$ can be designed via root locus or any of the other methods.

#### Design Procedure
The following procedure should be followed to designing a discrete controller
1. Transform the continuous-time plant into discrete time as follows
$$
G(z)=(1-z^{-1}) \mathcal{Z} \left \{\frac{G(s)}{s} \right\}
$$
2. Design the feedback controller K(z) using the same approaches as for a continuous-time.
3. Verify the design on the sample data system

#### Example
![[Pasted image 20240405094509.png]]
![[Pasted image 20240405094514.png]]
![[Pasted image 20240405094525.png]]
