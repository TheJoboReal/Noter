---
tags:
  - lecture-slide
  - uni
course: Multivariat Statistik
lecture: Lecture 3
date: 2025-09-20
---
# Multivariate Statistics – Notes

---

## [[Random Vectors]]

A **random vector** is a collection of random variables written as a column:

$$
\mathbf{X} = (X_1, X_2, \dots, X_p)^T
$$

- Dimension = $p$
- Each $X_i$ is a random variable
- Together they capture **joint behavior** of multiple quantities

### [[Mean Vector]]
Defined as:
$$
\mu = E[\mathbf{X}] = (E[X_1], \dots, E[X_p])^T
$$

Intuition → gives the **“center”** of the distribution.

---

## [[Covariance Matrix]]

$$
\Sigma = \text{Cov}(\mathbf{X}) = E\left[(\mathbf{X} - \mu)(\mathbf{X} - \mu)^T\right]
$$

- $\Sigma_{ij} = \text{Cov}(X_i, X_j)$
- $\Sigma_{ii} = \text{Var}(X_i)$
- $\Sigma$ is always **symmetric** and **positive semi-definite**
  - shorthand: “cov matrix is $p \times p$, symmetric, pos. semi-def.”

### Properties
- $\text{Var}(a^T \mathbf{X}) = a^T \Sigma a$ for any $a \in \mathbb{R}^p$  
  → used heavily in statistics & optimization  
- If $\Sigma$ is singular → some variables are **linearly dependent**

💡 Intuition: $\Sigma$ encodes **spread + correlation structure**.

---

## [[Linear Transformations of Random Vectors]]

If
$$
\mathbf{Y} = A\mathbf{X} + b
$$
where $A$ is a matrix and $b$ is a vector:

- $E[\mathbf{Y}] = A\mu + b$
- $\text{Cov}(\mathbf{Y}) = A \Sigma A^T$

*(margin note: "think PCA setup — new coords are linear combos")*

Explanation:  
- A linear transformation re-expresses the data in a new coordinate system.  
- Means and covariances transform predictably.  
- This is the **foundation of PCA, regression, factor analysis**.

---

## [[Correlation Matrix]]

Sometimes we scale $\Sigma$ into correlations:

$$
R_{ij} = \frac{\Sigma_{ij}}{\sqrt{\Sigma_{ii} \Sigma_{jj}}}
$$

- Diagonal entries = 1
- Easier to interpret than covariances
- Correlation measures **linear association independent of units**

---

## Key Takeaways (Pages 1–3)

- Random vectors generalize univariate random variables.  
- Mean vector = center; covariance matrix = spread + dependence.  
- Linear transformations preserve structure but change scale/orientation.  
- Covariance/correlation are the building blocks for **multivariate analysis (PCA, regression, MANOVA, etc.)**.


---

## [[Multivariate Normal Distribution]]

A central object in multivariate stats is the **multivariate normal (Gaussian)** distribution.

### Definition
We say $\mathbf{X} \sim N_p(\mu, \Sigma)$ if its density is:

$$
f(\mathbf{x}) = \frac{1}{(2\pi)^{p/2} |\Sigma|^{1/2}} 
\exp\left(-\tfrac{1}{2}(\mathbf{x} - \mu)^T \Sigma^{-1} (\mathbf{x} - \mu)\right)
$$

where:
- $\mu \in \mathbb{R}^p$ = mean vector  
- $\Sigma \in \mathbb{R}^{p \times p}$ = covariance matrix, positive definite  

*(shorthand: “normal = bell shape in higher dims”)*
  
---

### Properties

- **Marginals are normal**  
  Any subset of the components of $\mathbf{X}$ also follows a multivariate normal distribution.  

- **Linearity**  
  If $\mathbf{X} \sim N_p(\mu, \Sigma)$ and $\mathbf{Y} = A\mathbf{X} + b$,  
  then $\mathbf{Y} \sim N_q(A\mu + b, A\Sigma A^T)$  

  → connects to [[Linear Transformations of Random Vectors]]  

- **Contours**  
  Level sets of the density are ellipsoids determined by $\Sigma$.  
  → shorthand: “covariance = shape + orientation of ellipses”  

💡 **Intuition**:  
The multivariate normal is the multidimensional generalization of the bell curve.  
It’s mathematically convenient (stable under marginals + linear transforms) and forms the foundation for much of classical statistics (e.g. regression assumptions, PCA, discriminant analysis).  

---

## [[Conditional Distributions (Multivariate Normal)]]

Suppose we partition:

$$
\mathbf{X} =
\begin{bmatrix}
\mathbf{X}_1 \\
\mathbf{X}_2
\end{bmatrix}
\sim N\!\left(
\begin{bmatrix}
\mu_1 \\
\mu_2
\end{bmatrix},
\begin{bmatrix}
\Sigma_{11} & \Sigma_{12} \\
\Sigma_{21} & \Sigma_{22}
\end{bmatrix}
\right)
$$

