#### Get dependencies
```bash
rosdep install -i --from-path src --rosdistro humble -y
```

#### Build a package
```bash
colcon build --packages-select my_package
```

#### Run a node
```bash
ros2 run package node
```

#### Dont forget to source
```bash
source install/setup.bash
```
