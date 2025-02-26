---
tags:
  - lecture-slide
  - uni
course: Numeriske Metoder
lecture: Lecture 4
date: 2025-02-26
---
> See [[Lecture 4 SVD and error analysis|Slides]]

#### Residual Errors
The residual error should be computed as relative error:
$$
\epsilon_{\mathrm{Re}sidual}=\frac{||Ax-b||}{||b||}
$$
If $m=n$ the residual error should be very close to zero unless the matrix is near singular. For $m>n$, the linear equations are typically from some sort of fitting problem such as [[Least squares problems]]. The value $\epsilon_{\mathrm{Re}sidual}$ indicates how good the fitting model is. It can be seen that a random fitting model would produce $\epsilon_{\mathrm{Re}sidual}=\sqrt{ \frac{m-n}{m} }$. **If your result is not much better than that, you should consider the quality of your model**
>[!Tip]
>Will become bigger for bigger thresholds as near-singular linear combinations of the basis functions are taken out of the optimization

#### Error on Solution
![[Pasted image 20250226094055.png]]

Consider the design matrix and right hand side:
$$
A_{ij}:=\frac{A_{ij}}{\sigma_{i}} \quad i=1\dots m, \quad j=1\dots n
$$
$$
b_{i}:=\frac{b_{i}}{\sigma_{i}} \quad i=\dots m
$$
where $\sigma_{i}$ is the inaccuracy on $b_{i}$. And $n$ is number of collums and $m$ is number of rows.

The error estimate $\delta_{x}$ is then purely given by the [[Uni/Notes/NewNotes/Singular Value Decomposition|SVD]] matrices using
$$
[\delta x]_{j} \approx \sqrt{ \sum^n_{i=1}\left( \frac{V_{ji}}{w_{i}} \right)^2 } \quad j=1\dots n
$$
>[!Tip] 
>Will become smaller for bigger thresholds. Notice that the contributions for w_i’s that are ”removed” by the threshold should be omitted from the sum and the model is ”numerically reduced”. But the error on the reduced model solution due to right hand side uncertainties is completely controlled by this formula


#### 