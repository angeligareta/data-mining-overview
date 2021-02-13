# Finding Similar Items
The goal of this notebook is to implement the stages of finding textually similar documents based on Jaccard similarity. Specifically, the implemented techniques to tackle the problem in a more optimal way are: shingling, minhashing, and locality-sensitive hashing (LSH).

The techniques are applied to documents collected from [ArXiv.org](https://arxiv.org/), with the goal of detecting plagiarism from a random set of real documents. In the case of papers, the similarity does not need to be very high to be considered significant. Some percentage lying around 20% would be unusual enough.

## Techniques
- **Shingling**: To be able to calculate similarity between sets, we need to first convert documents to set of elements. The most effective way would be to construct the set of short strings that appear in the document. Therefore, documents that share pieces as short as sentences or even phrases will have many common elements despite the order. To do so, we can use the shingling technique to extract the unique k-shingles that compose the document, these are the substrings of length k found within the document. Check *generate_shingles* method.
- **MinHashing**: A drawback from the set of shingles is that they can be very large to store, approximately 4 times the space the document takes. A solution is to generate signatures which can be compared between documents to estimate the Jaccard similarity of the underlying sets. Check *min_hashing* method.
- **LSH - Local Sensitive Hashing**: Even with minhashing, comparing the similarity between all documents it is very expensive computationally. LSH aims to generate, from the set of signatures, a reduced list of candidate pairs, which would be the ones which similarity must be evaluated. For signature matrices, this means to hash documents to several buckets and consider elements of the same bucket as candidate pairs. Check *lsh* method.

## Implementation
The code is implemented using Python and PySpark. In addition, Numpy is applied on all methods to try to make them as efficient as possible.

## Authors
- Serghei Socolovschi [serghei@kth.se](mailto:serghei@kth.se)
- Angel Igareta [alih2@kth.se](mailto:alih2@kth.se) 
