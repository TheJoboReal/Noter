---
tags:
  - lecture-note
  - uni
course: Kinematik
---
Opg 1
![[PA 1 opg1]]
***
Opg 2
```matlab
CQ = [-0.5;-0.3;1.9];
```
Z-Y-X Euler angles are : 90, 0, -145.

We use the eul2rotm function in the robotics package.
```matlab
eul2rotm([deg2rad(90) deg2rad(0) deg2rad(-145)])
```
ans = 3×3

0.0000 0.8192 -0.5736  
1.0000 -0.0000 0.0000  
0 -0.5736 -0.8192  

  
***
Opg 3

The transformationmatrix for the camera will then be:
```matlab
camtran = [0, 0.8192, -0.5736, -0.5; 1, 0, 0, -0.3; 0, -0.5736, -0.8192, 1.9; 0, 0, 0, 1]
```
camtran = 4×4

0 0.8192 -0.5736 -0.5000  
1.0000 0 0 -0.3000  
0 -0.5736 -0.8192 1.9000  
0 0 0 1.0000  

  
***
Opg 4

We multiply the transformationmatrix with the points.

```matlab
c_blue= [0.3; 0.9; 1.5; 1];

c_red = [0.4; 0.8; 1.5; 1];

c_green = [0.5; 0.9; 1.5; 1];

  

c_base_blue = camtran * c_blue

c_base_blue = 4×1
```
-0.6231  
0  
0.1550  
1.0000  
```matlab
c_base_red = camtran * c_red

c_base_red = 4×1
```
-0.7050  
0.1000  
0.2123  
1.0000  
```matlab
c_base_green = camtran * c_green

c_base_green = 4×1
```
-0.6231  
0.2000  
0.1550  
1.0000  

  
***
Opg 5

To get the vector from blue to red to green, we subtract red from blue and green from red.

```matlab
vec_blue_red = c_base_red - c_base_blue

vec_blue_red = 4×1
```

Output:
```
-0.0819  
0.1000  
0.0574  
0  
```

```matlab
vec_red_green = c_base_green - c_base_red

vec_red_green = 4×1
```
Output:
```
0.0819  
0.1000  
-0.0574  
0  
```
  
***
Opg 6

We take the cross product of red to blue and red to green.

We then get the normal vector to the worktable.
```matlab
cross([0.0819; 0.1; -0.05774], [-0.0819; 0.1; 0.0574])

ans = 3×1
```
output:
```
0.0115  
0.0000  
0.0164  
```
  
***
Opg 7

We tranform the tool 18cm out.
```matlab
tooltran = [1,0,0,0;0,1,0,0;0,0,1,0.18;0,0,0,1]
```

ans = 4×4
output:
```
1.0000 0 0 0  
0 1.0000 0 0  
0 0 1.0000 0.1800  
0 0 0 1.0000  
```

***