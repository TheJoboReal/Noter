
***
### Generelt Algebra

***
$$
\sqrt{ a^{2} +a^{2}}=a\cdot \sqrt{ 2 }
$$
***
Centroid point(Centerpoint of n points).
$$
c=\frac{\sum^n_{i=0}P_{i}}{n}
$$

***


### Kordinatsystemer
##### [[Cylendrical Cordinates]]

![[Pasted image 20221031235630.png]]
***
Form.
$$
Cyl(R,\Theta,z)
$$
***
Modulus.(Længde ud til punktet i 3 dimensioner.)
$$
\rho=r=\sqrt{x^2+y^2+z^2}
$$

***
Elevation.
$$
\Theta=tan^{-1}(\frac yx)
$$

***
Cylendrisk



##### [[Polar cordinates]]

Tilbage til kartesiske kordiater.
$$
x=r\cdot sin\Theta\cdot cos\phi
$$
$$
y=r\cdot sin\Theta\cdot sin\phi
$$
$$
z=r\cdot cos\Theta
$$

![[degrad.gif]]
![[Pasted image 20230101161255.png]]

##### [[Spherical Cordinates]]

![[Pasted image 20221031235507.png]]
Form.
$$
Sph=(R,\Theta,\phi)
$$

***
Modulus.(Længde ud til punktet i 3 dimensioner.)
$$
\rho=R=\sqrt{x^2+y^2+z^2}
$$
***
Mudulus 2d
$$
r=\sqrt{x^2+y^2}
$$

***
Polar Vinkel.(Vinkel mellem Z-aksen og punkt)
$$
\Theta=tan^{-1}(\frac yx)
$$

***
Rotationsvinkel.(Vinkel mellem X-aksen og punket)
$$
\phi=tan^{-1}(\frac rz)
$$



### Lineær Algebra
#### [[Matricer]]

#### Tangentplan

***
Tangentvektoren eller normalvektor til en overflade.
Man bruger matricer til at tage krydsproduktet.
$$
\vec n
=
\begin{bmatrix}
f_x'(x,y) \\
f_y'(x,y) \\
-1
\end{bmatrix}
=
\begin{bmatrix}
0 \\
1 \\
f_y'(x,y)
\end{bmatrix}
\times
\begin{bmatrix}
1 \\
0 \\
f_x'(x,y)
\end{bmatrix}
$$

***
Tangentplan til punktet $P_{0}(a,b,f(a,b))$.
$$z=f(a,b)+f_a'(a,b)\cdot(x-a)+f_y'(a,b)\cdot(y-b)$$

***
Normalligningen.
$$\frac{x-a}{fa'(a,b)}=\frac{y-b}{f_b'(a,b)}=\frac{z-f(a,b)}{-1}$$

***
Kædereglen

 Se video: 
  <iframe width="560" height="315" src="https://www.youtube.com/embed/XipB_uEexF0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

$$\frac{d}{\partial t}f(u(t),v(t))$$


##### Egenværdi

***
for matlab
Hvor A er en nxm matrix.
```matlab
e=eig(A)

e=[lambda_1; lambda_2;....;lamda_n]

```
Egenværdierne bliver outputtet i en 1xm matrix.

***
Egenværdi er $\lambda$ og egenvektoren er $\vec x$ 
$$A\vec x=\lambda\vec x$$
$$det(A-\lambda I)=0$$
***
Den karakteristiske ligning
$$(A-\lambda I)\vec x=\vec 0$$
***
Eks. 
Vi skal finde egenvektoren $\vec x$
$$A=\begin{bmatrix}
-5 & 2 \\
2 & -2
\end{bmatrix}$$
$$det(A-\lambda I)=0$$
$$det(\begin{bmatrix}
-5 & 2 \\
2 & -2
\end{bmatrix}-\begin{bmatrix}
\lambda & 0 \\
0 & \lambda
\end{bmatrix})=0$$
$$\begin{bmatrix}
-5-\lambda & 2 \\
2 & -2-\lambda
\end{bmatrix}=0$$
$$(-5-\lambda)(-2-\lambda)-4=0$$
$$\lambda^2+7\lambda+6=0$$
$$\text{V har nu en andengradsligning}$$
$$\lambda=-6\lor -1$$
$$\text{Man kan så bruge den nye værdi for }\lambda\text{ og sætte det ind i }(A-\lambda I)\vec x=0 \text{ så vi kan finde egenvektoren altså }\vec x$$
$$A-\lambda I=\begin{bmatrix}
-5 & 2 \\
2 & -2
\end{bmatrix}-\begin{bmatrix}
-6 & 0 \\
0 & -6
\end{bmatrix}=
\begin{bmatrix}
1 & 2 \\
2 & 4
\end{bmatrix}
$$
$$(A-\lambda I)\vec x=\vec 0$$
$$\text{Vi bruger så gauss elemination til at finde egenvektoren}$$
$$\begin{bmatrix}
1 & 2 & | & 0 \\
2 & 4 & | & 0 
\end{bmatrix}$$
$$\begin{bmatrix}
1 & 2 & | & 0 \\
0 & 0 & | & 0 
\end{bmatrix}$$
$$\text{Man får altid en 0 række når man finder egenvektoren.}$$
$$x_1+2x_2=0\land x_1=-2x_2$$
$$\text{Man bliver nød til selv at finde på et tal for }x_2\text{ for at man kan finde en løsning til } x_1$$
$$x_1=-2\land x_2=1$$
$$\text{Dermed er egenvektoren }\vec x=\begin{bmatrix}
-2 \\
1
\end{bmatrix}$$
$$\text{Man gør det samme igen bare med }\lambda_2=-1 \text{ så man får begge løsninger}$$

