#### Stack in c++
```cpp
class Stack{
    private:
        std::vector<char> stack;
    public:
        void push(char c){
            stack.push_back(c);
        };
        char pop(){
            char c = stack.back();
            stack.pop_back();
            return c;
        };
        bool isEmpty(){
            if(stack.size() == 0){
                return true;
            }
            else return false;
        };
};
```
