---
tags:
  - lecture-note
  - uni
course: Kinematik
---


![[Pasted image 20230417220248.png|500]]

```Matlab
L1 = 0.5;

L2 = 0.3;

robot = rigidBodyTree;

body1 = rigidBody('body1');

jnt1 = rigidBodyJoint('jnt1','revolute');

body1.Joint = jnt1;

addBody(robot,body1,'base');

body2 = rigidBody('body2');

jnt2 = rigidBodyJoint('jnt2','revolute');

setFixedTransform(jnt2,trvec2tform([L1,0,0]));

body2.Joint = jnt2;

addBody(robot,body2,'body1');

body3 = rigidBody('body3');

jnt3 = rigidBodyJoint('jnt3','fixed');

setFixedTransform(jnt3,trvec2tform([L2,0,0]));

body3.Joint = jnt3;

addBody(robot,body3,'body2');

%%

showdetails(robot)

show(robot)

%%

Q = randomConfiguration(robot);

show(robot, Q)

%%

inverseKinematics('RigidBodyTree',robot)

trvec2tform
```