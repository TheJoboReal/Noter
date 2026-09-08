---
tags:
  - lecture-slide
  - uni
course: Master
lecture: null
date: 2026-09-01
---

#### Cattle Farm UAV
The article [Drone-based Search of Individual ID of Friesian Cattle](https://www.researchgate.net/profile/William-Andrew/publication/341528255_Fusing_Animal_Biometrics_with_Autonomous_Robotics_Drone-based_Search_and_Individual_ID_of_Friesian_Cattle_Extended_Abstract/links/5f4612da92851cd302303a49/Fusing-Animal-Biometrics-with-Autonomous-Robotics-Drone-based-Search-and-Individual-ID-of-Friesian-Cattle-Extended-Abstract.pdf) describes using a custom built DJI M100 flying at low altitude of 10m.
They use Yolo V2 for species detection. 

In this article [Rapid article](https://besjournals.onlinelibrary.wiley.com/doi/pdfdirect/10.1111/2041-210x.70332):
In the context of [[SIFT feature Detection|SIFT features]] Deep embeddings are less interpretable but often more robust in challenging scenarios, achieving high accuracy and generali-sation. Yet, their successful extraction demands large-scale annotated datasets, extensive training and GPU hardware.
**This need for hardware acceleration should not be an issue for us, since we send images back to the ground station for processing meaning a GPU should be accessable**

[WildlifeDataset](https://arxiv.org/pdf/2311.09118) an open source toolkit for animal re-id.