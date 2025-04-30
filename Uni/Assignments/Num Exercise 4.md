---
tags:
  - assignment
  - uni
course: Numeriske Metoder
due_date: 05-05-2025
date: 2025-04-30
progress: Not Startet
completed: false
---
--- 
#### Assignment Description

Complete exercise 3:

![[eks2022.pdf#4]]

##### Further explained
**DMPs** are a way to model **goal-directed movement** (like how a robot arm or a pen might draw a shape) using **differential equations**. They help guide a system from a **starting position to a goal**, while allowing flexibility to **modify the path taken** by using **learned trajectories**.

**The Terms**
- $y_{1}(t),y_{2}(t)$: Positions of a point robot in 2D space.
- $g_{1}, g_{2}$: Target goal positions in 2D.
- $a_{1}, a_{2}, b_{1}, b_{2}$: Positive constants determining dynamics (like stiffness and damping).
-  $f_{1}(x),f_{2}(x)$: Forcing functions that modify the trajectory to match a demonstrated path.
- $x(t)$ A **phase variable**—starts at 1 and decays exponentially to 0 over time. It **synchronizes** the forcing terms with time but is **independent of time explicitly**.

**Without the Forcing Terms**
If you set $f_{1}(x)=f_{2}(x)=0$, each motion equation becomes a **damped spring** equation:
- The system will **converge to the goal** $g_{1},g_{2}$​ smoothly.
- But the **path taken to reach the goal is fixed** (and not necessarily what you want in a real task, like drawing a circle).

**Why Introduce Forcing Terms?**
The forcing terms $f_{1}(x),f_{2}(x)$ let you **shape the movement** to follow a specific trajectory (e.g., a learned movement from a human demonstration). These are **modulated by $x(t)$** so they **fade out as the goal is approached**, ensuring smooth stopping.

**What Does the Phase $x(t)$ Do?**
- It acts like a clock.
- Starts at 1 and decays to 0, **monotonically decreasing**.
- Helps **coordinate** the time evolution of the forcing functions without directly depending on time.
- Makes the system **time-invariant**—i.e., you can scale motion speed by just scaling time.

**Summary**
- This exercise models robot movement as a **dynamical system**.
- **Goals** are defined by $g_{1},g_{2}$
- **Damped spring** dynamics ensure stable convergence.
- **Forcing terms** shape the trajectory.
- A **phase variable** $x(t)$ synchronizes the shape of the movement.
