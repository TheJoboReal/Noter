
#### Local Planner
* Local Planner ∆(q1,q2)
	– Checks for a path between q1 and q2
	– Deterministic
	– Trade-off between fast and powerful
* Examples
	– Straight line interpolation between q1 and q2
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

##### Using PRM
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

###### Pros and Cons with PRM
Pros:
* Extendable on the fly
* Hurtigt
* Roadmap er deterministisk
* Probabilistically complete(Med uendelig tid vil den have nok samples til at være komplet)

Cons:
* Potentially missed spots
* Difficult to determine if task is impossible