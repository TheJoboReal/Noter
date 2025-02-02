---
tags:
  - lecture-note
  - uni
course: Reguleringsteknik
---
#### Definition
![[Pasted image 20240301095852.png]]
![[Pasted image 20240301095354.png]]

>Se video:
><iframe width="560" height="315" src="https://www.youtube.com/embed/XfAt6hNV8XM?si=ZMwzN9irs-w-fz8K" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### Tuning a PID controller
![[Pasted image 20240301095441.png]]
Vi kan se at PI-controlleren har høj gain, da den faktisk overkompenserer, hvor P-controlleren er langsommere men stopper til tiden og overkompenserer ikke.

##### Valg af gain
![[Pasted image 20240301095718.png]]


$$
K(s)PD=k_{P}(1+T_{d}s)
$$