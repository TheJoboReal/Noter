En pointer husker kune addressen til et sted i memory og ikke selves variablen. Dvs at pointers altid har samme længde alt efter operativ system, etc 32 eller 64.

```Cpp
int arraySize = 8;

int* myArray;   //Her allokeres memory til myArray.
myArray = new int[arraySize];
```

![[Pasted image 20230308095911.png]]