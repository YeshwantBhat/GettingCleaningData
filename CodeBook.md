GettingCleaningData
===================

CodeBook for the project.


### Tidy Data Description 

The tidy data is output in the file "output.txt"

It consists of 4 variables :-

1.subject

2.activity

3.measurement

4.mean


### subject Description
SUBJECT    
2

Group of volunteers within an age bracket of 19-48 years.

01..30

The subject variable has been obtained by combining it from the training and test data.
The test data has information for  9 volunteers.
The training data has information for 21 volunteers.

### activity Description
ACTIVITY
1

List of activities performed by the subject wearing a smartphone (Samsung Galaxy S II) on the waist.

1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING


The activity variable has been transformed from integer numbers (1 to 6) to factors(labels).
activity_labels.txt provided the necessary mapping between the numbers and the labels.

Each subject has performed the activities at different interval of times.

### measurement Description
MEASUREMENT

2

List of measurements extracted and transformed from the set of 561 measurements.

01 tBodyAccmeanX

02 tBodyAccmeanY

03 tBodyAccmeanZ

04 tBodyAccstdX

05 tBodyAccstdY

06 tBodyAccstdZ

07 tGravityAccmeanX

08 tGravityAccmeanY

09 tGravityAccmeanZ

10 tGravityAccstdX

11 tGravityAccstdY

12 tGravityAccstdZ

13 tBodyAccJerkmeanX

14 tBodyAccJerkmeanY

15 tBodyAccJerkmeanZ

16 tBodyAccJerkstdX

17 tBodyAccJerkstdY

18 tBodyAccJerkstdZ

19 tBodyGyromeanX

20 tBodyGyromeanY

21 tBodyGyromeanZ

22 tBodyGyrostdX

23 tBodyGyrostdY

24 tBodyGyrostdZ

25 tBodyGyroJerkmeanX

26 tBodyGyroJerkmeanY

27 tBodyGyroJerkmeanZ

28 tBodyGyroJerkstdX

29 tBodyGyroJerkstdY

30 tBodyGyroJerkstdZ

31 tBodyAccMagmean

32 tBodyAccMagstd

33 tGravityAccMagmean

34 tGravityAccMagstd

35 tBodyAccJerkMagmean

36 tBodyAccJerkMagstd

37 tBodyGyroMagmean

38 tBodyGyroMagstd

39 tBodyGyroJerkMagmean

40 tBodyGyroJerkMagstd

41 fBodyAccmeanX

42 fBodyAccmeanY

43 fBodyAccmeanZ

44 fBodyAccstdX

45 fBodyAccstdY

46 fBodyAccstdZ

47 fBodyAccJerkmeanX

48 fBodyAccJerkmeanY

49 fBodyAccJerkmeanZ

50 fBodyAccJerkstdX









### mean Description

MEAN
17   (16 implied decimal places)

Mean of the particular measurement values for a given combination of subject and activity.

Individual  values for a particular measurement have been added for a particular combination of subject,activity
and then the average calculated.

The average is calculated only for those measurements which have either the mean or the standard deviation computed.
