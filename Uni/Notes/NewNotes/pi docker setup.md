---
tags:
  - lecture-slide
  - uni
course: Master
lecture: null
date: 2026-11-18
---

#### Definition
For docker to work, run in rootful mode:
```bash
systemctl --user disable --now docker.service
```

```bash
sudo systemctl status docker.service
```

```bash
sudo systemctl enable --now docker.service
```

```bash
unset DOCKER_HOST
docker context use default
```

```bash
sudo usermod -aG docker kasper
```