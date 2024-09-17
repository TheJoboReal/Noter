
### Det græske alfabet

![[AncientGreekAlphabet2-fab1ad2.jpg]]
***
### Masser og Densiteter

Masse ud fra volume og densitet.
$$m=V\cdot\rho$$


***


### Lineær Bevægelse

***
$$
v=v_0+at
$$
$$
x-x_0=v_0t+\frac12at^2
$$
$$
v^2=v_0^2+2a(x-x_0)
$$
$$
x-x_0=\frac12(v_0+v)t
$$
$$
x-x_0=vt-\frac12 at^2
$$
***
Strækning afledt med hensyn til tiden giver strækningsændringen, altsåhastighed.
$$\frac{dx}{dt}=v$$
Hastighed afledt med hensyn til tiden, giver hastighedsændringen, altså acceleration.
$$\frac{dv}{dt}=a$$

***
### Rotationslegemer
##### Eksempel på Rotationkraftanalyse

![[Pasted image 20221103103641.png]]

##### Frit legeme analyse.

![[Pasted image 20221103103455.png]]

##### [[Stift legemes Rotation]]

***
Rotationsvinkel. I radianer.
![[Pasted image 20221102205904.png|250]]


$$
\vec{\theta}(t)=\theta(t)\cdot \theta
$$
$$
\omega_{av}=\frac{\theta(t+\Delta t)-\theta(t)}{\Delta t}
$$

***
Vinkelhastighed. i enheden *s^-1*
![[Pasted image 20221102205951.png|250]]

$$
\vec\omega=\frac{d\theta(t)}{dt}\hat\omega
$$
$$
\theta(t)=\theta_0+\omega_0 t
$$
***
Vinkelacceleration. I enheden *s^-2*
$$
\vec\alpha=\frac{d\omega(t)}{dt}\cdot\alpha=\frac{d^2\theta}{dt^2}\cdot\alpha
$$
$$\alpha=a\cdot r$$

***
Middelaccelerationen.

$$
\alpha_{av}=\frac{\omega(t+\Delta t)-\omega(t)}{\Delta t}
$$

***
Punkts lineære bevægelse.
![[Pasted image 20221103083820.png|250]]
$$
v=\frac{ds}{dt}=r\frac{d\theta}{dt}=r\omega
$$

***
Afstand på cirkelbue.
$$
s=r\theta
$$

***
Tangentiale acceleration.
![[Pasted image 20221103083709.png|250]]
$$
a_t=\frac{dv}{dt}=\frac d{dt}(\omega r)=\frac{d\omega}{dt}r=\alpha r
$$

***
Den radiale(centripetale acceleration).
$$
a_r=\frac {v^2}r=\omega^2r
$$

***
Total acceleration.
![[Pasted image 20221103083734.png|200]]
$$
\vec a_{tot}=\vec a_r+\vec a_t
$$

***





##### Analogi mellem translation og rotation

>Ved konstant acceleration og konstant vinkelacceleration.


![[Pasted image 20221123210631.png]]

![[Pasted image 20221103104853.png]]

![[Pasted image 20221102211308.png]]

![[Pasted image 20221103083940.png]]

![[Pasted image 20221103082912.png]]

***


##### [[Inertimoment og flytningsmoment]]

***
$$\text{Masseinertimoment. Hvor enheden er } kg\cdot m^2$$
$$
I=\sum_i \Delta m_i R_i^2
$$
$$
I=\lim_{\Delta m\rightarrow 0}(\sum_i R_i^2\Delta m_i)=\int_{legeme}R^2dm
$$


***
[[Flytningsmoment]]/Steiners formel/Flytningsformlen. Hvor *M* er legemets totale masse og *d* er afstanden mellem de to rotationsakser, *O* og *P*
![[Pasted image 20221102211744.png|200]]

$$
I_p=I_{CM}+Md^2\Rightarrow\text{ Hvor }I_{CM}\text{ er rotationen/inertimomentet omkring legemets center og mass}
$$

***

##### Masseinertimoment for simple legemer

>Jo mere inertimoment et legeme har, jo hurtigere bevæger det sig. Fordi at at der bliver mindre rotationsenergi og dermed mere translationsenergi(Hvor translationsenergi er fremafrettet energi, altså forward momentum.)

