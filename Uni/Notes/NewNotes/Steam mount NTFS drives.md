---
tags:
  - lecture-slide
  - uni
course: Linux Querks
lecture: null
date: 2026-04-07
---

#### Definition
When attempting to mount ntfs drives in steam, use this guide:
https://steamcommunity.com/app/221410/discussions/0/4416424806096574052/

Make sure the drives are mounted with these permission:
```bash
UUID=280A88350A880254 /home/kasper/Disk/HDD ntfs uid=1000,gid=1000,dmask=022,fmask=133,umask=077 0 0
UUID=90007F83007F6F5A /home/kasper/Disk/SSD ntfs uid=1000,gid=1000,dmask=022,fmask=133,umask=077 0 0
```
