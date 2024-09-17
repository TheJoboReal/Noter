A parameter is a configuration value of a node. You can think of parameters as node settings. A node can store parameters as integers, floats, booleans, strings, and lists. In ROS 2, each node maintains its own parameters. For more background on parameters, please see the concept document.

---
#### Change parameter
To change a parameter’s value at runtime, use the command:
```bash
ros2 param set <node_name> <parameter_name> <value>
```

---
#### Parameter dump
The command prints to the standard output (stdout) by default but you can also redirect the parameter values into a file to save them for later. To save your current configuration of `/turtlesim`’s parameters into the file `turtlesim.yaml`, enter the command:
```bash
ros2 param dump /turtlesim > turtlesim.yaml
```
Dumping parameters comes in handy if you want to reload the node with the same parameters in the future.

---
#### Parameter load
You can load parameters from a file to a currently running node using the command:
```bash
ros2 param load <node_name> <parameter_file>
```

To start the same node using your saved parameter values, use:
```bash
ros2 run <package_name> <executable_name> --ros-args --params-file <file_name>
```
This is the same command you always use to start turtlesim, with the added flags `--ros-args` and `--params-file`, followed by the file you want to load.