![[Pasted image 20221103092354.png]]
***

##### Kraftmoment og energi

***
Kinetisk energi i rotation.
$$
K=v_i=R_i\omega
$$


***
Rotationsenergi.
$$
K=\frac 12I\omega^2
$$
$$
I=m\cdot r^2
$$
$$
v=\omega\cdot r
$$

***
[[Kraftmoment.]]
![[Pasted image 20221103095711.png|250]]
$$
\vec\tau=\vec r\times\vec F=r\cdot F
$$
$$
\tau=rF\cdot sin\phi\rightarrow\text{Hvor hvis }\phi \text{ er 90 grader, så er det optimalt, da man trykker vinkelret på.}
$$

***
Kraftmoment-bevægelsesligninger. Newtons 2. lov for roterende bevægelse.
![[Pasted image 20221103103049.png|200]]
$$
\vec\tau_{net}=I\vec\alpha
$$
$$
I=\sum_i m_i\cdot r_i^2
$$

***

##### Arbejde og effekt

***
Arbejde-energi teorem.
$$
\Delta K=K_f-K_i=\frac 12I\omega_f^2-\frac 12I\omega_i^2=W
$$
$$W=\vec\tau*\vec\theta$$
$$
W=\int_{\theta_i}^{\theta_f}\vec\tau\cdot d\vec\theta
$$

***
Mekanisk effekt i rotationsbevægelse.
$$
P=\frac{dW}{dt}=\frac{\vec\tau\cdot d\vec\theta}{dt}=\vec\tau\cdot\vec\omega
$$

***


##### Analogi mellem fysiske størrelser i translation og rotation.

***
![[Pasted image 20221102213232.png]]

***

##### Rotationslegeme med friktion.


### Bevægelsesmængder
##### [[Bevægelsesmængde for et partikel]]

***
Newtons 2. lov for lineær bevægelse.
$$\vec F_{net}=\frac{d\vec p}{dt}$$
Newtons 2. lov på angulær form.
$$\vec\tau_{net}=\frac{d\vec l}{dt}$$
![[Pasted image 20221123203035.png|300]]


***
Defination af bevægelsesmoment for et partikel.
Vektoriel defination.
![[Pasted image 20221123201228.png|300]]
$$\vec l=r\times p=m(r\times v)$$

***
Skalære størrelse vha projektion.
$$l_z=rp_\bot=r(mv_\bot)=rmv\cdot sin\theta$$
![[Pasted image 20221123201544.png|300]]

***



##### Bevægelsesmængde (linear momentum)

>Generelt gælder det:

$$L=I\cdot\omega$$

***
$$\vec p=m\vec v$$
Hvor *p* for moment har enheden (kg*m/s) 
$$\vec F_{net}=\frac{d\vec p}{dt}$$
$$E_{Kin}=-\frac 1 2mv^2=\frac 1{2m}(mv)^2=\frac {p^2}{2m}$$
$$\vec p_1 + \vec p_2=konstant$$
##### Konservation af lineær moment

$$m_1v_{1i}=m_1v_{1f}cos(\theta_1)+m_2v_{2f}cos(\theta_2)$$
$$0=m_1v_{1f}sin(\theta_1)-m_2v_{2f}sin(\theta_2)$$
![[Pasted image 20221012222352.png]]

###### Elastisk-stød

![[Pasted image 20221006111913.png]]
$$m_1v_{1i}+m_2v_{2i}=m_1v_{1f}+m_2v_{2f}$$
$$v_{1i}+v_{1f}=v_{2i}+v_{2f}$$
I det elastiske stød er energien bevaret.
$$\Delta E_{kin}=0$$


###### Perfekt uelastisk stød
![[Pasted image 20221006111948.png]]
$$v=\frac{m_1v_{1i}+m_2v_{2i}}{m_+m_2}$$
Energien i det perfekte stød
$$
V_{1i}
$$
$$\Delta E_{kin}=-\frac 1 2 \frac{m_1m_2}{m_1+m_2}$$

##### Bevarelse af bevægelsesmoment

***
>Hvis et system ikkeudsættes for noget eksternt kraftmoment, så er systemets samledebevægelsesmængde bevaret:

