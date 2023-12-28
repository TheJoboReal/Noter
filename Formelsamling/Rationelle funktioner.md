##### Partielle brøker

Eks på en partiel brøk:
![[Partielle Brøker.excalidraw]]

##### Ægte eller uægte polynomium

***
![[Pasted image 20221109144027.png|150]]
![[Pasted image 20221109144059.png|150]]




##### Integration af rationelle brøker

##### [[Ulige funktioner]]

>Ulige funktion gange ulige funktion giver en lige funktion.
>Ulige funktion gange en lige funktion giver en lige

##### L'Hopital

Hvis man har en funktion med en grænseværdi der fks hedder:
$$
\lim_{x\rightarrow \infty}\frac{x^2}{e^x}=\frac\infty\infty
$$
Uendelig over uendelig er udefineret. Så vi afleder tæller og nævner hver fr sig.
$$
\lim_{x\rightarrow \infty}\frac{x^2}{e^x}=\frac{\frac d{dx}x^2}{\frac d{dx}e^x}=\frac {2x}{e^x}=\text{Vi afleder igen da der stadig vil stå inf over inf ved indsættelse}=\frac{\frac d{dx}2x}{\frac d{dx}e^x}=\frac2{e^x}
$$
En konstant over et uendeligt stort tal vil altid give en ekstremt lille tal, altså får man 0 når man dividere en konstant med uendelig.
$$
\frac2{e^x}=\frac2\infty=0
$$
***
En limit kan også være at x går mod 0 eller lign.
Der er nogle få regler.
$$
\frac00=\text{Undefined}
$$
$$
\frac k0=\infty\rightarrow\text{Alt efter funktionen kan det både være negativ uendelig eller positiv uendelig}
$$
$$
\frac0k=0
$$
$$
\frac\infty\infty=\text{Undefined}
$$
$$
\frac k\infty=0\rightarrow\text{ Eller hvertfald meget meget tæt på nu, men ikke præcist 0}
$$

***

##### Partielt afledte

Det skrives som $\frac{\partial f}{\partial x}=f_x'(x,y)\land\frac{\partial f}{\partial y}=f_y'(x,y)$ hvor vi bruger tegnet partial
I $\frac{\partial f}{\partial x}=f_x'(x,y)$ betragter vi *y* som konstant, og i $\frac{\partial f}{\partial y}=f_y'(x,y)$ betragter vi *x* som konstant 


I øvrigt: $$\frac{\partial f}{\partial x}f_x'(x,y)=f_1(x,y)\lor\frac{\partial f}{\partial a}f_a'(a,b)=f_1(a,b)$$

Og modsat:$$\frac{\partial f}{\partial y}f_y'(x,y)=f_2(x,y)\lor\frac{\partial f}{\partial b}f_b'(a,b)=f_2(a,b)$$

***