***


$$
det(A-\lambda\cdot I)=
det(
\begin{bmatrix}
1-\lambda & 2 & 3 \\
0 & 2-\lambda & 4 \\
0 & 0 & 5-\lambda
\end{bmatrix}
)=(1-\lambda)(2-\lambda)(5-\lambda)=0

$$



##### [[Specielle Matricer]]

##### Generelle regler

***

>A og B er matricer og c,k er reelle konstanter.
>Har A og B ikke samme størrelse, kan de ikke lægges sammen og trækkes fra hinanden.
 

$$c(A+B)=cA+cB$$
$$(c+k)A=cA+kA$$
$$c(kA)=(ck)A$$
$$1A=A$$

***
A,B,C er nxn matricer.
$$
\text{hvis rang(A)=n og AB=AC Så er B=C}
$$
$$
\text{Hvis rang(A)=n og AB=}\vec 0\text{ Så er B=}\vec 0
$$

***






##### Multiplicering af matricer:

$${\begin{bmatrix}
a_1 & d_1 & g_1 \\
b_1 & e_1 & h_1 \\
c_1 & f_1 & i_1 
\end{bmatrix} \cdot} {\begin{bmatrix}
a_2 & d_2 & g_2 \\
b_2 & e_2 & h_2 \\
c_2 & f_2 & i_2 
\end{bmatrix}} = {\begin{bmatrix}
a_1a_2+d_1b_2+g_1c_2 & a_1d_2+d_1e_2+g_1f_2 & a_1g_2+d_1h_2+g_1i_2 \\
b_1a_2+e_1b_2+c_1c_2 & b_1d_2+e_1e_2+h_1f_2 & b_1g_2+e_1h_2+h_1i_2 \\
c_1a_2+f_1b_2+i_1c_2 & c_1d_2+f_1e_2+i_1f_2 & c_1g_2+f_1h_2+i_1i_2 
\end{bmatrix}}$$
***

##### Transponering:

***
>A^T Betyder at man bytter søjler og rækker, så *mxn* bliver til *nxm*

$$
A^T\begin{bmatrix}
a & b & c \\
d & e & f \\
g & h & i 
\end{bmatrix}
=
\begin{bmatrix}
a & d & g \\
b & e & h \\
c & f & i 
\end{bmatrix}
$$

$$
B^T\begin{bmatrix}
a & b \\
c & d \\
e & f 
\end{bmatrix}
=
\begin{bmatrix}
a & c & e \\
b & d & f \\
 
\end{bmatrix}
$$

***
$$
(A^T)^T=A
$$
$$
(A+B)^T=A^T+B^T
$$
$$
(c\cdot A)^T=c\cdot A^T
$$

***
>Husk at rækkefølgen bytter, så AB bliver til BA.
$$
(A\cdot B)^T=B^T\cdot A^T
$$

***

##### Determinant

***
> Video til determinant af nxn matrix 
<iframe width="560" height="315" src="https://www.youtube.com/embed/fWzUwrt1Z0s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

