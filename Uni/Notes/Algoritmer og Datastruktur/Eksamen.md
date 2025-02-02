---
tags:
  - lecture-note
  - uni
course: Algoritmer og Datastruktur
---
### Opg1
Vi har her en simpel rekursiv funktion som bare starter ved 0 og så indekserer igennem vores string. Når et match findes inkrementeres vores returværdi.
```cpp
int countLettersInWord(std::string word, char letter, int index){
    if(index > word.size()){
        return 0;
    }

    if(word[index] == letter){
        return countLettersInWord(word, letter, index + 1) + 1;
    }

    return countLettersInWord(word, letter, index + 1);
}

int main(){

    std::cout << countLettersInWord("banana", 'a', 0) << std::endl;

    return 0;
}
```

---
### Opg2
I første for-loop med variablen i, har vi en tidskompleksitet på N, da den kører $i<N$.
I midterste for-loop finder vi tidskompleksiteten ved at isolere $N$ i $j<\log(N)^2$, da det giver os hvor mange gange $j$ maks kører. Med Matlab får $\exp{(j^{(1/2)})}$ 
I inderste for-loop har vi en tidskompleksitet på $N^2$ da den kører $k\leq \sqrt{ N }$.

For at få den totale tidskompleksitet på de nestede for-loops er vi nødt til at tage produktet af dem:
$$
N\cdot \sqrt{ N }\cdot \exp{(j^{1/2})}
$$

I for-loopet i bunden af funktionen finder vi tidskompleksiteten ved at isolere $N$ i $k<N\cdot \sqrt{ N }$, da det giver os det maksimale antal runs. Med matlab finder vi frem til at kompleksiteten bliver $k^{(2/3)}\cdot((3^{(1/2)}\cdot1i)/2 - 1/2)$.

Vi kan se at de nestede for-loops stiger mere ved vær iteration end for-loopen i bunden. Det betyder at det er de nestede for-loops som dominerer selve funktionens tidskompleksitet. Dermed har funktionen en tidskompleksitet på følgende:
$$
N\cdot \sqrt{ N }\cdot \exp{(j^{1/2})}
$$


---
### Opg3


---
### Opg4
Tanken med funktionen er at den rekursivt traversere gennem træet indtil den rammer den korrekte Node, hvorefter den returnerer dataen i den Node. For at sørge for at vi ikke returnerer alle node i træet, så returnerer og appenderer vi kun hvis returstrengen path er tom, da det betyder at ikke har fundet noden endnu. På den måde kan funktionen bevæge sig gennem træet og når den så rammer den korrekte node, så retunerer den sin sti derfra og op til roden.
Jeg har brugt min egen metode til at lave træer og har derfor inkluderet main samt struct Node. Jeg kunne desværre ikke få den til at finde noden i højre side af træet.

```cpp
struct Node{
    int _data;
    Node* left;
    Node* right;
    Node(int val) : _data(val), left(nullptr), right(nullptr){}
};

std::string findRoute(Node* root, int value){
    if(root == nullptr){
        return "";
    }
    std::string path = "";

    if(root->_data == value){
        path.append(":");
        path.append(std::to_string(root->_data));
        return path;
    }

    
    // go through left sub
    path.append(findRoute(root -> left, value));
    if(path[0] == ':'){
        path.append(" ");
        path.append(std::to_string(root->_data));
        return path;
    }


    //go through right sub
    path.append(findRoute(root -> right, value));
    if(path[0] == ':'){
        path.append(" ");
        path.append(std::to_string(root->_data));
        return path;
    }
    return "Node ikke fundet";
}

int main(){

    Node* root = new Node(45);
    root->left = new Node(15);
    root->left->left = new Node(10);
    root->left->left->right = new Node(12);
    root->left->right = new Node(20);
    root->right = new Node(79);
    root->right->left = new Node(55);
    root->right->left->left = new Node(50);
    root->right->right = new Node(90);


    std::cout << findRoute(root, 12) << std::endl;
    return 0;
}
```


---
### Opg5

I delopgave 1 finder vi den korteste path til vær node. Følgende er tabellen over den.
![[Pasted image 20250103150703.png|500]]

Nedenstående har vi minimum spanning tree:
![[Pasted image 20250103151416.png|600]]

---
### Opg6
Her anvendes en funktion som jeg selv har skrevet tidligere. Der indsættes i rækkefølgen 1,2,3 på index 3 med quadprobing.
Nedenstående er klassefunktionen som tilhører en Hash klasse.
```cpp
    void hashQuad(char k) {
        // Using quadratic probing
        int index = k % _table.size(); // Hash function
        int i = 0;
        while (_table[(index + i) % _table.size()] != 0) { // Quadratic probing
            i++;
            i += i * i;
        }
        _table[(index + i) % _table.size()] = k; // Push the key to the table
        std::cout << "Loadfactor now at :" << loadFactor() << "%" << std::endl;
    }
```

Vi kan her se hvordan der probes i rækkefølgen 1,2,3
![[Pasted image 20250103131828.png]]

---
### Opg7

Tabellen er ikke sorteret så prioriteterne ligger i rigtig rækkefølge. Hvis tabellen blev sorteret kunne det dog godt være en prioritetskø. 

---