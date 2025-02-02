---
tags:
  - lecture-note
  - uni
course: Algoritmer og Datastruktur
date: 2025-02-02
---
--- 
> See [Link](https://www.geeksforgeeks.org/introduction-to-dijkstras-shortest-path-algorithm/#dijkstras-algorithm)

The algorithm maintains a set of visited vertices and a set of unvisited vertices. It starts at the source vertex and iteratively selects the unvisited vertex with the smallest tentative distance from the source. It then visits the neighbors of this vertex and updates their tentative distances if a shorter path is found. This process continues until the destination vertex is reached, or all reachable vertices have been visited.

#### The Algorithm
1. Mark the source node with a current distance of 0 and the rest with infinity.
2. Set the non-visited node with the smallest current distance as the current node.
3. For each neighbor, N of the current node adds the current distance of the adjacent node with the weight of the edge connecting 0->1. If it is smaller than the current distance of Node, set it as the new current distance of N.
4. Mark the current node 1 as visited.
5. Go to step 2 if there are any nodes are unvisited.

#### Example
Dijkstra’s Algorithm will generate the shortest path from Node 0 to all other Nodes in the graph.
![[Pasted image 20241029195309.png]]
The algorithm will generate the shortest path from node 0 to all the other nodes in the graph.

****For this graph, we will assume that the weight of the edges represents the distance between two nodes.****

As, we can see we have the shortest path from,  
Node 0 to Node 1, from  
Node 0 to Node 2, from  
Node 0 to Node 3, from  
Node 0 to Node 4, from  
Node 0 to Node 6.

Initially we have a set of resources given below :

- The Distance from the source node to itself is 0. In this example the source node is 0.
- The distance from the source node to all other node is unknown so we mark all of them as infinity.

Example: 0 -> 0, 1-> ∞,2-> ∞,3-> ∞,4-> ∞,5-> ∞,6-> ∞.

- we’ll also have an array of unvisited elements that will keep track of unvisited or unmarked Nodes.
- Algorithm will complete when all the nodes marked as visited and the distance between them added to the path. ****Unvisited Nodes:- 0 1 2 3 4 5 6.****
- 