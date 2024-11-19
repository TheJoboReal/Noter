
#### Opg 1

```cpp
#include <iostream>
#include <vector>
#include <string>
#include <array>
#include <cmath>
#include <sstream>
#include <bits/stdc++.h>

// OPG 1

std::string deletePunktuation(std::string s, int index = 0){
    if(index == s.size()){      // Base case
        return "";        // Return empty string
    }
    char currentChar = s[index];    // Get current character
    if(std::isalpha(currentChar) || std::isspace(currentChar)){     // If current character is a letter
        return currentChar + deletePunktuation(s, index + 1);       // Return current character and call function again
    } else {
        return deletePunktuation(s, index + 1);
    }
}

std::string wordFrequenzy(std::string sentence){
    std::vector<std::string> words;
    std::string word;
    std::string the_word;
    std::string s = deletePunktuation(sentence);
    std::transform(s.begin(), s.end(), s.begin(),::tolower);
    int count = 0;
    int current_count = 0;


    std::stringstream ssword(s);
    while(ssword >> word){
        words.push_back(word);
    }


    for(int i=0; i < words.size(); i++){
        current_count = 0;
        for(int j=0; j < words.size(); j++){
            if(words[j] == words[i]){
                current_count ++;
            }
        }
        if(current_count > count){
            count = current_count;
            the_word = words[i];
        }
    }
    return the_word;
};

int main(){
    std::cout << wordFrequenzy("Hej med dig, jeg er sgu hej hej hej ret med. sej men med dig og") << std::endl;
}
```

#### Opg 2

```cpp
#include <iostream>
#include <queue>
#include <cmath>
#include <string>

struct Node{
    int _data;
    Node* left;
    Node* right;
    Node(int val) : _data(val), left(nullptr), right(nullptr){}
};

void perfectTree(int height, Node* root, int index = 1) {
    if (height == 0) {
        return;
    }

    root->left = new Node(index + 1);
    root->right = new Node(index + 2);

    perfectTree(height - 1, root->left, index + 2);
    perfectTree(height - 1, root->right, index + 2 + std::pow(2, height - 1));
}

 int getBranches(Node* root){
    int branches = 0;
    // Check if node is a leaf node
    if(root == nullptr){
        return 0;
    }

    if(root->left != nullptr && root->right != nullptr){        // Check if node has two children
        branches++;
    }

    // Go through left sub
    branches += getBranches(root -> left);

    // Go through right sub
    branches += getBranches(root -> right);

    return branches;
 }

int main(){
    Node* root = new Node(1);
    perfectTree(3, root);
    std::cout << "Branches: " << getBranches(root) << std::endl;
}
```


#### Opg 3

```cpp
#include <iostream>
#include <queue>
#include <cmath>
#include <string>

struct Node{
    int _data;
    Node* left;
    Node* right;
    Node(int val) : _data(val), left(nullptr), right(nullptr){}
};

void TraverselLevelOrder(Node* root) {
    if (!root) return;      // Check if root is empty
    std::queue<Node*> q;    // Initialize a queue to store the nodes
    q.push(root);           // Push the root node into the queue
    while (!q.empty()) {    // While the queue is not empty
        Node* curr = q.front(); // Get the front node in the queue
        q.pop();            // Pop the front node
        std::cout << curr->_data << " ";    // Print the node value
        if (curr->left) q.push(curr->left);     // Push the left child into the queue
        if (curr->right) q.push(curr->right);   // Push the right child into the queue
    }
}

int main(){
    Node* root = new Node(11);
    root->left = new Node(2);
    root->left->left = new Node(1);
    root->left->right = new Node(9);
    root->left->left = new Node(1);
    root->right = new Node(13);
    root->right->right = new Node(57);
    root->right->right->left = new Node(25);
    root->right->right->left->left = new Node(17);
    root->right->right->right = new Node(90);
    // printFormattedTree(root);

    TraverselLevelOrder(root);
}
```

```bash
11->2->13->1->9->57->25->90->17
```

