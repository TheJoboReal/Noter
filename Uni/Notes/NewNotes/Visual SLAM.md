---
tags:
  - lecture-slide
  - uni
course: Large-scale Drone Perception
lecture: Lecture 7
date: 2026-03-27
---

#### Definition
Steps of a SLAM algorithm.

**Algorithm initialization**

Map initialization
- Given two images
	- match features estimate camera motion 
	- 3D point reconstruction (with associated feature descriptors) 
	- Following bundle adjustment refinement

**Algorithm main loop**.

 For new features
- match features with prev. frame 
- match features with map estimate camera location* 
- add 3D points to map from triangulation with previous frame* 
* bundle adjustment

So take new frames and compare them to the prior frames, to then extend the map.