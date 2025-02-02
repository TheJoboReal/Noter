---
tags:
  - lecture-note
  - uni
course: Forstaerkningsteknik
---
Formlen for at finde den maksimale fejl i en forstærker:
$$
K_{f}=1-\frac{1}{1+\frac{1}{\beta}\cdot A_{ol}}
$$
Hvor $\beta$ kan regnes med $-\frac{v_{id}}{v_{v_{o}}}$, altså $\beta=\frac{R_{1}}{R_{1}+R_{2}}$ og $\alpha$ kan regnes med $\frac{v_{id}}{v_{in}}$.
og åbensløjfeforstærkningen $A_{ol}$ kan findes i databladet for tilsvarende forstærkermodel, eller udregnes med følgende formel:
$$
A_{ol}=\frac{V_{o}}{V_{id}}
$$
og lukkesløjfeforstærkningen kan findes med:
$$
A_{CL}=\frac{V_{o}}{V_{in}}=\frac{\alpha}{\beta}\cdot K_{f}=\frac{\alpha}{\beta}\cdot \frac{1}{1+\frac{1}{\beta \cdot A_{ol}}}
$$
