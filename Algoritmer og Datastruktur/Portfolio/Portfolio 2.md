
#### Opg 1
Først defineres en rekursiv funktion til at slette komma og punktum. Denne funktion bruger vi så på det input man giver hoved-funktionen da vi bruger stringstream som kræver at der ikke er komma eller punktum. Stringstream laver så en liste med alle de ord den finder, hvor vi efterfølgende løber gennem den liste og løbende opdater outputet med det frekvente ord. 
Den nested for-loop som finder det mest frekvente ord har en Big-O notation på $O(N^2)$ da det er en nested loop, så hvis hele funktionen skulle effektiviseres til en $O(N)$ skal disse for loops evt laves til en rekursiv mini funktion.

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


---
#### Opg 2

I denne rekursive funktion starter vi med at få root node, og derefter iterate gennem alle nodes. Vi kigger i hver iteration om både venstre og højre child er en nullptr, hvis ikke, så incrementer vi total antal branches. Til sidst returner vi branches og plus en ny iteration af først venstre og så højre child. Da hele funktionen er rekursiv, betyder det at Big-O bliver $O(N)$.

Træet i figuren er ikke et AVL træ

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

    std::cout << "Branches: " << getBranches(root) << std::endl;
}
```


---
#### Opg 3

I denne opgave bruges følgende hjemmelavet funktion. 
Funktionen er selv skrevet, mens kommentar er lavet med hjælp fra ChatGPT.
Vi kan se at træet har en internal path length på 7.
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

int internalPathLength(Node* root, int depth = 0){
    if(root == nullptr){
        return 0;
    }

    // Check if node has any children
    int pathLength = 0;
    if(root -> left != nullptr || root -> right != nullptr){
        pathLength = depth;
    }

    // Recursively run through the nodes
    int left = internalPathLength(root -> left, depth + 1);
    int right = internalPathLength(root -> right, depth + 1);

    // Return total internal path length
    return left + right + pathLength;
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
	std::cout << internalPathLength(root) << std::endl;
    TraverselLevelOrder(root);
}
```

```bash
11->2->13->1->9->57->25->90->17
```

---
#### Opg 4
Til begge Traversal metoder anvendes nedenstående funktioner.
Der bruges også metoden isAVLtree for at se om træet er et AVL træ, og ud fra outputtet kan vi se at det er et AVL træ.
##### Post Order
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

void TraverselPostOrder(Node* root){
    // Check if node is a leaf node
    if(root == nullptr){
        return;
    }

    // Go through left sub
    TraverselPostOrder(root -> left);

    // Go through right sub
    TraverselPostOrder(root -> right);

    //Print _data in node
    std::cout << root->_data << " ";
}

int main(){
    Node* root = new Node(25);
    root->left = new Node(20);
    root->left->left = new Node(10);
    root->left->right = new Node(22);
    root->left->left->left = new Node(5);
    root->left->left->left->left = new Node(1);
    root->left->left->left->right = new Node(8);
    root->left->left->right = new Node(12);
    root->left->left->right->right = new Node(15);

    root->right = new Node(36);
    root->right->left = new Node(30);
    root->right->left->left = new Node(28);
    root->right->right = new Node(40);
    root->right->right->left = new Node(38);
    root->right->right->right = new Node(48);
    root->right->right->right->right = new Node(45);
    root->right->right->right->right = new Node(50);

    TraverselPostOrder(root);
	std::cout << isAVLtree(root) << std::endl;
}
```
Post order bliver da:
```bash
1 8 5 15 12 10 22 20 28 30 38 50 48 40 36 25
```

##### Pro Order

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

void TraverselPreOrder(Node* root){
    // Check if node is a leaf node
    if(root == nullptr){
        return;
    }

    //Print _data in node
    std::cout << root -> _data << " ";

    // Go through left sub
    TraverselPreOrder(root -> left);

    // Go through right sub
    TraverselPreOrder(root -> right);
}

int main(){
    Node* root = new Node(25);
    root->left = new Node(20);
    root->left->left = new Node(10);
    root->left->right = new Node(22);
    root->left->left->left = new Node(5);
    root->left->left->left->left = new Node(1);
    root->left->left->left->right = new Node(8);
    root->left->left->right = new Node(12);
    root->left->left->right->right = new Node(15);

    root->right = new Node(36);
    root->right->left = new Node(30);
    root->right->left->left = new Node(28);
    root->right->right = new Node(40);
    root->right->right->left = new Node(38);
    root->right->right->right = new Node(48);
    root->right->right->right->right = new Node(45);
    root->right->right->right->right = new Node(50);

	TraverselPreOrder(root);
    // printFormattedTree(root);
}
```
Pro order bliver da:
```bash
25 20 10 5 1 8 12 15 22 36 30 28 40 38 48 50 
```

---
#### Opg 5


![[Pasted image 20241125213916.png]]


---
#### Opg 6

![[Pasted image 20241125213940.png]]