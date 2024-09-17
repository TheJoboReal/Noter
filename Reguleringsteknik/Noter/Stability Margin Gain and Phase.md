#### Definition
Gain margin er hvilken factor en gain kan blive øget med inden systemet bliver ustabil.

Fase margin er hvor en fase kan drejes inden at systemet bliver ustabil(Når den overgår $-180$ grader). Man vil helst have en fase margin der ligger på $45$ grader eller over.

Negativ margin betyder at systemet er negativ.

#### Nyquist plot Margin
$PM$ hvor meget skal the phase ændres for at vi rammer 1.
$GM$ er hvor meget gain skal ændres for at vi rammer 1.
![[Pasted image 20240322083653.png]]

#### Bode plot margin
Hvis man kigger på fase-skalaen, så skal vi se på hvilken gain der er ved $-180$ grader for at finde vores gain margin.

Omvendt ved gain skal vi kigge på hvornår gain er $0$, og så se hvilken fase den har der. Forskellen fra den aflæste fase til $-180$ er så fase-margin.

Med en [[Lead & Lag kompensatorer#Lead kompensator|Lead kompensator]] kan man løfte grafen så man opnår dette.

> Man må aldrig ændre både fase og gain, da dette kan forsage funky ting.

![[Pasted image 20240322083828.png]]

##### Example
Her kan vi se at der er en meget stor difference fra $-180$ grader til der hvor vi har $0dB$. Mens der ikke er så stor forskel hvis vi kigger på hvor den er $-180$ grader og ser hvor meget gain der skal til for at få $0dB$ der. Så det ville være bedre da det ikke er en drastisk ændring.
![[Pasted image 20240322085606.png]]

