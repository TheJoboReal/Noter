---
tags:
  - lecture-note
  - uni
course: Kunstig Inteligens
date: 2025-02-01
---
--- 
#### Example

![[Pasted image 20240919123521.png]]
![[Pasted image 20240919123551.png]]

![[Pasted image 20240919123616.png]]
Fejl fra hvor den skal være. Altså hvor den er nu.

![[Pasted image 20240919123658.png]]
Force som er hvor meget vi skubber vognen.

[[Fuzzy logic#**2. Linguistic Values**|Linguistic Values]]
![[Pasted image 20240919123719.png]]

#### Example Statements
![[Pasted image 20240919123932.png]]
![[Pasted image 20240919124202.png]]

##### Rule Table
![[Pasted image 20240919124312.png]]
Hvor $\pm 1$ er small og $\pm 2$ er large og $-$ er neg og $+$ er pos.

##### Quantification
![[Pasted image 20240919124509.png]]
![[Pasted image 20240919124516.png]]
![[Pasted image 20240919124538.png]]


![[Pasted image 20240919124748.png]]
Bemærk at selvom de alle hedder neglarge, så har de forskellige fuzzy sets. Så de skal alle have deres egen quentification.

#### Fuzzification

* Map crisp input values to fuzzy sets
$$
S(x)=\sum_{i \in S} \frac{\mu_{i}(x)}{i}
$$
* Example
![[Pasted image 20240919125219.png]]
Man tjekker alle fuzzy sets og ser hvilke den tilhører og til hvilken grad.

##### Rule Matching
Figuring out which rule(s) in our rule-base should be
activated – and with what certainty.
Example:
	If error is zero and change-in-error is possmall Then force is negsmall

![[Pasted image 20240919130722.png]]


![[Pasted image 20240919130940.png]]
Vi aflæser på vores graf for at se hvor at se hvor vi ligger. Og om reglen er sand.

![[Pasted image 20240919131054.png]]
Vi tager ofte min() af tallene for at vi får et output basseret på det som passer mindst på situationen. Lidt ligesom at tage "worst case".

##### Interence

**Rule 1**
![[Pasted image 20240919131555.png]]
error er sandt med en grad af 1 og change in error er sand med en grad af 0.25

![[Pasted image 20240919131715.png]]
Vi kigger nu på hvor meget vi skal skubbe med vognen. Vi skærer den af ved 0.25 da det er hvor meget den passer på situationen, vi fik 0.25 fra min().

**Rule 2**
![[Pasted image 20240919131913.png]]
![[Pasted image 20240919131924.png]]
Vi gør det samme som i regel 1..

![[Pasted image 20240919131933.png]]Vi har nu de 2 regler som interfere med hinanden.

![[Pasted image 20240919132011.png]]
Vi bruger så Center of Gravity for at finde frem til hvilket input vognen skal have.

![[Pasted image 20240919132047.png]]
Vi defuzzer så og får en værdi.


##### Summary
![[Pasted image 20240919132129.png]]
