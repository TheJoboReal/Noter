---
tags:
  - lecture-note
  - uni
course: Robotics
---
#### Definition
Node is a fundamental building block of a robotic system. It represents an individual process that performs computation. Nodes can publish and subscribe to topics, offer services, or perform actions. By dividing a system into multiple nodes, each handling specific tasks, ROS 2 allows for modularity, enabling developers to build complex robotic applications that are easier to manage, debug, and scale. Nodes in ROS 2 can run independently, communicate with each other, and are designed to be distributed across different machines or devices in a network.

#### Example: Mobile Robot with Obstacle Avoidance

In this system, we might have several nodes, each handling a different aspect of the robot's behavior:

1. **Sensor Node**:
    
    - **Purpose**: Reads data from the robot's sensors (e.g., a laser scanner or ultrasonic sensors) to detect obstacles.
    - **Functionality**: Publishes the sensor data to a topic, say `/scan`.
2. **Control Node**:
    
    - **Purpose**: Controls the robot's movement.
    - **Functionality**: Subscribes to the `/scan` topic to receive sensor data and decides on the movement direction based on the presence of obstacles. It might publish velocity commands to a `/cmd_vel` topic.
3. **Motor Driver Node**:
    
    - **Purpose**: Interface with the robot's motors.
    - **Functionality**: Subscribes to the `/cmd_vel` topic to receive velocity commands and converts them into signals to drive the robot's motors.

### Interaction:

- The **Sensor Node** continuously publishes data from the sensors.
- The **Control Node** listens to this sensor data, processes it, and decides whether the robot should move forward, stop, or turn.
- Based on the decision, the **Control Node** publishes a command to the `/cmd_vel` topic.
- The **Motor Driver Node** receives this command and controls the motors accordingly to execute the movement.

This modular design allows each node to be developed, tested, and modified independently, improving the flexibility and maintainability of the system. If you wanted to upgrade the sensors or change the control logic, you could do so without altering the other nodes.