##### Differential Operators
###### Gradient
Rate of change in a 3-dimensional scalar field $f(x,y,z)$. Fx Temperature Distribution in a room, Topographic maps.
$$
\nabla=i \frac{\delta}{\delta x}+j \frac{\delta}{\delta y}+k \frac{\delta}{\delta z}
$$
>The gradient of a scalar field gives a vector field.

###### Divergence
The divergence of a velocity field represents the net flow of fluid out of a smalle volume. Fx Fluid flow in pipes, Weather Patterns.

$$
div(F(x,y,z))=\nabla \cdot F(x,y,z)=i \frac{\delta f_{1}}{\delta x}+j \frac{\delta f_{2}}{\delta y}+k \frac{\delta f_{3}}{\delta z}
$$
where
$$
F(x,y,z)=f_{1}(x,y,z)i+f_{2}(x,y,z)j+f_{3}(x,y,z)k
$$

###### Divergence Theorem(Gauss)
See also [[External/Balder/Notes/Surface Integrals#Flux|Flux]]
$$
\nabla F(x,y,z)=div(F)=\frac{\delta f_{1}}{\delta x}+\frac{\delta f_{2}}{\delta y} + \frac{\delta f_{3}}{\delta z}
$$
Let $S$ be a closed piecewise smooth surface which is the boundary of $V$ with normal $\hat{N}$ pointing outwards.

If $F(x,y,z)=f_{1}(x,y,z)i+f_{2}(x,y,z)j+f_{3}(x,y,z)k$ smooth vector field is defined on V then,
$$
\oint\oint_{S}(\vec{F}\cdot\vec N)dS=\int\int\int_{V} div(\vec F) \, dV 
$$
Where $dV=\rho \cdot \sin(\phi) \ d\rho\ d\phi\ d\theta$

>See [[Flux.pdf]]

***
**Variants of Divergence Theorem**
If $D$ satisfies the conditions of the Divergence Theorem and has surface $S$, and if the $F$ is a smooth vector field and $\phi$ is a smooth scalar field then,
$$
\int\int\int_{D} curl (F) \, dV=-\oint\oint_{S}(F \times \hat{N}) dS 
$$
$$
\int\int\int_{D} grad (\phi)  \, dV=\oint\oint_{S} \hat{N} dS
$$

###### Curl
The curl of the electric field gives the rate of change of the magnetic field. Fx Turbulenc in Fluid Flow, Magnetic Fields Around a wire.
The Cross product of a vector field with a directional vector is curl.

$$
curl(F(x,y,z))=\nabla\times F(x,y,z)=
\det(\begin{matrix}
i &j & k \\
\frac{\delta}{\delta x} & \frac{\delta}{\delta y} & \frac{\delta}{\delta z} \\
f_{1} & f_{2} & f_{3}
\end{matrix})
$$
where
$$
F(x,y,z)=f_{1}(x,y,z)i+f_{2}(x,y,z)j+f_{3}(x,y,z)k
$$
>see [[1 Formelsamlinger/Formelsamling Calculus#Determinant|determinant]]

###### Stokes's Theorem
Let S be a piecewise smooth, oriented surface in 3-space, having unit normal field $\hat{N}$ and boundary C consisting of one or more piecewise smooth, closed curves with orientation inherited from S.

If **F** is a smooth vector field defined on an open set containing S, Then,
$$
\oint_{C}F \cdot dr=\oint\oint_{S}curl(F \cdot \hat{N}) dS
$$