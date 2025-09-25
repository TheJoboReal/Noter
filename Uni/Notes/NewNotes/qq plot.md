---
tags:
  - lecture-slide
  - uni
course: Multivariat Statistik
lecture: Lecture 2
date: 2025-09-11
---

#### Definition
![[qq_plot.png]]

First we use mahalonobis to calculate the statistical distance from the $\mu=\bar{x}$ and then plot it as a QQ-plot to then sammenligne a generated $\sqrt{ \chi }$ dataset with the real model. With that we can see where the median stops and the points start leaning to one side of the line.


#### Example

The following is a test to see if my dice roll function for my DnD game is uniform. We have 10.000 D20 dice rolls and we want to see if the are uniformly distributed.
To determine if the rolls are uniform, we use a QQ-plot.
![[D20_test.png]]

- Our plot shows **stepped horizontal bands** instead of a smooth diagonal. That’s because out data is **discrete integers (1–20)** rather than continuous.
- The points **deviate strongly from the line at both tails** (low and high values). This is exactly what we expect, since a fair D20 is **uniform**, not normal.

What this tells us:

- Our dice rolls are **not normally distributed** (as expected).
- The shape matches a **uniform distribution**, where each integer between 1 and 20 is equally likely.
- The Q–Q plot isn’t the best tool here, since it’s designed for checking normality of continuous data.

**[[chi-squared Distribution]] goodness-of-fit test** → tests whether observed frequencies differ significantly from the expected uniform frequencies.

We test with a $\chi^2$ distribution to make sure:

```matlab
data = readmatrix("d20_test.txt");
counts = histcounts(data, 0.5:1:20.5);
expected = numel(data)/20 * ones(1,20);

[h,p] = chi2gof(1:20, 'Freq', counts, 'Expected', expected);
disp([h p]);
```

```bash
         0    0.7464
```

- `h = 0` → the chi-square test did **not reject** the null hypothesis.
    
- `p = 0.7464` → the p-value is very high (much greater than 0.05), which means your observed distribution is statistically consistent with a **uniform distribution**.

As seen bellow, the rolls are nicely distributed.
![[d20_flat.png]]