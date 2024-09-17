##### Fourier Rækker

![[Pasted image 20230905131729.png|300]]
$L$ betegnes er perioden af en funktion og betegnes som $L=\frac{P}{2}$. Hvis man fks grafen ovenover, så kan vi se at den går fra $-1$ til $1$ , dvs at der er to steps fra start til slut. I det tilfælde vil $L$ være $L=\frac{2}{2}=1$.
$$
L=\frac{P}{2}
$$
***

Lad $f$ være en periodisk funktion med periode $2L$ og lad $f(x)$ og $f'(x)$ være stykvis kontinuerlige på intervallet $-L<x<L$. Så vil $f$ have en konvengerende Fourierrække:
$$
f(x)=\frac{a_{0}}{2}+\sum^{\infty}_{n=1}\left( a_{n}\cos\left( \frac{{n\pi x}}{L} \right)+b_{n}\sin\left( \frac{n\pi x}{L} \right) \right)=\sum^{\infty}_{n=-\infty}c_{n}e^{jn\pi x/L}
$$
Med koefficienter $a_{n}, b_{n} \text{ og }c_{n}\text{ givet som}$
$$
a_{n}=\frac{1}{L}\int ^L_{-L}f(x)\cos\left( \frac{n\pi x}{L} \right) \, dx \text{ } n\geq 0
$$
$$
b_{n}=\frac{1}{L}\int ^L_{-L}f(x)\sin\left( \frac{n\pi x}{L} \right) \, dx \text{ } n> 0
$$
$$
c_{n}=\frac{1}{2}(a_{n}-jb_{n})\text{ } n> 0
$$

Se eksempel: [[Opgave 1.excalidraw]]
![[Opgave 1.excalidraw|1600]]