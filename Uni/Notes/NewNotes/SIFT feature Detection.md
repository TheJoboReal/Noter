---
tags:
  - lecture-slide
  - uni
course: Large-scale Drone Perception
lecture: Lecture 5
date: 2026-03-13
---

#### Definition
**What is SIFT**
Two main components: 
- Feature detector 
- Feature descriptor 
 
 Designed to be: 
 - Scale invariant 
 - Rotation invariant 
 - Robust to noise and moderate viewpoint changes 


 **Why local features?**
	- Stable landmarks for matching between images
	- Useful for: SLAM, mapping, 3D reconstruction
- Key requirements for a good feature:
	- Repeatable
	- Distinctive
	- Robust to scale, rotation, illumination

#### Feature Detection
See how the Hat response to an input signal

![[Pasted image 20260313084818.png]]
![[Pasted image 20260313084843.png]]
![[Pasted image 20260313084853.png]]

#### Example of SIFT matching
![[Pasted image 20260313091918.png]]
