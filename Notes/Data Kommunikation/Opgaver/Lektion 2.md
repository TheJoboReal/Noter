![[questions-kom-02.pdf]]
1.1 Amplitude measures the signal streangth ie, Voltage. Frequency measures the cycles per second or bandwith. The phase is the time shift in the signal.

1.2 A signal composed of many smaller signals. It can be decomposed into its many Individual signals with the Fourier Rows [[Formelsamling Calculus#Fourier Rækker]]

1.3 Attenuation, Noise, Distortion.

1.4 We use the Attenuation formula [[Attenuation]] $dB=10\cdot \log_{20}\left( \frac{V_{2}}{V_{1}} \right)=10\cdot \log_{20}\left( \frac{90}{100} \right)=-0,46dB$

1.5 We use the Attenuation formula again and solve for $P_{2}$ $$-10dB=10\cdot \log_{10}\left( \frac{P_{2}}{5W} \right)$$
$$P_{2}=\frac{1}{2}W$$
1.6 We divide the bits with Bandwith. $\frac{100000bits}{5000bps}=20s$

1.7 We use the Shannon formula [[Noisy channel Shannon Capacity]] 
$$V_{S}=4Khz\cdot \log_{2}(1+\frac{10V}{5mV})\approx40000\frac{bit}{sec}$$

1.8 Forsinkelsen i kablet er $\frac{2\micro s}{5\cdot 10⁶}=0,01s$. To get the total delay in the system we add all the delays together

2.1 One data element can contain multiple signal elements to form one bit.

2.2 Data rate is bits per second, ie the amount of data we can transfer. Signal rate is the amount of signalchanges in a second.

2.3 We use the formula for signal rate [[Signal rate]] 
$$
S_{Case_{1}}=\frac{1}{2}\cdot 1Mbps\cdot\frac{1}{1}=500000Hz
$$
$$
S_{Case_{2}}=\frac{1}{2}\cdot 1Mbps\cdot\frac{1}{\frac{1}{2}}=1000000Hz
$$
$$
S_{Case_{3}}=\frac{1}{2}\cdot 1Mbps\cdot\frac{1}{2}=250000Hz
$$
$$
S_{Case_{4}}=\frac{1}{2}\cdot 1Mbps\cdot \frac{1}{\frac{4}{3}}=375000Hz
$$
