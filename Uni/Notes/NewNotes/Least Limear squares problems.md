---
tags:
  - lecture-slide
  - uni
course: Numeriske Metoder
lecture: Lecture 2
date: 2025-02-12
---
> See [[Lecture Linear Least Squares problems|Lecture 2]]
#### Definition
![[Pasted image 20250212084713.png]]

#### Formula
It can be about trying to predict the output based on previous inputs and outputs(Top), it can also be about trying to find the model(a)by fitting a model to datasets.

$$
x^2=\sum^{N-1}_{{i=0}}\left[ \frac{y_{i}-\sum^{M-1}_{{k=0}a_{k}X_{k}(x_{i})}}
{\sigma_{i}} \right]^2
$$
This is then differentiated into the following:
$$
0=\sum^{N-1}_{{i=0}}\frac{1}{\sigma^2_{i}}\left[ y_{i}-\sum^{M-1}_{j=0}a_{j}X_{j}(x_{i}) \right]X_{k}(x_{i})
$$
Note that it is now linear. We want to minimize as much as possible, to make the points closer to the true values of the function. $a$ is the unknown.

We can then interchange the order of summations:
$$
\sum^{M-1}_{j=0}a_{kj}a_{j}=\beta_{k}
$$
where:
$$
a_{kj}=\sum\frac{X_{j}(x_{i})X_{k}(x_{i})}
{\sigma^2_{i}}
\quad
\text{and}
\quad
\beta_{k}=\sum^{N-1}_{i=0}\frac{y_{i}X_{k}(x_{i})}
{\sigma^2_{i}}
$$
We can then formulate this with a design matrix A and a right hand side b:
$$
A_{ij}=\frac{X_{j}(x_{i})}{\sigma_{i}}
\quad
b_{i}=\frac{y_{i}}{\sigma_{i}}
$$

![[Pasted image 20250212090414.png]]


#### Example 
![[Pasted image 20250212085018.png]]

Where $\sigma_{i}$ is the uncertainty, so we need to estimate the $\sigma_{i}$. The $a$ values are the ones we want to fit to the true parabol $[a_{0};a_{1};a_{2}]$.
