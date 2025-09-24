---
tags:
  - lecture-slide
  - uni
course: Statistik
lecture: null
date: 2025-09-24
---
> [!link] [Link](https://www.geeksforgeeks.org/engineering-mathematics/chi-squared-distributions/)

> [!Video] <iframe width="560" height="315" src="https://www.youtube.com/embed/HKDqlYSLt68?si=0bpL57ypPJB223kj" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

#### Definition
The Chi-Squared distribution (also chi-square or $\chi^ 2$-distribution) represents the distribution of the sum of the squares of k independent standard normal random variables. If $Z_{1},Z_{2}\dots,Z_{k}$​ are independent standard normal random variables, the Chi-Squared variable is: $X^ 2=Z^ 2_{1}+Z^ 2_{2}+ \dots + Z^2_{k}$

The Chi-Squared distribution is parameterised by the ***degrees of freedom (df)***, which corresponds to the number of independent random variables being summed.

- The chi-square distribution is actually a series of distributions that vary in shape according to their degrees of freedom. As the degrees of freedom increase, the distribution becomes more symmetric and approaches a normal distribution.
- The chi-square test is a hypothesis test designed to test for a statistically significant relationship between nominal and ordinal variables organized in a bivariate table. In other words, it tells us whether two variables are independent of one another.

#### Probability Density function (PDF) of Chi-Squared Distribution
$$
f(x;k)=\frac{1}{\frac{2^k}{2}\Gamma\left( \frac{k}{2} \right)}x^{(k/2)-1}e^{-x/2},x\geq 0
$$
Where $\Gamma$ is the gamma function.

**Non-Negativity**:
The Chi-Squared distribution is defined only for non-negative values (x≥0x≥0) because it is based on the sum of squared standard normal variables, which are always non-negative.
