---
tags:
  - lecture-slide
  - uni
course: Calculus
lecture: null
date: 2025-09-07
---
>[!tip] See [Link](https://www.geeksforgeeks.org/engineering-mathematics/eigen-decomposition-of-a-matrix/)

>[!tldr] Eigen decomposition is a method used in linear algebra to break down a square matrix into simpler components called eigenvalues and eigenvectors. This process helps us understand how a matrix behaves and how it transforms data.

#### Definition


#### How to
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


## Example of Eigen Decomposition

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
