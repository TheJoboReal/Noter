---
tags:
  - lecture-slide
  - uni
course: Multivariat Statistik
lecture: Lecture 4
date: 2025-09-27
---
> [!link] [Link](https://www.statology.org/bartletts-test/)

#### Definition
$$
B=(n-k)Ins^2-\Sigma(n_{j}-1)Ins^2_{j}/c
$$
* $n$: The total number of observations across all groups
* $k$: The total number of groups
* $ln$: This stands for “natural log”
* $s^2$: The pooled variance
* $n_{j}$: The number of observations in group j
* $s^2_{j}$: The variance of group j
Where $c=1+(\left( \frac{1}{3}(k-1) \right)\cdot(\Sigma\left( \frac{1}{(n_{j}-1)} \right)-\left( \frac{1}{n-k} \right)$
This test statistic follows a Chi-Square distribution with k-1 degrees of freedom. That is $B$~$X^2(k-1)$

If the [p-value](https://www.statology.org/p-values-statistical-significance/) that corresponds to the test statistic is less than some significance level (like $\alpha=0.05$) then we can reject the null hypothesis and conclude that not all groups have the same variance.
