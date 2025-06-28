---
tags:
  - lecture-note
  - uni
course: Kunstig Inteligens
date: 2025-02-01
---
--- 
#### Off Policy Learning
* Off-policy method: learn the value of a target policy from experience due to a different behavior policy.
* **Target** policy: the policy that we want to learn.
* **Behavior** policy: the policy from which episodes are generated

* More powerful methods.
* We can use data already available: e.g. from an existing controller or from a human expert

#### Importance  Sampling
**Trick** – multiply by 1: Assume that $f(x)$ is really hard or
impossible to calculate, but that $g(x)$ is easy, and that we
know the ratio between $f$ and $g$. If and are always
positive, we can compute $f(x)$ in the following way:
$$
f(x)=f(x) \cdot \frac{g(x)}{g(x)}=\frac{f(x)}{g(x)}\cdot g(x)
$$
Use importance sampling to estimate the target policy from the behavior policy.

![[Pasted image 20241114124646.png]]


Where $A_{k}$ is the chance to do an action in state $S_{k}$.
Where $\pi(A_{k}|S_{k})$ is the chance that out target policy will do the action and $b(A_{k|S_{k}})$ is the chance that our behavioural policy will do the task.

It is common to use the **weighted** importance since the difference between the **behavioural** and the target policy can be very big, which would create problems in the unbiased **ordinary** importance

#### Examples
##### Simple Monte Carlo
Each node is a state where a new action can be taken.
So when looking at the value of a state, we trace a path down a see what would happen.
We can see that monte Carlo runs until it reaches a terminal, and then updates the values.

![[Pasted image 20241114125438.png]]

##### Dynamic Programing
![[Pasted image 20241114125450.png]]

So we are building estimates dynamically, summing all estimates.

##### Simplest TD Method
![[Pasted image 20241114125456.png]]

Here we are only looking one step forward. And we update the values as we goa along instead of waiting till we reach a terminal.

#### Bootstrap and Sample
* **Bootstrapping**: update involves an estimate
	* Monte Carlo does not bootstrap
	* Dynamic Programming bootstraps
	* Temporal Difference bootstraps
* **Sampling vs. sweep**:
	* Monte Carlo samples
	* Dynamic Programming sweeps
	* Temporal Difference samples
Bootstrapping works best if it is over a length of time in which a significant and recognizable state change has occurred

#### Temporal Difference Prediction
![[Pasted image 20241114130120.png]]
Instead of looking at what happens in the episode, we look at happens later.

##### Example: Driving Home
![[Pasted image 20241114131249.png]]
So through this episode we are constantly updating our predicted arrival

We can see that in Monte Carlo we constantly update the total time in each state. 

In Temporal method, we only look one step ahead. This is the same as in the Grid exercise, we only look at the next state and see what the value would be there. This would mean that the TD method could be seen as greedy, as it only looks at the next state and not the whole episode.

---
#### Q-Learning
> See https://www.geeksforgeeks.org/q-learning-in-python/

Q-learning is a popular model-free reinforcement learning algorithm used in machine learning and artificial intelligence applications. It falls under the category of temporal difference learning techniques, in which an agent picks up new information by observing results, interacting with the environment, and getting feedback in the form of rewards.

Q-values are defined for states and actions. Q(S,A)Q(S,A) is an estimation of how good is it to take the action A at the state S . This estimation of Q(S,A)Q(S,A) will be iteratively computed using the ***TD- Update rule***

##### Code Example
```python
def epsilon_greedy_policy(Q, x, y, epsilon = 0.5):
    if np.random.rand() < epsilon:  # Choose random action with probability epsilon
        return random.randrange(len(ACTIONS))
    else:
        return np.argmax(Q[x,y,:])  # Return the action with the highest Q value


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
            Q[current_state[0], current_state[1], current_action] =Q[current_state[0], current_state[1], current_action] + alpha * (reward + gamma * np.max(Q[next_state[0], next_state[1], :]) - Q[current_state[0], current_state[1], current_action])

            # S <- S'
            current_state = next_state

    return Q

Q = Q_learning(world)
display(pd.DataFrame(Q[:,:,0].T))
# Display the actions in each state as ('up', 'down', 'left', 'right')
display(pd.DataFrame(np.array(ACTIONS)[np.argmax(Q, axis=2)].T))
```

![[Pasted image 20241121151155.png]]
#### Example MC vs TD
![[Pasted image 20241114132148.png]]
>So MC is good at observed/past data And TD is good at future data

#### Sarsa 
##### On-Policy Control
![[Pasted image 20241114132545.png]]
Where $Q$ is our estimates.

![[Pasted image 20241114132558.png]]
![[Reinforcement_Learning.pdf#page=151|]]

##### Off-Policy Control
**Q-learning**
![[Pasted image 20241114133224.png]]
We update the estimate based on what the best thing is to do in a state.

![[Reinforcement_Learning.pdf#page=153]]

#### Sarsa vs Q-Learning

Q-Learning looks at the best possible action in each state and picks the one that gives the best reward.
That means if the cake is right next to it, it will go to the right, into the cake.

Sarsa also looks at the best possible action, but also explores to see if an even better path can be found. With an epsilon greedy policy, we have a chance to take a random action instead of going with the current best possible action.