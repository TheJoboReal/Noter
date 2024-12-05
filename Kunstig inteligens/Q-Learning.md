> See [link](https://www.geeksforgeeks.org/q-learning-in-python/?ref=gcse_outind)
#### Q-learning
Q-learning is a model-free reinforcement learning algorithm that helps an agent learn the optimal action-selection policy by iteratively updating Q-values, which represent the expected rewards of actions in specific states. Q-learning falls under the category of [[Temporal Difference]] learning techniques.

The $Q(s,a)$ represents the action value of taking a specific action $a$ in a specific state $s$. $Q(s,a)$ is a table with the same size as our 2D world.
Example if we are in state $(0,0)$ and take action "down", we will have $Q((0,0),\text{"down"})$ which will give us an action value.

##### Q-learning Code Example

Q-Learning (off policy):
$$
Q(S_{t},A_{t}) \leftarrow Q(S_{t},A_{t})+\alpha [R_{t+1}+\gamma \max_{a} Q(S_{t+1},a)-Q(S_{t},A_{t})]
$$
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
For $\epsilon=0.1$, Q-learning (off policy) learns the optimal path, while Sarsa (on policy) learns a safer strategy.

![[Pasted image 20241202010237.png]]

![[Pasted image 20241202010950.png]]


---
