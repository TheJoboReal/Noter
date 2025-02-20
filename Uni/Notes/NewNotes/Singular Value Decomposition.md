---
tags:
  - lecture-slide
  - uni
course: Numeriske Metoder
lecture: Lecture 3
date: 2025-02-19
---

#### Definition

> [!Video]-
> <iframe width="560" height="315" src="https://www.youtube.com/embed/CpD9XlTu3ys?si=sMX8PJNWB479ecR6" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Målet med SVD er at finde to orthogonal vektorer der forbliver orthogonal efter at blive multipliceret med en matrix $A$.

![[Pasted image 20250219142945.png|500]]
$$
A\color{red}v_{1}\color{white}=\color{red}y_{1} \color{white}
\quad 
A\color{blue}v_{2}\color{white}=\color{blue}y_{2}
$$
Det kan også skrives som:
$$
AV=U\Sigma
$$
Hvor $\Sigma$ er eigenværdierne og $V$ og $U$ er de to ortogonale vektorer.

Det kan så skrives som:
$$
A=U\Sigma V^\text{T}
$$

Nedenstående kan vi så finde de to ortogonale vektorer.

---

Vi skal finde $U$ & $V$. $V$ kan vi finde med nedenstående:
$$
A^\text{T}A=V\Sigma^2V^\text{T}
$$
- $A^TA$ er symmetrisk, og [[Eigen values and vectors|eigen-vectors]] af en symmetrisk matrix er ortogonale.
- Så dermed er $V$ en ortogonal matrix fordi $A^TA$ er symmetrisk.

$U$ kan så findes med nedenstående:
$$
AA^\text{T}=U \Sigma^2U^\text {T} 
$$
- Så $U$ er givet af [[Eigendecomposition]] af $AA^\text{T}$
- $U$ er en ortogonal matrix, fordi $AA^\text{T}$ er symmetrisk.