#### Definition
![[Pasted image 20230907094228.png]]

#### Advantages
dvantages of working with Bode plots
1. Dynamic compensator design can be based entirely on the Bode plots. (We will do this in the next lecture)
2. Bode plots can be determined experimentally.
3. The Bode plot of a system defined by a series connection is given by the addition of the Bode plots of the individual systems.
4. The use og log scale permits a much wider range of frequencies to be displayed on a single plot than is possible with linear scales.

#### Classes
In the following, three classes of terms of the transfer function are analyzed
##### Class 1
$K_{0}(j\omega )^n$ for $n \in Z$. Poler eller nulpunkter er i origo.
![[Pasted image 20240308091357.png]]
![[Pasted image 20240308091538.png]]

##### Class 2
$(j\omega \tau+1)^{\pm_{1}}$ reelle poler eller nulpunkter.
Ved 90 grader får vi et tal som stiger lineært.
![[Pasted image 20240308091916.png]]

Vi kan se at vi skal starte i 0 grader og slutte i 90 grader:
![[Pasted image 20240308092154.png]]

##### Class 3
Anden ordens overføringsfunktion.
![[Pasted image 20240308092344.png]]
![[Pasted image 20240308092423.png]]


#### Example
Consider the series connection of two systems
![[Pasted image 20240308090909.png]]
![[Pasted image 20240308090921.png]]

#### Matlab
Matlab plot af $H(s)=\frac{1}{s+k}$:
```Matlab
k=1;
s=tf('s');
H=1/(s+k);

figure
bode(H);
figure
impulse(H);
```