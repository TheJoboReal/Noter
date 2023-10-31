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


### Koordinatsystemer
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
#### De Moivre

***

Eksempler på De Moivre:

![[De Moivre.excalidraw.svg]]
***

#### Matricer
##### Generelle Matricer
![[Matricer]]
##### Tangentplan

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




### Middelværdier
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
### Dæmpede-Svingninger anden ordens diff ligninger
#### Dæmpede Svingninger
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

#### Lineær approximation

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



#### Fourier
##### Fourier Rækker

![[Pasted image 20230905131729.png|300]]
$L$ betegnes er perioden af en funktion og betegnes som $L=\frac{P}{2}$. Hvis man fks grafen ovenover, så kan vi se at den går fra $-1$ til $1$ , dvs at der er to steps fra start til slut. I det tilfælde vil $L$ være $L=\frac{2}{2}=1$.
$$
L=\frac{P}{2}
$$
***

Lad $f$ være en periodisk funktion med periode $2L$ og lad $f(x)$ og $f'(x)$ være stykvis kontinuerlige på intervallet $-L<x<L$. Så vil $f$ have en konvengerende Fourierrække:
$$
f(x)=\frac{a_{0}}{2}+\sum^{\infty}_{n=1}\left( a_{n}\cos\left( \frac{{n\pi x}}{L} \right)+b_{n}\sin\left( \frac{n\pi x}{L} \right) \right)=\sum^{\infty}_{n=-\infty}c_{n}e^{jn\pi x/L}
$$
Med koefficienter $a_{n}, b_{n} \text{ og }c_{n}\text{ givet som}$
$$
a_{n}=\frac{1}{L}\int ^L_{-L}f(x)\cos\left( \frac{n\pi x}{L} \right) \, dx \text{ } n\geq 0
$$
$$
b_{n}=\frac{1}{L}\int ^L_{-L}f(x)\sin\left( \frac{n\pi x}{L} \right) \, dx \text{ } n> 0
$$
$$
c_{n}=\frac{1}{2}(a_{n}-jb_{n})\text{ } n> 0
$$

Se eksempel: [[Opgave 1.excalidraw]]
![[Opgave 1.excalidraw|1600]] 
##### Fourier Transform
Fouriertransformation af $x(t)$
$$
X(f)=F(x(t))=\int_{-\infty}^{\infty} x(t)e^{-j_{2}\pi ft} \, dt
$$

Invers Fouriertransformation af $X(f)$:

$$
x(t)=F^{-1}(X(f))=\int_{-\infty}^{\infty} X(f)e^{j_{2}\pi ft} \, df =
\int_{-\infty}^{\infty} f(x)\cdot e^{-j\omega x} \, dx 
$$
>Se [[Fourier Transform and Evaluate.pdf|Eksempel]]

![[Pasted image 20230928104404.png]]
***

<iframe width="560" height="315" src="https://www.youtube.com/embed/spUNpyF58BY?si=pIrsqt-Y5cB7lQzu" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

