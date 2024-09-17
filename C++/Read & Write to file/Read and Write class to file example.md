
```cpp
#include <iostream>
#include <fstream>
#include <string>

class InnerClass
{
public:
    InnerClass() : innerNumber(0), innerText("") {}

    InnerClass(int num, const std::string& str)
        : innerNumber(num), innerText(str)
    {
    }

    int GetInnerNumber() const { return innerNumber; }
    const std::string& GetInnerText() const { return innerText; }

private:
    int innerNumber;
    std::string innerText;
};

class OuterClass
{
public:
    OuterClass() : outerNumber(0), innerObj() {}

    OuterClass(int num, const InnerClass& obj)
        : outerNumber(num), innerObj(obj)
    {
    }

    int GetOuterNumber() const { return outerNumber; }
    const InnerClass& GetInnerObject() const { return innerObj; }

private:
    int outerNumber;
    InnerClass innerObj;
};

int main()
{
    OuterClass obj(42, InnerClass(10, "Hello, World!"));

    // Serialization - writing object data to a file
    std::ofstream file("data.txt", std::ios::binary);
    file.write(reinterpret_cast<const char*>(&obj), sizeof(obj));
    file.close();

    // Deserialization - reading object data from the file
    std::ifstream inputFile("data.txt", std::ios::binary);
    OuterClass newObj;
    inputFile.read(reinterpret_cast<char*>(&newObj), sizeof(newObj));
    inputFile.close();

    // Use the deserialized object
    std::cout << "Outer Number: " << newObj.GetOuterNumber() << std::endl;
    std::cout << "Inner Number: " << newObj.GetInnerObject().GetInnerNumber() << std::endl;
    std::cout << "Inner Text: " << newObj.GetInnerObject().GetInnerText() << std::endl;

    return 0;
}
```

### Console Output
```bash
Outer Number: 42
Inner Number: 10
Inner Text: Hello, World!
```
