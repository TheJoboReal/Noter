---
tags:
  - lecture-slide
  - uni
course: Calculus
lecture: null
date: 2025-09-07
---
>[!tip] See [Link](https://www.geeksforgeeks.org/engineering-mathematics/eigen-decomposition-of-a-matrix/)

#### Eqigen Decomposition
>[!tldr] Eigen decomposition is a method used in linear algebra to break down a square matrix into simpler components called eigenvalues and eigenvectors. This process helps us understand how a matrix behaves and how it transforms data.
-  $\Sigma^{1/2}$**creates correlation/variance structure** (stretch + rotate space according to eigenvalues/eigenvectors).
- $\Sigma^{-1/2}$ **removes correlation/variance structure** (makes the data spherical / uncorrelated).

It’s like having a colored, stretched cloud of points — multiplying by $\Sigma^{-1/2}$ "whitens" it into a nice round sphere.

##### How to
To perform Eigen decomposition on a matrix, follow these steps:

- **Step 1: Find the** [**Eigenvalues**](https://www.geeksforgeeks.org/engineering-mathematics/eigen-values/):

Solve the characteristic equation:

> det (A−λI)=0

Here, A is the square matrix, λ is the eigenvalue, and I is the identity matrix of the same dimension as A.

- ***Step 2: Find the*** [**Eigenvectors:**](https://www.geeksforgeeks.org/engineering-mathematics/eigen-values/)

For each eigenvalue λ, substitute it back into the equation:

> (A−λI)v=0

This represents a system of linear equations where v is the eigenvector corresponding to the eigenvalue λ.

- ***Step 3: Construct the Eigenvector Matrix V:***

Place all the eigenvectors as columns in the matrix V. If there are n distinct eigenvalues, V will be an n×n matrix..

- ***Step 4 Form the Diagonal Matrix Λ:***

Construct a diagonal matrix Λ by placing the eigenvalues on its diagonal:

- ***Step 5: Calculate the Inverse of V:***

Find V-1, the inverse of the eigenvector matrix V, if the matrix is invertible.


##### Example of Eigen Decomposition

$$
A = \begin{bmatrix} 4 & 2 \\ 1 & 3 \end{bmatrix}
$$

---

**Step 1: Find the eigenvalues**

$$
\det(A - \lambda I) = 0
$$

$$
\det \begin{bmatrix} 4-\lambda & 2 \\ 1 & 3-\lambda \end{bmatrix} = 0
$$

$$
(4-\lambda)(3-\lambda) - (2)(1) = 0
$$

$$
\lambda^2 - 7\lambda + 10 = 0
$$

$$
\lambda_1 = 5, \quad \lambda_2 = 2
$$

---

**Step 2: Find the eigenvectors**

For $(\lambda_1 = 5)$:

$$
(A - 5I)v = 0
$$

$$
\begin{bmatrix} -1 & 2 \\ 1 & -2 \end{bmatrix}
\begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = 0
$$

$$
v_1 = \begin{bmatrix} 1 \\ 1 \end{bmatrix}
$$

---

For $(\lambda_{2}=2)$:

$$
(A - 2I)v = 0
$$

$$
\begin{bmatrix} 2 & 2 \\ 1 & 1 \end{bmatrix}
\begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = 0
$$

$$
v_2 = \begin{bmatrix} -2 \\ 1 \end{bmatrix}
$$

---

**Step 3: Form eigenvector matrix \(V\) and diagonal matrix $\lambda$**

$$
V = \begin{bmatrix} 1 & -2 \\ 1 & 1 \end{bmatrix}, 
\quad 
\Lambda = \begin{bmatrix} 5 & 0 \\ 0 & 2 \end{bmatrix}
$$

---

**Step 4: Eigen decomposition**

$$
A = V \Lambda V^{-1}
$$

---

**Step 5 (Optional): Inverse of \(V\)**
  
$$
V^{-1} = \frac{1}{3}
\begin{bmatrix} 1 & 2 \\ -1 & 1 \end{bmatrix}
$$


#### Matrix Square Root

For a **symmetric positive definite (SPD)** matrix Σ\SigmaΣ, the same idea extends:
$$
\Sigma^{1/2}=V diag(\sqrt{ \lambda_{i} })P^T
$$

where the eigenvalues $\lambda_{i}>0$.
This is the matrix that, when multiplied by itself, gives back $\Sigma$:
$$
\Sigma^{1/2}\Sigma^{1/2}=\Sigma
$$
* **Matrix inverse square root**:
$$
\Sigma^{-1/2}=V diag\left( \frac{1}{\sqrt{ \lambda_{i} }} \right)V^T
$$
This is the "undoing" operator, such that:
$$
\sigma^{1/2}\Sigma^{-1/2}=I
$$
Where $I$ is the identity matrix.


#### Practical Use cases
Suppose $x$ is a random vector with covariance Σ\SigmaΣ.  
If we transform it by the inverse square root:

$$
y=Σ−1/2xy = \Sigma^{-1/2} xy=Σ−1/2x
$$

then the new covariance of $y$ is the identity matrix:
$$
Cov(y)=\Sigma^{-1/2}\Sigma \Sigma^{-1/2}= I
$$


This process is called **whitening**: you remove correlations and scale variances so all directions have variance 1.

Example: In machine learning, whitening is used before PCA, ICA, or deep learning preprocessing.