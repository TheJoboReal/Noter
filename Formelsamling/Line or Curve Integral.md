##### Line or Curve Integral
![[Pasted image 20231009213559.png|250]]
Integrate a three-dimensional function along a curve.
$$
\int_{t=a}^{t=b}f(x(t),y(t)) 
\mathrm{dS}
$$
$$
\mathrm{dS} = \sqrt{
	\left(\frac{\partial x}{\partial t}\right)^{2}+
	\left(\frac{\partial y}{\partial t}\right)^2
} \mathrm{dt}
$$
***
The length of a line or curve is found using the Line Integral Formula:
$$
C=\int f(x,y,z) \, ds=\int_{a}^b f(r(t)) \cdot |\frac{dr}{dt}| \, dt  =
\int _{a}^b f(r(t))\cdot\left( \sqrt{ (\frac{dx}{dt})^2 + (\frac{dy}{dt})^2 + (\frac{dz}{dt})^2 } \right) \, dx
$$

>See [[Line Integrals.pdf|Example]] or [[Line integrals 1.pdf|Example]]