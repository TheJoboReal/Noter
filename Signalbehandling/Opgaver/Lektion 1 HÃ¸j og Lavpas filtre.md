![[Lektion1Opgaver.pdf]]
1.1Butterworth
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
clear

s= tf('s')

h=(s/6000)^4/((1+0.7654*(s/6000)+(s/6000)^2)*(1+1.8478*(s/6000)+(s/6000)^2));

bode(h)

f3 = @(x) sin(x * 10000);

t = 1:0.0000001:1.15;

  

lsim(h,f3(t),t)
```
![](file:////tmp/ConnectorClipboard7636333817782471186/image16946836001820.png)

5.000Hz
![](file:////tmp/ConnectorClipboard7636333817782471186/image16946852926470.png)

10.000Hz
![](file:////tmp/ConnectorClipboard7636333817782471186/image16946850999200.png)
Vi kan se at ved en frekvens på 10.000Hz så bløder den helt ud fordi den frekvens er uden for vore dæmpnings område.
***
1.2 Chebyshev
