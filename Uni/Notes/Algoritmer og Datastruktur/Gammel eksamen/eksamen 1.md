---
tags:
  - lecture-note
  - uni
course: Algoritmer og Datastruktur
---
#### Opg 1
![[Pasted image 20241220100815.png]]

Vi finder [[Big O notation]].
I første for loop har vi $O(N)$.
I næste for loop har vi $O(log_{2}(N)$.
I inderste loop har vi $O(log_{3}(N)$.
inden return har vi en for loop med $O(N)$

for at finde den totale tidskompleksitet finder vi produktet af de 3 nested for loops.
$$
O(N) \cdot log_{3}(N) \cdot log_{2}(N)
=N \cdot log_{3}(N) \cdot log_{2}(N)

$$

#### Opg 2
![[Pasted image 20241220102437.png]]
