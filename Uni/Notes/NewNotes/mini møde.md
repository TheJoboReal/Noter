---
tags:
  - lecture-slide
  - uni
course: Bachelor
lecture: 
date: 2025-03-31
---
#### Definition
Fjern agent x, y fra observation. Lav self.location i agent.

Længere episoder $SIZE \cdot SIZE$.
Kun brug visited near som obs, ikke direkte i reward.
Lavere beta måske? (check ligning igennem).
Ik sæt visited til -5, sæt den til 0 istedet.
Kun giv reward for info gain, tilføj visited senere.
