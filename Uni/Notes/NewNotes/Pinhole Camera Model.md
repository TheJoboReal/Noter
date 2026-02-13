---
tags:
  - lecture-slide
  - uni
course: Large-scale Drone Perception
lecture: Lecture 2
date: 2026-02-13
---
#### Definition
![[Pasted image 20260213085559.png]]
Describes realationship between the Ray inside the camera and the ray outside the camera. The distortion correction is alreade

![[Pasted image 20260213085717.png]]
Coordinates of pixels in the camera(typically described as pixels), Camera matrix, rotation and translation matrix, actual coordinates in space outside the camera.

OpenCV typically give homogenus coordinates and will thus have to be normelized to get the coordinates we want

> [!Tip] We use this to example estimate the distance to a chair we are looking at. Humans have 2 eyes, ei 2 cameras, meaning that we can triangulate the coordinates outside the camera. Pinhole model is basically Raytracing

Reprojection is going from the outside 3D space to the 2D space of the camera, this we can do with one camera.
Triangulation is going from 2D camera space to the outside 3D space, this we need more than one camera as we only have 2D(Pixels) inside the camera.