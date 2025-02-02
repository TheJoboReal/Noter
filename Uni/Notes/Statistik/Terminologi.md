---
tags:
  - lecture-note
  - uni
course: Statistik
---
#### Stokastisk eksperiment
Et stokastisk eksperiment er det vi på engelsk kalder "Random". Det er eksempelvis at kaste en terning. Så altså et eksperiment hvor vi ikke kan forudsige udfaldet.

#### Deterministisk eksperiment
Et deteministisk eksperminent er fks hvis man bruger en af newtons love til at beregne et udfald på et eksperiment, selvom der vil være en fejlprocent er det stadig noget vi kan forudsige.

---

#### Sandsyndlighed
Ved et stokastisk forsøg:
Hændelse $A\leq S$
Udfør $n$ gentag af forsøg
$N_{n}(A)=$ antal gange hændelse opstår. Fks hvis vi kaster en terning 100 gange og hændelse $A=$ at slå en 6'er, hvor mange gange i løbet af de 100 slår vi 6.

Sandsyndlighed af hændelsen $A$ kan beskrives som:
$$
P(A)=\lim_{ n \to \infty } \frac{N_{n}(A)}{n} 
$$
Vi går mod uendelig fordi hvis vi kaster terning 100 gange, så burde der være en sandsynlighed for at slå en 6'er på 1/6, men det er ikke realiteten, så derfor går vi mod uendelig. Derfor er det bedre beskrevet som en hyppigheds-formel eller relativ forekomst af $A$.

---
#### Regler eller axiomer for sandsynlighed
* For alle hændelser: $0\leq P(A)\leq 1$ sandsynlighed for en hændelse skal altid ligge mellem 0 og 1. E.i. vi kan ikke have en hændelse der er 110% sikker.
* $P(Ø)=0$ sandsynlighed for den tomme mængde skal være lig 0
* $P(S)=1$ sandsynlighed for et eller andet udfald skal være lig med 1.
* Hvis $A\cap B=Ø$(disjunkte) $\rightarrow$ $P(A\cup B)=P(A)+P(B)$ 

---
#### Betinget sandsynlighed
![[Pasted image 20240908203627.png]]

---
#### Total Sandsynlighed
![[Pasted image 20240908204000.png]]