$$\vec\tau_{net}=\frac{d\vec L}{dt}=0\rightarrow \vec L=konstant$$

>Da Ler en konstant, må der derfor gælde for det (isolerede) system:

$$vec L_{før}=\vec L_{efter}$$

>Anvendes dette på et isoleret roterende system fås:

$$L=I_{før}\cdot\omega_{før}=I_{efter}\cdot\omega_{efter}$$
![[Pasted image 20221123210339.png|400]]

***
***

![[Pasted image 20221123211035.png]]

![[Pasted image 20221123211050.png]]





##### Stødkoefficient

![[Pasted image 20221006103324.png]]
$$-m_1(v_{com}-v_{1i})=m_2(v_{com}-v_{2i})$$
$$\frac {v_{1f}-v_{com}}{v_{com}-v_{1i}}=\frac{v_{2f}-v_{com}}{v_{com}-v_{2i}}=e$$
$$v_{efter}-v_{faelles}=e(v_{faelles}-v_{foer})$$
Energitabet i stødet
$$\Delta E_{kin}=(e^2-1)E_{kin,i}<0$$
Hvor *e* er [[restitutionskoefficient]]

Hvor *e=1*: fuldkommen elastisk stød og *e=0*: fuldkommen uelastisk stød.


###### Kraftimpuls
![[Pasted image 20221006113033.png]]

$$\vec J=\Delta\vec p=\int_{t_1}^{t_2}(\frac{d\vec p}{dt})dt=\int_{t_1}^{t_2}\vec Fdt$$
$$\Delta\vec p=\vec J=\int_{t_1}^{t_2}\vec Fdt\approx \vec F_{av}\cdot\Delta t$$

###### Elastisk stød i 2 dimensioner
![[Pasted image 20221006114112.png]]

$$m_v\vec v_{1i}+m_2\vec v_{2i}=m_1\vec v_{1f}$$
$$\frac 1 2m_1\vec v_{1i}^2+\frac 1 2m_2\vec v_{2i}^2=\frac 1 2m_1\vec v_{if}^2+\frac 12m_2v_{2f}^2$$

Man skal kende samt én af x- eller y-komposan-terne af (svarende til en af stødvinklerne)


***

##### Gyroscoper

![[Pasted image 20221123210759.png]]

![[Pasted image 20221123210824.png]]

***

### Center of mass
###### Massemidtpunkt (punktmasse)
$$x_{CM}=\frac {m_1x_1+m_2x_2....m_Nx_N}{M}$$ $$y_{CM}=\frac {m_1y_1+m_2y_2....m_Ny_N}{M}$$ $$z_{CM}=\frac {m_1z_1+m_2z_2....m_Nz_N}{M}$$
$$\vec r_{CM}=\vec R=(x_{CM}i +y_{CM}\cdot\hat j+z_{CM}\cdot\hat k)$$
Hvor rho=[[Densitet]]
Kan også skrives som kontinuer massefordeling.

![[Pasted image 20221006120704.png]]

###### Massemidtpunkt (kontinuert massefordeling)
$$\vec r_{CM}=\vec R=\frac1M\int_{Vol}\vec r\cdot \rho(x,y,z)\cdot dx\cdot dy\cdot dz
$$
Uanset hvor kompliceret et system er, så bevæger legemets massemidtpunkt i en parrabel.
![[Pasted image 20221006110320.png]]





***





***


### [[Harmoniske bevægelser]] og Fjedre

##### Generelt fjedre

***
#Hooks Fjederlov:
Kraften F peger altid mod x0.
$$
F=-kx
$$
***
#Fjeder-kobling. Sidder flere fjedre i serie, udregnes *k* som en parrallel kobling.
$$
k_{eq}=\frac 1{\frac 1{k_1}+\frac 1{k_2}}
$$

***
Acceleration af fjeder.
$$
a=-\frac{k}{m}\cdot x=-\omega^2\cdot x
$$

***
Vinkel frekvens af oscilerende fjeder.
$$
\omega=\sqrt \frac km
$$
***
Periode af oscilerende fjeder.
$$
T=2\pi\cdot\sqrt\frac mk
$$
***
Frekvens af oscilerende fjeder.
$$
f=\frac1{2\pi}\cdot\sqrt\frac km
$$
***


