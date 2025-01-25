Først definere vi en klasse.
![[Pasted image 20230329085427.png]]

Herunder kalder vi person klassen inde i en ny class, som nu har adgang til alt public. Vi skal så manuelt kalde person klassens konstruktor.
Vi kalder også privat variablerne med ``: person(name)``.

Man kan også nedarve alle konstrukters med 
```cpp
class student
	: public person{
	using person::person
	};
```

![[Pasted image 20230329085454.png]]
