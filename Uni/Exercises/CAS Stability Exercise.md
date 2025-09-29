---
tags:
  - exercise
  - uni
course: Control of Autonomous Systems
date: 2025-09-29
completed: false
---
--- 
#### Exercise Description
![[CAS-2025-Lecture4-exercises.pdf]]


#### Exercise Answer


- **C = I (Identity Matrix, 3×3):**
    
    - In the exercise, we wanted the **full state vector** x(t)=[q,θ,u]Tx(t) = [q, \theta, u]^Tx(t)=[q,θ,u]T as the output of the State-Space block.
        
    - Normally, CCC selects which states are measured.
        
        - Example: if you only cared about pitch angle (θ\thetaθ), you’d set C=[0 1 0]C = [0 \, 1 \, 0]C=[010].
            
        - But here, since we want all three states available (for control and visualization), we use C=IC = IC=I.
            
- **D = 0:**
    
    - DDD represents a **direct feedthrough** from input δ(t)\delta(t)δ(t) to output y(t)y(t)y(t).
        
    - Physically, the helicopter’s velocity/pitch/angular velocity do not respond _instantaneously_ to rotor deflection — there’s always dynamics (integration of forces).
        
    - Therefore, D=0D=0D=0.