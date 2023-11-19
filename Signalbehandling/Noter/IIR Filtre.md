Et IIR-filter designes ved at følge proceduren
1. Filtrets specifikationer opstilles
2. Filtrets z-domæne [[Overføringsfunktion Eksempel|overførinsfunktion]] opstilles ved brug af:
	 * [[Formelsamling Calculus#Matched z-transformation|Matched z-transformation]]
	 * Impuls invariant z-transformation
	 * [[Bilineær z-transformation]]
3. Der vælges optimal realisationsstruktur
4. Der fremstilles program til signalprocessor eller tegnes diagram for hardwareløsning

***
#### Matched z-transformation
Følgende procedure benyttes til design af digitale IIR filtre ved brug af matched z-transformation
1. Bestem det analoge prototypefilters frekvensnormerede og faktoriserede [[Overføringsfunktion Eksempel|overførinsfunktion]] $H(s)$.
2. Bestem de analoge frekvensnormerede poler og nulpunkter.
3. Bestem de denormerede poler og nulpunkter.
4. Bestem den digitale [[Overføringsfunktion Eksempel|overførinsfunktion]] koefficienter.
5. Implementer [[Overføringsfunktion Eksempel|overførinsfunktion]] som en kaskadestruktur.