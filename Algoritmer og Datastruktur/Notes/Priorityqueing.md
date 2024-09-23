#### Binary trees
![[Pasted image 20240923123901.png]]
* tree – binære og andre; rekursiv datastruktur(Alle bogstaverne på træet over)
* node – element med data
* edge – forbindelse mellem noder
* root – indgangspunktet til træet. Det eneste sted man kan tilgå et træ
* child – nul, et, to eller flere (0..m)
* parent – roden er forældreløs
* leaves – noder uden børn
* depth – afstand fra node til root
* height – længste distance fra node til leaf (blad)
* sibling, grandparent, grandchild – sædvanlige familierelationer
##### Komplet Binært Træ
![[Pasted image 20240923124720.png]]

##### Perfekt Binært Træ
![[Pasted image 20240923124743.png]]
Hvor $h$ er højde på træet(I dette tilfælde er højden 3)
Et perfekt binært træ er også et [[Priorityqueing#Komplet Binært Træ|komplet træ]].

##### Balanceret Binært Træ
![[Pasted image 20240923124759.png]]
De vigtige ved binære træer er at vi skal kan finde ned til et blad hurtigst muligt. Derfor må et subtræ ikke være større end 1.

#### Prioritetskø – komplet binært træ
Køen vokser fra venstre mod højre på laveste niveau
![[Pasted image 20240923125342.png]]
Implementation er et almindeligt array hvor indeks 0 ikke benyttes
![[Pasted image 20240923125437.png]]
**Heap Priority**
* Roden indeholder det mindste element.
* Enhver node er mindre end alle dens efterkommere.
* En prioritetskø kaldes sommetider for en binary heap.
* Dette må ikke forveksles med heapen i C++ runtime environment.

##### Komplette Binære træer heaps
**Insert 14**
![[Pasted image 20240923132119.png]]
![[Pasted image 20240923132130.png]]
31 bliver flyttet ned så der bliver plads til 21's højre barn
Da det vi skal indsætte er lavere end 21, så flytter vi 21 en ned så vi kan indsætte 14.

![[Pasted image 20240923132141.png]]
**DeleteMin**
![[Pasted image 20240923132518.png]]
![[Pasted image 20240923132525.png]]
![[Pasted image 20240923132533.png]]

