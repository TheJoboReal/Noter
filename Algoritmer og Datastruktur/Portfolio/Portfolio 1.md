#### Opgave 1

```cpp
int recursiveFunc(int N){
    // If N is less than 1 then return 0
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
Her kalder vi bare vores funktion minus 1, for at kan iterate ned til 1

#### Opgave 2


#### Opgave 3

```cpp
bool recursiveAdditive(std::string s){
    if(s.size() < 3){
        return false;
    }

    if(s[0]-48 + s[1]-48 == s[2]-48){
        return true;
    }

    return recursiveAdditive(s.substr(1));
}
```
Tanken her er at vi bare "fjerner" første element hver gang vi kalder vores funktion. På den måde bevæger vi os igennem vores string fra bunden af. De $-48$ er for at få det fra ascii til ints.
