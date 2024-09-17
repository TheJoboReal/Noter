##### Matched z-transformation
For et første ordens system:
$$
H(s)=\frac{\omega_{a}}{s+\omega_{a}}
$$
gælder:
$$
H(z)=\frac{1}{1-e^{\sigma_{1}T}z^{-1}}
=
\frac{a_{0}}{1+b_{1}z^{-1}}
$$
hvor $b_{1}=-e^{\sigma_{1}T}$ og $a_{0}=1+b_{1}$
Og hvor $\sigma_{a}=s \cdot w_{a}$ hvor $s$ er polen og hvor $\omega_{a}=f_{a}\cdot_{2}\pi$.
$f_{a}$ er afskæringsfrekvensen og $f_{s}$ er samplesekvens
	
***
For et andet ordens lavpasfilter:
$$
H(z)=\frac{a_{0}}{1+b_{1}z^{-1}+b_{2}z^{-1}}
$$
hvor $b_{1}=-2e^{\sigma_{1}T}\cos(\sigma{1}T)$ og $b_{2}=e^{2\sigma_{i}T}$

Hvis DC forstærkningen for lavpasfiltret skal være 0 dB så gælder det at:
$$a_{0}=1+b_{1}+b_{2}$$
Og hvor $\sigma+j \omega_{a}$ er den denominerede pol, hvor $\omega_{a}=f_{a}\cdot_{2}\pi$.
$f_{a}$ er afskæringsfrekvensen og $f_{s}$ er samplesekvens

>Se [[Matched z-transformation.pdf|Eksempel]]