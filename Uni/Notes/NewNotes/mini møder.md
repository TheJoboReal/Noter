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

---
## 02-04-2025

Køre evt 100 training episodes og så 10 evaluation på den q-tabel der fra de træninger. kør en 100% Greedy ved de 10 evaluations.
Det er forkert at plotte grafer på vores trænings data da vi ikke vil have at den explorer når den skal køre i virkeligeheden. Derfor Skal vi lave en funktion som kører efter vi har trænet, som bruger q-table og plotte data fra det.

Tjek om vi ændre agent location for tidligt eller sent, og om env.set_reward() bliver kørt for sent og dermed gør at agenten tror at det er godt at gå tilbage fordi den ikke er sat til 0 endnu.

Evt lav vektor mod unexplored states. Endnu en 3x3 matrix som sætter en state til 1 hvis den kan gå over i en state *a* og fra state *a* gå over i en state som ikke er visited. Det vil hjælpe hvis den fks sidder fast inde i en stor klumme af visited states.

Skriv om hvorfor vi ikke bruger x, y i vores observations, mm.

---
