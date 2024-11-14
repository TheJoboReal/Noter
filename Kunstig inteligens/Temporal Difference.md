#### Off Policy Learning
* Off-policy method: learn the value of a target policy from experience due to a different behavior policy.
* **Target** policy: the policy that we want to learn.
* **Behavior** policy: the policy from which episodes are generated

* More powerful methods.
* We can use data already available: e.g. from an existing controller or from a human expert

#### Importance  Sampling
**Trick** – multiply by 1: Assume that $f(x)$ is really hard or
impossible to calculate, but that $g(x)$ is easy, and that we
know the ratio between $f$ and $g$. If and are always
positive, we can compute $f(x)$ in the following way:
$$
f(x)=f(x) \cdot \frac{g(x)}{g(x)}=\frac{f(x)}{g(x)}\cdot g(x)
$$
Use importance sampling to estimate the target policy from the behavior policy.
![[Pasted image 20241114124646.png]]
Where $A_{k}$ is the chance to do an action in state $S_{k}$.
Where $\pi(A_{k}|S_{k})$ is the chance that out target policy will do the action and $b(A_{k|S_{k}})$ is the chance that our behavioural policy will do the task.

It is common to use the **weighted** importance since the difference between the **behavioural** and the target policy can be very big, which would create problems in the unbiased **ordinary** importance

#### Examples
##### Simple Monte Carlo
Each node is a state where a new action can be taken.
So when looking at the value of a state, we trace a path down a see what would happen.
![[Pasted image 20241114125438.png]]

##### Dynamic Programing
![[Pasted image 20241114125450.png]]
So we are building estimates dynamically, summing all estimates.

##### Simplest TD Method
![[Pasted image 20241114125456.png]]
Here we are only looking one step forward.

#### Bootstrap and Sample
* **Bootstrapping**: update involves an estimate
	* Monte Carlo does not bootstrap
	* Dynamic Programming bootstraps
	* Temporal Difference bootstraps
* **Sampling vs. sweep**:
	* Monte Carlo samples
	* Dynamic Programming sweeps
	* Temporal Difference samples

#### Temporal Difference Prediction
![[Pasted image 20241114130120.png]]
Instead of looking at what happens in the episode, we look at happens later.