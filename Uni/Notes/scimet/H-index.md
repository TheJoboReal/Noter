---
created: 2025-12-30
type: definition
tags:
  - definition
  - scimet/metrics
aliases:
---
# `=this.file.name`

**`=this.file.name`** refers to:

> the largest number $h$ such that a researcher has published $h$ papers each cited at least $h$ times.
^def

**Context / Notes (optional):**
- Combines productivity and citation impact
- Insensitive to very highly cited outliers

**Calculation:**
1. Sort publications by citation count (descending)
2. Find maximum $h$ where citation(h) ≥ $h$

**Related:**
- [[Citation Count]]

**Example**
Here a H-index of 6

| Article number | Citied by # | Year |
| -------------- | ----------- | ---- |
| 1              | 500         |      |
| 2              | 300         |      |
| 3              | 100         |      |
| 4              | 50          |      |
| 5              | 25          |      |
| ==6==          | ==10==      |      |
| 7              | 5           |      |
| 8              | 2           |      |
| 9              | 1           |      |


**Source**
- [[merged_3_reduced.pdf#page=28|merged_3_reduced, page 28]]