***
##### Diskret Fourier Transformation
Lad $x(n)$ være en sekvens [[Samplingsignalet|sampling]] med sampleintervallet $T$, så er en $N$-punkts Diskret F transformation af $x(n)$ givet som 
$$
X(m)=\sum^{N-1}_{n=0}x(n)W^{-mn}_{N}
$$
for $m=0,1,\dots,N-1$ og $W_{N}=e^{-j_{2}\pi/N}$.
##### Invers Diskret Fourier Transformation
Sekvensen $x(n)$ kan findes fra  [[Formelsamling Calculus#Diskret Fourier Transformation|spektrumfunktionen]] $X(m)$ som
$$
x(n)=\frac{1}{N}\sum^{N-1}_{m=0}X(m)W^{mn}_{N}
$$
for $n=0,1,\dots,N-1$ og $W_{N}=e^{-j_{2}\pi/N}$.
Så $N$ er lig med antal punkter i et signal. fks $0-7$ er $8$ punkter da man tæller $0$ med.
$W_{N}$ kan udregnes en gang og derefter roteres rundt i det komplekse plan.

##### Fast Fourier Transformation
Hvis en diskret Fourier Transformation udregnes med [[Formelsamling Calculus#Diskret Fourier Transformation|DFT]] formlerne så skal der andvendes $N^{-2}$ komplekse multiplikationer og additioner.

$$
X(m)=Y(m)+W^m_{N}Z\left( m+\frac{N}{2} \right)
$$
$$
X\left( m+\frac{N}{2} \right)=Y(m)-W^m_{N}Z\left( m+\frac{N}{2} \right)
$$
for $m=0,1,\dots,\frac N2-1$
Ovenstående ligninger løses i en såkaldt FFT butterfly

**Fejlmuligheder ved FFT**
Når en DFT udføres kan flere fænomener påvirke kvaliteten af den approksimerede spektrumfunktion
* [[Aliasing]]
* [[Lækage]]
* [[Picket Fencing]]
Disse fænomener vil medføre en fejlagtig analyse af et signals frekvensspektrum, og skal
derfor undgås.

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
##### Fourier Koefficienter

Fourier koefficienterne har en vigtig fortolkning i forhold til frekvensindholdet i et signal, hvilket kaldes et signals *spektrum*.
Vi benytter følgende trigonometriske identitet:
$$
a\cos(\omega x)+b\sin(\omega x)=A\cos(\omega x-\phi)
$$
hvor
$A=\sqrt{ a²+b² }$             og           $\phi=\tan^{⁻1}\left( \frac{b}{a} \right)$
Her er $\phi$ fasevinklen og $A$ er amplituden.

Vi benytter ovenstående trigonometriske identitet på det $n$te led i Fourierrækken:
$$
a_{n}\cos\left( \frac{n\pi x}{L} \right)+b_{n}\sin\left( \frac{n\pi x}{L} \right)=A_{n}\cos\left( \frac{n\pi x}{L}-\phi_{n} \right)
$$
hvor
$A_{n}=\sqrt{ a²_{n}+b²_{n} }$        og         $\phi_{n}=\tan^{-1}\left( \frac{b_{n}}{a_{n}} \right)$
##### Fourier Tabeller
![[Pasted image 20230906143106.png]]
![[Pasted image 20230906143121.png]]


##### Dirac delta funktion

En Dirac delta-funktion $\delta(t)$, som er et meget kort og kraftig signal der er uendelig høj og uendelig smal.
$$
\int_{-\infty}^{\infty} f(t) \delta(t-t_{0}) \, dt=f(t_{0}) 
$$
dvs:
$$
\int_{-\infty}^{\infty} \delta(t-t_{0}) \, dt=1 
$$
hvor $f$ er en kontinuerlig funktion.

##### Vinduesfunktion
Når der laves en [[Formelsamling Calculus#Fast Fourier Transformation|FFT]] analyse på en sekvens, så er den anvendte sekvens fundet fra impulsresponset $h_{\infty}(n)$ ganget med den rektangulære [[Vinduesfunktion]], dvs.
![[Pasted image 20231005084335.png|450]]
![[Pasted image 20231005084347.png|350]]

### Signaler
##### Impulsrespons
![[Pasted image 20231013125630.png]]
Samme vinkel/argument vil give samme frekvens på et signal. Se de to signaler i 45 grader. Amplitude vil være forskellig.

>Se [[Impulsrespons.pdf|Eksempel]]

##### Superpositionsintegralet
![[Pasted image 20230907083733.png]]
##### Enheds step funktion
![[Pasted image 20230907084817.png]]
##### [[Laplace Transformation|Laplace Transformation]]
$$
F(s)=\int_{0}^{\infty} e^{-st}f(t) \, dt 
$$
>Se [[Laplace.pdf|Eksempel]] på Laplace brugt til at løse differentiale ligning.

Laplace Tabel
![[mbbsadbhabd.jpg]]


##### Invers Laplace Transformation
$$
f(x)=L^{-1}(f(\omega))=\frac{1}{2\pi}\int_{-\infty}^{\infty} f(\omega) \cdot e^{j \omega x}\, d \omega
$$
##### z-transformation
$$
X(z)=Z[x(n)]=\sum^\infty_{n=0}x(n)z^{-n}
$$
Bemærk at $(1)$ konvergerer hvis $|z|<1$.
$$
s=\frac{1}{T}\ln(z)
$$
>Se [[Z-transformation.pdf|Eksempel]]
###### z-transformation Tabel-regler
![[Pasted image 20231013104400.png]]
![[Pasted image 20231013104721.png|400]]
![[media_ad2_ad2ab6e2-79d0-404a-aab2-c61b7f074dd0_phpHVcpzx 1.png]]
![[nN9qo 1.png]]

##### Invers z-transformation
Brug [[Invers z-transformation|tabelopslag]]
##### Differensligninger
$$
y(n)=\sum^N_{i=0}a_{i}x(n-i)-\sum^N_{i=1}b_{i}y(n-i)
$$
hvor $x(n-i)$ er den tidsforsinkede indgangssekvens, $y(n-i)$ er den tidsforsinkede udgangssekvens og $a_{i} \wedge b_{j}$ er reele koefficienter.

>Se [[Differensligning Eksempel]]

##### Overføringsfunktion

$$
H(z)=\frac{Y(z)}{X(z)}=\frac{\sum^N_{i=0}a_{i}z^{-i}}{\sum^N_{i=1}b_{i}z^{-i}}
$$
Hvor $Y(z)$ er den z-transformeret af vores udganssekvens og $X(z)$ er den z-transformeret af vores indgangssekvens.

En overførringsfunktion findes ved at z-transformer en [[Formelsamling Calculus#Differensligninger|differrenslignin]] på formen:
$$
y(n)+\sum^N_{i=1}b_{i}y(n-i)=\sum^N_{i=0}a_{i}x(n-i)
$$
>Se [[Overføringsfunktion Eksempel|Eksempel]] på overføringsfunktion.

Og nedenstående en overførringsfunktion fra en [[Formelsamling Calculus#Laplace Transformation Laplace Transformation|Laplace Transformation]]
$$
H(s)=\frac{Y(s)}{X(s)}=\frac{\sum_{i=0}^N a_{i}s^i}{1+\sum_{i=1}^N b_{i}s^i}
$$
***
Nodeplot i matlab. Input overføringsfunktion
```matlab
Pzmap(H)
```
![[Pasted image 20231013140415.png]]

***
![[Pasted image 20230907101254.png]]
Hvor $U(s)$ er det Laplacetransfomeret input og $Y(s)$ er det Laplacetransfomeret output.
![[Pasted image 20230907101415.png]]
![[Pasted image 20230907114342.png]]
##### Stabilitet i et System
![[Pasted image 20231013140500.png]]
>Se [[System Stabilitet.pdf|Eksempel]]
##### Frekvensrespons
![[Pasted image 20231013140527.png]]

##### [[Direkte type 1 og 2#Direkte Type 1|Direkte Type 1]]
Følgende viser en direkte type 1 realisationsstruktur for differensligningen:
$$
y(n)=\sum_{i=0}^N a_{i}x(n-i)-\sum_{i=1}^N b_{i}y(n-i)
$$
![[Pasted image 20231026221810.png]]

##### [[Direkte type 1 og 2#Direkte Type 2|Direkte Type 2]]
Følgende viser en direkte type 2 realisationsstruktur for differensligningen:
$$
y(n)=\sum_{i=0}^N a_{i}x(n-i)-\sum_{i=1}^N b_{i}y(n-i)
$$
![[Pasted image 20231026221745.png]]
### Multivariable Funktioner
##### Double Integration
###### Riemann sum
![[Pasted image 20230925122408.png|700]]
$$
R(f,P)=\sum_{i=1}^m \sum_{j=1}^n f(x^*_{ij},y^*_{ij})\Delta A_{ij}
$$
Sum of *m* and *n* terms, one for each rectangle in the partition and $f(x^*_{ij},y^*_{ij})>0$ is a positive function.

**Def:** The function $f$ is integrable over the rectangle $D$ and has double integral $I=\int_{D} f(x,y) \, dA$

###### Propeties of Double integrals
![[Pasted image 20230925123644.png]]
![[Pasted image 20230925123741.png]]

###### Double Integral in polar Coordinates
![[Pasted image 20230925133711.png]]
![[Pasted image 20230925133742.png]]

##### Triple Integration
>Se [[Tripple Integral bounded by region.pdf|Eksempel]] på tripple integrale bundet af en region.
###### Triple Integration Order
![[Pasted image 20231002123625.png]]

###### Triple Integration Riemann
![[Pasted image 20231002123714.png]]
![[Pasted image 20231002124017.png]]
###### Change of Variables
![[Pasted image 20231002125716.png]]
![[Pasted image 20231002131137.png]]
###### Cylindrical Coordinates
![[Pasted image 20231002131257.png]]
Where the Jacobian Transformation is as follows:
$$
\frac{\delta(x,y,z)}{\delta(r,\theta,z)}
=
\det(
\begin{bmatrix}
\cos(\theta) & -r\sin(\theta) & 0 \\
\sin(\theta) & r\cos(\theta) & 0 \\
0 & 0 & 1
\end{bmatrix})
=
r
$$

###### Spherical Coordinates
>See [[Formelsamling Calculus#Spherical Coordinates|Spherical Coordinates]] for foundation.

The conditions are:
![[Pasted image 20231002135027.png]]

Where the Jacobian is:
$$
\frac{\delta(x,y,z)}{\delta(\rho,\phi,\theta)}
=
\det(
\begin{bmatrix}
\sin(\phi) \cdot \cos(\theta) &\rho \cdot \cos(\phi) \cdot \cos(\theta) & -\rho \cdot(\sin(\phi)\cdot \sin(\theta) \\
\sin(\phi) \cdot \sin(\theta) & \rho \cdot \cos(\phi) \cdot \sin(\theta) &\rho \sin(\phi) \cdot \cos(\theta) \\
\cos(\phi) & -\rho \sin(\phi) & 0
\end{bmatrix})
$$
$$
\frac{\delta(x,y,z)}{\delta(\rho,\phi,\theta)}
=
\rho²\sin(\phi)
$$

##### Domæner og Ranges
>Domæne er hvad man kan sætte ind i en funktion og range er hvad man kan få ud af funktionen.
##### Limits on Multivariable Functions
![[Pasted image 20230911122844.png]]
##### Level Curves
![[Pasted image 20230911123103.png]]
![[Pasted image 20230911124540.png|1000]]

##### Tangent Plane
![[Pasted image 20230911130719.png]]
or $z=z_{0}+f'_{x}(x_{0},y_{0}){}(x-x_{0})+f'_{y}(x_{0},y_{0}){}(y-y_{0})$

##### Distance from point to plane
![[Pasted image 20230911133917.png]]
or $dist(P,a)=\frac{|a\cdot x_{1}+b\cdot y_{1}+c\cdot z_{1}+d|}{\sqrt{ a²+b²+c² }}$ hvor a,b,c er planets tangentvektor.

##### Higher order derivatives
![[Pasted image 20230911134453.png]]



##### Vector Fields
![[Pasted image 20231009214038.png]]
Plane Vector field $F(x,y)=f_{1}(x,y)i+f_{2}(x,y)j$
Position Vector $r=xi+yj+zk$ and $r=i+j+k$

##### Conservative Fields
$F(x,y,z)$ is a conservative vector field if $F(x,y,z)=\nabla \phi(x,y,z)=\frac{\delta \phi}{\delta x}i=\frac{\delta \phi}{\delta x}j=\frac{\delta \phi}{\delta x}k$

Where $\nabla \phi(x,y,z)$ is a Scalar Field.

>If $F(x,y,z)=\nabla \phi(x,y,z)$ in a domain $D$, then $F$ is a conservative vector field in $D$ and function $\phi$ is a potential function for $F$ on $D$

##### Line or Curve Integral
![[Pasted image 20231009213559.png|250]]
The length of a line or curve is found using the Line Integral Formula:
$$
C=\int f(x,y,z) \, ds=\int_{a}^b f(r(t)) \cdot |\frac{dr}{dt}| \, dt  
$$

>See example [[LIne Integral.pdf|Line Integral]]

##### Surface Integrals

![[Pasted image 20231023123534.png]]
The Normal Vector to the surface.
![[Pasted image 20231030151140.png|300]]
![[Pasted image 20231023123737.png|300]]

The Area of the Surface.
![[Pasted image 20231023123918.png]]
Where $dS=|n|dudv$ or $dS=\sqrt{ 1+(g_{1}(x,y))^2+(g_{2}(x,y))^2dxdy }$

##### Differential Operators
###### Gradient
Rate of change in a 3-dimensional scalar field $f(x,y,z)$. Fx Temperature Distribution in a room, Topographic maps.
$$
\nabla=i \frac{\delta}{\delta x}+j \frac{\delta}{\delta y}+k \frac{\delta}{\delta z}
$$
>The gradient of a scalar field gives a vector field.

###### Divergence
The divergence of a velocity field represents the net flow of fluid out of a smalle volume. Fx Fluid flow in pipes, Weather Patterns.

$$
div(F(x,y,z))=\nabla \cdot F(x,y,z)=i \frac{\delta f_{1}}{\delta x}+j \frac{\delta f_{2}}{\delta y}+k \frac{\delta f_{3}}{\delta z}
$$
where
$$
F(x,y,z)=f_{1}(x,y,z)i+f_{2}(x,y,z)j+f_{3}(x,y,z)k
$$

###### Divergence Theorem(Gauss)
$$
\nabla F(x,y,z)=div(F)=\frac{\delta f_{1}}{\delta x}+\frac{\delta f_{2}}{\delta y} + \frac{\delta f_{3}}{\delta z}
$$
Let $S$ be a closed piecewise smooth surface which is the boundary of $V$ with normal $\hat{N}$ pointing outwards.

If $F(x,y,z)=f_{1}(x,y,z)i+f_{2}(x,y,z)j+f_{3}(x,y,z)k$ smooth vector field is defined on V then,
$$
\oint\oint_{S}(F\cdot\hat{N})dS=\int\int\int_{V} F \, dV 
$$

***
**Variants of Divergence Theorem**
If $D$ satisfies the conditions of the Divergence Theorem and has surface $S$, and if the $F$ is a smooth vector field and $\phi$ is a smooth scalar field then,
$$
\int\int\int_{D} curl (F) \, dV=-\oint\oint_{S}(F \times \hat{N}) dS 
$$
$$
\int\int\int_{D} grad (\phi)  \, dV=\oint\oint_{S} \hat{N} dS
$$

###### Curl
The curl of the electric field gives the rate of change of the magnetic field. Fx Turbulenc in Fluid Flow, Magnetic Fields Around a wire.
The Cross product of a vector field with a directional vector is curl.

$$
curl(F(x,y,z))=\nabla\times F(x,y,z)=\det(\begin{matrix}
i &j & k \\
\frac{\delta}{\delta x} & \frac{\delta}{\delta y} & \frac{\delta}{\delta z} \\
f_{1} & f_{2} & f_{3}
\end{matrix})
$$
where
$$
F(x,y,z)=f_{1}(x,y,z)i+f_{2}(x,y,z)j+f_{3}(x,y,z)k
$$


###### Stokes's Theorem
Let S be a piecewise smooth, oriented surface in 3-space, having unit normal field $\hat{N}$ and boundary C consisting of one or more piecewise smooth, closed curves with orientation inherited from S.

If **F** is a smooth vector field defined on an open set containing S, Then,
$$
\oint_{C}F \cdot dr=\oint\oint_{S}curl(F \cdot \hat{N}) dS
$$
##### Greens Theorem
Let $R$ be a regular closed region in the xy-plane whose boundary $C$ consists of one or more piecewise(Squares or pentagrams fx) smooth, simple, closed curves that are oriented with respect to $R$.
A circle is a simple closed object while an infinity symbol is cloes but not a simple object.

if $F(x,y)=f_{1}(x,y)i+f_{2}(x,y)j$ is a smooth vector field on $R$.

Then,
$$
\oint_{C} f_{1}(x,y)dx+f_{2}(x,y)dy=\int \int_{R} \left(𝑵𝑵  \frac{\delta f_{2}}{\delta x}-\frac{\delta f_{1}}{\delta y} \right) \, \, dA 
$$
