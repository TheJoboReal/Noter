![[Pasted image 20230907094228.png]]

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