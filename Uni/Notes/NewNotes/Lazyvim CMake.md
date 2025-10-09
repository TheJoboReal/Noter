---
tags:
  - lecture-slide
  - uni
course: Linux Querks
lecture: null
date: 2025-10-08
---

#### Definition
If lazyvim gives errors about not being able to find library files etc. then run the following in the root of the project:

```bash
cmake -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=1
ln -s build/compile_commands.json .
```
