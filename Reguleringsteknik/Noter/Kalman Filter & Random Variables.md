#### Definition
How is it possible to combine noisy measurements, and and an uncertain system model to provide a "good" state estimate?
![[Pasted image 20240503122415.png]]
The solution is a Kalman filter that relies on a stochastic model, and noisy measurements.

#### Random Variables
To introduce uncertainty and noise in the considered system models, we introduce random variables.
Let X be a random variable describing the outcome of rolling a fair dice. The fair dice is characterized by
*  It has 6 different outcomes {1, 2, 3, 4, 5, 6}.
*  The probability of getting each of the six outcomes is the same, i.e., Pr(X = 4) = 1  .
I The outcome of each roll of the dice is independent.
To describe the above dice mathematically, a probability mass function pX is associated
to X that determines the probability that X equals x, i.e.,

![[Pasted image 20240503123158.png]]
![[Pasted image 20240503123208.png]]
variance er hvor meget varierer resultatet.

![[Pasted image 20240503123358.png]]
