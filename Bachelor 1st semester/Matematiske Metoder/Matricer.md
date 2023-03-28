>Se video: https://www.youtube.com/watch?v=yRwQ7A6jVLk&ab_channel=TheOrganicChemistryTutor



![[Pasted image 20221025132945.png]]

### Regneregler

A og B er matricer og c,k er reelle konstanter.

$$c(A+B)=cA+cB$$
$$(c+k)A=cA+kA$$
$$c(kA)=(ck)A$$
$$1A=A$$

***
### Multiplicering af matricer:
Se video: https://www.youtube.com/watch?v=vzt9c7iWPxs&ab_channel=TheOrganicChemistryTutor

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
en 3x3 gange en 3x2
$${\begin{bmatrix}
3 & 5 & -1 \\
4 & 0 & 2 \\
-6 & -3 & 2 
\end{bmatrix} \cdot} {\begin{bmatrix}
2 & -2 \\
5 & 0 & \\
3 & -4 & 
\end{bmatrix}} = {\begin{bmatrix}
6+25-9 & -6+0+4 \\
8+0+18 & -8+0-8 \\
-12-15+18 & 12+0-8 
\end{bmatrix}}=
{\begin{bmatrix}
22 & -2 \\
26 & -16 \\
-9 & 4 
\end{bmatrix}}$$

***



### Transponering
A^T Betyder at man bytter søjler og rækker, så *mxn* bliver til *nxm*

### Rotationsmatrix

$$R_\theta\begin{bmatrix}
cos\theta & -sin\theta \\
sin\theta & cos\theta 
\end{bmatrix}$$

Eks: Rotation på pi/2

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
#### Løsning af lineære ligningssystemer.

*m* er antal ligninger
og *n* er antal variabler
Der er en eller flere løsninger, hvis:
$$\text{og hvor }\tilde A=(A\text{ bare med konstanterne inkluderet})$$
***

Der er præcis en løsning hvis rang(A)=n og rang(A med konstanter)=n

Der er uendelige løsninger hvis og kun hvis rang(A) < n og at rang(A med konstanter)=rang(A)

***
Homogene ligningssystemer

$$
A\vec x=\vec0
$$ har altid mindst en tiviel løsning, hvor$$
\vec x=\vec0
$$ er en af løsningerne.

Der er ikke trivielle løsninger hvis$$
rang(A)<n
$$

