---
tags:
  - lecture-slide
  - uni
course: Master
lecture: null
date: 2026-10-20
---
#### Definition
The CMD5 has been flashed with ubuntu 24 server LTS. And since the pi runs ubuntu 24, we need to build the rpi cam drivers manually using this [guide](https://dev.to/minindu_pasan_8f0e03c1063/how-to-setup-raspberry-pi-camera-module-3-on-ubuntu-2404-4pme). Rpicam does not ave libnav or hardware encoding for the CMD5, so we force it with ffmpeg.

This line has to be added to the /etc/firmware/config.txt for the camera to be detected:
```bash
dtoverlay=imx477,cam0
```

To stream the camera on wifi, we use this command with the ip being the ip of the stream target, e.i. my laptop.

```bash
rpicam-vid -n -t 0   --codec yuv420   --width 1280 --height 720   --framerate 30   -o - | ffmpeg -f rawvideo   -pixel_format yuv420p   -video_size 1280x720   -framerate 30   -i pipe:0   -c:v libx264   -preset ultrafast   -tune zerolatency   -b:v 2M   -f mpegts   "udp://192.168.0.193:8080?pkt_size=1316"
```

To view the stream on the laptop, we us VLC with:
```bash
vlc udp://@:8080
```