##### Simpel Harmonisk bevægelse.

hvor *t* er tiden i sekunder, *A* er amptituden i meter, *omega* er vinkelhastighed i radianer pr sekund, og *phi* er faseforskydning i radianer.

Distance:
$$
x(t)=A\cdot sin(\omega t+\phi)[m]
$$
***

Hastighed:
$$
v(t)=\frac{dx}{dt}=\omega Acos(\omega t+\phi)[m/s]
$$
***

Acceleration:
$$
a(t)=\frac{dv}{dt}=-\omega^2x(t)[m/s^2]
$$
***


Potentiel Energi i et legeme forbundet med en fjeder.
$$
U(x)=\frac 12kx^2
$$
***
Legemets kinetisk energi
$$
K=\frac 12mv^2
$$
***
Potentiel energi i fjeder.
$$
U(x)=\frac 12kx^2=\frac 12kA^2sin^2\theta
$$
***
Kinetisk energi i fjeder
$$
K=\frac12 mv^2=\frac 12m\omega^2A^2cos^2\theta=\frac 12kA^2cos^2\theta
$$
***
Mekanisk ernergi.
$$
E=K+U(x)=\frac12kA^2(sin^2\theta+cos^2\theta)=\frac12kA^2
$$
***


##### [[Formelsamling/Dæmpede Svingninger]]

***
Hvor hvis b<b_c: Underdæmpning.
b=b_c: Kritisk dæmpning.
bZb_c: Overdæmpning.

