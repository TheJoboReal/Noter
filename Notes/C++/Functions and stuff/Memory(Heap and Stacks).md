#Stacks
Stacks er når vi laver ints inde i funktioner og holder fast i hvor programmet er kommet til når det kører.
Stack ints bliver slettet fra hukkommelsen så snart man er out of scope, altså kommet ud af den funktion som den eksisterede i.
```Cpp
{
	int a=100;
}
```

#Heap
Heaps er langsomme
For at oprette en int i heap bruges. Hvor * er en pointer som peger til hvor vores integer ligger så den kan finde tilbage til den.
```Cpp
int *a=new int;

delete a[];
```

```Cpp
int *a=new int[500];   //Her allokeres plads til 500 integers.

delete a[];
```
