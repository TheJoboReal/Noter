#### Weighted Shortest Path
![[Pasted image 20241001092430.png]]
![[Pasted image 20241001092443.png]]
![[Pasted image 20241001092458.png]]
![[Pasted image 20241001092616.png]]

A disadvantage of this is that we need to go through all nodes.
And if we want to start from C instead of A, then we have to start over from scratch.

#### Heuristic
* Use a heuristic to guide the search.
* We need to know both the start and goal.
	- In each step consider not only the cheapest solution, but also the expected remaining distance to the goal minimizing $f(n)=g(n)+h(n)$.
	- The heuristic, h, needs to be optimistic such that it does not estimate a longer distance to the goal than the actual distance.
	- A heuristic could be the distance $d(q,q_{goal})$


* Explore nodes with the lowest estimated cost $f(n)=g(n)+h(n)$, with the actual cost accumulated so far, $g$, and the estimated remaining distance, $h$
![[Pasted image 20241001093304.png]]

