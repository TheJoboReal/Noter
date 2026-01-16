---
tags:
  - lecture-slide
  - uni
course: Multivariat Statistik
lecture: null
date: 2026-01-16
---
# Regression and the General Linear Model (GLM)

This note explains linear regression from a **general linear model (GLM)** perspective, covering univariate, multiple, and multivariate regression, and how model comparison works.

---

## 1. The General Linear Model (Big Picture)

All models in these slides are special cases of the **General Linear Model**:

$$
Y = Z\beta + \varepsilon
$$

Where:
- $Y$: response variable(s)
- $Z$: design matrix (predictors + intercept)
- $\beta$: regression coefficients
- $\varepsilon$: random error

This framework unifies:
- simple linear regression
- multiple regression
- multivariate regression
- ANOVA / MANOVA

---

## 2. Scenario: Student Performance

A university wants to understand student performance.

- **Response variable**:
  - $Y$: final exam score

- **Predictors**:
  - $z_1$: hours studied
  - $z_2$: attendance rate (hours at lectures)

Goal: explain and predict exam scores using student behavior.

---

## 3. Simple Linear Regression

### Model

$$
Y = \beta_0 + \beta_1 z + \varepsilon
$$

- $\beta_0$: intercept (expected score when $z = 0$)
- $\beta_1$: slope (change in score per hour studied)
- $\varepsilon$: random noise

---

### Matrix Form

$$
Z =
\begin{bmatrix}
1 & 0 \\
1 & 1 \\
1 & 2 \\
1 & 3 \\
1 & 4
\end{bmatrix},
\quad
y =
\begin{bmatrix}
-3 \\
0 \\
2 \\
4 \\
7
\end{bmatrix}
$$

The first column of ones represents the intercept.

---

### Least Squares Estimation

$$
\hat{\beta} = (Z'Z)^{-1} Z'Y
$$

Estimated coefficients:

$$
\hat{\beta}_0 = -2.8, \quad \hat{\beta}_1 = 2.4
$$

Interpretation:
- Each additional hour studied increases the exam score by approximately $2.4$ points.

---

### Residuals and Error

Residuals:

$$
\hat{\varepsilon} = Y - \hat{Y}
$$

Sum of Squared Errors (SSE):

$$
SSE = \hat{\varepsilon}' \hat{\varepsilon} = 0.4
$$

This measures **unexplained variation**.

---

## 4. Univariate Multiple Linear Regression

### Model

$$
Y = \beta_0 + \beta_1 z_1 + \beta_2 z_2 + \cdots + \beta_r z_r + \varepsilon
$$

- One response variable
- Multiple predictors

---

### Matrix Form

$$
Y = Z\beta + \varepsilon
$$

Where:

$$
Z =
\begin{bmatrix}
1 & z_{11} & z_{12} & \cdots & z_{1r} \\
\vdots & \vdots & \vdots & & \vdots \\
1 & z_{n1} & z_{n2} & \cdots & z_{nr}
\end{bmatrix}
$$

---

### Least Squares Estimator

$$
\hat{\beta}_{LS} = (Z'Z)^{-1} Z'Y
$$

Residuals and error:

$$
\hat{\varepsilon} = Y - Z\hat{\beta}
$$

$$
SSE = \hat{\varepsilon}'\hat{\varepsilon}
$$

---

### Example Interpretation

- $z_1$: hours studied
- $z_2$: hours at lectures

Each coefficient measures the **partial effect** of a predictor while holding the others fixed.

---

## 5. Multivariate Linear Regression

### Model

Now we have **multiple response variables**:

$$
\begin{bmatrix}
Y_1 & Y_2 & \cdots & Y_m
\end{bmatrix}
=
Z
\begin{bmatrix}
\beta_{01} & \beta_{02} & \cdots & \beta_{0m} \\
\beta_{11} & \beta_{12} & \cdots & \beta_{1m} \\
\vdots & \vdots & \ddots & \vdots \\
\beta_{r1} & \beta_{r2} & \cdots & \beta_{rm}
\end{bmatrix}
+
\begin{bmatrix}
\varepsilon_1 & \varepsilon_2 & \cdots & \varepsilon_m
\end{bmatrix}
$$

- Same predictors explain multiple outcomes
- Errors across responses may be correlated

---

### Least Squares Estimation

$$
\hat{\beta}_{LS} = (Z'Z)^{-1} Z'Y
$$

Where:
- $\hat{\beta}$ is a $(r+1) \times m$ matrix
- Each column corresponds to one response variable

---

### Example

- $z$: hours studied
- $Y_1$: final exam score in class 1
- $Y_2$: final exam score in class 2

The model estimates **multiple regression equations simultaneously**, accounting for correlation between responses.

---

## 6. Error Covariance Matrix

In multivariate regression, error is summarized by:

$$
\hat{\Sigma} = \frac{\hat{\varepsilon}'\hat{\varepsilon}}{n}
$$

- $\hat{\Sigma}$ is an $m \times m$ covariance matrix
- Diagonal entries: residual variances
- Off-diagonal entries: residual covariances

---

## 7. Model Simplification (Model Comparison)

We compare:
- **Full model** (more predictors)
- **Reduced model** (fewer predictors)

Goal: test whether removing predictors significantly worsens model fit.

---

### Univariate Case (F-test)

$$
F_0 =
\frac{(SSR_{\beta} - SSR_{\beta_1}) / (r - q)}
{\hat{\sigma}^2}
$$

Decision rule:

$$
\text{Reject } H_0 \text{ if } F_0 > F_{r-q, n-r-1, \alpha}
$$

---

### Multivariate Case (Wilks’ Lambda)

$$
\Lambda =
\left( \frac{|\hat{\Sigma}|}{|\hat{\Sigma}_1|} \right)^{n/2}
$$

Interpretation:
- $\Lambda \approx 1$: reduced model is sufficient
- $\Lambda \approx 0$: removed predictors are important

---

## 8. Connection to MANOVA and ANOVA

- Regression, ANOVA, and MANOVA are **all GLMs**
- Categorical predictors lead to ANOVA / MANOVA
- Continuous predictors lead to regression
- Multiple responses lead to multivariate models

All share:

$$
Y = Z\beta + \varepsilon
$$

---

## 9. Key Intuition Summary

- Regression is geometric: projection of $Y$ onto the column space of $Z$
- Least squares minimizes **sum of squared residuals**
- Multivariate regression models **correlated outcomes**
- Model simplification tests whether predictors add **explanatory power**
- Wilks’ Lambda compares **generalized error variance**

---

## Mental Map

Simple regression → Multiple regression → Multivariate regression  
ANOVA → MANOVA → Multivariate regression  

All are special cases of the **General Linear Model**
