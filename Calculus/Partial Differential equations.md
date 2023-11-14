
#### Separation of Variables
$$
u(x,u)=f(x)\cdot g(x)
$$
assume solution is separable.
$$
\frac{du}{dy}=y \frac{du}{dx}
$$
$$
f(x)\cdot g'(y)=y f'(x)g(y)
$$
$$
\frac{g'(y)}{y\cdot g(y)}=\frac{f'(x)}{f(x)}
$$
left side only has functions of $y$ and left side only have functions of $x$
Both have to be equal to a constant in order to be equal to each other.
$$
\frac{g'(y)}{y\cdot g(y)}=\frac{f'(x)}{f(x)}=c
$$
$$
\frac{df}{dx}\frac{1}{f}=c
$$
solving for $f$ we get $f=Ae^{cx}$

then solving for $g$ we get $g=Be^{\frac{cy^2}2}$

We then set the equations together
$$
u(x,y)De^{\frac{c(x+y^2)}{2}}
$$
Then using a boundary condition we can get the constant.
$$
u(1,1)=D=1
$$
and 
$$
u(1,1)=c=\frac{2}{3}
$$
$$
u=e^{2/3(x+\frac{y^2}{2})}
$$
We then solve for the partial derivatives
$$
\frac{du}{dx}=\frac{2}{3}e^{\frac{2}{3}(x+\frac{y^2}2)}
$$
$$
\frac{du}{dy}=\frac{2}{3}ye^{\frac{2}{3}(x+\frac{y^2}2)}
$$
***

$$
u(x,u)=f(x)\cdot g(x)
$$
$$
xy \frac{du}{dx}=yu+\frac{du}{dy}
$$
We again look for a separable solution
$$
xyf'g=yfg+fg'
$$
We group together again
$$
xf'=f+\frac{fg'}{yg}
$$
$$
\frac{xf'}{f}=1+\frac{g'}{yg}
$$
On the left we only have functions of $x$ and on the right we only have functions of $y$.
We then solve both side for $f$ and then for $g$
$$
x \frac{df}{dx} \frac{1}{f}=\frac{c}{x}
$$
$$
f=x^c\cdot A
$$
Then for $f$
$$
\frac{dg}{dy} \frac{1}{g} \frac{1}{y}=c-1
$$
$$
\int \frac{1}{g} \, dg=\int (c-1)y \, dy  
$$
$$
g=Be^{(c-1)\frac{y^2}2}
$$
Putting both equations together now
$$
u(x,y)=Dx^e e^{(c-1)\frac{y^2}{2}}
$$
Then we solve for 
#### Separating variables in Wave Equation
<iframe width="560" height="315" src="https://www.youtube.com/embed/EJLympg3XMM?si=5_mP1H_GLtMriyum" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### D'Alembert Solution to Wave Equation
