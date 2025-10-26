---
tags:
  - assignment
  - uni
course: Control of Autonomous Systems
due_date:
date: 2025-10-30
progress:
completed: false
---
--- 
#### Assignment Description
![[_CAS-2025-assignment.pdf]]

#### Assignment Answer

##### Opg 1

##### Opg 2

##### Opg 3

In the function block our functions is designed as follows:
```matlab
	function x_dot = fcn(x, u)
	
	x1 = x(1); x2 = x(2);
	
	x1_dot = x1*x2-x1
	
	x2_dot = (-4/3)*x1*x2+(2/3)*x2
	
	x_dot = [x1_dot; x2_dot + u];
```

![[Pasted image 20251026163428.png]]

The following is our mass of preys(yellow) and predators(blue).
![[opg3.png]]

##### Opg 4
