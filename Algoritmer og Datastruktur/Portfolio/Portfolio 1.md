#### Opgave 1

```cpp
int recursiveFunc(int N){
    // Base case: if N is less than 1 then return 0
    if(N < 1){
        return 0;
    }
    // If N is odd then include N^2 in the sum
    if(N % 2 != 0){
        return N * N + recursiveFunc(N - 1);
    }
    // If N is even then then we just deitterate
    return recursiveFunc(N - 1);
}
```

#### Opgave 2
