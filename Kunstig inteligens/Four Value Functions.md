![[Pasted image 20241031122813.png]]
![[Four Value Functions 2024-10-31 12.30.10.excalidraw|1000]]


#### Bellman Optimality Equation
* Finding an optimal policy by solving the Bellman Optimality Equation requires the following:
	* accurate knowledge of environment dynamics;
	* we have enough space and time to do the computation;
	* the Markov Property.

* How much space and time do we need?
	* polynomial in number of states (via dynamic programming methods),
	* BUT, number of states is often huge (e.g., backgammon has about 1020 states).

* We usually have to settle for approximations.

* Many RL methods can be understood as approximately solving the Bellman Optimality Equation.

##### Definition
![[Pasted image 20241031124837.png]]

#### Backup Diagram
![[Pasted image 20241031124900.png]]
