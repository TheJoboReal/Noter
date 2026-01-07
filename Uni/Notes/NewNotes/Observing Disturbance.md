---
tags:
  - lecture-slide
  - uni
course: Control of Autonomous Systems
lecture: null
date: 2026-01-05
---
#### Definition
To observer disturbance we must add a new row to our matrices A and B:
```matlab
%% Observer

A_aug = [A B; 0 0 0];

B_aug = [B;0];

C_aug = [C 0]

rank(obsv(A_aug,C_aug))

observer_poles = [-10 -10 -15];

La = acker(A_aug',C_aug',observer_poles)';

rank(obsv(A,C))

L = acker(A',C',[-10,-10])
```

![[Pasted image 20260105130231.png]]