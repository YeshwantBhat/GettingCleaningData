GettingCleaningData
===================

### Assignment for getting and cleaning the data

There are 2 files :-
run_analysis.R which is the R script for the project.
CodeBook.md which describes the variables, data and work done to transform in cleaning the data.

### Description of what run_analysis.R does :-
 
 It reads in the training and test data set.
 For the training data set it reads 3 files namely :- 
 X_train.txt,y_train.txt and subject_train.txt.
 It then combines these individual files into 1 data frame for the training data.
 
 Similarly it reads the test data set for which there are 3 files namely :-
 X_test.txt,y_test.txt and subject_test.txt.
 It then combines these individual files into 1 data frame for the test data.
 
 Description of the above mentioned files for the training and test data are provided at the end.
 
 The training and test frames are merged together to combine the data sets into one big data set.
 
 This combined data set frame (traintest)contains both the training and test data sets respectively.
 traintest contains 10,299 rows, 563 columns. 2 columns as subject and activity and the remaining 561
 columns from V1 to V561. These 561 columns refer to the 561 measurements done for a particular activity,subject.
 
 features.txt file is then read into a data frame and feature names of the 561 measurements are extracted.
 
 The feature names are then used to extract columns from traintest which correspond to either mean or std measurements
 of the features.
 
 The resulting data frame has 10,299 rows and 81 columns including column names for subject,activity and 79 columns 
 corresponding to mean or std measurements of the features.
 
 From this data frame further 13 columns are dropped which corresponds to meanFreq measurements.
 
 This is to ensure that we extract only those measurements which are either mean or std and meanFreq is a different measurement  altogether.
 
 The mean or std measurements are now labelled using feature names.
 
 For instance V1 of the data frame is now named "tBodyAccmeanX" and so on...
 Then using the dplyr package function a table data frame is created.
 
 This data frame traintesttable2 now contains 68 columns - subject,activity and remaining 66 columns which correspond to either mean or std measurements of the features.
 
 activity_labels.txt is read into a data frame. This file contains the activity labels for the different activities like WALKING, STANDING and so on ...
 
 The activity labels are then used to label the data frame's activity column so that it now becomes a factor.
 
 Now using ddply function on the traintesttable2 it is grouped into subject, activity and the mean(average) calculated .
 
 The resulting data frame traintesttable3 now has 68 columns - subject,activity and the various features(measurements) mean value.
 It has 180 rows of 68 columns.
 
 So every row now corresponds to mean value of all the 66 features for a particular subject and particular activity.
 
 There are multiple measurement values  corresponding to measurements taken for a particular subject,activity at different times.
 
 The data frame is then grouped into subject and  activity.
 It is then summarized by the mean of the values across a particular measurement values for a particular combination of subject,activity.
 
 The mean of the measurements is then calculated. So finally we have a mean value for a particular measurement for a particular subject and a particular activity.
 
 Then the variable names in traintesttable3 is modified to reflect that these are mean values. Furthermore the names are modified to reflect that they belong to time and frequency domain.
 
 
 For instance 
 
 subject  activity  timeBodyAccmeanX
 
 1        WALKING   0.277330758736842
 
 The data frame traintesttable3 is what is then output to a "output.txt" file.
 
 This is the tidy data set.
 
 It contains 180 rows, 68 columns.
 
 This tidy data set can be read using read.table and then viewed in R Studio using View command.
 
 
 
###    Assumption :-
 The input files are assumed to be in the working directory and the files unzipped.
 So if the working directory is A then the files are assumed to be in the following directory
 
 A/UCI HAR Dataset
 
 
###    Description of the input files :-
 
 X_train.txt - This file contains 561 measurements. It has 7352 rows. 
 
 y_train.txt - This file contains activities info. It has 7352 rows. Each row corresponds to a particular activity being done.
 
 subject_train.txt - This file contains subject info. It has 7352 rows. Each row corresponds to a particular subject.
 
 It is assumed that the first row in the y_train.txt correspond to the first row in  subject_train.txt and X_train.txt respectively.
 
 X_test.txt - This file contains 561 measurements. It has 2947 rows. 
 
 y_test.txt - This file contains activities info. It has 2947 rows. Each row corresponds to a particular activity being done.
 
 subject_test.txt - This file contains subject info. It has 2947 rows. Each row corresponds to a particular subject.
 
 It is assumed that the first row in the y_test.txt correspond to the first row in  subject_test.txt and X_test.txt respectively.
 
 
 
 

--
