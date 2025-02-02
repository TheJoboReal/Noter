---
tags:
  - lecture-note
  - uni
course: Robotics
---
#### Local Planner
* Local Planner ∆($q_{1}$,$q_{2}$)
	– Checks for a path between $q_{1}$ and $q_{2}$
	– Deterministic
	– Trade-off between fast and powerful
* Examples
	– Straight line interpolation between $q_{1}$ and $q_{2}$
* Check the line for collision
	– Follow the geometry:
		a Baginski, The Z3 Method for Fast Path Planning in Dynamic Environments
		
![[Pasted image 20241029083944.png]]

##### Construction Step
. V={}, E={}
2. For i = 1 to N
3. q = random config in Cfree
4. V = V ∪ {q}
5. For all q in V
6. Nq = k closests neighbors of q sorted by distance
7. For all q’ in N q
8. If (q,q’) not in E and Δ(q,q’)≠ 𝑁𝑁𝑁𝑁𝑁𝑁
9. E=E ∪ {(q,q’)}

##### Expansion Step
* Find a node in a difficult region and expand it by adding nodes around it.
* What is a difficult region?
	– Depending on the number of nodes close to $q$
	– Distance to nearest connected component not containing $q$
	– Depending on how often the local planner fails.
* Select node q s.t. the probability of selecting $q$ is
$P(q)=\frac{w(q)}{\sum w(q_{i})}$ where $w(q)$ could be based on one of the criteria above

> One can sort the nodes and find all the difficult nodes E.I. taking the $10\%$ most difficult.

**Expand(q)**
1. $q'$=$q$;
2. **Repeat**
3. dir=random direction (normalized)
4. **While** $q'+\epsilon \cdot dir \in C_{free}$ (We step in one direction as long as we have space for rotation, and until a collision occurs)
5. q’+= ε*dir
6. **Until** cnt++ = S
7. V=V U {q’}
8. E=E U Δ(q,q’)
9. Connect to other components

##### Time Usage
![[Pasted image 20241029085305.png]]

##### Using Potential Regions of Motion(PRM)
* The PRM is used in a specific query to find a solution
* Input, $q_{init}$ and $q_{goal}$ which are both collision free
* Properties
	– Accessibility
	– Departability
	– Connectivity

