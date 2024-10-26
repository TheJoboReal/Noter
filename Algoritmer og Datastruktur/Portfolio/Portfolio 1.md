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

---
#### Opgave 2
1. I yderste loop *i*,  starter den ved $0$ og har sit max i $2^k\geq N$. Vi kan så solve for *k*:
 $$2^k\geq N\rightarrow k<log_{2}(N)$$
3. det betyder så at kompleksiteten for yderste loop *i* er $O(log_{2}(N))$.

4. I midter loopen *j* starter den også ved $0$ og bliver fordoblet ved hver iteration. Det betyder at tidskompleksiteten for *j* også bliver $O(log_{2}(N))$.

5. I den inderste loop *k*, har vi bare tids-kompleksiteten $N\sqrt{ N }$ da den starter i $0$ og max er $N\sqrt{ N }$.
Den totale tidskompleksitet finder vi så med $$total=O(log_{2}(N))\cdot O(log_{2}(N))\cdot O(N\sqrt{ N })$$
$$
total=O((log_{2}(N))^2)\cdot O(N\sqrt{ N })
$$
$$
total=O(N\sqrt{ N }(log_{2}(N))^2)
$$
Det sidste loop *y* har en kompleksitet på $O(N²)$.
Vi kan så konkludere at funktionen har en kompleksitet på $O(N^2)$, da $O(N^2)$ stiger hurtigere en $O(N\sqrt{ N }(log_{2}(N))^2)$.

---

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

---

#### Opgave 4


---

#### Opgave 5
1. I første loop *i* starter den i $1$ og har en max på $k\leq \sqrt{ N }$. Loopen inkrementeres med $1$ efter hver iteration hvilket betyder at første loop itererer $\sqrt{ N }$ gange
2. I den indre loop *j* starter den i $1$ og har en max på $j<N$. Det betyder så at den itererer $N$.
3. Til sidst har vi loop *k* som starter i $1$ og har en max på $k<N$. Den itererer med $k=k\cdot 2$, hvilket vil sige at den bliver fordoblet. Det vil sige at vi kan finde max ved at isolerer $k$:
$$
2^k<N \rightarrow k<log_{2}(N)
$$
Vi kan så finde den totale tidskompleksitet:
$$
Total=O(\sqrt{ N })\cdot O(N)\cdot O(log_{2}(N))
$$
$$
Total=O(N^{3/2}log_{2}(N))
$$
Det vil sige at den totale tidskompleksitet for funktionen er $O(N^{3/2}log_{2}(N))$.

---

#### Opgave 6
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


---

#### Opgave 7

```cpp
std::vector<int> naturalNumber(int Z) {
	std::vector<int> out(2, 0);
	for (int X = 3; pow(X, 3) <= Z; ++X) {
		for (int Y = 3; pow(X, Y) <= Z; ++Y) {
			if (pow(X, Y) == Z) {
				if(out[0] < X || out[1] < Y){
					out[0] = X;
					out[1] = Y;
				}
			}
		}

	}
	return out;
}
```


---

#### Opgave 8
Vi bruger følgende hjemmelavet funktion til at hashe.
*_table* er en privat variabel som består af et array, og fungerer som hash tabellen. Hashtabellen er lavet som en klasse, hvor der er lavet en masse funktioner til hashe med de forskellige metoder.
```cpp
void hashQuadPlace(char k, int index) {
	int i = 0;
	
	while (_table[(index + i) % _table.size()] != 0) {
		i++;
		i += i * i;
	}
	
	_table[(index + i) % _table.size()] = k;
	
	std::cout << "Loadfactor now at :" << loadFactor() << "%" << std::endl;
}
```

Med det får vi så følgende output:
```bash
0[ ], 
1[ ], 
2[V], 
3[R], 
4[H], 
5[ ], 
6[P], 
7[Q], 
8[E], 
9[C], 
10[F], 
```

---

#### Opgave 9
Vi kan se at i de rekursive kald, kalder vi funktionen to separate gange, hvilket resultere i en tidskompleksitet på $O(2^N)$.

---

#### Opgave 10
```cpp
int logTo(int N, int a = 1){
// Funktion der returner totals-logaritmen af N, og det er en forudsætning, at N er et naturligt tal og en potens af 2.

	if(N == std::pow(2, a)){
		return a;
	}
	return logTo(N, a + 1);
}
```
Funktionen starter med at tjekke om $N=2^a$ er sandt, da det betyder at at vi har fundet logaritmen til inputtet. Funktionen kaldes rekursivt og potensen *a* inkrementeres med $1$ ved hver iteration. Når $N=2^a$ er sandt returneres *a*, da det er det korrekte resultat.

---

#### Opgave 11
