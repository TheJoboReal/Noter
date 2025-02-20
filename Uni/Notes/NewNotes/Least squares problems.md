---
tags:
  - lecture-slide
  - uni
course: Numeriske Metoder
lecture: Lecture 2
date: 2025-02-12
---
> See [[Lecture Linear Least Squares problems|Lecture 2]]

#### Normal Equation
> [!The Equation] 
> $A^TA \theta=A^Ty$

A dataset consist of:
- A predictor variable $x$ and a response variable $y$.
- A quadratic model of the form, example:
$$
y=a_{0}+a_{1}x+a_{2}x^2
$$
that can be written on matrix form as:
$$
y=A \theta+\epsilon
$$
where $A$ is the design matrix (each row contains 1, $x_{i}$​, and $x^2_{i}$​ for a given data point). $\theta$ is the parameter vector $[a_{0},a_{1},a_{2}]^\text{T}$ and $\epsilon$ is the error term.

Given multiple data points, the system becomes:
$$
\begin{bmatrix}
1 & x_1 & x_1^2 \\
1 & x_2 & x_2^2 \\
... & ... & ... \\
1 & x_n & x_n^2
\end{bmatrix}

\begin{bmatrix}
a_{0}  \\
a_{1} \\
a_{2}
\end{bmatrix}
=
\begin{bmatrix}
y_{1} \\
y_{2} \\
\dots \\
y_{n}
\end{bmatrix}
+
\begin{bmatrix}
\epsilon_{1} \\
\epsilon_{2} \\
\dots \\
\epsilon_{n}
\end{bmatrix}
$$
our goal is to find $\theta$ to minimize the squared goal.

##### Derivin the normal equation
The error function to minimize is the sum of squared errors:
$$
J(\theta)=||A\theta-y||^2=(A\theta-y)^T(A\theta-y)
$$
to find the optimal $\theta$, take the derivative with respect to $\theta$:
$$
\frac{\partial J(\theta)}{\partial \theta}=2A^T(A\theta-y)
$$
Setting the derivative to zero (for minimization):
$$
A^TA\theta=A^Ty
$$
This is the normal equation. It provides a direct way to solve for $\theta$.

This can then be solved by [[LU Decompostion]] or [[Cholesky Decomposition]] or QR Decomposition.

---
#### Tavle noter
$X_{k}$: is a basis function.
$a_{i}$: are the coefficients we want to fit.
Points have different uncertainties.

![[Pasted image 20250212084713.png]]

It can be about trying to predict the output based on previous inputs and outputs(Top), it can also be about trying to find the model(a)by fitting a model to datasets.

#### Formula
We must minimize:
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


#### Selecting a basis function
The first thing we do with the data is plotting it. We then see if we can fit a line to the data, fx a linear function or a Fourrier function.
Normally we will always have more datapoints(rows) that basis functions(collums), making not the matrix not square.
![[Pasted image 20250212092518.png]]



#### Example 
![[Pasted image 20250212085018.png]]

Where $\sigma_{i}$ is the uncertainty, so we need to estimate the $\sigma_{i}$. The $a$ values are the ones we want to fit to the true parabol $[a_{0};a_{1};a_{2}]$.


#### Positive definite matrices
An $N\times N$ matrix **B** is called *symmetric* if $B_{ij}=Bji$ for all $i,j$

A symmertric $N\times N$ matrix **B** is called *positive definite* if $v \cdot B \cdot v >0$ for all **nonzero** vectors $v \in R^N$. (It is called *Positive semi-definite* if $v\cdot B\cdot v\geq 0$) for all **nonzero** vectors $v \in R^N$

![[Pasted image 20250212094514.png]]

#### Cholesky Decomposition
>[!tip]- Cholesky decomposition vs LU decomposition
>* Cholesky decomposition can only be used for symmetric and positive definite matrices. .
>* Compared to LU decomposition, Cholesky decomposition is approximately twice as fast and requires only half the storage.
>* Pivoting is unnecessary and should NEVER be carried out.
>* Cholesky decomposition is numerically more stable than LU decomposition (reason is subtle and beyond the scope of NR).

![[Pasted image 20250212094836.png]]
![[Pasted image 20250212094931.png]]
$A$ matrix must always be [[Least squares problems#Positive definite matrices|positive definite]] to avoid $L_{ii}$ become complex og even 0 resulting in the $L_{ij}$ becoming scuffed.

Cholesky Decomposition $L$ matrix does not have ones in the diagonal like [[LU Decompostion]].
