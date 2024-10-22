> See [Binary Tree Traversal](https://www.geeksforgeeks.org/tree-traversals-inorder-preorder-and-postorder/#inorder-traversal)
![[Tree-Traversal-Techniques.webp]]

#### Traversal
***Tree Traversal techniques*** include various ways to visit all the nodes of the tree. Unlike linear data structures (Array, Linked List, Queues, Stacks, etc) which have only one logical way to traverse them, trees can be traversed in different ways.
![[Pasted image 20241022095755.png]]

##### In Order Traversal
In order Traversal. An in order traversal first visits the left child (including its entire subtree), then visits the node, and finally visits the right child (including its entire subtree). The binary search tree makes use of this traversal to print all nodes in ascending order of value.

![[Pasted image 20241022100657.png]]
- In the case of binary search trees (BST), Inorder traversal gives nodes in non-decreasing order.
- To get nodes of BST in non-increasing order, a variation of Inorder traversal where Inorder traversal is reversed can be used.
- Inorder traversal can be used to evaluate arithmetic expressions stored in expression trees.
###### Code Example
```cpp
#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
    Node(int val) : data(val), left(nullptr), right(nullptr) {}
};

// Function to perform inorder traversal
void inorderTraversal(Node* root) {
  
    // Empty Tree
    if (root == nullptr)
        return;
  
    // Recur on the left subtree
    inorderTraversal(root->left);
 
    // Visit the current node
    cout << root->data << " ";
  
    // Recur on the right subtree
    inorderTraversal(root->right);
}

int main() {
    Node* root = new Node(1);
    root->left = new Node(2);
    root->right = new Node(3);
    root->left->left = new Node(4);
    root->left->right = new Node(5);
    inorderTraversal(root);
    return 0;
}

```

##### Preorder Traverse
Preorder traversal visits the node in the order: ***Root -> Left -> Right***

![[Pasted image 20241022095839.png]]
* Preorder traversal is used to create a copy of the tree.
* Preorder traversal is also used to get prefix expressions on an expression tree

###### Code Example
> Preorder(tree)
> 
> - Visit the root.
> - Traverse the left subtree, i.e., call Preorder(left->subtree)
> - Traverse the right subtree, i.e., call Preorder(right->subtree

```cpp
#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
    Node(int x) {
       data = x;
       left = right = nullptr;
    }
};

// Function to perform preorder traversal
void preorderTraversal(Node* root) {
    // Base case
    if (root == nullptr)
        return;
  
    // Visit the current node
    cout << root->data << " ";
  
    // Recur on the left subtree
    preorderTraversal(root->left);
  
    // Recur on the right subtree
    preorderTraversal(root->right);
}

int main() {
    Node* root = new Node(1);
    root->left = new Node(2);
    root->right = new Node(3);
    root->left->left = new Node(4);
    root->left->right = new Node(5);
    preorderTraversal(root);
    return 0;
}
```

##### Postorder Traversal
Postorder traversal visits the node in the order: ***Left -> Right -> Root***
It starts in the highest child node to the left and traverses all children of one node from left to right, and then the parent node. It then repeats the process from to the right on the highest node.

![[Pasted image 20241022100224.png]]
- Postorder traversal is used to delete the tree. See [the question for the deletion of a tree](https://www.geeksforgeeks.org/write-a-c-program-to-delete-a-tree/) for details.
- Postorder traversal is also useful to get the postfix expression of an expression tree.
- Postorder traversal can help in garbage collection algorithms, particularly in systems where manual memory management is used

###### Code Example
> Algorithm Postorder(tree)
> 
> - Traverse the left subtree, i.e., call Postorder(left->subtree)
> - Traverse the right subtree, i.e., call Postorder(right->subtree)
> - Visit the root

```cpp
#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
    Node(int x) {
       data = x;
       left = right = nullptr;
    }
};

// Function to perform postorder traversal
void postorderTraversal(Node* node) {
  
    // Base case
    if (node == nullptr)
        return;
  
    // Recur on the left subtree
    postorderTraversal(node->left);
  
    // Recur on the right subtree
    postorderTraversal(node->right);
  
    // Visit the current node
    cout << node->data << " ";
}

int main() {
    Node* root = new Node(1);
    root->left = new Node(2);
    root->right = new Node(3);
    root->left->left = new Node(4);
    root->left->right = new Node(5);
    postorderTraversal(root);
    return 0;
}
```

##### LevelOrder Traversal
***Level Order Traversal*** visits all nodes present in the same level completely before visiting the next level.

![[Pasted image 20241022100955.png]]
- Level Order Traversal is mainly used as Breadth First Search to search or process nodes level-by-level.
- Level Order traversal is also used for [Tree Serialization and Deserialization](https://www.geeksforgeeks.org/serialize-deserialize-binary-tree/) 

###### Code Example
>> LevelOrder(tree)
> 
> - Create an empty queue Q
> - Enqueue the root node of the tree to Q
> - Loop while Q is not empty
>     - Dequeue a node from Q and visit it
>     - Enqueue the left child of the dequeued node if it exists
>     - Enqueue the right child of the dequeued node if it exists

```cpp
#include <iostream>
#include <queue>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
    Node(int x) {
      data = x;
      left = right = nullptr;
    }
};

// Prints level order traversal
void levelOrderTraversal(Node* root) {
    if (!root) return;
    queue<Node*> q;
    q.push(root);
    while (!q.empty()) {
        Node* curr = q.front();
        q.pop();
        cout << curr->data << " ";
        if (curr->left) q.push(curr->left);
        if (curr->right) q.push(curr->right);
    }
}

int main() {
    Node* root = new Node(1);
    root->left = new Node(2);
    root->right = new Node(3);
    root->left->left = new Node(4);
    root->left->right = new Node(5);
    root->right->right = new Node(6);
    levelOrderTraversal(root);
    return 0;
}
```