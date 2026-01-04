---
tags:
  - lecture-slide
  - uni
course: Control of Autonomous Systems
lecture: null
date: 2025-12-24
---

#### Definition
The observervability matrix is defined as follows:
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

An example of an observer implemented in a function block.
Use acker or place to place poles. Remember to place poles 7 times further left than system poles:

```matlab
obs_poles = poles * 7
L = acker(A', C', obs_poles)';
```

```matlab
function xhat_dot = observer(u, y, xhat)

% System matrices (OPEN-LOOP)

A = []

% Output matrix

C = [1 0 0 0];

% Observer gain (PRECOMPUTED, paste your numeric L here)

L = [0;0;0;0];

% Observer dynamics

xhat_dot = A*xhat + B*u + L*(y - C*xhat);

end
```

An example of an observer implemented in a subsystem:
![[Pasted image 20251229171859.png]]
![[Pasted image 20251229171935.png]]