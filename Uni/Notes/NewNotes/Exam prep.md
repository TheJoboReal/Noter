---
tags:
  - lecture-slide
  - uni
course: Introduction to Embodied Artificial Intelligence
lecture: null
date: 2026-01-12
---
# Comprehensive Notes on Embodied AI and Robot Architectures

## 1. INTRODUCTION TO EMBODIED AI

### Definition of Embodied AI
Intelligence arises from the interaction between an agent's brain, body, and its environment. Key components:
- Embodiment: Focus on interaction between physical and information processes
- Situatedness: Being embedded in an environment
- Morphological Computation: Body shape and materials influence interaction
- Sensorimotor Integration: Direct coupling of sensed data to meaningful actions

### Core Principles
- Intelligence cannot be understood without considering brain-body-environment interaction
- Follows synthetic methodology of "understanding by building"
- Body morphology (shape, structure, materials) influences interaction and reduces control requirements

### Embodiment Advantages
- Tasks become easier when embodiment is considered
- Soft deformable tissue in fingertips reduces grasping control requirements
- Material properties can be exploited for rapid movements
- Arrangement of sensors optimizes interaction
- Information self-structuring: body dynamics help organize sensory information

## 2. GOFAI VS. EMBODIED AI

### GOFAI (Good Old-Fashioned AI)
- Assumes cognition as computation
- Intelligence comes from explicit symbolic representations and rule-based reasoning
- Follows Sense → Think → Act paradigm
- Suitable for problems with: discrete states, unambiguous rules, full knowledge of task/environment
- Limitations: struggles with real-world perception, mobility, incomplete knowledge

### Embodied AI
- Intelligence emerges from brain-body-environment interaction
- Physical body plays significant causal role in cognitive processing
- True embodiment exploits physics
- Information self-structuring reduces computational load

### Key Interactions in Embodied Systems
1. Morphology → Action: Body design enables specific actions
2. Action → Morphology: Actions change body functionality
3. Perception → Action: Sensory data drives motor commands
4. Action → Perception: Movement improves sensing (active perception)
5. Learning → Morphology: Experience optimizes body design
6. Action → Learning: Physical interaction enables learning

## 3. ROBOT ARCHITECTURES

### Definition and Characteristics
Structured framework for conceptualizing robot systems' software and hardware arrangements and interactions.
Key characteristics:
- Modularity
- Interoperability
- Scalability
- Maintainability
- Performance

### Architecture Paradigms

#### 1. Deliberative Architecture (Sense-Plan-Act)
- "Think hard, then act"
- Relies on sensor data and models
- Uses planning (searching state-action sequences)
- Top-down design
- Advantages: Strategic action selection, capable of prediction and learning
- Issues: Frequent replanning, model accuracy problems, scalability issues

#### 2. Reactive Architecture
- "Don't think, just react"
- Tight coupling between sensory inputs and actuator outputs
- Pre-programmed condition-action rules
- Minimal or no internal world model
- Advantages: Minimal computation, well-suited to dynamic environments
- Issues: Low reasoning complexity, no memory, cannot predict or learn

#### 3. Hybrid Architecture
- "Think and act concurrently and separately"
- Compromise between deliberative and reactive approaches
- Reactive part overrides deliberative part during unexpected changes
- Deliberative part supervises reactive part for efficiency
- Mediator coordinates interaction between parts
- Advantages: Fast dynamic response, near-optimal solutions
- Issues: Coordination challenges, time scale discrepancies, complex mediator design

#### 4. Behavior-Based Architecture
- "Think the way you act"
- Layered network of distributed, concurrent, interacting modules (behaviors)
- Bottom-up design
- Emergent functionality
- Individual behaviors can store world representations

## 4. BEHAVIOR-BASED SYSTEMS

### Key Characteristics
- Intelligence and emergence from simple behavior interactions
- Situatedness in environment
- Embodiment with direct sensor-action coupling
- Behaviors as control laws implemented in software/hardware
- Simple, task-specific behaviors
- Concurrent execution for efficiency
- Time-extended processes, not just single actions

### Behavior Coordination
Types:
- Competitive: Select action from one behavior (winner-take-all)
- Cooperative: Combine actions from multiple behaviors

### Subsumption Architecture
- Behaviors organized into hierarchy of layers
- Higher levels subsume lower levels
- All layers receive sensor information and work in parallel
- Higher layers can suppress or inhibit lower layers
- Each layer consists of augmented finite-state machines (AFSMs)
- Communication via inhibition and suppression signals

