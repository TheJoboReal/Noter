> See [link](https://www.geeksforgeeks.org/priority-queue-set-1-introduction/)

#### Definition
A ***priority queue*** is a type of queue that arranges elements based on their priority values. Elements with higher priority values are typically retrieved or removed before elements with lower priority values. Each element has a priority value associated with it. When we add an item, it is inserted in a position based on its priority value.

There are several ways to implement a priority queue, including using an array, linked list, heap, or binary search tree, [[Binary Tree]] being the most common method to implement. The reason for using Binary Heap is simple, in binary heaps, we have easy access to the min (in min heap) or max (in max heap) and binary heap being a complete binary tree are easily implemented using arrays. Since we use arrays, we have cache friendliness advantage also.

---

#### Properties of Priority Queue
- Every item has a priority associated with it.
- An element with high priority is dequeued before an element with low priority.
- If two elements have the same priority, they are served according to their order in the queue.

In the below priority queue, an element with a maximum ASCII value will have the highest priority. The elements with higher priority are served first.

![[Pasted image 20241211135650.png]]

---

#### Operations of a Priority Queue
A typical priority queue supports the following operations:
##### 1) Insertion in a Priority Queue
When a new element is inserted in a priority queue, it moves to the empty slot from top to bottom and left to right. However, if the element is not in the correct place then it will be compared with the parent node. If the element is not in the correct order, the elements are swapped. The swapping process continues until all the elements are placed in the correct position.

##### 2) Deletion in a Priority Queue
As you know that in a max heap, the maximum element is the root node. And it will remove the element which has maximum priority first. Thus, you remove the root node from the queue. This removal creates an empty slot, which will be further filled with new insertion. Then, it compares the newly inserted element with all the elements inside the queue to maintain the heap invariant.

##### 3) Peek in a Priority Queue
This operation helps to return the maximum element from Max Heap or the minimum element from Min Heap without deleting the node from the priority queue.