Then the **conditional distribution** of $\mathbf{X}_1 | \mathbf{X}_2 = x_2$ is:

$$
\mathbf{X}_1 \,|\, \mathbf{X}_2 = x_2
\sim N\!\Big(\mu_1 + \Sigma_{12}\Sigma_{22}^{-1}(x_2 - \mu_2),
\;\Sigma_{11} - \Sigma_{12}\Sigma_{22}^{-1}\Sigma_{21}\Big)
$$

*(margin note: “looks like regression formula!”)*

### Explanation
- The conditional mean = prior mean + adjustment depending on $x_2$  
- The adjustment uses the **cross-covariance** terms  
- The conditional variance = smaller than marginal variance  
  → conditioning reduces uncertainty  

💡 This formula underlies **multivariate regression, Gaussian processes, Bayesian inference**.  

---

## [[Independence vs Uncorrelatedness]]

- If $\mathbf{X} \sim N_p(\mu, \Sigma)$, then:
  - Zero covariance $\implies$ independence  
  - This is a special property of the normal distribution  

*(shorthand: “Normal = cov = indep. not true in general”)*
  
- For general distributions:  
  - Uncorrelated = $\text{Cov}(X_i, X_j) = 0$  
  - Does **not** imply independence  

💡 Example: $X \sim U[-1,1], \; Y = X^2$ → uncorrelated but not independent.

---

## Key Takeaways (Pages 4–7)

- The [[Multivariate Normal Distribution]] is the workhorse of multivariate stats.  
- Marginals, conditionals, and linear transforms remain normal → makes it analytically tractable.  
- [[Conditional Distributions (Multivariate Normal)]] give regression-like formulas.  
- In the normal case, zero covariance = independence (rare property!).  
- Visual intuition: ellipses/ellipsoids determined by $\Sigma$ capture **shape + orientation** of data.

---

## [[Sample Mean and Covariance]]

Given a sample of $n$ independent $p$-dimensional vectors:

$$
\mathbf{X}_1, \mathbf{X}_2, \dots, \mathbf{X}_n \sim \text{iid } N_p(\mu, \Sigma)
$$

### [[Sample Mean]]
Defined as:
$$
\bar{\mathbf{X}} = \frac{1}{n}\sum_{i=1}^n \mathbf{X}_i
$$

Properties:
- $E[\bar{\mathbf{X}}] = \mu$ (unbiased)  
- $\text{Cov}(\bar{\mathbf{X}}) = \frac{1}{n}\Sigma$  

💡 Intuition:  
As $n$ increases, $\bar{\mathbf{X}}$ concentrates around $\mu$ (law of large numbers).  

---

### [[Sample Covariance Matrix]]
Defined as:
$$
S = \frac{1}{n-1}\sum_{i=1}^n (\mathbf{X}_i - \bar{\mathbf{X}})(\mathbf{X}_i - \bar{\mathbf{X}})^T
$$

- $S$ is an **estimator** of $\Sigma$  
- Symmetric, positive semi-definite (like $\Sigma$)  
- Units: variance/covariance between sample components  

*(margin note: “$n-1$ denominator makes unbiased”)*
  
---

## [[Distribution of Sample Mean and Covariance]]

### Sample Mean
If $\mathbf{X}_i \sim N_p(\mu, \Sigma)$, then:
$$
\bar{\mathbf{X}} \sim N_p\!\left(\mu, \tfrac{1}{n}\Sigma\right)
$$

### Scaled Sample Covariance
Key result:  
If $\mathbf{X}_i \sim N_p(\mu, \Sigma)$, then:
$$
(n-1)S \sim W_p(n-1, \Sigma)
$$

where $W_p$ = [[Wishart Distribution]] (multivariate generalization of $\chi^2$).

*(margin note: “like $\chi^2$ but matrix-valued”)*
  
---

## [[Wishart Distribution]]

Definition:  
$W_p(m, \Sigma)$ = distribution of a sum of $m$ independent outer products:

$$
\mathbf{Z}_1, \dots, \mathbf{Z}_m \sim N_p(0, \Sigma), \quad
W = \sum_{i=1}^m \mathbf{Z}_i \mathbf{Z}_i^T
$$

Then $W \sim W_p(m, \Sigma)$.

### Properties
- Mean: $E[W] = m\Sigma$  
- If $p=1$, Wishart reduces to $\chi^2$ with $m$ degrees of freedom.  
- Arises naturally from $(n-1)S$.  

💡 Intuition:  
The Wishart distribution is the **multivariate generalization of the chi-square distribution**.  
It describes the distribution of the sample covariance matrix.  

---

## [[Independence of Sample Mean and Covariance]]

Important fact (for multivariate normal data):  
- $\bar{\mathbf{X}}$ and $S$ are **independent**  

