---
tags:
  - assignment
  - uni
course: Control of Autonomous Systems
due_date:
date: 2025-10-30
progress: 25%
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

We have now implemented the euler method inside the function block along with a unit delay block:
![[Pasted image 20251026170439.png]]

```matlab
function x_dot = fcn(x, u)

dt = 0.01;

x1 = x(1); x2 = x(2);

x1_dot = x1*x2-x1

x2_dot = (-4/3)*x1*x2+(2/3)*x2

x1_next = x1 + dt * x1_dot;

x2_next = x2 + dt * x2_dot;

x_dot = [x1_next; x2_next + u];
```

The following is our mass of preys(yellow) and predators(blue). Using Euler, it seems that the system becomes unstable as it starts to rise in oscillations. It is still a valid solution, but only for shorter intervals.It is still a balid valid metsolutoion, but only for shorter intervals.

![[opg4.png]]

