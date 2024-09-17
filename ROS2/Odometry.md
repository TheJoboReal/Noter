#### Definition
**Odometry** refers to the process of estimating a robot's position and orientation (often referred to as its **pose**) over time based on data from its movement. It’s a crucial concept in mobile robotics, enabling the robot to keep track of where it is relative to a starting point as it moves around. Works like INS or IMU


### How Odometry Works:

Odometry typically involves using data from sensors that measure the robot's movement, such as:

- **Wheel Encoders**: Sensors attached to the robot's wheels that measure how far each wheel has rotated. By knowing the wheel diameter, the robot can calculate the distance traveled.
- **Inertial Measurement Units (IMUs)**: Sensors that measure acceleration and rotational velocity, providing information on how the robot's orientation changes over time.

### Example: Mobile Robot with Odometry

Let’s consider how odometry works in the context of our mobile robot with obstacle avoidance:

1. **Tracking Position**:
    
    - As the robot moves, the wheel encoders track how much each wheel rotates. If the robot moves forward, the encoders provide data that, when combined with the known wheel diameter, allows the robot to calculate how far it has traveled.
    - If one wheel rotates faster than the other (e.g., during a turn), the robot can also estimate how its orientation changes.
2. **Estimating Pose**:
    
    - By continuously integrating this movement data over time, the robot estimates its current position (x, y) and orientation (theta, the angle relative to a reference direction).
    - For example, if the robot starts at position (0, 0) facing east and moves forward 1 meter, it will estimate its new position as (1, 0). If it then turns 90 degrees to the left and moves forward another meter, it will estimate its position as (1, 1) and orientation as facing north.
3. **Application in Obstacle Avoidance**:
    
    - The odometry data can be used by the **Control Node** to navigate the robot effectively. If the robot knows where it started and where it is currently, it can make decisions to avoid obstacles and reach its target destination.