> Link til eks på opgave: [PA Januar 2021 opg 4](onenote:https://d.docs.live.net/c230e022fc67d306/Dokumenter/kasper%20blochs%20notesbog/Mat%20aflevering%203.one#PA%20Januar%202021%20opg%204&section-id={99310248-635E-4FE0-A08F-035487F62BE8}&page-id={9562191B-B025-4565-9B3D-2CD0F03DAD46}&end)  ([Web view](https://onedrive.live.com/view.aspx?resid=C230E022FC67D306%21118&id=documents&wd=target%28Mat%20aflevering%203.one%7C99310248-635E-4FE0-A08F-035487F62BE8%2FPA%20Januar%202021%20opg%204%7C9562191B-B025-4565-9B3D-2CD0F03DAD46%2F%29))
***
 Determinanten fortæller om en nxn matrix A, har fuld rang. Altså hvis rang(A)=n
 Så bliver determinanten Det(A) ikke lig med 0. Dvs at enten er der flere løsninger.

Hvis Det(A)=0. Så har den ikke fuld rang. Dvs at ligningssystemet har 0 eller uendelig mange løsninger.

***
Man må gerne bruge gauss elimination til at rykke rundt på rækkerne, og evt lave en række med flere nuller i, så determinanten bliver nemmere at regne. Det optimale er at få sin matrix på row echellon form.

***
Kun kvadratiske matricer. Altså nxn matricer
lad *c* være et reelt tal.
$$det(cA)=c^n\cdot det(A)$$
$$det(A^T)=det(A)$$

$$\text{Hvis A's rækker er lineært afhæninge, så er A's søjler også lineært afhængige, hvilket betyder at determinanten er 0}$$
Lad nu B være en nxn matrix.
B og A skal være lige store
$$det(A\cdot B)=det(B\cdot A)=det(A)\cdot det(B)=det(B)\cdot det(A)$$



***
$$M=\begin{bmatrix}
a & b & c \\
d & e & f \\
g & h & i 
\end{bmatrix}$$
$$
Det(M)=a\cdot Det\begin{bmatrix}
e & f \\
h & i 
\end{bmatrix}-b\cdot Det\begin{bmatrix}
d & f \\
g & i 
\end{bmatrix}+c \cdot
Det\begin{bmatrix}
d & e \\
g & h 
\end{bmatrix}=a(ei-hf)-b(di-gf)+c(dh-ge)$$

***

Har man en matrix på echellon form:
$$
det(
\begin{bmatrix}
1 & 2 & 3 \\
0 & 2 & 4 \\
0 & 0 & 5
\end{bmatrix}
)
$$
Determinanten er dermed produktet af diagonaler er lig med 0.
$$
det(
\begin{bmatrix}
1 & 2 & 3 \\
0 & 2 & 4 \\
0 & 0 & 5
\end{bmatrix}
)=0
$$

##### Inverse matricer

>Hvis deteminanten er meget tæt på 0, så kan ligningssystemet blive ustabilt
>For at man kan tage den inverse af en matrix, så skal determinanten være forskellig fra 0.



***
Generelle inverse regneregler
$$(AB)^{-1}=B^{-1}\cdot A^{-1}$$
$$(A^{-1})^{-1}=A$$

***
Defination af den inverse matrix

$$A^{-1}=A\cdot I$$


***
Hvor vector b er svaret på ligningssystemet, altså b er på  reduceret Row Echellon form.
$$A\vec x=\vec b$$

***

Division af matricer.
Hvor A^-1 er den inverse matrix.
Det gælder kun hvis det(A) ikke er 0, altså at A har fuld rang. Altså rang(A)=n

$$A^{-1}\cdot A\vec x=A^{-1}\cdot\vec b$$
***
Hvor I er identitetsmatricen.
$$I\vec x=A^{-1}\cdot\vec b$$

$$\vec x=A^{-1}\cdot\vec b$$

***

##### Rotationsmatrix

$$R_\theta\begin{bmatrix}
cos\theta & -sin\theta \\
sin\theta & cos\theta 
\end{bmatrix}$$


Eks: Rotation på pi/2 omkring origo.
$$R_{\frac\pi 2}=\begin{bmatrix}
cos\frac\pi 2 & -sin\frac\pi 2 \\
sin\frac\pi 2 & cos\frac\pi 2 
\end{bmatrix}=
\begin{bmatrix}
0 & -1 \\
1 & 0 
\end{bmatrix}
$$


***



##### [[Gauss Elimination]]

Man bytter to rækker med hinanden. Så man fks at række nr 3 står på plads 1, og række nr 1 står på plads 3.
Man lægger en række eller et multiplum heraf til en anden række.(Altså man ganger en række med fks 2 eller -1 og lægger den til en anden række.)
Man må gange rækken med en konstant som ikke er 0.

***
*m* er antal ligninger
og *n* er antal variabler
Der er en eller flere løsninger, hvis:
$$\text{og hvor }\tilde A=(A\text{ bare med konstanterne inkluderet})$$
***

Der er præcis en løsning hvis rang(A)=n og rang(A med konstanter)=n

Der er uendelige løsninger hvis og kun hvis rang(A) < n og at rang(A med konstanter)=rang(A)
***

##### Pivot
***
Pivot-elementet i en række er altid til højre for pivot-elementet i rækken ovenover.
Nul-rækker står nederest.
Man ønsker at der altid er nuller under og til venstre, så det får form som en trappe.
Man må gerne lave lange skridt, men ikke høje. Så der må gerne være nuller vid siden af hinanden, men ikke direkte under.

##### Reduceret Row Echelon

-Row echelon form
-Alle pivot-elementer er 1
-Alle tal over pivot-elementet er 0
***
Eks.
$$\begin{bmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1
\end{bmatrix}$$

***


##### Rang af Matrix

>I CAS: rang(A)=rank(A)=rk=(A).
>Rang(A^Transponeret)=Rang(A).
>Eks: Maksimal rang af en 4x3 matrix er 3.

Rangen af en matrix A er det maksimale antal uafhængige række-vektorer i A. Eller lig med antal af rækker der ikke er 0, når A er på row echelon form.
Hvis man kan tage nogle rækker og lægge sammen og de så giver en række i matrixen, så er de lineært afhængige. Det vil sige at man så får at rang(A)=antal række som er lineært afhængige.
Hvis rang(A_uden konstanter) ikke er lig med rang(A_med konstanter) så har ligningssytemet ikke nogle løsninger.




##### Homogene lineære ligningssystemer
$$A\vec x=\vec b=\vec 0$$
Der er mindst en løsning hvis rang(A_uden konstanter)=Rang(A_med konstanter).
$$\text{Trivielle løsning }\vec x=\vec 0\text{ gælder altid}$$




### [[Middelværdier]]

##### Middelværdisætningen

>Der er altid minimum et punkt på funktionen mellem *a* og *b* hvor hældningen er den samme som middelinjen 


$$
f'(c)=\frac{f(b)-f(a)}{b-a}
$$




***
Cos:
$$
\frac{d}{dx}cos^{-1}(x)=
\frac{-1}{\sqrt{1-x^2}}=
\int\frac {-1}{\sqrt{1-x^2}}dx=cos^{-1}(x)
$$
***
Sin:
$$
\frac{d}{dx}sin^{-1}(x)=
\frac1{\sqrt{1-x^2}}=
\int\frac 1{\sqrt{1-x^2}}dx=sin^{-1}(x)
$$
***
Tan:
$$
\frac{d}{dx}tan^{-1}(x)=
\frac1{1+x^2}=
\int\frac 1{\sqrt{1+x^2}}dx=sin^{-1}(x)
$$
$$

$$
***

### Rationelle funktioner
##### Partielle brøker

***
 <iframe width="560" height="315" src="https://www.youtube.com/embed/QKkdYW77xNI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
***

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
Vi sætter så c ind i alle de afledte, inkl den ikke afledte.

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
### [[Dæmpede-Svingninger anden ordens diff ligninger]]

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

### Lineær approximation

Video:
 <iframe width="560" height="315" src="https://www.youtube.com/embed/FIbpibkywmk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
***



Ligningen for lineær approximation.
Hvor $L(x)$ er lineariseringen i et punkt
![[Pasted image 20221219122817.png|300]]

$$
y-y_{1}=m(x-x_{1})
$$
$$
L(x)-f(a)=f'(a)\cdot(x-a)
$$


### Komplekse tal

##### De Moivre

***

Eksempler på De Moivre:

![[De Moivre.excalidraw.svg]]
***


### Multivariable Calculus
#### Fourier Rækker
![[Pasted image 20230905104228.png]]

#### Fourier Transform

![[Pasted image 20230905121150.png]]

<iframe width="560" height="315" src="https://www.youtube.com/embed/spUNpyF58BY?si=pIrsqt-Y5cB7lQzu" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

***
##### Fourier function
![[Pasted image 20230904103645.png]]
En skaleret Fourier funktion:
$$
\hat{g}(f)=\frac{1}{t_{2}-t_{1}}\int ^{t_{2}}_{t_{1}}-g(t)_{e}^{-2\pi ift} \, dt 
$$
Ikke skaleret funktion:
$$
\hat{g}(f)=\int ^{t_{2}}_{t_{1}}-g(t)_{e}^{-2\pi ift} \, dt
$$
Den ikke skaleret funktion vil give en større værdi ved det punkt hvor beats/sekund og frekvens bliver ens på Fourier funktionen jo længere tid der går.

Hvor funktionsværdien giver et kompleks tal der beskriver center of mass på funktionen

![[Pasted image 20230904105354.png]]
Fourier funktionen kan bruges til at adskille forskellige bølger ad i en summeret funktion.
Hver gang beats/sekund og frekvens bliver ens på Fourier funktionen, vil vi se et spike på den transformeret funktion.
***