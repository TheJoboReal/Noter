---
tags:
  - lecture-note
  - uni
course: Algoritmer og Datastruktur
date: 2025-02-02
---
--- 
#### Definition
**Singly Linked List**
![[Pasted image 20241118132608.png]]
**Indsætte eller slette indexer**
* En linked list er rigtig god til at indsætte eller slette elementer, da hvis vi fks skal indsætte "Q" mellem "B" og "C", så skal vi kun ændre "B" til at pointe til "Q" og "Q" skal så pointe til "C".

* I et normalt array er vi nød til at skubbe alle indexer der kommer efter det vi har sat ind eller slettet en plads til venstre hvis vi sletter, eller en plads til højre hvis vi indsætter. Det kan blive enormt krævende hvis vi nu har en list med over en million indexer og vi så vil slette index nr 3.

Så at indsætte eller fjerne elementer i en linked list har tidskompleksiteten $O(1)$ hvor at lokalisere et element har en kompleksitet på $O(n)$.

**Lokalisering af indexer**
Når det kommer til at finde et element i vores list, så er arrays meget hurtigere.

---
##### Video
<iframe width="560" height="315" src="https://www.youtube.com/embed/N6dOwBde7-M?si=fABxvj07YJ8InPAL" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---
#### Basic Operations
![[Pasted image 20241118140131.png]]

---
#### Code Example
```cpp
// C++ Program for Implementation of linked list
#include <iostream>
using namespace std;

// Structure for a node in the linked list
struct Node {
    int data;  
    Node* next; 
};

// Define the linked list class
class LinkedList {
     // Pointer to the first node in the list
    Node* head;

public:
    // Constructor initializes head to NULL
    LinkedList() : head(NULL) {}

    // Function to Insert a new node at the beginning of the list
    void insertAtBeginning(int value) {
        Node* newNode = new Node(); 
        newNode->data = value;      
        newNode->next = head;      
        head = newNode;            
    }

    // Function Insert a new node at the end of the list
    void insertAtEnd(int value) {
        Node* newNode = new Node(); 
        newNode->data = value;      
        newNode->next = NULL;       

        // If the list is empty, update the head to the new node
        if (!head) {
            head = newNode;
            return;
        }

        // Traverse to the last node
        Node* temp = head;
        while (temp->next) {
            temp = temp->next;
        }

        // Update the last node's next to the new node
        temp->next = newNode;
    }

    // Function to Insert a new node at a specific position in the list
    void insertAtPosition(int value, int position) {
        if (position < 1) {
            cout << "Position should be >= 1." << endl;
            return;
        }

        if (position == 1) {
            insertAtBeginning(value);
            return;
        }

        Node* newNode = new Node(); 
        newNode->data = value;     

        // Traverse to the node before the desired position
        Node* temp = head;
        for (int i = 1; i < position - 1 && temp; ++i) {
            temp = temp->next;
        }

        // If the position is out of range, print an error message
        if (!temp) {
            cout << "Position out of range." << endl;
            delete newNode;
            return;
        }

        // Insert the new node at the desired position
        newNode->next = temp->next;
        temp->next = newNode;
    }

    // Function to Delete the first node of the list
    void deleteFromBeginning() {
        if (!head) {
            cout << "List is empty." << endl;
            return;
        }

        Node* temp = head; 
        head = head->next; 
        delete temp;      
    }

    // Function to Delete the last node of the list
    void deleteFromEnd() {
        if (!head) {
            cout << "List is empty." << endl;
            return;
        }

        if (!head->next) {
            delete head;   
            head = NULL;   
            return;
        }

        // Traverse to the second-to-last node
        Node* temp = head;
        while (temp->next->next) {
            temp = temp->next;
        }
        
        //  Delete the last node
        delete temp->next; 
        // Set the second-to-last node's next to NULL
        temp->next = NULL; 
    }

    // Function to Delete a node at a specific position in the list
    void deleteFromPosition(int position) {
        if (position < 1) {
            cout << "Position should be >= 1." << endl;
            return;
        }

        if (position == 1) {
            deleteFromBeginning();
            return;
        }

        Node* temp = head;
        for (int i = 1; i < position - 1 && temp; ++i) {
            temp = temp->next;
        }

        if (!temp || !temp->next) {
            cout << "Position out of range." << endl;
            return;
        }
        // Save the node to be deleted
        Node* nodeToDelete = temp->next; 
        // Update the next pointer
        temp->next = temp->next->next;   
         // Delete the node
        delete nodeToDelete;            
    }

    // Function to print the nodes of  the linked list
    void display() {
        if (!head) {
            cout << "List is empty." << endl;
            return;
        }

        Node* temp = head;
        while (temp) {
            cout << temp->data << " -> "; 
            temp = temp->next;
        }
        cout << "NULL" << endl; 
    }
};

int main() {
    // Initialize a new linked list
    LinkedList list1;

    // Insert elements at the end
    list1.insertAtEnd(10);
    list1.insertAtEnd(20);

    // Insert element at the beginning
    list1.insertAtBeginning(5);

    // Insert element at a specific position
    list1.insertAtPosition(15, 3);

    cout << "Linked list after insertions: ";
    list1.display();

    // Delete element from the beginning
    list1.deleteFromBeginning();
    cout << "Linked list after deleting from beginning: ";
    list1.display();

    // Delete element from the end
    list1.deleteFromEnd();
    cout << "Linked list after deleting from end: ";
    list1.display();

    // Delete element from a specific position
    list1.deleteFromPosition(2);
    cout << "Linked list after deleting from position 2: ";
    list1.display();

    return 0;
}

```