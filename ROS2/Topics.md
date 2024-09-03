#### Definition
Topics are a communication channel used by nodes to exchange messages asynchronously. Topics allow nodes to publish data that other nodes can subscribe to, enabling a decoupled and flexible way of data sharing.

#### Example: Mobile Robot with Obstacle Avoidance
Using the previous example of a mobile robot with obstacle avoidance, here’s how topics are involved:
    /scan Topic:
        Role: This topic carries sensor data, such as distance measurements from obstacles around the robot.
        Publisher: The Sensor Node publishes data to this topic. For instance, every time the sensor detects obstacles, it sends this data through the /scan topic.
        Subscriber: The Control Node subscribes to the /scan topic. It listens to the sensor data and processes it to make decisions about the robot's movements.
    /cmd_vel Topic:
        Role: This topic carries velocity commands, which dictate the robot's speed and direction.
        Publisher: The Control Node publishes velocity commands to this topic after processing the sensor data. For example, if the sensor data indicates an obstacle ahead, the control node might publish a command to stop or turn the robot.
        Subscriber: The Motor Driver Node subscribes to the /cmd_vel topic. It listens to the commands and translates them into motor actions, making the robot move accordingly.