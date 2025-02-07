---
tags:
  - lecture-note
  - uni
course: Individuel Studieaktivitet
lecture: null 
date: 2025-02-03
---

--- 
#### Plan
1. Første skridt er at lave nogle simple API's i C til robotten. Fx get sensor data eller ligende.
2. Næste skridt er at bruge [[Inter Process Communication|shared memory]] til at modtage sensor fra API'en og printe den til terminalen i python.
3. Vi kan nu lave nogle mere avanceret API funktioner som, kør frem *n* meter eller returnere hastighed.
4. Lav GUI i python til display sensor data og lav knapper til at sende commands til robotten.

- [ ] Kig på interrupts så det ikke bliver en process der låser en thread.
- [ ] Kig evt på python Viper bibliotek som kan lave python kode til C kode.