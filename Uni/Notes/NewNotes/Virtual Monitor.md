---
tags:
  - lecture-slide
  - uni
course: Linux Querks
lecture: null
date: 2025-03-26
---
> See [Link](https://askubuntu.com/questions/366813/disable-second-non-existent-screen-from-command-line)
#### Definition
> [!Tip] hdmi might not be functional when gpu is turned off

When no other physical display can be seen due to a virtual monitor.
Run this command to fix it:
```bash
xrandr --auto
```
If this doesn't disable the virtual monitor, then use the following method:
- First run:
    ```bash
    xrandr --current
    ```
- If the name of your VGA is, for example `VGA2`, then run:
    ```bash
    xrandr --auto && xrandr --output VGA2 --off
    ```
    This should disable the output of the virtual monitor.