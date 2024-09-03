#### Definition
**Services** provide a synchronous communication mechanism between nodes, allowing one node to send a request and receive a response from another node. This is different from topics, which are used for continuous, asynchronous data streaming. Services are useful when you need to perform a specific action or request a particular piece of information at a given moment.

### Example: Mobile Robot with Obstacle Avoidance

Let’s expand the previous example with a service:

1. **Reset [[Odometry]] Service**:
    - **Purpose**: Suppose our robot has odometry that tracks its position over time. Sometimes, we might need to reset this position to zero, for instance, when the robot starts from a new location.
    - **Service Server**: The **Control Node** could offer a service called `reset_odometry`. This service, when called, resets the robot's odometry readings to the initial state.
    - **Service Client**: Another node, perhaps a **Supervisor Node** that monitors the overall system, could call this service whenever it needs the odometry to be reset. The supervisor node sends a request to the service, and the control node processes this request and sends back a confirmation response once the odometry is reset.

### Interaction:

- The **Supervisor Node** sends a request to the `reset_odometry` service, asking the control node to reset the odometry.
- The **Control Node**, acting as the service server, receives this request, performs the reset operation, and then sends a response back to the supervisor node indicating that the task is complete.