***
$$
x(t)=Ae^{-\alpha t}sin(\omega't+l)
$$
***
$$
\alpha=\frac b{2m}
$$

***

$$
\omega'=\sqrt{\frac km-\frac b{4m^2}}
$$
***
Kritisk dæmpning.
$$
b_c=\sqrt{4mk}
$$
***

Levetiden:
$$
\tau=\frac mb
$$
***
Godhed:
$$
Q=\omega_0\cdot \tau
$$
***

##### [[Tvungne Svingninger]]

***

$$
F(t)=F_0\cdot sin(\omega t)
$$
***

$$
A(\omega)=\frac {F_{0}}{\sqrt{m^2(\omega^2-\omega_0^2)+b^2\omega^2}}
$$

***
Maks Vinkelfrekvens. Resonanskurven bliver mindre skarp ved stigende dæmpning.

$$
\omega_{max}=\omega_0^2-\frac 12(\frac {b^2}{m^2})
$$




***
Friktionskraft i dæmpet fjeder.
Hvor b er dæmpningskoefficienten som er i enheden kg/s
$$
\vec F_d=-b\vec v
$$
***




### Penduler
<<<<<<< HEAD:Fomelsamlinger og cheatsheets/Formelsamling Fysik.md
##### [[Robotters Fysik/Matematisk Pendul]]
=======
##### [[Fysik/Matematisk Pendul]]
>>>>>>> origin/main:1 Formelsamlinger/Formelsamling Fysik.md

>Forskellen på et matematisk pendul og fysisk pendul er at et matematisk pendul har en meget reduceret masse lige for enden af pendulet. Og det gælder kun ved små vinkler under 30 grader.

![[Pasted image 20221110093706.png|200]]

***
Regler.
![[Pasted image 20221110084224.png|200]]
$$sin\theta=\frac xl$$
$$\theta=\frac sl$$
$$sin\theta\cong\frac l\theta\rightarrow x\cong s$$

***
Svingningstiden på matematisk pendul.
![[Pasted image 20221110090606.png|150]]
$$T_{Mat}=2\pi\sqrt{\frac{Ml^2}{Mgl}}=2\pi\sqrt{\frac lg}$$

***
Positionen på cirkelbuen.
![[Pasted image 20221110082623.png|150]]
$$s=\theta\cdot l$$

***
Inertomoment.
$$I_{Mat}\cong Ml^2$$

$$r\cong l$$
***
Hastighed langs cirkelbuen.

$$v=\frac{ds}{dt}=l\cdot\frac{d\theta}{dt}$$
$$\omega=\sqrt{\frac gl}$$

***
Tangential acceleration.
Kan også findes ved at se på hvilke kræfter der påvirker pendulet i et legeme diagram.
![[Pasted image 20221110082643.png|150]]
$$a=\frac{dv}{dt}=l\frac{d^2\theta}{dt^2}$$

***
Tangential acceleration.
![[Pasted image 20221110083424.png|150]]
$$F_{tan}=-mg\cdot sin\theta=ma$$
$$l\frac{d^2\theta}{dt^2}=-g\cdot sin\theta$$

***

##### Energi i matematisk pendul

***
Kinetisk energi.
![[Pasted image 20221110085840.png|150]]
$$K(\theta)=\frac12 mv^2=\frac12m(l\frac{d\theta}{dt})^2=\frac12ml^2(\frac{d\theta}{dt})^2$$

***
Potentiel energi.
$$U(\theta)=mgh=mgl(1-cos\theta)$$
$$U(\theta)=mgh=mgl$$

***

<<<<<<< HEAD:Fomelsamlinger og cheatsheets/Formelsamling Fysik.md
##### [[Robotters Fysik/Fysisk pendul]]
=======
##### [[Fysik/Fysisk pendul]]
>>>>>>> origin/main:1 Formelsamlinger/Formelsamling Fysik.md

***
Ethvert legeme som er ophængt i et punkt som er forskudt i forhold til massemidtpunktet, kan svinge og kan beregnes med krafmoment
![[Pasted image 20221110084826.png|200]]
$$\vec\tau=\vec rx\vec F_t$$


Svingningstiden.
$$T_{Fys}=2\pi\sqrt{\frac I{Mgr}}$$

***
Hvor I= masseinertimoment og aplha= vinkelaccelerationen.
$$\alpha=-\omega_0^2\cdot\theta$$

$$\tau=rF_\bot=rF_t\cdot sin\theta=rMg\cdot sin\theta$$
$$\tau=r\cdot F=m\cdot r^2\cdot \alpha=-I\alpha$$
***

##### [[Pendul i store vinkler]]

***
>Svingningstiden vil blive øget i små procent.
>Dermed små aprox
>Vi inkluderer ikke mekaniske tab

$$T=\frac {T_0} \pi\cdot\int_0^{\theta_0}\frac{d\theta}{\sqrt{sin^2(\frac{\theta_0}2)-sin^(\frac\theta 2)}}=T_0\frac2\pi F_{Ellip}[sin^2(\frac{\theta_0}{2})]$$
$$\frac T {T_0}\cong[1+\frac14sin^2(\frac{\theta_0}{2})]$$
$$\frac T{T_0}\cong \frac1{\sqrt{cos(\frac{\theta_0}2)}}$$

### [[Rulning]]
![[Pasted image 20221110102759.png|250]]
Hjulets hastighed. Hvor R=hjulets radius
$$\omega=\frac vR$$

***
Hjulets hastighed på toppen.
$$v_{top}\cdot2R\omega=2R\frac vR=2v$$

***

##### Energi i Rulning.

***
Energi i rulning. Hvor CM er centermass
$$I_{contact}=I_{CM}+MR^2\rightarrow$$
$$K=\frac 12I_{contact}\cdot\omega^2=\frac12I_{CM}\cdot\omega^2+\frac12Mv^2\rightarrow K_{rul}=K_{rot}+K_{trans}$$

***

##### Rulning bevægelsesligninger.

![[Pasted image 20221110103736.png|400]]
vektor f er friktion
***
Newtons 2. lov på den translatorisk bevægelse.
$$Ma=Mg\cdot sin\theta-F_\mu$$

***
Kraftmoment hidrørende fra friktionskraft.
$$\tau=F_\mu R=I\alpha$$


***
Sammenhæng mellem rotation og translation.
$$a=R\cdot\alpha=\frac{MgR\cdot sin\theta}{MR^2+I}$$
$$\omega=\omega_0+\alpha t=\omega+\frac{MgR\cdot sin\theta}{MR^2+I}\cdot t$$

***
Hastiged på rulning.
$$v=R\omega=v_0+g\cdot sin\theta\cdot\frac{MR^2}{MR^2+I}\cdot t$$
$$v^2=v^2_0+2al=v^2_02g\cdot sin\theta\frac{MR^2}{MR^2+I}\cdot l$$
***


