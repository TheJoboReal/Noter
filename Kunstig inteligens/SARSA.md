> See [link](https://www.geeksforgeeks.org/sarsa-reinforcement-learning/)

#### SARSA
Consider the learning algorithm that is just like [[Q-Learning#Q-learning|Q-learning]] except that instead of the maximum over next state–action pairs it uses the expected value, taking into account how likely each action is under the current policy. So the only difference is the update:

**Q-learning**
$$
Q(s_{t},a_{t})= Q(s_{t},a_{t}) + \alpha(r_{t+1}+\gamma \cdot\text{max}_{\alpha}Q(s_{t+1},a)-Q(s_{t},a_{t}))
$$
**SARSA**
$$
Q(s_{t},a_{t})= Q(s_{t}, a_{t}) + \alpha(r_{t+1}+\gamma \cdot Q(s_{t+1},a_{t+1})-Q(s_{t},a_{t}))
$$
Here, the update equation for SARSA depends on the current state, current action, reward obtained, next state and next action. This observation lead to the naming of the learning technique as SARSA stands for **State Action Reward State Action** which symbolizes the tuple (s, a, r, s’, a’).

SARSA algorithm is a slight variation of the popular Q-Learning algorithm. For a learning agent in any Reinforcement Learning algorithm it’s policy can be of two types: [[On-Policy vs off-policy#On-Policy|On-Policy]] or [[On-Policy vs off-policy#Off-Policy|Off-Policy]].
SARSA technique, is an **On Policy** and uses the action performed by the current policy to learn the [[Q-Learning#Q-Value|Q-Value]].  

##### Code Examples
Derived from the following:


![[Pasted image 20241212212053.png|700]]

```python
def sarsa(world, episodes=100, gamma=0.9, alpha=0.3, epsilon=0.5):
    Q = np.full((world.width, world.height, len(ACTIONS)), 0.0) # Initialize the Q table with zeros

    for i in range(episodes):
        current_state = (0, 0)  # Reset the state at the beginning of each episode

        # We now loop through each step in the episode
        while not world.is_terminal(*current_state):

            # Choose A from S using policy derived from Q (e.g., epsilon-greedy)
            current_action = epsilon_greedy_policy(Q, current_state[0], current_state[1], epsilon)

            # Take action A
            next_state = world.get_next_state(current_state, ACTIONS[current_action])

            # observe R, S'
            reward = world.get_reward(*next_state)

            # Choose A' from S' using policy derived from Q (e.g., epsilon -greedy)
            next_action = epsilon_greedy_policy(Q, next_state[0], next_state[1], epsilon)

            # Update Q(S, A)
            Q[current_state[0], current_state[1], current_action] = Q[current_state[0], current_state[1], current_action] + alpha * (reward + gamma * Q[next_state[0], next_state[1], next_action] - Q[current_state[0], current_state[1], current_action])

            # S <- S'
            current_state = next_state

    return Q
```

#### Expected SARSA
> See [link](https://www.geeksforgeeks.org/expected-sarsa-in-reinforcement-learning/?ref=gcse_outind)

