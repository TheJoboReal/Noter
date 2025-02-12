---
tags:
  - lecture-slide
  - uni
course: Bachelor
lecture: null
date: 2025-02-10
---

#### Pseudo Step Plan
 - [ ] Lav grid world path.
 - [ ] Lav agent som kan håndtere et map med høje og lave prioriteter.
 - [ ] Lav en mother agent som tager beslutninger for alle agenterne.
 - [ ] Vi skal lave en funktion som tager deres heat-map in og laver en gridworld hvor hver grid-reward er den gennemsnitlige heat-værdi.
 - [ ] Test agent med [[Temporal Difference#Q-Learning|Q-Learning]] da den går efter største totale output.
 - [ ] Hvordan træner man en agent så den husker og bliver bedre. (Lige nu køre vi den på en verden og opdaterer en Q-tabel)
 - [ ] Definere hvor ofte et punkt skal afsøges før det kan betraktes som  **Afsøgt** 
 - [ ] Optional. Hvordan kan det implementeres på en rigtig drone

- If **too many drones** enter a high-reward zone, their **individual gains decrease**.
- Encourages **spread-out exploration** while still seeking good rewards.