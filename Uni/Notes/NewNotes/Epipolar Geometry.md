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
##### Essential Matrix:
![[Pasted image 20260213093845.png]]
$$
E=RS_{T}
$$
It describes the relationship between the left and right camera plane. We have a direction but we lack scale, meaning we dont know how far apart the images are on the scale. But again, we do know the direction of them.

##### Fundamental Matrix:
$$
F=K^T_{R}RK_{L}
$$

##### Epipolar Lines


![[Pasted image 20260213094133.png]]
We know the relative position of 2 images and we want to reconstruct it in construction. We have keypoints in one image and we want to find them in the other plane, as we have only 2 planes/images we know that the keypoints will be on a line.
$$
l_{R}=F_{pL}
$$
$$
l_{L}=F_{pR}
$$
$$
au+bv+c=0
$$

![[Pasted image 20260213094731.png]]
![[Pasted image 20260213094750.png]]
On the images keypoints can be seen and seen that the epipolar lines are going through said points.

>[!Tip] Used to calculate depth maps

#### Properties of Essential and Fundamental matrices
![[Pasted image 20260213094550.png]]
