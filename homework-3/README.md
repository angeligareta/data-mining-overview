# Mining Data Streams
The goal of this project is to study and implement [TRIÈST](https://www.kdd.org/kdd2016/papers/files/rfp0465-de-stefaniA.pdf), a streaming graph processing algorithm which aims to count the local and global triangles in fully dynamic streams. For the purpose of the assignment, we would focus on implementing both the basic and improved version of the algorithm.

In order to accomplish the task, the following two steps will be performed:
1. First, implement the reservoir sampling or the *Flajolet-Martin* technique used in the graph algorithm presented in the paper.
2. Second, develop the streaming graph algorithm that uses reservoir sampling.

## Implementation

This project has been implemented using Python and PySpark, to be able to have a parallelized version of the algorithm when running in a distributed cluster. Additionally, the dependencies NumPy, random, and urllib.request (to download the dataset from remote storage), were used for the implementation.

The selected graph dataset [CA-AstroPh](homework-3/data/CA-AstroPh.txt), was retrieved from [Stanford Network Analysis Platform (SNAP)](https://snap.stanford.edu/snap/) collection, it contains a collaboration network of papers published on arXiv in the AstroPhysics category.

## Results

The results together with an extensive hypertuning using Tensorboard are detailed in the [project report](homework-3/docs/report.pdf).

## Authors
- Serghei Socolovschi [serghei@kth.se](mailto:serghei@kth.se)
- Angel Igareta [alih2@kth.se](mailto:alih2@kth.se) 
