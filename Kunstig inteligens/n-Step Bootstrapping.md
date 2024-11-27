#### Definition
The *n-step* [[Temporal Difference|TD]] methods generalize both the demands both [[Monte Carlo Policy|MC]] and [[Temporal Difference#Simplest TD Method|TD single step]] so that one can shift from one to the other smoothly as needed to meet the demands of a particular task. 
*n-step* methods span a spectrum with MC methods at one end and one-step TD methods at the other.
a benefit of n-step methods is that they free you from the tyranny of the time step. With one-step TD methods the same time step determines how often the action can be changed and the time interval over which [[Temporal Difference#Bootstrap and Sample|bootstrapping]] is done. 
*n-step* allows bootstrapping to occur over multiple steps , freeing us from the *tyranny* of the single time step.

The idea of n-step methods is usually used as an introduction to the algorithmic idea of [[Reinforcement_Learning.pdf#page=309|eligibility traces]], which enable bootstrapping over multiple time intervals simultaneously. 

#### TD Prediction


![[Pasted image 20241127185926.png|400]]
The backup diagrams of n-step methods. These methods form a spectrum ranging from one-step TD methods to Monte Carlo methods.