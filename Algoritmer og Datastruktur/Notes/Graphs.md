#### Definition
>  <iframe width="560" height="315" src="https://www.youtube.com/embed/-VgHk7UMPP4?si=FPi5_lBQ5us1ILpd" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

* Adjacency matrix
	– God til dense (tætte) grafer
	– Pladskompleksitet Θ($V^2$ )
* Adjacency list
	– God til sparse (tynde) grafer
	– Pladskompleksitet O(|E|+|V|)

#### Adjacency matrix
<iframe width="560" height="315" src="https://www.youtube.com/embed/B28xAWEerK8?si=MLk20Ep05kulrm5r" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

>Big-O for størrelseskompleksitet på en adjacency-matrix er $O(V^2)$ da det er en matrice med størrelsen $\text{rows} \cdot \text{collums}$.
>Big-O kompleksiteten på at tjekke en edge er $O(1)$ da vi bare direkte returnere sandt eller falsk på den edge.

##### Code Example
```cpp
class AdjacencyMatrix{
    private:
        int _size;
        std::vector<std::vector<int>> _matrix;
        std::vector<Node> _nodes;

    public:
        AdjacencyMatrix(int size) : _size(size), _matrix(size, std::vector<int>(size, 0)) {}        // Constructor for AdjacencyMatrix class

        void addNode(Node node){
            _nodes.push_back(node);
        };

    void addEdge(int src, int dst){
        _matrix[src][dst] = 1;    // Set the edge between the two nodes
    };

    bool checkEdge(int src, int dst){
        // Check if there is an edge between the two nodes
        if(_matrix[src][dst] == 1){
            return true;
        }
        else{
            return false;
        }
    };

    void print(){

        std::cout<< "  ";
        for(int nodes = 0; nodes < _nodes.size(); nodes++){
            std::cout << static_cast<char>(_nodes[nodes].getData()) << " ";     // Print the nodes
        }
        std::cout << std::endl;

        for(int i = 0; i < _size; i++){
            std::cout << static_cast<char>(_nodes[i].getData()) << " ";
            for(int j = 0; j < _size; j++){
                std::cout << _matrix[i][j] << " ";
            }
            std::cout << std::endl;
        }
    
    };

};
```

#### Adjacency List
<iframe width="560" height="315" src="https://www.youtube.com/embed/ee6zIj4J3-Y?si=praJDcCuqU73a9A-" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

En adjacency list består af en list med linked list's indeni, hvor hver [[Linked Lists|linked lists]] har en unik node som sin header. Det kan fks være A, B og C.

En adjacency list har en runtime kompleksitet på $O(v)$, når man tjekker efter en edge.
Den har en størrelses kompleksitet på $O(v+e)$ 
##### Code Example
```cpp
class AdjacencyList{
    private:
        std::vector<std::vector<Node>> _alist;

    public:

    void addEdge(int src, int dst){
        _alist[src].push_back(_alist[dst][0]);
    }

    void addNode(Node node){
        std::vector<Node> currentList;
        currentList.push_back(node);
        _alist.push_back(currentList);
    }

    bool checkEdge(int src, int dst){
        std::vector<Node> currentList = _alist[src];
        Node dstNode = _alist[dst][0];

        for(int node=0; node < currentList.size(); node++){
            if(currentList[node].getData() == dstNode.getData()){
                return true;
            }
        }
        return false;
    }

    void print(){
        std::cout << "hello" << std::endl;
        for(int i=0; i < _alist.size(); i++){
            std::cout << std::endl;
            for(int j=0; j < _alist[i].size(); j++){
                char current_node = _alist[i][j].getData() ;
                std::cout << static_cast<char>(current_node) << "->";
            }
        }
        std::cout << std::endl;
    }
};
```

#### Topologisk sortering
* En ordning af noder i en directed, acyklisk graf, således at hvis der er en sti fra 𝑣𝑖 til 𝑣𝑗, så skal $v_{j}$ komme efter $v_{i}$ i sorteringen.
* Cykliske grafer kan ikke sorteres topologisk.
* Der kan være mere end en løsning.
* Alle noder skal besøges.

![[Pasted image 20241111142416.png]]
Pilende betyder ikke at det er den eneste vej til den node.
Fks kan man se at den første sortering springer fra $V_{3}$ til $V_{7}$. Pilene betyder at det er et requirement at man har været ved den ene. Det betyder at for at komme til $V_{2}$, så skal man komme fra $V_{1}$.

##### Pseudokode - topsort
![[Pasted image 20241111145125.png]]

![[Pasted image 20241111145238.png]]