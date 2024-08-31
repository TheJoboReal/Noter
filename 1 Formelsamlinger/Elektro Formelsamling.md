### Generelt Kredsløb.
***
Hvordan foregår strøm- og spændingsændringer i det naturlige respens for RC-RL-kredsløb? Når de nu ikke kan være momentane.

***
[[Ohms Lov]].
$$U=R\cdot I$$

***
Hvad er volt.(Hvor J er joule og C er coloumb)
$$
1volt=\frac{1J}{C}
$$

***
EMF. Electromotive Force of Battery


***
Spændingsdeling.
![[Pasted image 20221106174839.png|275]]
$$
U1=U\cdot\frac {R1}{R1+R2}
$$

***

### [[Impedans]]
***
Kapacitiv/induktiv impedans.
$$
Z=R+jX=|Z|\angle\theta
$$
***
RMS(Root Mean Square) spænding for DC signaler.
$$
V_{RMS}=\sqrt{ \frac{1}{T}\int ^T_{0}v^2(t) \, dt  }
$$

***
RMS for sinusformet signaler.
$$
v_{RMS}=\frac{v_{max}}{\sqrt{ 2 }}
$$

***
RMS strøm.
$$
I_{RMS}=\frac{I_{peak}}{\sqrt{ 2 }}
$$

***
Peak Spænding.
$$
V_{pk}=\sqrt{ 2 }\cdot V_{RMS}
$$

***
Vinkelfrekvens.
$$
\omega=2\pi f
$$

***
Impedans defination.
$$
Z=\frac vi
$$
***
Impedans i modstand.
$$
Z_R=R
$$

***
Impedans i kondensator. Måles i ohm
$$
C=Z_C=\frac 1{j\omega C}=-j\frac1{\omega L}
$$

***
Impedans i spole. Måles i ohm
$$
Z_L=j\omega L
$$

***
Resonans.
$$
\omega_0=\frac1{\sqrt{L\cdot c}}
$$

***
### [[Op og Afladning]]

***
>Tau fortæller hvor hurtigt funktionen stiger eller falder.
>Fks efter 1 tau, så er kondensatoren opladet eller afladt til fks 38%
>Fks 0.38 gange 5V. Hvis det fks er et 5V batteri man vil lade op og man starter på 38%

Se onenote for ilustration: [Switches](onenote:https://d.docs.live.net/c230e022fc67d306/Dokumenter/kasper%20blochs%20notesbog/SDU%20Elektronik.one#Switches&section-id={59B354F1-AD2D-4315-8B7F-B888C2B94A3F}&page-id={4490ADFB-F2EF-4DEC-A3BB-328A5DC52447}&end)   ([Web view](https://onedrive.live.com/view.aspx?resid=C230E022FC67D306%21118&id=documents&wd=target%28SDU%20Elektronik.one%7C59B354F1-AD2D-4315-8B7F-B888C2B94A3F%2FSwitches%7C4490ADFB-F2EF-4DEC-A3BB-328A5DC52447%2F%29))

***
Opladning. Hvor A er start procent-opladt.(Altså hvor meget strøm der er til at starte med)
$$
f(t)=A\cdot(1-e^{-\frac t\tau})
$$

***
Afladning. Hvor A er start procent-afladt.
$$
g(t)=A\cdot e^{-\frac t\tau}
$$

***
Tidskonstant Kondensator. Målt i ohm*Farad*
$$
\tau_C=R\cdot C
$$


***
Tidskonstant Spole. Målt i ohm*Farad
$$
\tau_L=\frac LR
$$

***
Lagret energi i spole i enheden Joule
$$
W=\frac{1}{2}\cdot L \cdot i^{2}
$$
***
Tid for opladning af kondensator.
Hvor *A* er den ønsket spænding, altså spændning på spæningsforsyningen i kredsløbet. 
$$
t=-RC \cdot \ln\left( 1-\frac{v}{A} \right)
$$

***
Antal tidskonstanter til opladning.
$$
n=\frac{t}{\tau}
$$

***

<<<<<<< HEAD:Fomelsamlinger og cheatsheets/Elektro Formelsamling.md
### [[Elektro fysik/Halvledere]]
=======
### [[Elektronik/Emner/Halvledere]]
>>>>>>> origin/main:1 Formelsamlinger/Elektro Formelsamling.md

Shockley's ligning. Eller strøm over diode:
I_D er strømmen over dioden.
Hvor T er temperetur, målt i Kelvin
I_S er en konstant som er afhængig af hvilket materiale man arbejder med.
V_D er spændingen over dioden
n er en konstant der kan være mellem 1 og 2.
V_T er spændingskilden.
$$
I_D=I_S(e^{(\frac{v_D}{nV_T})}-1)
$$

***
Silicium spændingsfald er 0.7V og gamacium er 0.3V

Dvs at en diode skal op over 0.7V før den åbner. Dioder er normalt forspændt med 100V i spærreretningen. Se pratisk graf for reference:
![[Pasted image 20221113182727.png|450]]
***


### [[Bipolar Junction Transistor (BJT), FET og PNP]]

##### NPN

![[Pasted image 20221120170955.png|350]] ![[Pasted image 20221120180723.png|350]]
***
Beta/Base er størrelsesforskellen mellem Common/Collector strøm og Emitter strøm.

$$\beta=\frac{I_c}{I_\beta}$$
$$\beta=\frac{\alpha}{1-\alpha}$$
![[Pasted image 20221121090352.png|150]]

***
Spændingsforstærkning.
$$A_V=\frac{V_{out}}{V_{in}}$$
***
Emitter, som er output strømmen, er summen af common/collector og input spænding.
$$I_E=I_c+I_\beta$$

***
Spændinger.
$$V_{BE}-V_{BC}-V_{CE}=0$$

***
Den generelle formel.
![[Pasted image 20221121114611.png|350]]
$$I_B=-\frac{1}{R_B}\cdot V_{BE}+\frac{V_{BB}+V_{in}}{R_B}$$

***



##### PNP

![[Pasted image 20221120175040.png|250]]


### [[Fælles Emitterkobling]]

***
Strøm gennem forspændt diode i lederetning.
$$i_c=\beta\cdot i_B$$
![[Pasted image 20221127202001.png|550]]

***

