### Taylor

$$
\hat{f}(x)= \text{Approksimation}
$$
$$
p_{n}(x)=f(c)+\frac{f'(c)\cdot(x-c)^1}{1}+\frac{f''(c)\cdot(x-c)^2}{2}+\frac{f'''(c)\cdot(x-c)^3}{3}+\dots \frac{f^n(c)\cdot(x-c)^y}{y}
$$

Eks:
Find the 4th degree taylor polynomial for $f(x)=\ln(x)$ centered at $c=1$ and use it to approximate $\ln(1.1)$.


Vi finder først de 4 afledte.
$$
f(x)=\ln(x)
$$
$$
f'(x)=\frac{1}{x}
$$
$$
f''(x)=-\frac{1}{x^2}
$$
$$
f'''(x)=\frac{2}{x^3}
$$
$$
f^4(x)=-\frac{6}{x^4}
$$
Vi sætter så $c=1$ ind i alle de afledte, inkl den ikke afledte.

$$
f(1)=0\land f'(1)=1\land f''(1)(-1)\land f'''(1)=2\land f^4(1)=-6
$$


Vi sætter det så ind i formlen.

$$
p_{4}(x)=0+1(x-1)+\frac{-1(x-1)^2}{2}+\frac{2(x-1)^3}{3}+\frac{-6(x-1)^4}{4}
$$
$$
p_{4}(x)=(x-1)\frac{-1}{2}(x-1)^2+\frac{1}{3}(x-1)^3-\frac{1}{4}(x-1)^4
$$
$$

$$