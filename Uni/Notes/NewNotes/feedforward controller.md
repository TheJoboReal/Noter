---
tags:
  - lecture-slide
  - uni
course: Control of Autonomous Systems
lecture: null
date: 2025-12-24
---

#### Definition
>[!TIP] See [[CAS-2025-Lecture4-stability.pdf#page=16|slide]]

To implement feedforward we calculate the gain as follows:
```matlab
% feedforward gain computation

C = [1 0 0 0]

Acl = A - B*K;

Nbar = -1 / (C * (Acl \ B)) % feedfoward gain
```
Where $C$ is the controller vector that determines what state that the system should be controlled around.


Here the exercise states the following:
![[Pasted image 20251224154805.png]]
Thus we use a step block to simulate this.
![[Pasted image 20251224153521.png]]
