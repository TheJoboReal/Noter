#### Finite Markov decision processes


#### Discounted return


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
