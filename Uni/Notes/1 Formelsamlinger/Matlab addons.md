---
tags:
  - lecture-note
  - uni
course: 1 Formelsamlinger
---

1. Add an addon like normal until you get the permission error.
2. Open a terminal and run ``ps -eo cmd | grep AddOnInstaller | head -n 1``
3. You should see AddOnProductInstaller from your installation dir with (very) long cmd line arguments.
4. Run this as sudo