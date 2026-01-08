---
created: 2025-12-30
type: permanent
tags:
  - scimet
  - scimet/metrics
---

## Summary

Citation metrics are quantitative indicators derived from citation data and used to approximate scientific impact at the article, author, and journal level.

> **Definition:**  
> Numerical measures based on citation counts that aim to estimate visibility or influence within the scientific literature.
^def

---

## Levels of Citation Metrics

### Article-Level Metrics

- [[Citation Count]]  
  - Total number of citations to a single publication

---

### Author-Level Metrics

- [[H-index]]  
  - Balances productivity and citation impact across an author's publications

---

### Journal-Level Metrics

- [[Impact Factor]]  
- [[Eigenfactor]]  
- [[Article Influence Score]]

These metrics are commonly used to assess journal visibility and influence.

---

## How Metrics Are Calculated (High-Level)

### Citation Count
- Sum of all citing publications

### H-index
1. Sort papers by citation count (descending)
2. Largest *h* where citation(h) ≥ h

### Impact Factor
$$
\text{IF}_{Y} =
\frac{\text{Citations in year } Y \text{ to articles from } Y-1,Y-2}
{\text{Citable items published in } Y-1,Y-2}
$$

### Eigenfactor
- Citation network–based weighting
- Citations from influential journals count more
- Self-citations excluded
- Five-year citation window

### Article Influence Score
$$
\text{AIS} =
\frac{\text{Eigenfactor}}{\text{Number of articles}}
$$
(normalized so journal average = 1)

---

## Use in Scientific Practice

Citation metrics are used to:
- Evaluate literature relevance
- Compare publication venues
- Support funding, hiring, and promotion decisions

They should be interpreted as **supporting indicators**, not absolute measures of quality.

---

## Limitations and Critique

For systematic issues and misuse, see:
- [[Problems with Citation Metrics]]

Key concerns include:
- Field dependence
- Time lag effects
- Incentive distortion
- Misapplication of journal metrics to individuals

---

## Related Concepts

- [[Literature Search]]
- [[Scientific Method]]
- [[Ethics in Engineering]]
