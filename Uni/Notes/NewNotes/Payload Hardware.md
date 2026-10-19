---
tags:
  - lecture-slide
  - uni
course: Master
lecture: null
date: 2026-09-28
---

### Hardware
We need:
- Pi 5 4gb or 8gb.
- Active cooler for pi(maybe some passive air-cooling).

### Gimbal
This [Gimbal](https://www.printables.com/model/227060-raspberry-pi-hq-camera-drone-gimbal) can be used if DIY is good enough. It uses SG90 servos, which i have at home.
This $\approx 300$$ [gimbal](https://copterlab.com/2-axis-raspberry-pi-high-quality-camera-micro-gimbal) could also be useful as it has built in support for an extra pi cam.

### Camera and Lens
- Zoom cam: [100mm telephoto lens, C-mount](https://www.berry-base.pro/en/100mm-telephoto-lens-c-mount).
- High budget cam: VA-LCM-12MP-100MM-F2.6-110
- pi cam v3. Rhino detection.
- pi cam HQ. Rhino RE-ID.


### Powertronics
A battery of ample size is needed to power the closed payload system. A battery shield can be mounted with the battery to enable external power for charging: This could be output power from Guys drone as an example, thus providing even higher up time.
Battery should be able to power the cam, pi and the motors which needs 5V.

### Telemetry 
For image telemetry, this [drone-kit](https://hobbywireless.com/58-ghz-receiver-transmitter-set-c-179_117_7_174/fpv584-58-ghz-400mw-plug-play-fpv-system-f-band-p-825.html) could be useful. Instead, [OpenHD](https://github.com/OpenHD/OpenHD) which is an open source project could be used. MQTT and meshtastic is not suitable for this project as Mesh priornitices long range over throughput and MQTT is application layer messaging so sending states or value updates, not video feed.

The Wifi adapter used could be the ASUS AC56.

After looking, WFB-NG is gonna be a more fitting setup as it fits well on raspberry and with our receive only ground station.

#### Ground Station
The ground station will be using a [14dB Directional](https://www.aliexpress.com/item/1005002007469173.html) antenna for RX connected to the [BL-M8812EU2](https://www.aliexpress.com/item/1005007386940533.html?cn=e-c&aff_fcid=c17dec0d6db649df998a251cf12683a0-1741439858818-03617-_ol0Mdtc&aff_fsk=_ol0Mdtc&aff_platform=api-new-link-generate&aff_trace_key=c17dec0d6db649df998a251cf12683a0-1741439858818-03617-_ol0Mdtc&afSmartRedirect=y&gatewayAdapt=esp2glo) wifi module.

#### Air Point
The payload will be using the ASUS AC56 usb wifi adapter for TX.

The asus dongle might need a patch to function properly [link](https://github.com/svpcom/wfb-ng/wiki/WiFi-hardware). It might also be useful to look at the wfb [setup](https://github.com/svpcom/wfb-ng/wiki/Setup-HOWTO).

This could be a bitrate when [FEC](https://www.geeksforgeeks.org/computer-networks/forward-error-correction-in-computer-networks/) is in use.

![[Pasted image 20261019141852.png]]