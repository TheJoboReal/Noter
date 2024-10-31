#### Finite Markov decision processes


#### Discounted return
If you have a $\gamma=1$ then 
![[Pasted image 20241031135436.png]]
the numbers directly corresponds to the amount of steps needed to reach one of the terminals(either  (0,0) or (3,3)). In the above case the agent has a $0.5$ chance to get left and a $0.5$ chance to go right. This means that each step has a cost of $-1$. If $\gamma<1$ then it determines the discount or the weight. Meaning if we have $\gamma=0.87$ then we get following:
![[Pasted image 20241031140108.png]]
We see that the step count is pretty much halved from that.
This means that $\gamma$ is the discount you get on a reward. So instead of getting a reward of $-6$ we get a reward of $-3.016$ with a discount of $\gamma=87$.


#### Policies


#### Value Function


#### Bellman Equations
* Finding an optimal policy by solving the Bellman Optimality Equation requires the following:
	* accurate knowledge of environment dynamics;
	* we have enough space and time to do the computation;
	* the Markov Property.

* How much space and time do we need?
	* polynomial in number of states (via dynamic programming methods),
	* BUT, number of states is often huge (e.g., backgammon has about 1020 states).

* We usually have to settle for approximations.

* Many RL methods can be understood as approximately solving the Bellman Optimality Equation.️

#### Iterative Methods
