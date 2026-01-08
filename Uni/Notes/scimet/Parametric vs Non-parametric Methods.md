---
created: 2025-12-30
type: permanent
tags:
  - scimet/statistics
  - statistics/foundations
aliases:
---

## Summary
Parametric and non-parametric methods differ in the assumptions they make about the underlying data distribution.

> **Definition:**  
> Parametric methods rely on assumptions about population distributions, while non-parametric methods do not require specific distributional assumptions.
^def

---
## Parametric Methods
Parametric methods assume that data follow a specific distribution, typically a normal distribution.

### Common assumptions
- Normality of the dependent variable
- Homogeneity of variance
- Independence of observations

### Characteristics
- Higher statistical power when assumptions are met
- Parameters (e.g. mean, variance) describe the population

---

## Non-parametric Methods
Non-parametric methods make minimal assumptions about the data distribution.

### Characteristics
- Robust to non-normal data
- Often based on ranks rather than raw values
- Lower power compared to parametric methods when parametric assumptions hold

---

## When to Use Which
- Use **parametric methods** when assumptions are reasonably satisfied
- Use **non-parametric methods** when:
  - Data are not normally distributed
  - Sample sizes are small
  - Data are ordinal or heavily skewed

|                                                  | Parametric                | Non-parametric             |
| ------------------------------------------------ | ------------------------- | -------------------------- |
| One independent var., 2 levels Between subjects  | Independent t-test        | Mann-Whitney               |
| One independent var., 2 levels Within subjects   | Dependent (paired) t-test | Wilcoxon                   |
| One independent var., 3+ levels Between subjects | One-way ANOVA             | Kruskal-Wallis             |
| One independent var., 3+ levels Within subjects  | Repeated measures ANOVA   | Friedman                   |
| Two independent var.                             | Two-way ANOVA             | Two-way Friedman (elusive) |
| More independent var.                            | Factorial ANOVA           | Factorial Friedman         |
- Source: [[merged_3_reduced.pdf#page=178|merged_3_reduced, page 178]]
- [[merged_3_reduced.pdf#page=180&selection=0,0,0,11|merged_3_reduced, page 180]] 

---

## Role in Scientific Method
The choice between parametric and non-parametric methods affects:
- Validity of statistical conclusions
- Interpretation of p-values
- Strength of inferential claims

---

## Related Concepts
- [[Inferential Statistics]]
- [[Hypothesis Testing]]
- [[p-value]]
- [[Measurement Scales]]
