> See [link](https://www.geeksforgeeks.org/sarsa-reinforcement-learning/)

#### SARSA
SARSA algorithm is a slight variation of the popular Q-Learning algorithm. For a learning agent in any Reinforcement Learning algorithm it’s policy can be of two types: [[On-Policy vs off-policy#On-Policy|On-Policy]] or [[On-Policy vs off-policy#Off-Policy|Off-Policy]].

SARSA technique, is an **On Policy** and uses the action performed by the current policy to learn the [[Q-Learning#Q-Value|Q-Value]].  
This difference is visible in the difference of the update statements for each technique:

![[Pasted image 20241205154622.png]]

Here, the update equation for SARSA depends on the current state, current action, reward obtained, next state and next action. This observation lead to the naming of the learning technique as SARSA stands for **State Action Reward State Action** which symbolizes the tuple (s, a, r, s’, a’).