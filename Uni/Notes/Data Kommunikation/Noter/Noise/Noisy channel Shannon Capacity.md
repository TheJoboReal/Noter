---
tags:
  - lecture-note
  - uni
course: Data Kommunikation
---
![[Pasted image 20230912121947.png]]
>SNR is found with the formula [[SNR signal to noice ratio]]

>Where Bandwith is the amount of signals you can send per second, ie Hz.

***
#### Example
![[Pasted image 20230912123358.png]]
$$
V_{S}=B\cdot \log_{2}(1+SNR)=10⁶\cdot \log_{2}(1+63)=6Mbps
$$
Shannon formula gives us a maximum of *6Mbps*, so for greater stability we choose *4Mbps*.
We can then get the number of signal levels:
$$
L=2^{(\frac{V_{n}}{2\cdot B})}=2^{(\frac{6Mbps}{2\cdot_{10}^6})}=4
$$
