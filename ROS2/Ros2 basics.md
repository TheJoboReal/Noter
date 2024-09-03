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

