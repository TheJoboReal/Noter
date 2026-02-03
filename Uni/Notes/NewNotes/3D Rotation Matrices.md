---
tags:
  - lecture-slide
  - uni
course: Guidance Navigation and Control
lecture: Lecture 1
date: 2026-02-03
---


#### Rotation around z (right-hand rule)
$$
v^0_{b/e}=R_{z}(\psi)v^1_{b/e}
$$
$$
\begin{bmatrix}
v^0_{x} \\
v^0_{y}
\end{bmatrix}
=
\begin{bmatrix}
\cos \psi & -\sin \psi & 0 \\
\sin \psi & \cos \psi & 0 \\
0 & 0 & 1
\end{bmatrix}
\begin{bmatrix}
v^1_{x} \\
v^1_{y} \\
v^1_{z}
\end{bmatrix}
$$
![[Pasted image 20260203120411.png]]


#### Rotation around y (right-hand rule)
$$
v^1_{b/e}=R_{y}(\theta)v^2_{b/e}
$$
$$
\begin{bmatrix}
v^1_{x} \\
v^1_{y} \\
v^1_{z}
\end{bmatrix}
=
\begin{bmatrix}
\cos \theta & 0 & \sin \theta \\
0 & 1 & 0 \\
-\sin \theta & 0 & \cos \theta
\end{bmatrix}
\begin{bmatrix}
v^2_{x} \\
v^2_{y} \\
v^2_{z}
\end{bmatrix}
$$
![[Pasted image 20260203121112.png]]

#### Rotation around x
$$
v^2_{b/e}=R_{x}(\phi)v^b_{b/e}
$$
$$
\begin{bmatrix}
v^2_{x} \\
v^2_{y} \\
v^2_{z}
\end{bmatrix}
=
\begin{bmatrix}
1 & 0 & 0 &  \\
0 & \cos \phi & -\sin \phi \\
0 & \sin \phi & \cos \phi
\end{bmatrix}
\begin{bmatrix}
v^b_{x} \\
v^b_{y} \\
v^b_{z}
\end{bmatrix}
$$
![[Pasted image 20260203121127.png]]
#### Hence
$$
v^e_{b/e}=v^0_{b/e}=R_{z}(\psi)_{z}R(\theta)_{y}R(\phi)_{x}v^b_{b/e}
$$
or
$$
v^e_{b/e}=R^e_{b}(\Theta)v^b_{b/e} \quad , \quad R^e_{b}(\Theta)=R_{z}(\psi)_{z}R(\theta)_{y}R(\phi)_{x}
$$
