#### Definition
Consider the learning algorithm that is just like [[Q-Learning#Q-learning|Q-learning]] except that instead of the maximum over next state–action pairs it uses the expected value, taking into account how likely each action is under the current policy:

![[Pasted image 20241204133720.png]]
So the only difference is the update 