---
tags:
  - lecture-slide
  - uni
course: Statistik
lecture: null
date: 2025-09-21
---
>[!Link] See [Link](https://www.geeksforgeeks.org/engineering-mathematics/students-t-distribution-in-statistics/)

#### Definition
As we know [[Uni/Notes/NewNotes/Normal Distribution|Normal Distribution]] assumes two important characteristics about the dataset: a large sample size and knowledge of the population standard deviation. However, if we do not meet these two criteria, and we have a small sample size or an unknown population standard deviation, then we use the t-distribution.

![[Pasted image 20250921195327.png]]

##### What is t-distribution?

Student's t-distribution, also known as the t-distribution, is a probability distribution that is used in statistics for making inferences about the population mean when the sample size is small or when the population standard deviation is unknown. It is similar to the standard normal distribution (Z-distribution), but it has heavier tails. The t-score represents the number of standard deviations the sample mean is away from the population mean.

##### T-Score
The T-score, also known as the t-value or t-statistic, is a standardized score that quantifies how many standard deviations a data point or sample mean is from the population mean. It is commonly used in statistical hypothesis testing, particularly in scenarios where the sample size is small or the population standard deviation is unknown.

The formula for calculating the T-score in the context of a t-distribution is given by:
$$
t=\frac{\bar{x}-\mu}{s \sqrt{ n }}
$$

where,
* $t=\text{t-score}$,
* $\bar{x}=\text{sample mean}$,
* $\mu=\text{population mean}$,
* $s=\text{standard deviation of the sample}$,
* $n=\text{sample size}$.

As we know, we use t-distribution when the standard deviation of the population is unknown and the sample size is small. The formula for the t-distribution looks very similar to the normal distribution; the only difference is that instead of the standard deviation of the population, we will use the standard deviation of the sample.


#### When to use the t-distribution?
Student's t Distribution is used when :
* The sample size is $30$ or less than $30$.
* The population standard deviation$(\sigma)$ is unknown.
* The population distribution must be [[Unimodal]] and skewed.