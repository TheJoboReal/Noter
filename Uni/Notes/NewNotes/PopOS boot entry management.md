---
tags:
  - lecture-slide
  - uni
course: Linux Querks
lecture: null
date: 2025-03-26
---

#### Definition
To edit the PopOS boot entries, edit them in the folder:
```bash
sudo ls /boot/efi/loader/entries/
```

Here a timeout can also be added by editing the following:
```bash
sudo nvim /boot/efi/loader/loader.conf
```

Edit the line:
```conf
timeout 5
```
The number following is the timeout in seconds.