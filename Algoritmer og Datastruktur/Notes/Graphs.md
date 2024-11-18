#### Definition
>  <iframe width="560" height="315" src="https://www.youtube.com/embed/-VgHk7UMPP4?si=FPi5_lBQ5us1ILpd" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

* Adjacency matrix
	– God til dense (tætte) grafer
	– Pladskompleksitet Θ($V^2$ )
* Adjacency list
	– God til sparse (tynde) grafer
	– Pladskompleksitet O(|E|+|V|)

#### Adjacency matrix
<iframe width="560" height="315" src="https://www.youtube.com/embed/B28xAWEerK8?si=MLk20Ep05kulrm5r" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>


#### Topologisk sortering
* En ordning af noder i en directed, acyklisk graf, således at hvis der er en sti fra 𝑣𝑖 til 𝑣𝑗, så skal $v_{j}$ komme efter $v_{i}$ i sorteringen.
* Cykliske grafer kan ikke sorteres topologisk.
* Der kan være mere end en løsning.
* Alle noder skal besøges.

![[Pasted image 20241111142416.png]]
Pilende betyder ikke at det er den eneste vej til den node.
Fks kan man se at den første sortering springer fra $V_{3}$ til $V_{7}$. Pilene betyder at det er et requirement at man har været ved den ene. Det betyder at for at komme til $V_{2}$, så skal man komme fra $V_{1}$.

##### Pseudokode - topsort
![[Pasted image 20241111145125.png]]

![[Pasted image 20241111145238.png]]