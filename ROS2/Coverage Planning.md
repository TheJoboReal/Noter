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

#### Cell Decomposition
* Given a workspace with obstacles we can decompose it into a number of convex cells.
![[Pasted image 20241001095024.png]]

![[Pasted image 20241001095045.png]]

##### Adjacency Graph
* Each cell has a node
* Edges between nodes if the two cells share a common boundary
![[Pasted image 20241001095120.png]]
##### Path Planning using Adjacency Graphs
* Determine in which cell the start and goal are located.
* Search through the adjacency graph to find a path.
* Due to the convex cells you can always go on a straight line from a point in the cell to a point on the boundary.

#### Trapezoidal Decomposition
![[Pasted image 20241001095413.png]]
![[Pasted image 20241001095422.png]]
![[Pasted image 20241001095436.png]]
![[Pasted image 20241001095450.png]]
![[Pasted image 20241001095500.png]]
![[Pasted image 20241001095508.png]]
![[Pasted image 20241001095520.png]]

##### Coverage Planning
* Having decomposed into cells we can run through all cells and apply a simple pattern for covering
* Problem: Can be very suboptimal
![[Pasted image 20241001095605.png]]


• We can achieve better performance by
grouping cells together.
![[Pasted image 20241001095651.png]]

#### Boustrophedon Decomposition
* Follows the principles from [[Coverage Planning#Trapezoidal Decomposition|Trapezoidal Decomposition]], but only separates at critical points where the sweep line can be extended in both directions.
![[Pasted image 20241001095811.png]]
![[Pasted image 20241001095818.png]]
![[Pasted image 20241001095830.png]]
![[Pasted image 20241001095850.png]]
![[Pasted image 20241001095859.png]]
![[Pasted image 20241001095910.png]]
![[Pasted image 20241001095922.png]]
![[Pasted image 20241001095931.png]]

---
#### Morse Decomposition
* [[Coverage Planning#Trapezoidal Decomposition|Trapezoidal Decomposition]] is only defined for polygons.
* Based on Morse functions described in Chapter 5 and related to the Canny Roadmap Algorithm

 * A critical point the gradient of the slice function and the obstacle are equal.
 ![[Pasted image 20241001100150.png]]
 ![[Pasted image 20241001100206.png]]
* Each cell can be covered by back and forth motions combined with a contour following
![[Pasted image 20241001100230.png]]
![[Pasted image 20241001100240.png]]
![[Pasted image 20241001100247.png]]

#### Brushfire Decomposition
* The brushfire algorithm can be used to approximate the Generalized Voronoi Diagram
![[Pasted image 20241001100339.png]]![[Pasted image 20241001100348.png]]

---
#### Sensor Based or Incremental Coverage
* Start covering while looking for critical points
* Construct graph (Reeb graph) while covering
* Continue moving to the right
* Reverse and tie up unfinished edges
![[Pasted image 20241001100858.png]]

##### Sensor Based
* Will the sensor based approach always be able to provide full coverage? We can trick it with dynamic objects or with noise. 
* Due to the width of the coverage with it may miss regions.
* Requires an extra turn to detect closing critical points.
![[Pasted image 20241001101235.png]]
