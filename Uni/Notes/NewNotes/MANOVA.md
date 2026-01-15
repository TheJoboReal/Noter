---
tags:
  - lecture-slide
  - uni
course: Multivariat Statistik
lecture: null
date: 2026-01-15
---
# Multivariate Analysis of Variance (MANOVA)

This note expands and explains the key ideas from the MANOVA slides, adding intuition, definitions, and interpretation guidance.

---

## 1. What is MANOVA?

**MANOVA (Multivariate Analysis of Variance)** is an extension of ANOVA used when:
- There is **one or more categorical independent variables (factors)**, and
- **Multiple dependent variables** are measured simultaneously.

Instead of testing differences in means for a *single* outcome (ANOVA), MANOVA tests whether **mean vectors** differ across groups.

### Why use MANOVA?
- Dependent variables are often correlated
- Running multiple ANOVAs inflates Type I error
- MANOVA accounts for correlations and tests effects jointly

---

## 2. MANOVA 1 – Assumptions

### 2.1 Multivariate Normality

Each observation vector follows a multivariate normal distribution:

\[
X_{lj} \sim N_p(\mu_l, \Sigma_l)
\]

- \(p\): number of dependent variables
- \(\mu_l\): mean vector for group \(l\)
- \(\Sigma_l\): covariance matrix for group \(l\)

This means **every linear combination** of the dependent variables is normally distributed.

---

### 2.2 Homoscedasticity (Equality of Covariance Matrices)

\[
\Sigma_1 = \Sigma_2 = \cdots = \Sigma_g
\]

- Multivariate analogue of equal variances in ANOVA
- Ensures group differences are due to **mean shifts**, not dispersion differences

---

### 2.3 Random Samples

- Observations are independently sampled
- No dependency within or across groups

---

### 2.4 Mean Decomposition

Group means are decomposed as:

\[
\mu_l = \mu + \tau_l
\]

- \(\mu\): grand mean vector
- \(\tau_l\): treatment (group) effect

Null hypothesis:

\[
H_0: \tau_1 = \tau_2 = \cdots = \tau_g = 0
\]

Meaning: **no group has a distinct multivariate mean**.

---

## 3. MANOVA 1 – Decomposition (Sum of Squares and Products)

MANOVA decomposes total variability into:
- **Between-group variation (SSB)**
- **Within-group variation (SSW)**

Because there are multiple variables, variability is measured using **Sum of Squares and Products (SSP) matrices**, not scalars.

---

### 3.1 Observation Decomposition

Each observation can be written as:

\[
X_{lj} = \bar{X} + (\bar{X}_l - \bar{X}) + (X_{lj} - \bar{X}_l)
\]

Where:
- \(\bar{X}\): grand mean vector
- \(\bar{X}_l - \bar{X}\): group effect
- \(X_{lj} - \bar{X}_l\): individual deviation (error)

---

### 3.2 SSP Matrix Decomposition

\[
SST = SSB + SSW
\]

- **SST**: total variability
- **SSB**: variability due to group differences
- **SSW**: variability within groups

Each is a \(p \times p\) matrix capturing:
- variances (diagonal)
- covariances (off-diagonal)

---

## 4. MANOVA 1 – MANOVA Table

| Source | SSP Matrix | Degrees of Freedom | Mean SSP |
|------|-----------|-------------------|----------|
| Between | SSB | \(g - 1\) | \(S_B = SSB / (g - 1)\) |
| Within | SSW | \(n - g\) | \(S_W = SSW / (n - g)\) |
| Total | SST | \(n - 1\) | \(S_T = SST / (n - 1)\) |

Unlike ANOVA, there is **no single F-statistic**.

---

## 5. MANOVA 1 – Test Statistics

### 5.1 Wilks’ Lambda (Λ*)

\[
\Lambda^* = \frac{|SSW|}{|SSB + SSW|}
\]

- \(|\cdot|\) denotes determinant
- Determinant represents **generalized variance** (volume of variance ellipsoid)

### Interpretation
- Λ* ≈ 1 → groups are similar
- Λ* ≈ 0 → strong group separation

---

### 5.2 Decision Rule

- Reject \(H_0\) if Λ* is sufficiently small
- Small Λ* means **between-group variation dominates**

---

### 5.3 Parameter Estimation

- **If \(H_0\) is accepted**:
  - \(\hat{\mu} = \bar{X}\)
  - \(\hat{\Sigma} = S_T\)

- **If \(H_0\) is rejected**:
  - \(\hat{\mu}_l = \bar{X}_l\)
  - \(\hat{\Sigma} = S_W\)

---

## 6. MANOVA 1 – Post Tests

MANOVA only tells us **that a difference exists**, not:
- which groups differ
- which variables matter most

Common post-hoc approaches:
- Univariate ANOVAs (with multiple-testing correction)
- Pairwise MANOVA comparisons
- Discriminant analysis
- Canonical variate inspection

Goal: identify **which populations and variables caused rejection**.

---

## 7. MANOVA 2 – Two-Factor MANOVA

Extends MANOVA to **two categorical factors**.

### 7.1 Decomposition

\[
SST = SSB_1 + SSB_2 + SS_{int} + SSW
\]

Where:
- \(SSB_1\): main effect of factor 1
- \(SSB_2\): main effect of factor 2
- \(SS_{int}\): interaction effect
- \(SSW\): residual variation

---

### 7.2 Interaction Hypothesis

\[
H_0: \text{No systematic interaction}
\]

Tested using Wilks’ Lambda:

\[
\Lambda^* = \frac{|SSW|}{|SS_{int} + SSW|}
\]

- Small Λ* → **multivariate interaction exists**
- Large Λ* → effects are additive

---

## 8. Key Intuition Summary

- MANOVA compares **mean vectors**, not scalar means
- Uses **covariance structure** explicitly
- Tests effects using **generalized variance**
- More powerful than multiple ANOVAs when variables are correlated
- Closely related to discriminant analysis and canonical correlations
