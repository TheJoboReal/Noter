---
tags:
  - lecture-slide
  - uni
course: Linux Querks
lecture: null
date: 2025-09-20
---

#### Definition


Run the following to fix drivers:
```bash
sudo apt purge 'nvidia-dkms-*' 'nvidia-driver-*' system76-driver-nvidia
sudo apt autoremove
sudo apt install system76-driver-nvidia
```