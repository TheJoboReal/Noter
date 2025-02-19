---
tags:
  - lecture-slide
  - uni
course: Numeriske Metoder
lecture: Lecture 3
date: 2025-02-19
---
> [!Video]
> <iframe width="560" height="315" src="https://www.youtube.com/embed/P8hT5nDai6A?si=q0elH6YrjwvxhrsL" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

#### Example and Definition
 Write a linear equation that best fits the data in the table shown below:
$$
\begin{bmatrix}
x & 1 & 2 & 3 & 4 & 5 & 6 & 7 \\
y & 1.5 & 3.8 & 6.7 & 9.0 & 11.2 & 13.6 & 16
\end{bmatrix}
$$
1. Calculate the following values:
$$
\begin{bmatrix}
x & y & xy & x^2 \\
1 & 1.5 & 1.5 & 1 \\
2 & 3.8 & 7.6 & 4 \\
3 & 6.7 & 20.1 & 9 \\
4 & 9.0 & 36 & 16 \\
5 & 11.2 & 56 & 25 \\
6 & 13.6 & 81.6 & 36 \\
7 & 16 & 112 & 49 \\
28 & 61.8 & 314.8 & 140
\end{bmatrix}
$$
2. Sum each column.
$$
\sum x=28 \quad \sum y=61.8 \quad \sum xy=314.8  \quad \sum x^2=140
$$
3. Now construct the linear function:
$$
y=mx+b
$$
$$
 m =\frac{n \sum xy -\sum x \cdot \sum y}{n \sum x^2 -\left( \sum x \right)^2}
 \quad ,\quad b=\frac{\sum y -m \cdot \sum x}{n}
$$
where $n= \text{number of values}$.

4. We can then test the precision of the function by inserting the data:
$$
y=2.41x-0.83 \rightarrow y=2.41(2)-0.83=3.99
$$
$$
y=2.41x-0.83 \rightarrow y=2.41(5)-0.83=11.22
$$
note that these values are close to their corresponding value in the table.
$$
3.99 \approx 3.8 \quad \text{and} \quad 11.22 \approx 11.2
$$
