![[Lektion1Opgaver.pdf]]
1.1
Vi finder stopbåndsfrekvensen ved at nomere: $\frac{\omega_{a}}{\omega_{s}}=\frac{6000}{1200}=5$.
Vi kan nu kigge i tabellen og finde et filter som passer.
Vi aflæser i [[Butterworth]] tabellen og ser at en filterorden på 4 passer til vores udregning.
Vi erstatter alle *s* med $\frac{1}{s}$ for at få det nomeret højpasfilter:
$$
H(s)=\frac{1}{(s²+0.7654s+1)(s²+1.8478s+1)}
$$
$$
H(s)=\frac{1}{(\frac{1}{s²}+0.7654\cdot\frac{1}{s}+1)( \frac{1}{s²} +1.8478\cdot\frac{1}{s}+1)}
$$
Vi deler nu nævneren op i to.
$$
H(s)=\frac{1}{(\frac{1}{s²}+0.7654\cdot\frac{1}{s}+1)}\cdot\frac{1}{( \frac{1}{s²} +1.8478\cdot\frac{1}{s}+1)}
$$
Vi forlænger nu brøken med $s²$
$$
H(s)=\frac{s²}{(\frac{s²}{s²}+0.7654\cdot\frac{s²}{s}+s²)}\cdot\frac{s²}{( \frac{s²}{s²} +1.8478\cdot\frac{s²}{s}+s²)}
$$
$$
H(s)=\frac{s²}{(1+0.7654s+s²)}\cdot\frac{s²}{(1 +1.8478s+s²)}
$$
Vi sætter nu brøkken sammen igen
$$
H(s)=\frac{s⁴}{(1+0.7654s+s²)(1 +1.8478s+s²)}
$$
For at denomere sætter vi nu $s=\frac{s}{\omega_{a}}$ 
$$
H(s)=\frac{\left( \frac{s}{\omega_{a}} \right)⁴}{(1+0.7654\cdot\frac{s}{\omega_{a}}+(\frac{s}{\omega_{a}})²)(1+1.8478\cdot\frac{s}{\omega_{a}}+(\frac{s}{\omega_{a}})²)}
$$
Vi kan nu sætte $\omega_{a}=6000$
$$
H(s)=\frac{\left( \frac{s}{6000} \right)⁴}{(1+0.7654\cdot\frac{s}{6000}+(\frac{s}{6000})²)(1+1.8478\cdot\frac{s}{6000}+(\frac{s}{6000})²)}
$$
Vi kan nu plotte det i matlab.
```matlab

```