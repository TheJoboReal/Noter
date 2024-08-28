**Eksempel**
$$
y(n)=-\frac{1}{4}y(n-1)-\frac{1}{8}y(n-2)=-x(n-1)+5x(n-2)
$$
Opstiller overføringsfunktion
$$
H(z)=\frac{Y(z)}{X(z)}=\frac{-z^{-1}+5z^{-2}}{-\frac{1}{4}z^{-1}-\frac{1}{8}z^{-2}+1}
$$
Forlænger brøk med $z^2$
$$
\frac{z^2(-z^{-1}+5z^{-2})}
{z^2\left( -\frac{1}{4}z^{-1}-\frac{1}{8}z^{-2}+1 \right)}
=
\frac
{-z+5}
{-\frac{1}{4}z-\frac{1}{8}+z^2}
$$
Dermed er overføringsfunktionen af $y(n)=H(z)=\frac{-z+5}{-\frac{1}{4}z-\frac{1}{8}+z^2}$ 
