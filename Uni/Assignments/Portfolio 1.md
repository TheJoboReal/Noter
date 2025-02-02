---
tags:
  - lecture-note
  - uni
course: Algoritmer og Datastruktur
date: 2025-02-02
---
--- 
#### Opgave 1

```cpp
int recursiveFunc(int N){
    // If N is less than 1 then return 0
    if(N < 1){
        return 0;
    }
    // If N is even then then we just deitterate
    return recursiveFunc(N - 1);
    // If N is odd then include N^2 in the sum
    if(N % 2 != 0){
        return N * N + recursiveFunc(N - 2);
    }
}
```
Her kalder vi bare vores funktion af $N-1$, for at kan iterate ned til $1$. Vi siger $N-2$ ved ulige tal for at undgå unødvendige rekursive kald.

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

#### Opgave 4
```cpp
int sumDivisibleBy3Recursive(int N){
    if(N == 3){
        return N;
    }

    int mod = N % 3;

    if(mod == 0){
        return N + sumDivisibleBy3Recursive(N - 3);
    }
    return sumDivisibleBy3Recursive(N - mod);
}
```
Her sætter tjekker vi om $N$ er divisible med $3$, og hvis det er, så kalder vi funktionen igen og lægger $N$ til. Hvis $N$ ikke er divisible med $3$, så deiterater vi med det resterende fra modulus operationen. På den måde undgår vi unødvendige funktionskald.

#### Opgave 7
