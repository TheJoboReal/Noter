#### Definition
Most control systems are sample data systems, i.e., they consist of both discrete and continuous signals.
![[Pasted image 20240405090819.png]]
A digital controller both sample and quantize signals. In this course the quantization is omitted; thus, discrete controllers are designed.

![[Pasted image 20240405093755.png]]

#### Overview
There are two approaches to designing discrete controllers
1. **Emulation:** Design continuous controller $K(s)$ and approximate it with $K(z)$ obtained via e.g. Tustin’s method.
2. **Discrete design:** Design the discrete controller directly, without computing $K(s)$.

The sampling frequency used for the discrete controller should be about 20 times the closed-loop bandwidth. Otherwise, special care should be takes in the design of the discrete controller.

#### Emulation
##### Design Procedure
A discrete controller can be designed by emulation for the system $G(s)$ according to the next procedure.
1. Design continuous compensation for the system $G_{d}(s)G(s)$ , where $G_{d}(s)$ approximates a delay of T /2. $G_{d}(s)=\frac{1}{\frac{T}{2}s+1}$
2. Derive the discrete controller by applying Tustin’s rule or the matched pole-zero method (other discretization methods exist, but the mentioned methods are preferred).
3. Analyze the design by simulation or experimentally.

##### PID controller
Consider the PID controller is s-domain
$$
u(s)=\left( kp+\frac{k_{I}}{s}+k_{D}s \right)e(s)
$$
and its equivalent in time-domain:
$$
u(t)=k_{P}(t)+k_{I}\int^t_{0} e(\tau)d\tau \, +k_{D} \frac{d}{dt}e(t) 
$$
$$
u(t)=u_{P}+u_{I}+u_{D}
$$
Each of the terms in the PID Controller is computed for discrete times in the following

The proportional term at time $kT+T$ is
$$
u_{P}(kT+T)=k_{P}e(kT+T)
$$
The integral term is
$$
u_{I}(kT+T)=k_{I}\int^{kT+T}_{0} e(\tau) \, d\tau 
$$
$$
u_{I}(kT+T)=k_{I}\int^{kT}_{0} e(\tau) \, d\tau+k
_{I}\int^{kT+T}_{kT} e(\tau) \, d\tau 
$$
$$
u_{I}(kT+T)=u_{I}(kT)+k_{I} \frac{T}{2}(e(kT+T)+e(kT))
$$
The trapezoidal rule was used for the numerical integration. Other choices for the numerical integration are possible.

The derivative term is obtained by integrating $u_{D}(t)=k_{D}\dot{e}(t)$
$$
k_{D}e(t)=\int^t_{0} u_{D}(\tau) \, d\tau
$$
$$
k_{D}e(kT+T)=\int^{kT+T}_{0} u_{D}(\tau) \, d\tau 
$$
$$
k_{D}e(kT+T)=\int^{kT}_{0} u_{D}(\tau) \, d\tau +\int^{kT+T}_{kT} u_{D}(\tau) \, d\tau  
$$
$$
k_{D}e(kT+T)\approx k_{D}e(kT+T)+\frac{T}{2}(u_{D}(kT+T)+u_{D}(kT))
$$
$$
u_{D}(kT+T)\approx k_{D} \frac{2}{T}(e(kT+T)-e(kT))-u_{D}(kT)
$$

By combining the three terms, the control output of the discrete controller is
$$
u(kT+T)=k_{P}e(kT+T)+u_{I}(kT)+k_{I} \frac{T}{2}(e(kT+T)+e(kT))
+k_{D} \frac{2}{T}(e(kT+T)-e(kT))-u_{D}(kT)
$$

Where $k_{p}$ and $d_{D}$ are constants. And where each term is a part of the PID controller, e.i:
P$=k_{p}e(kT+T)$,
I$=k_{I} \frac{T}{2}(e(kT+T)+e(kT))$ 
D$=k_{D} \frac{2}{T}(e(kT+T)-e(kT)-u_{D}(kT))$

Notice that the terms in the controller depends on the sampling time $T$ . Thus, it needs to be known and constant for implementing the PID controller with constant gains.

To analyze the system, the I-term and D-term are z-transformed
This gives the following expression for the controller
$$
u(z)=\left( k_{P}+k_{I} \frac{Tz+1}{2z-1} +k_{D} \frac{2}{T} \frac{z-1}{z+1} \right)
$$
##### Example of PID controller
![[Pasted image 20240405092746.png]]
![[Pasted image 20240405092754.png]]
![[Pasted image 20240405092804.png]]
I dette eksempel ligger graferne ikke særlig tæt fordi at der ikke er taget højde for forsinkelse.

##### Compensation for Sampling Effects
![[Pasted image 20240405093032.png]]
Dette er meget bedre end med [[Digitization#Example of PID controller|PID Controlleren]], her ligger grafferne meget tættere.
![[Pasted image 20240405093155.png]]
Der bruges bare en første ordens overføringsfunktion, altså $G_{d}(s)$

![[Pasted image 20240405093325.png]]
>*"Tag et system, gang med $G(s)$ og lav en regulering af det. Det virker hver gang"*
>- Christopher


#### Transformation
![[Pasted image 20240405093822.png]]
![[Pasted image 20240405093829.png]]
Forward kan vi få poler der ligger udenfor enhedscirklen.

Backwards er nemmere at implementere og ligger på højre side af $Im$-aksen inden for enhedscirklen.

Trapezoid kan ligge overalt indenfor enhedscirklen, men er svære at implementere.

> *"Forward Rectangular er forbudt"*
> - Christopher

***