### Designing Behavior-Based Architecture
1. Define task/environment
2. Identify primitive behaviors
3. Specify inputs and outputs
4. Design behavior representation (if-then rules, FSM, etc.)
5. Decide arbitration/coordination method
6. Implement incrementally
7. Test in scenarios
8. Evaluate emergent behavior

## 5. SENSORIMOTOR INTEGRATION

### Definition
Capability of central nervous system to integrate different stimuli sources and transform them into motor actions.

### Characteristics
- Task-specific motor output
- Multiple information sources
- Flexible and dynamic
- No single algorithm exists

### Importance
Intelligence begins with ability to steer behavior toward beneficial outcomes and away from harmful ones. Sensorimotor integration enables:
- Active perception
- Adaptive control
- Learning from experience
- Perception-action co-evolution

### Braitenberg Vehicles
- Simple sensorimotor integration models
- Direct sensor-actuator connections
- Exhibit behaviors like fear, aggression, love, exploration
- Purely mechanical, no information processing
- Types: excitatory/inhibitory, ipsilateral/contralateral connections

### Sensorimotor Contingencies (SMCs)
- Describe how changes in actions lead to predictable sensory changes
- Perception depends on agent's movements
- Enable adaptive control, enhanced perception, learning
- Exploit regularity between sensory information and movement

### Internal Models
- Forward model: Predicts outcome of actions ("If I do X, Y will happen")
- Inverse model: Determines actions to achieve goals ("I want Y, what should I do?")
- Enable error correction, efficiency, adaptation
- Reduce need for constant feedback loops

## 6. BIOINSPIRATION IN EMBODIED AI

### Why Study Nature
- 3.8 billion years of R&D
- Adaptability to different environments
- Resilience and performance optimization
- Efficient energy usage

### Synthetic Methodology
1. Understanding biological systems
2. Abstracting general principles
3. Applying principles to artifact design

### Key Bioinspired Principles
1. Motion and locomotion mechanisms
2. Efficient energy usage
3. Swarm intelligence and collective motion
4. Sensing and perception strategies

### Active Sensing and Perception
- Biological perception involves movement
- "We see in order to move, and we move in order to see" (James Gibson)
- Active sensing: intelligent control of data collection
- Movement control depends on current data interpretation
- Allows selective sampling, feature extraction, improved processing

### Motion Perception
- Process of estimating speed and direction from sensory information
- Hassenstein-Reichardt detector model for motion detection
- Uses neural delays to detect motion
- Basis for event-based cameras

### Multimodal Systems
- Integration of multiple sensory modalities
- Improves perception and decision-making
- Common in biological systems

## 7. PRACTICAL APPLICATIONS AND PROJECT DESIGN

### Search and Rescue Project
Goal: Build robot using embodied AI principles to rescue "survivor" (tomato can) from building.

Requirements:
- Use behavior-based architecture
- Design robust gripper
- Use color sensors for track following
- Use ultrasound sensor to detect can
- Consider center of gravity for ramp navigation
- Handle additional weight from can
- Test on multiple maps, not just training map

### Key Considerations
- Sensor placement affects robot intelligence
- Physical body influences control strategies
- Incremental testing and development
- Record calibration and performance metrics
- Focus on why design decisions were made

### Development Process
1. Start with critical behavior (usually obstacle avoidance)
2. Add behaviors incrementally
3. Test after each addition
4. Stop when interactions produce desired capabilities
5. Keep It Simple Stupid (KISS principle)

## 8. KEY TAKEAWAYS

### Fundamental Differences
- GOFAI: Intelligence from symbols and rules, body incidental
- Embodied AI: Intelligence from interaction, body central
- Behavior-based: Distributed, emergent intelligence
- Hybrid: Combines planning with reactivity

### Design Principles
- Bottom-up development for behavior-based systems
- Exploit morphology to reduce control complexity
- Use active perception to improve sensing
- Design for embodiment from the beginning
- Test incrementally in real environments

### Biological Inspiration
- Nature provides proven solutions
- Abstract principles, don't just mimic
- Consider energy efficiency
- Use multimodal sensing
- Leverage physical properties of materials

### Future Directions
- More adaptive and learning-based systems
- Better integration of morphology and control
- Development of true embodied learning
- Application of principles to soft robotics
- Standardization of embodied AI metrics and evaluation