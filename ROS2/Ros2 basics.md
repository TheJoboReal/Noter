To run a ros2 package executeable:
```bash
ros2 run <package_name> <executable_name>
```
example:
```bash
ros2 run turtlesim turtlesim_node
```

---
Check running ros2 nodes:
```bash
ros2 node list
```
Get ros2 node info:
```bash
ros2 node info /my_turtle
```

---
Remap a node name:
```bash
"ros2 run turtlesim turtlesim_node --ros-args --remap __node:=my_turtle"
```

---
Publish commands

```bash
ros2 topic pub --rate 1 /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 1.8}}"
```
This will publish commands at 1Hz to make the turtlebot node move with a constant velocity.

```bash
ros2 topic pub --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 1.8}}"
```
This will only publish the command once