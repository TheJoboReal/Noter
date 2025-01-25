* An important issue in a packet-switched network, such as Internet, is Congestion.
* This occurs when the number of packets (the load) sent to the network is greater than the capacity of the network.
* Congestion control refers to a mechanism/technique that controls congestion and keeps the load below capacity.

Congestion in a network occurs because routers and switches have queues--buffers that hold the packets before and after processing. Congestion at the transport layer is actually the result of **congestion at the network layer, which manifests itself at the transport layer.** 

Later we will see how the [[TCP (Transmission Control Protocol)|TCP]] protocol (assuming that there is no congestion control at the network layer) makes its own congestion control mechanism.