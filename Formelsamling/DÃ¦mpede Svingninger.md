 ![[Dæmpede-Svingninger anden ordens diff ligninger]]

##### Matlab Input

Eks på matlab løsning af:
$$
2\cdot x''(t)+4\cdot x'(t)+2\cdot x(t)=2t
$$
Med punkterne $x(0)=1$ og $x'(0)=0$.

```matlab
syms x(t)
eqn = 2*diff(x,t,2)+4*diff(x,t)+2*x(t) == 2*t;
Dx=diff(x,t);
dsolve(eqn,[x(0)==1, Dx(0)==0])
```