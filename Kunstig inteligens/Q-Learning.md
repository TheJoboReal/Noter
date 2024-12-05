> See [link](https://www.geeksforgeeks.org/q-learning-in-python/?ref=gcse_outind)
#### Q-learning
Q-learning is a model-free reinforcement learning algorithm that helps an agent learn the optimal action-selection policy by iteratively updating Q-values, which represent the expected rewards of actions in specific states. Q-learning falls under the category of [[Temporal Difference]] learning techniques.

##### Q-Value
The $Q(s,a)$ represents the action value of taking a specific action $a$ in a specific state $s$. $Q(s,a)$ is a table with the same size as our 2D world.
Example if we are in state $(0,0)$ and take action "down", we will have $Q((0,0),\text{"down"})$ which will give us an action value.

##### Q-learning Code Example
```python
def Q_learning(world, episodes=100, gamma=0.9, alpha=0.3):
    Q = np.full((world.width, world.height, len(ACTIONS)), 0.0) # Initialize the Q table with zeros

    for i in range(episodes):
        current_state = (0, 0)  # Reset the state at the beginning of each episode

        # We now loop through each step in the episode
        while not world.is_terminal(*current_state):

            # Choose A from S using policy derived from Q (e.g., epsilon-greedy)
            current_action = epsilon_greedy_policy(Q, current_state[0], current_state[1])

            # Take action A
            next_state = world.get_next_state(current_state, ACTIONS[current_action])

            # observe R, S'
            reward = world.get_reward(*next_state)

            # Update Q(S, A)
            Q[current_state[0], current_state[1], current_action] = Q[current_state[0], current_state[1], current_action] + alpha * (reward + gamma * np.max(Q[next_state[0], next_state[1], :]) - Q[current_state[0], current_state[1], current_action])

            # S <- S'
            current_state = next_state

    return Q

Q2 = Q_learning(world)
display(pd.DataFrame(Q2[:,:,0].T))
# Display the actions in each state as ('up', 'down', 'left', 'right')
display(pd.DataFrame(np.array(ACTIONS)[np.argmax(Q2, axis=2)].T))
```

This will give us:

![[Pasted image 20241205145125.png]]

Where we have the value of the best action in each state, and below we have the best action in each state.

---

#### Pros and Cons of Q-learning
**Pros**
- Long-term outcomes, which are exceedingly challenging to accomplish, are best achieved with this strategy.
- This learning paradigm closely resembles how people learn. Consequently, it is almost ideal.
- The model has the ability to fix mistakes made during training.
- Once a model has fixed a mistake, there is virtually little probability that it will happen again.
- It can produce the ideal model to address a certain issue.

 **Disadvantages of Q-Learning**
- Drawback of using actual samples. Think about the situation of robot learning, for instance. The hardware for robots is typically quite expensive, subject to deterioration, and in need of meticulous upkeep. The expense of fixing a robot system is high.
- Instead of abandoning reinforcement learning altogether, we can combine it with other techniques to alleviate many of its difficulties. [Deep learning](https://www.geeksforgeeks.org/introduction-deep-learning/) and reinforcement learning are one common combo.

#### Temporal Difference or TD-Update
The Temporal Difference or TD-Update rule can be represented as follows:  
$$
Q(S_{t},A_{t}) \leftarrow Q(S_{t},A_{t})+\alpha [R_{t+1}+\gamma \max_{a} Q(S_{t+1},a)-Q(S_{t},A_{t})]
$$

This update rule to estimate the value of Q is applied at every time step of the agent’s interaction with the environment. The terms used are explained below:

- S: Current State of the agent.
- A: Current Action Picked according to some policy.
- S’: Next State where the agent ends up.
- A’: Next best action to be picked using current Q-value estimation, i.e. pick the action with the maximum Q-value in the next state.
- R: Current Reward observed from the environment in Response of current action.
- $\gamma$(>0 and <=1) : Discounting Factor for Future Rewards. Future rewards are less valuable than current rewards so they must be discounted. Since Q-value is an estimation of expected rewards from a state, discounting rule applies here as well.
- $\alpha$: Step length taken to update the estimation of $Q(S,A)$.

#### Double Q-Learning
Issue: the same value – the maximum of the action-value estimate – is used to select the action and as an estimate of the true value of the action.
Solution: use one estimate to determine action and another to estimate value to avoid
maximization bias.

![[Pasted image 20241202005258.png]]



##### Pros and cons
* Same computational complexity as normal Q-learning, but twice the memory.
* Behavioral policy can use both estimates (average or sum of Q-values).
* Same principle can be applied to Sarsa and Expected Sarsa.

---
#### Sarsa and Q-learning difference

> See [link](https://www.geeksforgeeks.org/differences-between-q-learning-and-sarsa/?ref=gcse_outind)
##### Key differences
* **Q-learning** As an [[On-Policy vs off-policy#Off-Policy|Off-policy]] method, Q-learning updates its Q-values using the maximum possible future reward, regardless of the action taken. This can lead to more aggressive exploration of the environment.

* **[[SARSA#SARSA|SARSA]]** As an [[On-Policy vs off-policy#On-Policy|On-policy]] method, SARSA updates its Q-values based on the actions actually taken by the policy. This typically results in a more cautious approach, balancing exploration and exploitation more conservatively.

##### Update rules
- **Q-learning**: Uses the max operator to update Q-values, focusing on the best possible action.
* **SARSA**: Uses the action taken by the current policy, making the learning process more dependent on the policy's behavior.

##### On-policy vs Off-policy
- **Q-learning**: Off-policy, meaning it learns the value of the optimal policy independently of the agent's actions.
- **SARSA**: On-policy, meaning it learns the value of the policy being followed by the agent.

![[Pasted image 20241205152906.png]]

For $\epsilon=0.1$, Q-learning (off policy) learns the optimal path, while Sarsa (on policy) learns a safer strategy.

![[Pasted image 20241202010237.png]]