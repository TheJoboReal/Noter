#### Finite Markov decision processes


#### Discounted return
If you have a $\gamma=1$ then 
![[Pasted image 20241031135436.png]]
the numbers directly corresponds to the amount of steps needed to reach one of the terminals(either  (0,0) or (3,3)). In the above case the agent has a $0.5$ chance to get left and a $0.5$ chance to go right. This means that each step has a cost of $-1$. If $\gamma<1$ then it determines the discount or the weight. Meaning if we have $\gamma=0.87$ then we get following:
![[Pasted image 20241031140108.png]]
We see that the step count is pretty much halved from that.
This means that $\gamma$ is the discount you get on a reward. So instead of getting a reward of $-6$ we get a reward of $-3.016$ with a discount of $\gamma=87$.


#### Policies

##### Deterministic Policy
Here we have a deterministic policy where the agent moves in a direction based on its position in the grid:
```python
def deterministic_policy(x, y):
    action_grid = {
        (0, 0): "right",
        (1, 0): "right",
        (2, 0): "right",
        (3, 0): "down",
        (3, 1): "down",
        (3, 2): "down",
        (3, 3): "down",
        (2, 3): "left",
        (1, 3): "left",
        (0, 3): "left",
        (0, 2): "up",
        (0, 1): "up",
        (1, 1): "right",
        (2, 1): "right",
        (2, 2): "down",
        (1, 2): "down"
    }
    return {action_grid[(x, y)]: 1}
```
![[Pasted image 20241031152515.png]]
It can be seen that the direction is chosen based on the $(x,y)$ coordinate and then a chance of $1$ is given to the direction to ensure the agent moves. $\gamma$ is set to $1$ in this example.

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
