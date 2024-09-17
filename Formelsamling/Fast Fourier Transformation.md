##### Fast Fourier Transformation
Hvis en diskret Fourier Transformation udregnes med [[Formelsamling Calculus#Diskret Fourier Transformation|DFT]] formlerne så skal der andvendes $N^{-2}$ komplekse multiplikationer og additioner.

$$
X(m)=Y(m)+W^m_{N}Z\left( m+\frac{N}{2} \right)
$$
$$
X\left( m+\frac{N}{2} \right)=Y(m)-W^m_{N}Z\left( m+\frac{N}{2} \right)
$$
for $m=0,1,\dots,\frac N2-1$
Ovenstående ligninger løses i en såkaldt FFT butterfly

**Fejlmuligheder ved FFT**
Når en DFT udføres kan flere fænomener påvirke kvaliteten af den approksimerede spektrumfunktion
* [[Aliasing]]
* [[Lækage]]
* [[Picket Fencing]]
Disse fænomener vil medføre en fejlagtig analyse af et signals frekvensspektrum, og skal
derfor undgås.