##### Query (Searching for a solution to a specific problem)
Input(E, V, $q_{init}$ , $q_{goal}$ )
1. $q_{init}'$ = closest neighbor for which Δ($q_{init}$ , $q_{init}'$) is collision free
2. $q_{goal}$ ’ = closest neighbor for which Δ($q_{goal}$ ,  $q_{goal}$ ’) is collision free
3. V=V U {$q_{init}$ } U {$q_{goal}$ }
4. E=E U {($q_{init}$ , $q_{init}'$  )} U {($q_{goal}$ , $q_{goal}$ ’ )}
5. P = shortestPath($q_{init}$ , $q_{goal}$ )

##### PRM procedure summed
1. **Initialization**: Choose a set of random potential regions (PROMs) within a bounding box that covers the desired workspace. These PROMs are used as starting points for planning.
2. **Planning**: For each PROM, compute the nearest neighbor (NN) to another randomly chosen PROM in the current configuration space (C-space). This NN is computed using a distance metric (e.g., Euclidean or Manhattan).
3. **Addition of new PROMs**: If the NN is not already in the C-space (i.e., it's not a previously planned motion), add this new point to the C-space and update the bounding box.
4. **Repeat**: Continue steps 2-3 until a goal configuration is reached or a maximum number of iterations is reached.

##### RRT and RRT*
**RRT** will look at its nearest neighbour and at the goal, to then get all the way to the goal. With infinite time, the chance of the algorithm finding a solution will to 100%. The solution might not be the optimal route though.
RRT* will do the same as RRT, but will also update the current path while running, that means that with infinite time RRT* has a 100% chance to find the optimal solution with the shortest path.

This means that RRT* is very good for finding the shortest path to a goal, but is very complex and runs very slow when many nodes are present, thus making RRT preferred.
So RRT should be used if the system is complex and has to be fast.

###### Pros and Cons with PRM
Pros:
* Extendable on the fly
* Hurtigt
* Roadmap er deterministisk
* Probabilistically complete(Med uendelig tid vil den have nok samples til at være komplet)

Cons:
* Potentially missed spots
* Difficult to determine if task is impossible

#### Distance Function
* Ideally it should reflect the probability of a connection being accepted.
	– E.g.: for rigid body motion, translation and rotations could be considered separately 

#### Sampling Strategies
* Uniform Random
* Sample near obstacles OBPRM.
	– Gaussian sampler
* Sampling inside narrow passages
	– Bridge sampler
* Visibility Based
* Manipulability-Based Sampling
* Quasirandom Samling

##### Gaussian Sampling
* Generate random configuration $q_{1}$
* Generate random configuration $q_{2}$ close to $q_{1}$
* If both $q_{1}$ and $q_{2}$ are in collision or both collision free discard both. Otherwise use the collision free configuration
Vi får her flere samples hvor vi gerne vil have dem, altså tæt på kollisioner. Vi har også mindre samples der hvor vi ikke har brug for dem.
![[Pasted image 20241029093049.png]]
> Færre og bedre samples

##### Quasi Random Sampling
• Uniformly Random Samling does not look all that
uniform
Tit har uniform sampling mange huller rundt omkring hvilket 
![[Pasted image 20241029093350.png]]

#### Single Query Planners
* We know the start and goal and wish to find a path as quickly as possible.
* We do not take into account potential later reuse of data.
* Two Examples:
	– Expansive Spaces Trees (EST)
	– Rapidly Exploring Random Trees (RRT)





##### Expansive-Spaces Trees
buildEST(qstart, n)
V={qstart}, E=Ø, T={V,E}
For (i = 1 to n do)
	q = random configuration from V with probability πT(q)
	extendEST(T, q)

**extendEST(T, q)**
q new =random collision free configuration close to q
if (Δ(q, q new ))
	V=V U {qnew }
	E= E U {(q, q new )}

Man er nød til at modelere det lidt så man 

###### $\pi_{T}(q)$
* We wish to explore the areas with the least nodes.
* Ideally we could compute a density by the distance to other nodes.
* Put nodes into a grid.
	– Select a cell at random
	– Select a nodes at random within the cell

![[Pasted image 20241029100038.png]]

##### Using EST as a Planner
* Create two trees (one from start and one from goal)
* In each step see if we can connect the newest in one tree to the closest in the other tree.
Vi finder den node som er tættest på [[Sampling Based Planning#Expansive-Spaces Trees|q_near]] og tager et skridt til den så den bliver til q_new.
![[Pasted image 20241029100129.png]]
![[Pasted image 20241029100150.png]]

##### Rapidly Exploring Random Trees (RRT)
buildRRT(qstart, n)
V={q start}, E=Ø, T={V,E}
For (i = 1 to n do)
	q = random chosen collision free configuration
	extendRRT(T, q)

extendRRT(T, q)
q near = closest neighbor of q in T
qnew = take a step from qnear towards q
if (q new is collision free)
	V=V U {q new}
	E= E U {(q near, q new)}
	return q new
return NULL

###### RRT as Planner
![[Pasted image 20241029100506.png]]

###### RRT Connect
An alternative to the previous method is to try forcing the
trees together by repeating the extendRRT until collision or
connection.
![[Pasted image 20241029100529.png]]

#### Sampling Based Roadmap of Trees (SRT)
* Idea
	– Use a tree based planner ([[Sampling Based Planning#Rapidly Exploring Random Trees (RRT)|RRT]] or EST) instead of the local planner when building a PRM.
* Can be used both as single and multi query planner

##### SRT
* Generate random samples.
* Grow EST or RRT trees from these.
* Try to connect the trees by local planner or by tree based planner.
![[Pasted image 20241029101020.png]]


#### Post Processing
* Objectives
	– Path length
	– Smoothness
	– Clearance


##### Post Processing – Path Length
See if we can connect two neighbors.
![[Pasted image 20241029101327.png]]
![[Pasted image 20241029101349.png]]
![[Pasted image 20241029101355.png]]
Osv indtil til sidst
![[Pasted image 20241029101434.png]]

#### Summary
* Sampling based planners
	– Multiquery: PRM, SRT
	– Single query: EST, RRT, (RRT*)
* Two different schemes:
	– Roadmap is learnt once, used for multiple queries
	– Every query is addressed from scratch
* Tuning the sampling strategy matters
	– Coverage / focused
	– Random vs. psedo random

