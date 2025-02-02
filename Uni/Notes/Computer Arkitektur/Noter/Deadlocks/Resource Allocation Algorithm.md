---
tags:
  - lecture-note
  - uni
course: Computer Arkitektur
---

In addition to the request and assignment edges in a standard resource-
allocation graph, we introduce a new type of edge, called a claim edge. A claim edge Ti → Rj indicates that thread Ti may request resource Rj at some time in the future.

This edge resembles a request edge in direction but is represented in the graph by a dashed line.

When thread Ti requests resource Rj, the claim edge Ti → Rj is converted to a request edge.

Similarly, when a resource Rj is released by Ti, the assignment edge Rj → Ti is reconverted to a claim edge Ti → Rj.

Note that the resources must be claimed a priori in the system. That is,
before thread Ti starts executing, all its claim edges must already appear in the resource-allocation graph.
![[Pasted image 20230929093522.png]]
Here, T1 and T2 will request to get resource R2 in future. T2 will not
be able to request and get R2 even if it is available!

![[Pasted image 20230929093619.png]]
Because If T2 requests R2 and gets it allocated to it, this action will
create a cycle in the graph. Then we end up in unsafe state!