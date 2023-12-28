##### Triple Integration
>Se [[Tripple Integral bounded by region.pdf|Eksempel]] på tripple integrale bundet af en region.
###### Triple Integration Order
![[Pasted image 20231002123625.png]]

###### Triple Integration Riemann
![[Pasted image 20231002123714.png]]
![[Pasted image 20231002124017.png]]
###### Change of Variables
![[Pasted image 20231002125716.png]]
![[Pasted image 20231002131137.png]]
###### Cylindrical Coordinates
![[Pasted image 20231002131257.png]]
Where the Jacobian Transformation is as follows:
$$
\frac{\delta(x,y,z)}{\delta(r,\theta,z)}
=
\det(
\begin{bmatrix}
\cos(\theta) & -r\sin(\theta) & 0 \\
\sin(\theta) & r\cos(\theta) & 0 \\
0 & 0 & 1
\end{bmatrix})
=
r
$$

###### Spherical Coordinates
>See [[Formelsamling Calculus#Spherical Coordinates|Spherical Coordinates]] for foundation.

The conditions are:
$$
\rho^2=x^2+y^2+z^2
$$
![[Pasted image 20231002135027.png]]

Where the Jacobian is:
$$
\frac{\delta(x,y,z)}{\delta(\rho,\phi,\theta)}
=
\det(
\begin{bmatrix}
\sin(\phi) \cdot \cos(\theta) &\rho \cdot \cos(\phi) \cdot \cos(\theta) & -\rho \cdot(\sin(\phi)\cdot \sin(\theta) \\
\sin(\phi) \cdot \sin(\theta) & \rho \cdot \cos(\phi) \cdot \sin(\theta) &\rho \sin(\phi) \cdot \cos(\theta) \\
\cos(\phi) & -\rho \sin(\phi) & 0
\end{bmatrix})
$$
$$
\frac{\delta(x,y,z)}{\delta(\rho,\phi,\theta)}
=
\rho²\sin(\phi)
$$