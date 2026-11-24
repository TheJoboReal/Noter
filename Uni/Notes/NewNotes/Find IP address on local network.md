---
tags:
  - lecture-slide
  - uni
course: Linux Querks
lecture: null
date: 2026-11-24
---
#### Definition
To find the ip address of example a Pi, use this.
```bash
ip route
```
output:
```bash
default via 192.168.1.1 dev wlan0
192.168.1.0/24 dev wlan0 proto kernel scope link src 192.168.1.105
```
scan wifi network:
```bash
sudo nmap -sn 192.168.1.0/24
```
output:
```bash
Nmap scan report for raspberrypi (192.168.1.123)
Host is up.
MAC Address: DC:A6:32:XX:XX:XX (Raspberry Pi)
```
