# Get Data Project 1

The code is self documented, basically the flow is as follows:

1) It will read the original Samsung Data from the training and testing datasets (those files are stored under the ```test``` and ```train``` directories) and merge them. It will do the same with the activities and testing subjects files

2) It will read the features.txt file that includes all the description on the variables, and their column names, we will look only for the words ```-mean(``` and ```-std(``` all the rest of the data will be discarded

3) Next it will append the activities and subjects columns at the first and second columns

4) It will do a transformation of the data using the melt and dcast functions

5) Finally it will save the file as ```tidyData.txt``` on the main directory

# To use the script
Just copy and paste the file run_analysis.R into your R environment. Please point your R environment to the correct directory (where the R scrtipt and the data files are) it will produce a ```tidyData.txt``` file.

# About the Data
The following are the variables inside the ```tidyData.txt``` file:

1 subj_id
The first  variable is a subject id, it will go from 1 to 30, and it is the id of everyone of the subjects that participate in the study

2 activity_id
The second variable is the activity_id which ranges goes from 1 to 5, and its values are as follows:
	1 WALKING
	2 WALKING_UPSTAIRS
	3 WALKING_DOWNSTAIRS
	4 SITTING
	5 STANDING
	6 LAYING

Next 66 variables are the mean of each variable described in the ```features_info.txt``` file. Units are the same as described there.
3 tBodyAcc-mean()-X
4 tBodyAcc-mean()-Y
5 tBodyAcc-mean()-Z
6 tBodyAcc-std()-X
7 tBodyAcc-std()-Y
8 tBodyAcc-std()-Z
9 tGravityAcc-mean()-X
10 tGravityAcc-mean()-Y
11 tGravityAcc-mean()-Z
12 tGravityAcc-std()-X
13 tGravityAcc-std()-Y
14 tGravityAcc-std()-Z
15 tBodyAccJerk-mean()-X
16 tBodyAccJerk-mean()-Y
17 tBodyAccJerk-mean()-Z
18 tBodyAccJerk-std()-X
19 tBodyAccJerk-std()-Y
20 tBodyAccJerk-std()-Z
21 tBodyGyro-mean()-X
22 tBodyGyro-mean()-Y
23 tBodyGyro-mean()-Z
24 tBodyGyro-std()-X
25 tBodyGyro-std()-Y
26 tBodyGyro-std()-Z
27 tBodyGyroJerk-mean()-X
28 tBodyGyroJerk-mean()-Y
29 tBodyGyroJerk-mean()-Z
30 tBodyGyroJerk-std()-X
31 tBodyGyroJerk-std()-Y
32 tBodyGyroJerk-std()-Z
33 tBodyAccMag-mean()
34 tBodyAccMag-std()
35 tGravityAccMag-mean()
36 tGravityAccMag-std()
37 tBodyAccJerkMag-mean()
38 tBodyAccJerkMag-std()
39 tBodyGyroMag-mean()
40 tBodyGyroMag-std()
41 tBodyGyroJerkMag-mean()
42 tBodyGyroJerkMag-std()
43 fBodyAcc-mean()-X
44 fBodyAcc-mean()-Y
45 fBodyAcc-mean()-Z
46 fBodyAcc-std()-X
47 fBodyAcc-std()-Y
48 fBodyAcc-std()-Z
49 fBodyAccJerk-mean()-X
50 fBodyAccJerk-mean()-Y
51 fBodyAccJerk-mean()-Z
52 fBodyAccJerk-std()-X
53 fBodyAccJerk-std()-Y
54 fBodyAccJerk-std()-Z
55 fBodyGyro-mean()-X
56 fBodyGyro-mean()-Y
57 fBodyGyro-mean()-Z
58 fBodyGyro-std()-X
59 fBodyGyro-std()-Y
60 fBodyGyro-std()-Z
61 fBodyAccMag-mean()
62 fBodyAccMag-std()
63 fBodyBodyAccJerkMag-mean()
64 fBodyBodyAccJerkMag-std()
65 fBodyBodyGyroMag-mean()
66 fBodyBodyGyroMag-std()
67 fBodyBodyGyroJerkMag-mean()
68 fBodyBodyGyroJerkMag-std()
