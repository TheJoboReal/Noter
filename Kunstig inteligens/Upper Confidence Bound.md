> See [link](https://www.geeksforgeeks.org/upper-confidence-bound-algorithm-in-reinforcement-learning/?ref=gcse_outind)

**Upper Confidence Bound Action Selection:**  
Upper-Confidence Bound action selection uses uncertainty in the action-value estimates for balancing exploration and exploitation. Since there is inherent uncertainty in the accuracy of the action-value estimates when we use a sampled set of rewards thus UCB uses uncertainty in the estimates to drive exploration.

![[Pasted image 20250105151247.png]]

$Qt(a)$ here represents the current estimate for action _a_ at time _t_. We select the action that has the highest estimated action-value plus the upper-confidence bound exploration term.

![[Pasted image 20250105151538.png]]

$Q(a)$ in the above picture represents the current action-value estimate for action _A_. The brackets represent a confidence interval around $Q*(a)$ which says that we are confident that the actual action-value of action _A_ lies somewhere in this region.

The lower bracket is called the lower bound, and the upper bracket is the upper bound. The region between the brackets is the confidence interval which represents the uncertainty in the estimates. If the region is very small, then we become very certain that the actual value of action _A_ is near our estimated value. On the other hand, if the region is large, then we become uncertain that the value of action _A_ is near our estimated value.

The **Upper Confidence Bound** follows the principle of optimism in the face of uncertainty which implies that if we are uncertain about an action, we should optimistically assume that it is the correct action.

For example, let’s say we have these four actions with associated uncertainties in the picture below, our agent has no idea which is the best action. So according to the UCB algorithm, it will optimistically pick the action that has the highest upper bound i.e. _A_. By doing this either it will have the highest value and get the highest reward, or by taking that we will get to learn about an action we know least about.

![[Pasted image 20250105152548.png]]

Let’s assume that after selecting the action _A_ we end up in a state depicted in the picture below. This time UCB will select the action _B_ since $Q(B)$ has the highest upper-confidence bound because it’s action-value estimate is the highest, even though the confidence interval is small.  

![[Pasted image 20250105152603.png]]

Initially, UCB explores more to systematically reduce uncertainty but its exploration reduces over time. Thus we can say that UCB obtains greater reward on average than other algorithms such as Epsilon-greedy, Optimistic Initial Values, etc.

