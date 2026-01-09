---
tags:
  - lecture-slide
  - uni
course: Linux Querks
lecture: null
date: 2026-01-07
---

#### Setting up yubikey with PAM
This will allow you to use a yubikey for sudo.
First install `libpam-u2f`

```bash
mkdir ~/.config/Yubico
pamu2fcfg > ~/.config/Yubico/u2f_keys
```
Then add the following to `/etc/pam.d/sudo`

```bash
auth sufficient pam_u2f.so cue [cue_prompt=Tap YubiKey]
```


>[!tip] see [link](https://neilzone.co.uk/2022/11/using-a-yubikey-or-other-security-key-for-sudo-via-pam/)