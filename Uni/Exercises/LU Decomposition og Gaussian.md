---
tags:
  - exercise
  - uni
course: Numeriske Metoder
date: 2025-02-05
---
--- 
#### Exercise Description
![[Pasted image 20250205102150.png]]
![[Uni/Slides/Lecture1_Task.pdf|Lecture1_Task]]

#### Exercise Answer

3. Vi bruger [[LU Decompostion]] til at compute *A* matricen.

```cpp
	// Exercise 1:
	// Solve A x = b using LU decomposition, and print the result.

	MatDoub A(3,3);
	A[0][0] = 1.0;	A[0][1] = 2.0;	A[0][2] = 3.0;
	A[1][0] = 2.0;	A[1][1] = -4.0;	A[1][2] = 6.0;
	A[2][0] = 3.0;	A[2][1] = -9.0;	A[2][2] = -3.0;

	VecDoub b(3);
	b[0] = 5.0;
	b[1] = 18.0;
	b[2] = 6.0;


	// evaluate x

    MatDoub upper(3,3);
    MatDoub lower(3,3);

    LUdcmp cmp(A);

    cmp.decompose(lower,upper);

	// print x

    util::print(A, "A");

    util::print(lower, "Lower Matrix");

    util::print(upper, "Upper Matrix");
```

**Output**
```bash
A	Matrix 3x3:
              1	             2	             3	
              2	            -4	             6	
              3	            -9	            -3	

Lower Matrix	Matrix 3x3:
              1	             0	             0	
              3	             1	             0	
              2	      0.533333	             1	

Upper Matrix	Matrix 3x3:
              1	             2	             3	
              0	           -15	           -12	
              0	             0	           6.4	
```

