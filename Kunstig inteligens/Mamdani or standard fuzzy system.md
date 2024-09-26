#### Definition
If $ũ_{1}$ is $Ã^j_{1}$ then $ỹ_{1}$ is $B^r_{1}$ 
If $ũ_{1}$ is $Ã^j_{1}$ then $ỹ_{1}$ is $B^r_{1}$ and $ũ_{2}$ is $Ã^k_{2}$ then $ỹ_{1}$ is $B^r_{1}$ 
If $ũ_{1}$ is $Ã^j_{1}$ or $ỹ_{1}$ is $B^r_{1}$ and $ũ_{2}$ is $Ã^k_{2}$ then $ỹ_{1}$ is $B^r_{1}$ 

---
#### Example
If **obs_dist** is **close** then **speed** is **slow**.

If **obs_dir** is **left** and **obs_dist** is **very_close**.

then **direction** is **sharp_right**.

If **obs_dir** is **right** and **obs_dist** is **very_close**
then **direction** is **sharp_left**.

---
#### Mamdani issues
* Mamdani-style inference requires us to find the centroid of a two-dimensional shape by integrating across a continuously varying function. In general, this process is not computationally efficient.
![[Pasted image 20240926103908.png]]

* Michio Sugeno suggested to use a single spike, a singleton, as the membership function of the rule consequent.
![[Pasted image 20240926103920.png]]
