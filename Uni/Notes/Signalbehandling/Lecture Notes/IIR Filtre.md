---
tags:
  - lecture-note
  - uni
course: Signalbehandling
---
See [[IIR Filters]] af Cornelia.

Et IIR-filter designes ved at følge proceduren
1. Filtrets specifikationer opstilles
2. Filtrets z-domæne [[Overføringsfunktion Eksempel|overførinsfunktion]] opstilles ved brug af:
	 * [[Formelsamling Calculus#Matched z-transformation|Matched z-transformation]]
	 * Impuls invariant z-transformation
	 * [[Bilineær z-transformation]]

	Valg af metode:
- **Frequency Response Requirements:** If the frequency response is the primary concern, methods like Bilinear Transformation or Impulse Invariance may be preferred.
- **Time-Domain Characteristics:** If preserving the impulse response is crucial, Impulse Invariance may be more suitable.
- **Computational Complexity:** Some methods may be computationally more intensive than others. Consider the available resources and real-time processing requirements.
- **Filter Type:** Certain methods may be more suitable for specific filter types (low-pass, high-pass, band-pass).
1. Der vælges optimal realisationsstruktur
2. Der fremstilles program til signalprocessor eller tegnes diagram for hardwareløsning

***
#### Matched z-transformation
Følgende procedure benyttes til design af digitale IIR filtre ved brug af [[Formelsamling Calculus#Matched z-transformation|matched -transformation]]
1. Bestem det analoge prototypefilters frekvensnormerede og faktoriserede [[Overføringsfunktion Eksempel|overførinsfunktion]] $H(s)$.
2. Bestem de analoge frekvensnormerede poler og nulpunkter.
3. Bestem de denormerede poler og nulpunkter.
4. Bestem den digitale [[Overføringsfunktion Eksempel|overførinsfunktion]] koefficienter.
5. Implementer [[Overføringsfunktion Eksempel|overførinsfunktion]] som en kaskadestruktur.