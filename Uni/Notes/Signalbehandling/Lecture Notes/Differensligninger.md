For tidsdiskrete systemer
Describe the output ($y$) as a function of an input ($x$) and previous values of $y$.
$$
y(n) = \sum_{i=0}^{N}a_{i}x(n-i) - \sum_{i=1}^{N}b_{i}y(n-i)
$$

#### Første Orden
$N=1$
$$y(n) = a_{0}x(n) + a_{1}x(n-1) - b_{1}y(n-1)$$
#### Anden Orden
$N=2$
$$y(n) = a_{0}x(n) + a_{1}x(n-1) + a_{2}x(n-2) - b_{1}y(n-1) - b_{2}y(n-2)$$

Differensligning med givne koefficienter og ind_signal, beregn ud_signal:
Udregn først for n = 0, brug resultatet til at beregne n = 1, derefter n = 2 osv

Man Indsætter det så i en [[Formelsamling Calculus#Overføringsfunktion|Overføringsfunktion]].

$$
H(z)=\frac{Y(z)}{X(z)}=\frac{\sum^N_{i=0}a_{i}z^{-i}}{\sum^N_{i=1}b_{i}z^{-i}}
$$

$$
H(z)=\frac{Y(z)}{X(z)}=
\frac{a_{0}+a_{1}z^{-1}+a_{2}z^{-2}}{1+b_{1}z^{-1}+b_{2}z^{-2}}=
\frac{a_{0}z^{2}+a_{1}z^1+a_{2}}{z^2+b_{1}z^1+b_{2}}
$$