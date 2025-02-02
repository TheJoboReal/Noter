---
tags:
  - lecture-note
  - uni
course: Statistik
---
#### Definition
$S_{xx}$ er samplevarians for alle x-værdier.
Formel for $S_{xx}$, $S_{yy}$ og $S_{xy}$:
$$
S_{xx}=\sum^n_{i=1}x^2_{i}-\frac{\left( \sum^n_{i=1}x_{i} \right)^2}{n}
=\sum^n_{i=1}(x_{i}-\bar{x})^2
$$
$$
S_{yy}=\sum^n_{i=1}y^2_{i}-\frac{(\sum^n_{i=1}y_{i})^2}{n}=
\sum^n_{i=1}(y_{i}-\bar{y})^2
$$
$$
S_{xy}=\sum^n_{i=1}x_{i} y_{i}-\frac{\left( \sum^n_{i=1}x_{i} \right) \cdot (\sum^n_{i=1}y_{i})}{n}
$$
$S^2$ kan også findes med:
$$
\frac{S_{xx}}{n-1}
$$
Vi kan så se at forskellen på $S^2$ og $S_{xx}$ er at $S_{xx}$ er normeret da den bliver divideret med $n$. Det betyder at $S^2$ vil stige jo flere samples man får.

---
$SS_{E}$ er the sum of squared errors:
$$
SS_{E}=SS_{T}-SS_{R}=S_{yy}-\hat{\beta}_{1} \cdot S_{xy}
$$
---
Hvor $\bar{x}$ er den gennemsnitlige x-værdi og $\bar{y}$ er den gennemsnitlige y-værdi.

$\hat{\beta}_{1}$ er hældningen på grafen:
$$
\hat{\beta}_{1}=\frac{S_{xy}}{S_{xx}}=\frac{\text{Cov}}{\text{Var}}
$$
Hældningen af grafen kan findes med $se(\hat{\beta}_{1})$:
$$
\sqrt{ \frac{\hat{\sigma}^2}{S_{xx}} }
$$
---
For at finde t-statistik for en hældning bruger vi:
$$
t=\frac{\hat{\beta}_{1}}{se(\hat{\beta}_{1})}\sim T(n-2)
$$

---


#### Example
![[Pasted image 20241111111508.png]]
![[Pasted image 20241111111519.png]]
![[Pasted image 20241111111530.png]]

