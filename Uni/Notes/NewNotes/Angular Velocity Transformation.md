---
tags:
  - lecture-slide
  - uni
course: Guidance Navigation and Control
lecture: Lecture 1
date: 2026-02-03
---

#### Definition
$$
\omega^b_{b/e}=\begin{bmatrix}
1 & 0 & -\sin \theta \\
0 & \cos \phi & \cos \theta \sin \phi \\
0 & -\sin \phi & \cos \theta \cos \phi
\end{bmatrix}
\begin{bmatrix}
\dot{\phi} \\
\dot{\theta} \\
\dot{\psi}
\end{bmatrix}
$$
Let the angular velocity transformation between $\omega^b_{b/e}$ and $\dot{\Theta}$ be $T_{\Theta}(\Theta$ Then, the above equation reads:
$$
w^b_{b/e}=T^{-1}_{\Theta}(\Theta)\dot{\Theta}
$$
Inverting this relation gives:
$$
\dot{\Theta}=T_{\Theta}\omega^b_{b/e} \quad ,\quad \Theta(0)=\Theta_{0}
$$
with:
$$
T_{\Theta}(\Theta)=
\begin{bmatrix}
1 & \sin \phi\frac{\sin \theta}{\cos \theta} & \cos \phi \frac{\sin \theta}{\cos \theta} \\
0 & \cos \phi & -\sin \phi \\
0 & \frac{\sin \phi}{\cos \theta} & \frac{\cos \phi}{\cos \theta}
\end{bmatrix}
$$

>[!Tip] 
>$T_{\Theta}(\Theta)$ is not a rotation matrix.
>$T_{\Theta}(\Theta)$ is singular for $\theta=\pm\frac{\pi}{2}$