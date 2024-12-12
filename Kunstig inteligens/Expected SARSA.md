> See [link](https://www.geeksforgeeks.org/sarsa-reinforcement-learning/?ref=gcse_outind)

#### Definition


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

![[Pasted image 20241212212053.png]]
