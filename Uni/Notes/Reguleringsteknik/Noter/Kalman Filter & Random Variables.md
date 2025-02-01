#### Definition
> Med Kalman kan man estimere sit system og gøre variancen mindre. 

How is it possible to combine noisy measurements, and and an uncertain system model to provide a "good" state estimate?
![[Pasted image 20240503122415.png]]
The solution is a Kalman filter that relies on a stochastic model, and noisy measurements.

#### Random Variables
![[Pasted image 20240503123158.png]]
![[Pasted image 20240503123208.png]]
variance er, hvor meget varierer resultatet.

A continuous random variable $X$ often has zero probability of being one particular value;
thus, its outcome is described with a probability density function $fx$ as
$$
Pr(a \leq X \leq b) = \int ^b_{a} fX(x) \, dx 
$$
This means that the probability of the random value being in a particular range [a b] can be determined as shown above.

##### The Expected value
The expected value (mean value) of a continuous random variable X can be determined from the probability density function $fx$ as
$$
E[X]=\int ^\infty_{\infty} xfx(x) \, dx 
$$
The variance of $X$ is defined as 
$$
Var(X)=E[(X-\mu )^2]
$$
where $\mu=E(X)$.

##### Normal Distribution
The random variable $X$ is said to be normally distributed if it has probability density function
$$
f_{X}(x)=\frac{1}{\sqrt{ 2\pi \sigma^2 }}e^{- \frac{(x-\mu)^2}{2 \sigma^2}}
$$
where μ is the expectation of $X$ and σ is the standard deviation of $X$ (the standard deviation is defined from $\sigma^2=Var(X)$.
![[Pasted image 20240503124956.png]]
vi kan se at de har samme varians, men forskellig middelværdig på den øverste graf.

![[Pasted image 20240503125013.png]]

##### Covariance matrix
For a multivariate random variable
$$
X=\begin{bmatrix}
X_{1} \\
. \\
. \\
. \\
X_{n}
\end{bmatrix}
$$
The covariance matrix is
$$
\sum=E[(X-E[X])(X-E[X])^T]
$$
>al variancen vil stå på diagonalen af matrixen

We consider random variables that are independent, i.e., for a dice the probability of getting a 6 is the same independent on the previous outcome.

#### The Kalman Filter
##### Propeties of Kalman filter
following stochastic discrete-time state space model is considered
$$
x_{k+1}=\Phi x_{k}+\tau u_{k}+wk
$$
$$
y_{k}=Cx_{k}+Du_{k}+v_{k}
$$
where $w_{k}$ is the process noise (drawn from a zero mean normal distribution with [[Kalman Filter & Random Variables#Covariance matrix|covariance matrix]] $Q_{k}$) and $v_{k}$ is the measurement noise (drawn from a zero mean normal distribution with [[Kalman Filter & Random Variables#Covariance matrix|Covariance matrix]] $R_{k}$).

The Kalman filter finds an unbiased state estimate $\hat{x}_{k}$ of $x_{k}(E[x_{k}-\hat{x}_{k}=0)$ with minimal variance, by exploiting
* a model of the system
* a noice model

The Kalman filter is similar to the observer that was introduced in Lecture 10; however, the observer did not take into account the process noise $w_{m}$ and the measurement noise v_k.

##### Principle of Kalman filter
The Kalman filter consist of two stages.
![[Pasted image 20240503131833.png]]
Hvor $C\hat{x}$ er inovation støj.
where Kalman gain is given by the following equation, og svarer til $L$:
$$
K_{k}=P_{k+1|k}C^T(CP_{k+1|k}C^T+R_{k})^{-1}
$$
ved stor målestøj bliver $R_{k}$ større, og jo mindre vil $K_{k}$ behøve at være. Så $K_{k}$ bliver altså mindre når der er meget støj.

***
![[Pasted image 20240503132559.png]]
![[Pasted image 20240503132604.png]]
Når vi bevæger os frem i tid får vi større spredning og større usikkerhed, som set på den blå.

![[Pasted image 20240503132613.png]]


![[Pasted image 20240503132619.png]]
Blå er hvor vi tror bilen er og gul er hvor den faktisk er.

![[Pasted image 20240503132623.png]]
Orange er vores estimat af hvor bilen er. Vi har kombineret de to og har derfor fået mindre spredning.

![[Pasted image 20240503132628.png]]

