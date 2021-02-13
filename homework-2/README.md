# Discovery of Frequent Itemsets and Association Rules
This notebook aims to implement the [Apriori algorithm](http://www.vldb.org/conf/1994/P487.PDF) to discover association rules between itemsets in a sales transaction database (i.e. a set of baskets). The task includes the following two sub-problems:

1. Finding frequent itemsets with support at least s. That means these item sets must appear together in a number of baskets greater than *s * total_baskets*.
2. Generating association rules with confidence at least c from the itemsets found in the first step.

## Implementation
This project has been developed using only NumPy and the native dictionary implementation for Python. We decided not to use PySpark because the transaction file fits in memory and, due to the lack of a distributed cluster, the speed will be equivalent. Also the implementation is extremely fast as we decided not only store singletons but also the list of the baskets the element appears in into a dictionary so the access time is O(1).

The execution time for the implemented Apriori algorithm, with the given database, was around 13.5 seconds. The implemented Association Rules algorithm took around 8,27 ms to complete. 

Some additional libraries to highlight were urllib.request, to download the transaction file from remote storage, pandas, to visualize the resulting table, and run experiments comparing it with the python dictionary, and finally functools and itertools for helper functions for combinations and reduction of lists.

## Authors
- Serghei Socolovschi [serghei@kth.se](mailto:serghei@kth.se)
- Angel Igareta [alih2@kth.se](mailto:alih2@kth.se)
