#### Definition
> See page 92 in [Introduction to Reinforcement Learning](http://incompleteideas.net/book/the-book-2nd.html)

![[Pasted image 20241107121955.png]]
Ved nok erfaring konvergerer Både **Every** og **First** visit

* Learn from experience (no model needed!)
* Estimating state values
* Estimating action values

#### Pseudo Code for estimating First Visit $v_{\pi}$
![[Pasted image 20241107122407.png]]

#### Example
![[Pasted image 20241107122741.png]]
>Vi er ligeglade med hvor mange kort vi trækker, så derfor har vi bare en discount factor på 1. Vi vil bare vinde, og at trække kort giver ikke nogle points eller lign.

![[Pasted image 20241107123518.png]]

#### Features
* Entire rest of episode included
* Only one choice considered at each state (unlike dynamic programming):
* thus, there is an explore/exploit dilemma
* Does not bootstrap from successor states’ values (unlike in dynamic programming). Meaning we instead base next state on the sum of a whole episode, instead of just prior states.
* Time required to estimate one state does not depend on the total number of states
![[Pasted image 20241107123924.png]]

#### Estimation of Action Values
* We want to learn are the optimal action values q*
* **Exploring starts (ES):** Every state-action pair has a non-zero probability of being the starting pair
![[Pasted image 20241107124159.png]]
Where $\pi(s) \in A(s)$ is an arbitrarily policy
Where $Q(s,a)$ is how good it is to go in different directions.

We here also look at how good a state is based on an action.
Example being in one $S_{t}$ and doing the action $A_{t}$ going to the left.

#### Control
* On-policy: learn about policy currently executing.
* Get rid of exploring starts by enforcing soft policies, e.g. Can example be a policy, be greedy on the one armed bandits.
 $$
\pi(a|s) > \text{for all }s \text{ and }a
$$
* Off-policy: learn the value of a target policy from  experience due to a different behavior policy.

![[Pasted image 20241107125153.png]]

#### Monte Carlo Prediction
From the book.
![[Reinforcement_Learning.pdf#page=114]]
