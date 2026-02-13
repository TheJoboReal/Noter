---
tags:
  - lecture-slide
  - uni
course: Large-scale Drone Perception
lecture: Lecture 2
date: 2026-02-13
---
>[!TIP] used a lot in SLAM

#### Definition
![[Pasted image 20260213092705.png]]

#### Coplanarity Constraint
![[Pasted image 20260213093036.png]]
Scew Cymetric matrix:
$$
S_{T}=\begin{bmatrix}
0 & -T_{3} & T_{2} \\
T_{3} & 0 & -T_{1} \\
-T_{2} & T_{1} & 0
\end{bmatrix}
$$
Essential Matrix:
$$
E=RS_{T}
$$

