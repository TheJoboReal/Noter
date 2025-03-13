---
tags:
  - exercise
  - uni
course: Numeriske Metoder
date: 2025-03-05
completed: true
---
--- 
#### Exercise Description
![[Lecture5_Tasks.pdf]]


#### Exercise Answer

```cpp
// C++ program for implementation of Bisection Method for

// solving equations

#include<bits/stdc++.h>

#include <iostream>

#include <cmath>

#include "nr3.h"

using namespace std;

#define EPSILON 0.01

  

// An example function whose solution is determined using

// Bisection Method. The function is x^3 - x^2 + 2

double func(double x)

{

return x - cos(x);

}

  

double midpoint(double a, double b){

return (a + b) / 2;

}

  

double bisect(double a, double b, double epsilon){

// Check if a and b have oposite signs to ensure a root exists between them

if(func(a) * func(b) >= 0){

std::cout << "No root exists between a\n and b\n";

return 0;

}

  

double ft = midpoint(a, b);

if(abs(b - a) < epsilon){

return ft;

}

if(func(ft) * func(a) < 0){

return bisect(a, ft, epsilon);

}

if(func(ft) * func(b) < 0){

return bisect(ft, b, epsilon);

}

return ft;

  

}

  

void bisectTable(double a, double b, double epsilon){

int i = 0;

std::cout << "i\a\tb\tft\n";

while(abs(b - a) >= epsilon){

double ft = midpoint(a, b);

std::cout << i << a << "\t" << b << "\t" << ft << "\n";

i++;

if(func(ft) == 0.0){

break;

}else if(func(ft) * func(a) < 0){

b = ft;

}else{

a = ft;

}

}

}

  

int main(){

double a = 0, b = 1;

double epsilon = std::pow(10, -10);

std::cout << "The value of root is : " << bisect(a, b, epsilon) << std::endl;

bisectTable(a, b, epsilon);

return 0;

}
```