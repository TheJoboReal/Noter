---

created: 2026-01-05
type: permanent
tags:
  - guide 
  - uni/7th_semester
  - uni/CAS
  - control/examples
---

# `=this.file.name`

## Description
Used for (absurdly) smooth control
![[Open_loop_control-system.png]]

## Steps
1. Define state space
2. Compute the transformer $Tcoord$ 
3. Gather `a_vect` from `At` (button row)
4. Motion planning
	1. Define intial-, final-conditions and time, $T$, to do so
		- Breaks after $T$ - not controlling correctly
	2. Note: Choice of `poly5traj` depended on size of $A$ and $B$ 
		- Change number if it does not work

![[Open_loop_control-desgin.png]]
`Calcualte ud` block code (always the same):
```matlab
function ud = fcn(y_vect,a_vect)

ae_vect = [ a_vect ; 1 ];

% computation open-loop input
ud = ae_vect' * y_vect;
```

## Example
### First order example (ballon)
- "Should" work for second order
```matlab
% state-space representation
A = [ -1 0 0 ; 0 0 1 ; 1 0 -1/2 ];
B = [ 1 ; 0 ; 0 ];
C = [ 0 , 1 , 0 ];

% computations towards obtaining a CCF after change of coordinates.
Wc = [ B , A*B , A^2*B ];
det_Wc = det(Wc)

Bt = [ 0 ; 0 ; 1 ];  % Always this value (1 as last)

T1 = Bt'*inv(Wc)
T2 = T1*A;
T3 = T2*A;

Tcoord = [ T1 ; T2 ; T3 ] % matrix T for change of coordinates

At = Tcoord*A*inv(Tcoord);

% selection of the a_i's parameters from matrix Atilde (botton row)
a_vect = -At(3,:)';

%------------------
% motion planning.
%------------------
T = 600; % horizon time
% intial conditions
h0 = 0;
v0 = 0;
a0 = 0;

% final conditions
hT = 100;
vT = 0;
aT = 0;

% calculations polynomial coefficients
alpha_vect = poly5traj([h0;v0;a0],[hT;vT;aT],T);
```

Where the function block for `Build vector of polynomials`
```matlab
function y_vect = fcn(t, alpha_vect)

% Polynomials
t_vect0 = [ 1 ; t ; t^2 ; t^3 ; t^4 ; t^5 ]; % vector of t values
t_vect1 = [ 0 ; 1 ; 2*t ; 3*t^2 ; 4*t^3 ; 5*t^4 ]; % derivative of t_vect0
t_vect2 = [ 0 ; 0 ; 2 ; 2*3*t ; 3*4*t^2 ; 4*5*t^3 ]; % derivative of t_vect1
t_vect3 = [ 0 ; 0 ; 0 ; 2*3 ; 2*3*4*t ; 3*4*5*t^2 ]; % derivative of t_vect2

% Add polynomial constants
yd = t_vect0'*alpha_vect;
yd_dot = t_vect1'*alpha_vect;
yd_ddot = t_vect2'*alpha_vect;
yd_3dot = t_vect3'*alpha_vect;

y_vect = [ yd ; yd_dot ; yd_ddot ; yd_3dot ];
```

## Related
- [[CAS Exam Prep overview]]
- [[CAS-2025-Lecture10-OLcont.pdf#page=7&selection=0,3,2,4|CAS-2025-Lecture10-OLcont, page 7]] 
- [[CAS-2025-Lecture10-OLcont.pdf#page=15&selection=0,0,0,12|CAS-2025-Lecture10-OLcont, page 15]] 