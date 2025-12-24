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

An example is:

```matlab
% Opg 7

O = [C

C*A

C*A

C*A^2

C*A^3]

rank(O) == 4

% As rank(O) is equal to the number of states we know that the system is

% observable.
```

#### Implementing an observer

