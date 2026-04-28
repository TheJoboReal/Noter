---
tags:
  - lecture-slide
  - uni
course: null
lecture: No Course Selected
date: 2025-11-19
---
#### Overall idea
A fixed wing drone that can loiter/monitor an area and detect specific animals, rhinos in our case. Further, an algorithm that can detect individual animals of the same species.

Using the solar fixed wing that Guy has to increase flight time.

Implementing it all on a low powered system.

The system does not need to be fully real time as the rhinos does not move much and the fixed wing can loiter while waiting for an output of the model. Thus Models such as YOLO are not needed.

From **Guy**, make the project an integrated payload that can be mounted on any drone and only needs power input. So it has integrated telemetry and stuff. So we wont be limited by what drone we can take. This way we help our selves a lot if we are unable to fly at moments. This way, we will not have to deal with the hell of integrating the system flight flight controllers.
We should also have contingency plans for if we are unable to in the open category,meaning we should be able to make a bare minimum test at the airport.

#### Research question
* Is it possible to integrate animal detection of individual animals on an autonomous drone?
* Is it possible to create a fully integrated payload with gimbal camera for animal detection, telemetry and data-safety software(encryption), only needing power input.


#### Related
https://www.sciencedirect.com/science/article/pii/S1574954124003844


![[Pasted image 20260426141153.png]]