*(margin note: “not true for non-normal data!”)*  

This property is heavily used in inference (e.g. confidence regions, likelihood ratio tests).

---

## Key Takeaways (Pages 8–12)

- [[Sample Mean]] and [[Sample Covariance Matrix]] are natural estimators for $\mu$ and $\Sigma$.  
- For multivariate normal data:  
  - $\bar{\mathbf{X}}$ is normal with reduced variance.  
  - $(n-1)S$ follows a [[Wishart Distribution]].  
- Independence of $\bar{\mathbf{X}}$ and $S$ is unique to the normal case.  
- These results form the backbone of **multivariate hypothesis testing (Hotelling’s $T^2$, MANOVA, etc.)**.

---

## [[Hotelling's T^2 Statistic]]

Hotelling’s $T^2$ is the multivariate generalization of the univariate $t$-test.

### One-Sample Case
Suppose:
$$
\mathbf{X}_1, \dots, \mathbf{X}_n \sim \text{iid } N_p(\mu, \Sigma)
$$

We want to test:
$$
H_0: \mu = \mu_0 \quad \text{vs} \quad H_a: \mu \neq \mu_0
$$

Define:
$$
T^2 = n(\bar{\mathbf{X}} - \mu_0)^T S^{-1} (\bar{\mathbf{X}} - \mu_0)
$$

---

### Distribution
Under $H_0$:
$$
\frac{n-p}{p(n-1)} T^2 \sim F_{p, n-p}
$$

*(margin note: “like a $t^2$ but matrix-valued → $F$ distribution”)*
  
- Numerator df = $p$ (dimension of vector)  
- Denominator df = $n-p$  

---

### Interpretation
- Large $T^2$ → evidence against $H_0$  
- $T^2$ accounts for covariance between variables (unlike doing $p$ separate $t$-tests).  

💡 Intuition:  
Hotelling’s $T^2$ measures the **Mahalanobis distance** of $\bar{\mathbf{X}}$ from $\mu_0$, scaled by $S$.  

---

## [[Confidence Regions for μ]]

Using $T^2$, we can form a **confidence ellipsoid** for the mean vector $\mu$:

$$
\left\{ \mu : n(\bar{\mathbf{X}} - \mu)^T S^{-1} (\bar{\mathbf{X}} - \mu) \leq c \right\}
$$

where $c$ is chosen from the $F$ distribution:
$$
c = \frac{p(n-1)}{n-p} F_{p, n-p, \; 1-\alpha}
$$

- Region shape = ellipsoid centered at $\bar{\mathbf{X}}$  
- Orientation/axes = determined by $S$  

*(margin note: “generalizes univariate CI to multivariate ellipse”)*
  
---

## [[Simultaneous Confidence Intervals]]

Instead of ellipsoids, we can derive **intervals for each component** of $\mu$ that control family-wise error.  

For each $j = 1, \dots, p$:

$$
\mu_j \in \bar{X}_j \pm 
\sqrt{\frac{p(n-1)}{n-p} F_{p, n-p, \; 1-\alpha}} \;
\sqrt{\frac{S_{jj}}{n}}
$$

These intervals are **simultaneous**:  
- Guarantee all contain true $\mu_j$ with probability $1-\alpha$.  
- More conservative than marginal CIs.  

💡 Applications: comparing multiple group means simultaneously.

---

## [[Two-Sample Hotelling's T^2]]

Testing if two mean vectors are equal:

$$
H_0: \mu_1 = \mu_2
$$

Suppose:
- Sample 1: $\mathbf{X}_1, \dots, \mathbf{X}_{n_1} \sim N_p(\mu_1, \Sigma)$  
- Sample 2: $\mathbf{Y}_1, \dots, \mathbf{Y}_{n_2} \sim N_p(\mu_2, \Sigma)$  

Define pooled covariance:
$$
S_p = \frac{(n_1-1)S_1 + (n_2-1)S_2}{n_1 + n_2 - 2}
$$

Statistic:
$$
T^2 = \frac{n_1 n_2}{n_1 + n_2} 
(\bar{\mathbf{X}} - \bar{\mathbf{Y}})^T S_p^{-1} (\bar{\mathbf{X}} - \bar{\mathbf{Y}})
$$

Distribution:
$$
\frac{n_1+n_2-p-1}{p(n_1+n_2-2)} T^2 \sim F_{p, n_1+n_2-p-1}
$$

---

## Key Takeaways (Pages 13–18)

- [[Hotelling's T^2 Statistic]] generalizes the $t$-test.  
- Confidence regions for $\mu$ are **ellipsoids** instead of intervals.  
- [[Simultaneous Confidence Intervals]] handle multiple testing in multivariate setting.  
- Two-sample $T^2$ extends the logic to comparing two populations.  
- The geometry is always about **distances measured in covariance space (Mahalanobis distance)**.
