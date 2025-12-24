---
tags:
  - lecture-slide
  - uni
course: Control of Autonomous Systems
lecture: null
date: 2025-12-24
---

#### Definition
The observer matrix is defined as follows:
$$
\mathcal{O} = 
\begin{bmatrix}
C \\
CA \\
CA^{2}\\
\vdots \\
C A^{n-1}
\end{bmatrix}
$$

$\mathcal{O}$: Observability matrix.

$A$: A matrix from [[State Space Models|state space model]].

$C$: C matrix from [[State Space Models|state space model]].

$n$: Number of states.

A system is observable if and only if the rank of the observability matrix equals the number of states.