---
tags:
  - lecture-slide
  - uni
course: Large-scale Drone Perception
lecture: Lecture 7
date: 2026-03-27
---

#### Definition
![[Pasted image 20260327082424.png]]

$$
F=\begin{bmatrix}
f_{11} & f_{12} & f_{13} \\
f_{21} & f_{22} & f_{23} \\
f_{31} & f_{32} & f_{33}
\end{bmatrix}
$$

$$
\vec{x}_{1}^T\cdot F \cdot \vec{x}_{2}=0
\rightarrow
\begin{pmatrix}
x_{1} \\
y_{1} \\
1
\end{pmatrix}
^T
(F)
\begin{pmatrix}
x_{2} \\
y_{2} \\
1
\end{pmatrix}
=0
$$

Where $\vec{x_{1}}$ is a point in image one and $\vec{x_{2}}$ is a point in image two. and are given in homogeneous coordinates.
![[Pasted image 20260327082807.png]]
![[Pasted image 20260327082817.png]]

