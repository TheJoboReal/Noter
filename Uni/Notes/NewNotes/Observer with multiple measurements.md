---
tags:
  - lecture-slide
  - uni
course: Control of Autonomous Systems
lecture: null
date: 2026-01-04
---

#### Definition

To observe an additional state with an observer, we must change the Control matrix accordingly:
```matlab
C_obs = [1 0 0 0

0 1 0 0];

obs_poles = [-3 -4 -5 -6];

L = place(A', C_obs', obs_poles)'
```
Above we see that the C matrix has been appended with a new row that defines the new state to be observed. Remember to update the C matrix inside the [[Observers in CAS|observer function block]] as well.
