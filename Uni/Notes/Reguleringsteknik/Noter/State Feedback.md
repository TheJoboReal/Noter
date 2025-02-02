---
tags:
  - lecture-note
  - uni
course: Reguleringsteknik
---
#### Definition
![[Pasted image 20240412092516.png]]
tilstands feedback går ud på at vi vil kunne placere egenværdier lige hvor vi vil.
![[Pasted image 20240412092637.png]]
hvor $F_{c}$ er feedback.
![[Pasted image 20240412093509.png]]
vi kan ikke ændre direkte $a_{n}$ men ved at ændre på $f_{n}$ kan vi styre $a_{n}$ som vi vil, og dermed ligge vores poler hvor end vi vil.

#### Algorithm for pole assignment
![[Pasted image 20240412093638.png]]
$F$ kan så sættes på vores reguleringssystem.

##### Example: Pole Assignment
![[Pasted image 20240412093751.png]]
![[Pasted image 20240412093758.png]]
![[Pasted image 20240412093808.png]]

##### Example 2: Pole Assignment
![[Pasted image 20240412093837.png]]
hvor igen $[2, -3;4,-5]$  er $A$ matricen og $[2,0;3,1]$ er $B$ matricen.

![[Pasted image 20240412094000.png]]
![[Pasted image 20240412094011.png]]
*place* kan ikke placere flere poler oven i hindanden. Til det kan man også bruge *acker*, men place er fortrukket.