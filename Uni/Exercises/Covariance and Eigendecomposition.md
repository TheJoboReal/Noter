---
tags:
  - exercise
  - uni
course: Multivariat Statistik
date: 2025-09-07
completed: false
---
--- 
#### Exercise Description

![[Problems MULTISTAT lecture 01.pdf]]

#### Exercise Answer

>[!tldr] When you compute the eigenvalues, you’re finding the **principal variances** of the distribution. The eigenvectors tell you the **directions** (rotated axes) where those variances occur.

Given **covariance matrix**:
$$
\Sigma=\begin{bmatrix}
4 & 1 & 2 \\
1  & 9 & -3 \\
2 & -3 & 25
\end{bmatrix}
$$
---

1. **What the covariance matrix represents**

The covariance matrix encodes the variances and covariances of a multivariate distribution.

* The diagonal entries (4, 9, 25) are the variances of each variable.
* The off-diagonal entries (1, 2, -3, etc.) are covariances, which show how pairs of variables vary together.

---
 
 2. **What the eigenvalues represent**
 
 When you do an [[Eigen Decomposition]] of $\Sigma$, you are finding directions (eigenvectors) in which the data has independent spread, and the **eigenvalues** give the **amount of variance in those directions**.
 

* Each **eigenvalue** $\lambda_{i}$ corresponds to the variance of the data along its associated eigenvector $v_{i}$​.
* The eigenvectors define a new coordinate system where the covariance matrix becomes diagonal.
* In PCA terms: the eigenvalues tell you how much variance each principal component explains.