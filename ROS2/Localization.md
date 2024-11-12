#### Motivation and Definition
* Planners generally assume to have perfect knowledge of the robot state and the  environment.
* However, knowledge derived from sensors is imperfect and subject to noise.
* Probabilistic Estimation provides a way to dealwith imperfect information.
* Kalman filters provide a recursive (and optimal under certain conditions) method for estimating the state based on noisy data.

* Kalman Filter
	– Linear model
	– State estimation, handling noise/errors (zero mean)
* Alternatives:
	– Extended Kalman filter: linearizing nonlinear systems
	– Unscented Kalman filter: estimating the covariances

![[Pasted image 20241105092843.png]]

---
#### Probabilistic Estimation
* The state is considered as a probability distribution rather than precise values.
![[Pasted image 20241105092212.png]]
The sensor knows that we are in front of a door and it knows that in the world there is 3 doors. The robot does however not know which door we are at, and due to sensor errors, we might not be standing directly in front of the door. 

![[Pasted image 20241105092246.png]]

##### Single vs. Multi Modal
– Single Modal: One hypothesis
– Multi Modal: Multiple hypotheses.
![[Pasted image 20241105092636.png]]

**Single Modul**
* Given a current belief and a sensor reading we wish to find the best believe of where we are.
![[Pasted image 20241105092722.png]]

#### Kalman Filter
The Kalman filter is used to predict the localisation of noise and thus dampning it. 
* Assumptions
	– Single Modal
	– Noise is Gaussian
* Requirements
	– Define the state
	– System model
	– Observation model(Model that connects our sensors to our state)

![[Pasted image 20241105093050.png]]

##### Observable State
– E.g. Position and Orientation $(x, y,\theta)$
• Non-observable State
	– E.g. Linear and angular velocity $(x',y',\theta')$
	– Could also include accelerations.
• What to select as the state depends on
	– What you need
	– Your System model
	– Your Observation model

##### Linear System Model
$$
x(k+1)=F(k)x(k)+G(k)u(k)+v(k)
$$
$x(k)$ Vector with state at time $k$
$F(k)$ Matrix relating current to future state
$u(k)$ Vector with control input at time $k$
$G(k)$ Matrix relating input to the dynamics
$v(k)$ Vector with process noise with zero mean and covariance $V(k)$

###### Linear System Model Example
**XYZ Gantry system**
![[Pasted image 20241105093700.png]]

##### Linear Observation Model
$$
y(k)=H(k)x(k)+w(k)
$$
$y(k)$ Vector representing senor readings
$x(k)$ Vector with state at time $k$
$H(k)$ Matrix mapping state to sensor readings
$w(k)$ Vector with measurements noise with zero mean and covariance $W(k)$

###### Linear Observation Model Example
![[Pasted image 20241105094125.png]]

##### Linear System Model in Kalman Filter
Consider the linear system without noise:
$$
x(k+1)=F(k)x(k)+G(k)u(k)
$$
Notation:
$$
\hat{x}(k_{1}|k_{2})
$$
This means the state estimate at time $k_{1}$ after using observations uå to time $k_{2}$. Notice that $k_{1}\geq k_{2}$.
We use $\hat{x}$ to denote the estimate of $x$.

![[Pasted image 20241105094432.png]]
![[Pasted image 20241105094448.png]]
![[Pasted image 20241105094504.png]]

##### Using Probability Distributions
![[Pasted image 20241105094533.png]]


##### Covariance
![[Pasted image 20241105094553.png]]
Covariance is for example in a GPS system, you know that the error is a 5 meter radius around you. This means that the predicted GPS point will be somewhere within the 5 meter radius. So the covariance does not change, but the noise in the matrix changes.

###### Covariance Matrix
![[Pasted image 20241105094620.png]]

##### Kalman Filter Prediction
![[Pasted image 20241105094644.png]]
![[Pasted image 20241105094659.png]]

###### Prediction Multiple Steps
1D example of how the uncertainty grows
![[Pasted image 20241105094723.png]]
If we keep making these predictions, the [[Localization#Covariance Matrix|covariance matrix]] would grow, thus making uncertainty larger.
We therefore have to update the system with the covariance matrix

##### Update with Covariance
![[Pasted image 20241105095019.png]]
Where $W(k+1)$ is the covariance of the sensor noise

![[Pasted image 20241105095120.png]]

#### Extended Kalman Filter
* The ordinary [[Localization#Kalman Filter|Kalman Filter]] requires that the system and observation models are linear.
* In the Extended Kalman Filter, EKF, the system is given by
$$
x(x+1)=
f(x(k),u(k),k)+v(k)
$$
$$
y(k)=h(x(k),k)+w(k)
$$
Where $f$ and $h$ are continuously differentiable.

* To run the predict and update step of the Kalman filter the Extended Kalman Filter makes use of the partial derivatives of $f$ and $h$
![[Pasted image 20241112084450.png]]
* Where ever we cannot directly use $f$ and $h$, we use above linearisations instead


#### Localization using Kalman Filter
• Assuming control input is given as accelerations and we only wish to know the 2D position, what will then be a reasonable state and control input?
$$
x(k)=\{ p_{x}, p_{y},\dot{p}_{x},\dot{p}_{y} \}
$$
$$
u(k)=\{ \dot{p}\dot{_{x}}, \dot{p}\dot{_{y}} \}
$$
![[Pasted image 20241105095446.png]]
![[Pasted image 20241105095454.png]]
![[Pasted image 20241105095515.png]]

#### Localization using Range and Bearing
We can identify landmarks such as QR-codes and stuff
![[Pasted image 20241112085404.png]]

##### The Robot
We will assume a robot with input
![[Pasted image 20241112085604.png]]
where $a(k)$ is the linear velocity and $\omega(k)$ is the angular velocity.
![[Pasted image 20241112085616.png]]

##### System Process Model
![[Pasted image 20241112085638.png]]

##### Observation/Sensor Model
![[Pasted image 20241112085703.png]]
where $a(i)$ is a mapping between observation number $i$ and landmark $i$, with $p(k)$ observations available at time $k$.
![[Pasted image 20241112085946.png]]

##### Using the EKF
* To use the EKF we need to compute the partial derivatives of $f(x(k),u(k)$ and $h(x(k),k)$
![[Pasted image 20241112090143.png]]
![[Pasted image 20241112090159.png]]
![[Pasted image 20241112090211.png]]

##### Example
EKF with Range and Bearing, example

Here we see that due to noise the filter differs a lot from the real ground path about halfway there:
![[Pasted image 20241112090300.png]]

And now with an extra landmark:
![[Pasted image 20241112090321.png]]

#### Data Associtation
