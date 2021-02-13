# Graph Spectra
This project aims to implement and test the [spectral graph clustering](https://www.absolutdata.com/learn-analytics-whitepapers-webinars/spectral-clustering/) algorithm as described in the paper [“On Spectral Clustering: Analysis and an algorithm”](http://ai.stanford.edu/~ang/papers/nips01-spectral.pdf). Using the implementation of the K-eigenvector algorithm, two sample graphs will be analyzed:
- Sample Graph 1: Dataset prepared by Ron Burt, where he dug out the 1966 data collected by Coleman, Katz and Menzel on medical innovation.
- Sample Graph 2: A synthetic graph provided for the assignment.

## Implementation
Two implementations of the algorithm are provided, using both Matlab for simpler implementation and Python in a Jupyter Notebook together with the libraries NumPy, NetworkX, Scipy, and NLTK. In both implementations, the results and steps are equivalent.

To execute the [*Python* implementation](homework-4/graph_spectra.ipynb), the cluster size can be specified by changing the variable ‘cluster_size’ and the id of the dataset needs to be indicated with the variable ‘dataset_id’ (using the sample graph 2 as default).

In the [*Matlab* implementation](homework-4/graph_spectra.m), in addition to the basic version of the algorithm where k has to be specified, an additional estimation of the cluster size was added, by analyzing the gaps between the eigenvalues. This allows the user to just provide the graph as input and the implementation will select the best estimation of k.

## Results

More details about the implementation together with the explanation of the results can be found in the [project report](homework-4/docs/report.pdf).

## Authors
- Serghei Socolovschi [serghei@kth.se](mailto:serghei@kth.se)
- Angel Igareta [alih2@kth.se](mailto:alih2@kth.se) 
