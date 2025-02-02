---
tags:
  - lecture-note
  - uni
course: Matlab & Mathematica
---

Her tages først søjle og 7. søjle, og 1. række droppes

```Mathematica
omi = Import["C:\\omikron.tsv"];
omiprocent = {#[[1]], #[[7]]} & /@ Drop[omi, 1]
```

![[Pasted image 20230104005141.png|900]]
