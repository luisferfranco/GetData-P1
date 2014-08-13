# Get Data Project 1

The code is self documented, basically the flow is as follows:

1) It will read the original Samsung Data from the training and testing datasets (those files are stored under the *test* and ```train``` directories) and merge them. It will do the same with the activities and testing subjects files

2) It will read the features.txt file that includes all the description on the variables, and their column names, we will look only for the words ```-mean(``` and ```-std(``` all the rest of the data will be discarded

3) Next it will append the activities and subjects columns at the first and second columns

4) It will do a transformation of the data using the melt and dcast functions

5) Finally it will save the file as tidyData.txt on the main directory
