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

### Wildlife Dataset
[WildlifeDataset](https://arxiv.org/pdf/2311.09118) an open source toolkit for animal re-id. CLIP and DINOv2 are some animal Re-ID models.
The 3 primary approaches for animal Re-ID are: 
- Local Descriptors.
- Deep Descriptors.
- Species Specifik Methods(i.e. Zebra barcodes).

#### Local Descriptors
Local-feature-based methods find unique keypoints and extract their local descriptors for matching. The matching is usually done on a database of known identities, i.e., for each given image sample, an identity with the highest number of descriptor matches is retrieved. The most significant benefit of these methods is their plug-and-play nature, without any need for fine-tuning, which makes them comparable in a zero-shot setting to large foundation models, such as CLIP or DINOv2, etc.

Even though approaches based on SIFT, SURF, or ORB descriptors exhibit limitations in scaling efficiently to larger datasets and their performance, all available software products, e.g., WildID [11], HotSpotter [15], and I3S, are based on local-feature-based methods. Naturally, even with such limitations, those systems are popular among ecological researchers without a comprehensive technical background and find a wide range of applications, most likely due to their intuitive graphical user interfaces (GUIs). 

#### Deep Descriptors
Deep feature-based approaches are based on vector representation of the image learned through optimizing a deep neural network. Similarly, as in local feature-based methods, the resulting deep embedding vector (usually 1024 or 2048d) is matched with an identity database. Applying deep learning to wildlife re-identification bears similarities with human or vehicle re-identification. Therefore, similar methods can be easily repurposed. However, it is important to note that deep learning requires fine-tuning models on the specific target domain, i.e., species, which makes the model’s performance dependent on a species it was fine-tuned for. Another approach is to use publicly available large-scale, foundational models pre-trained on large datasets (e.g., CLIP [42] and DINOv2 [37]). These models are primarily designed for general computer vision tasks. Therefore, they are not adapted nor tested for the nuances of wildlife re-identification, which heavily relies on fine-grained features

#### Species Specific Methods
Species-specific methods are tailored to an individual species or groups of closely related species, particularly those with visually distinct patterns. These methods typically focus on visual characteristics unique to the target species, restricting their applicability beyond the species they were developed for. Moreover, they often entail substantial manual preprocessing steps, such as extracting patches from regions of interest or accurately aligning compared images. For instance, one such approach involves employing Chamfer distance to measure the distance between greyscale patterns in polar bear whiskers [6]. Other examples include computing correlation between aligned patches derived from cheetah spots [29] or similarity between two images based on the count of matching pixels within newt patterns [20].
