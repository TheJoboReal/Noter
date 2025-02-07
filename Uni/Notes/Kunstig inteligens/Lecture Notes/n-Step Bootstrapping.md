---
tags:
  - lecture-note
  - uni
course: Kunstig Inteligens
date: 2025-02-01
---
--- 
#### Definition
The [[Reinforcement_Learning.pdf#page=163|n-step]] [[Temporal Difference|TD]] methods generalize both the demands both [[Monte Carlo Policy|MC]] and [[Temporal Difference#Simplest TD Method|TD single step]] so that one can shift from one to the other smoothly as needed to meet the demands of a particular task. 
*n-step* methods span a spectrum with MC methods at one end and one-step TD methods at the other.
a benefit of n-step methods is that they free you from the tyranny of the time step. With one-step TD methods the same time step determines how often the action can be changed and the time interval over which [[Temporal Difference#Bootstrap and Sample|bootstrapping]] is done. 
*n-step* allows bootstrapping to occur over multiple steps , freeing us from the *tyranny* of the single time step.

The idea of n-step methods is usually used as an introduction to the algorithmic idea of [[Reinforcement_Learning.pdf#page=309|eligibility traces]], which enable bootstrapping over multiple time intervals simultaneously. 

#### TD Prediction

![[Pasted image 20241127185926.png|400]]

The backup diagrams of n-step methods. These methods form a spectrum ranging from one-step TD methods to Monte Carlo methods.
The methods that use n-step updates are still TD methods because they still change an earlier estimate based on how it differs from a later estimate. Now the later estimate is not one step later, but n steps later. Methods in which the temporal difference extends over n steps are called n-step TD methods.

We know that in Monte Carlo-updates the estimate of $v_{\pi}(S_{t})$ is updated in the direction of the complet return:
$$
G_{t}\dot{=}R_{t+1}+\gamma R_{t+2}+\gamma^2 R_{t+3} + \dots + \gamma^{T-t-1} R_{T}
$$
Where $T$ is the last time step of the episode. This quantity can be called the *target* of the update. 

Whereas in Monte Carlo-updates the target is the return, in one-step updates the target is the first reward plus the discounted estimated value of the next state, which we call the one-step return:
$$
G_{t:t+1} \dot{=} R_{t+1}+\gamma V_{t}(S_{t+1})
$$
where $V_{t}:S \rightarrow R$ here is the estimate at time $t$ of $v_{\pi}$.
page

#### n-step TD Pseudo Code

![[Pasted image 20241130133356.png]]

#### n-step Sarsa
The main idea is to simply switch states for actions (state–action pairs) and then use an $\epsilon$-greedy policy.
The backup diagrams for n-step Sarsa like those of n-step TD, are strings of alternating states and actions, except that the Sarsa-ones all start and end with an action rather a state.

![[Pasted image 20241130140417.png]]

##### n-step Sarsa estimating Q

![[Pasted image 20241202011954.png]]

#### Summary
* n-step bootstrapping methods: generalize Temporal-Difference and Monte Carlo learning methods, sliding from one to the other as n increases
	* $n=1$ is TD as in Chapter 6
	* $n=\infty$ is MC as in Chapter 5
	* an intermediate n is often much better than either extreme
	* applicable to both continuing and episodic problems
* There is some cost in computation
	* need to remember the last n states
	* learning is delayed by n steps
	* per-step computation is small and uniform, like TD
* Everything generalizes nicely: Sarsa, Expected Sarsa, Tree Backup
* The very general $n\text{-step}$ $Q(\sigma)$ algorithm includes everything!
