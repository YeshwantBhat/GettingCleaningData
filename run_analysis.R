library(dplyr)
library(plyr)
# Read the measurement values from X training data set.
xtrain<-read.table("./UCI HAR Dataset/train/x_train.txt")

# Read the activity values from y training data set.
ytrain<-read.table("./UCI HAR Dataset/train/y_train.txt")

# Read the subject values from subject training data set.
strain<-read.table("./UCI HAR Dataset/train/subject_train.txt")

# Bind the subject,activity tables to the measurement train table
a<-ytrain$V1
s<-strain$V1
xtrainwithy<-cbind(a,xtrain)
train<-cbind(s,xtrainwithy)

# Rename the column names for subject and activity
names(train)[1]<-"subject"
names(train)[2]<-"activity"

# Read the measurement values from X test data set.
xtest<-read.table("./UCI HAR Dataset/test/x_test.txt")

# Read the activity values from y test data set.
ytest<-read.table("./UCI HAR Dataset/test/y_test.txt")

# Read the subject values from subject test data set.
stest<-read.table("./UCI HAR Dataset/test/subject_test.txt")

# Bind the subject,activity tables to the measurement test table
a<-ytest$V1
s<-stest$V1
xtestwithy<-cbind(a,xtest)
test<-cbind(s,xtestwithy)

# Rename the column names for subject and activity
names(test)[1]<-"subject"
names(test)[2]<-"activity"

# Combine the training and test data.
# So basically the test data is merged rowwise after the train data
traintest<-rbind(train,test)

#Now read the features which would be needed for naming the variables.
featurestable<-read.table("./UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)
# Remove the '-','()' from the feature names
features<-featurestable$V2
features1<-gsub("-","",features)
features2<-gsub("\\(\\)","",features1,perl=TRUE)

# Extract only those features which have mean or std measurements.
# names vector has the indices where either mean or std is present in the
# feature names.
names<-grep("mean|std",features2)

# Create a vector of feature names containing mean or std in them.
featurenames<-grep("mean|std",features2,value=TRUE)

# Creating a table dataframe traintesttable
traintesttable<-tbl_df(traintest)

# Now have the table dataframe only those features which contains
# mean or std measurements.

# Have to increment by 2 as we have to rename from column 3 in the 
# table dataframe as column 1 is subject and column 2 is activity
names<-names + 2 
traintesttable1<-select(traintesttable,subject,activity,names)
names(traintesttable1)[3:81]<-featurenames[1:79]

# Now drop the measurements which correspond to meanFreq from traintesttable1
#  traintesttable2 has 68 columns - subject,activity and measurements for which 
# mean or std values are known.
traintesttable2<-select(traintesttable1,-contains("Freq"))

# Read the activity labels from activity_labels
activitytable<-read.table("./UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)
activitytable$V1<-as.character(activitytable$V1)

# Now label the activity column in the table frame traintesttable2
traintesttable2$activity<-as.numeric(traintesttable2$activity)
traintesttable2$activity<-factor(traintesttable2$activity,activitytable$V1,activitytable$V2)


# Now group the table frame by subject,activity and calculate the mean of 66 features across the combination of subject,activity.
traintesttable3<-ddply(traintesttable2,.(subject,activity),numcolwise(mean))


# Write the output to a text file.
write.table(traintesttable3,file="output.txt",row.names=FALSE)
