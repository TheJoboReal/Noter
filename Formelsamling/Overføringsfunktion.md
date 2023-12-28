##### Overføringsfunktion

$$
H(z)=\frac{Y(z)}{X(z)}=\frac{\sum^N_{i=0}a_{i}z^{-i}}{\sum^N_{i=1}b_{i}z^{-i}}
$$
Hvor $Y(z)$ er den z-transformeret af vores udganssekvens og $X(z)$ er den z-transformeret af vores indgangssekvens.

En overførringsfunktion findes ved at z-transformer en [[Formelsamling Calculus#Differensligninger|differrenslignin]] på formen:
$$
y(n)+\sum^N_{i=1}b_{i}y(n-i)=\sum^N_{i=0}a_{i}x(n-i)
$$
>Se [[Overføringsfunktion Eksempel|Eksempel]] på overføringsfunktion.
>Opgave [[Overføringsfunktion.pdf|Eksempel]]

Og nedenstående en overførringsfunktion fra en [[Formelsamling Calculus#Laplace Transformation Laplace Transformation|Laplace Transformation]]
$$
H(s)=\frac{Y(s)}{X(s)}=\frac{\sum_{i=0}^N a_{i}s^i}{1+\sum_{i=1}^N b_{i}s^i}
$$
***
Nodeplot i matlab. Input overføringsfunktion
```matlab
Pzmap(H)
```
![[Pasted image 20231013140415.png]]

***
![[Pasted image 20230907101254.png]]
Hvor $U(s)$ er det Laplacetransfomeret input og $Y(s)$ er det Laplacetransfomeret output.
![[Pasted image 20230907101415.png]]
![[Pasted image 20230907114342.png]]