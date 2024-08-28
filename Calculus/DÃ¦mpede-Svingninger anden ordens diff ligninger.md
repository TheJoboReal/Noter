>Video for inhomogene ligninger:
><iframe width="560" height="315" src="https://www.youtube.com/embed/P3fc6v191mA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

>Se [[Differential Equations.pdf|Eksempel]]
# Dæmpede Svingninger

$$a \cdot y'' + b \cdot y' + c \cdot y = 0$$
Gæt på løsning
$$\begin{align}
y(t) & = e^{rt} \\
y'(t) & = r \cdot  e^{rt} \\
y''(t) & = r^2 \cdot e^{rt}
\end{align}$$


Sætter ind
$$a \cdot r^2 \cdot e ^{rt} + b \cdot r \cdot e^{rt} + c \cdot e^{rt} = 0$$

Sætter $e^{rt}$ uden for parentes
$$(a \cdot r^2 + br + c) \cdot e^{rt} = 0$$

Parentesen er et andengradspolynomie. 

Polymoniets rødder er funktionernes 

#### Rødder, dæmpningstype 
Overdæmpet: to reelle rødder.
$$y(x) = A \cdot e^{r_1t} + B \cdot e^{r_2t}$$
Kritisk Dæmpet: én dobbeltrod. Altså en løsning.
$$y(x) = A \cdot e^{rx} + B \cdot x \cdot e^{rx}$$

Underdæmpet: Når der kun er imaginære løsninger.
$$y(x) = A \cdot e^{kx} \cdot \cos(\omega x) + B\cdot e^{kx} \cdot \sin(\omega x)$$
$$r = k \pm \omega i$$

### Kvalificerede gæt.

![[f13f7f2c640e494ea01e5afff1f86f9b.jpg]]
