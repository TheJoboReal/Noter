#### Q-learning
Q-Learning (off policy):
$$
Q(S_{t},A_{t}) \leftarrow Q(S_{t},A_{t})+\alpha [R_{t+1}+\gamma \max_{a} Q(S_{t+1},a)-Q(S_{t},A_{t})]
$$

---
#### Double Q-Learning
Issue: the same value – the maximum of the action-value estimate – is used to select the action and as an estimate of the true value of the action.
Solution: use one estimate to determine action and another to estimate value to avoid
maximization bias.

![[Pasted image 20241202005258.png]]

![[Pasted image 20241202005928.png]]

##### Pros and cons
* Same computational complexity as normal Q-learning, but twice the memory.
* Behavioral policy can use both estimates (average or sum of Q-values).
* Same principle can be applied to Sarsa and Expected Sarsa.

---
#### Sarsa and Q-learning difference
For $\epsilon=0.1$, Q-learning (off policy) learns the optimal path, while Sarsa (on policy) learns a safer strategy.

![[Pasted image 20241202010237.png]]

![[Pasted image 20241202010950.png]]


---
