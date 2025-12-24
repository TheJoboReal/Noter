---
tags:
  - lecture-slide
  - uni
course: Control of Autonomous Systems
lecture: null
date: 2025-12-24
---

#### Definition
![[Pasted image 20251224152031.png]]
To implement a complex set of poles in a state feedback controller we do as followed:

```matlab
epsilon = 2.5

A = [0 0 1 0

0 0 0 1

0 -1/epsilon 0 0

0 (1+epsilon)/epsilon 0 0]

B = [0

0

1/epsilon

-1/epsilon]

% Check controllability

r = rank(ctrb(A,B))

% Valid pole set (complex conjugate pair)

poles = [-1 + 1i, -1 - 1i, -2, -3];

K = place(A,B,poles)
```

![[Pasted image 20251224152058.png]]

