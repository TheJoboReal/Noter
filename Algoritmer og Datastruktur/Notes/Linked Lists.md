#### Definition
**Singly Linked List**
![[Pasted image 20241118132608.png]]
**Indsætte eller slette indexer**
* En linked list er rigtig god til at indsætte eller slette elementer, da hvis vi fks skal indsætte "Q" mellem "B" og "C", så skal vi kun ændre "B" til at pointe til "Q" og "Q" skal så pointe til "C".

* I et normalt array er vi nød til at skubbe alle indexer der kommer efter det vi har sat ind eller slettet en plads til venstre hvis vi sletter, eller en plads til højre hvis vi indsætter. Det kan blive enormt krævende hvis vi nu har en list med over en million indexer og vi så vil slette index nr 3.

Så at indsætte eller fjerne elementer i en linked list har tidskompleksiteten $O(1)$ hvor at lokalisere et element har en kompleksitet på $O(n)$.

**Lokalisering af indexer**
Når det kommer til at finde et element i vores list, så er arrays meget hurtigere.


<iframe width="560" height="315" src="https://www.youtube.com/embed/N6dOwBde7-M?si=fABxvj07YJ8InPAL" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>