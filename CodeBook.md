##Codebook for Getting and Cleaning Data Project
#Transformations
1.	Test and train datasets were bound together. The features dataset was used as the columns names for the newly merged test and train dataset.
2.	Subject datasets were bound together. The column was renamed to ‘Subject’.
3.	The merged test and train dataset was then merged with the subject dataset.
4.	Mean and standard deviation columns were then subset.
5.	The activity dataset was then bound.
6.	Activity labels were attached for easier readability.
7.	Mean and standard deviation columns were changed from factors to numeric.
8.	A second tidy dataset was created, which took the average of each variable for each activity and each subject.
#Variables and descriptions
Activity	(factor)
	The type of activity being performed, which is linked to the column ‘Activity No’.
1.	LAYING 
2.	SITTING
3.	STANDING
4.	WALKING
5.	WALKING_DOWNSTAIRS
6.	WALKING_UPSTAIRS
Subject 	 (integer)
	Each number identifies the subject who performed an activity.
	1-30
Activity No (numeric)
	Each number acts as a class label for each activity name.
	1-6

tBodyAcc-mean()-X (numeric)
	Mean value of axis signal for each subject by activity.
tBodyAcc-mean()-Y (numeric)
	Mean value of axis signal for each subject by activity.
tBodyAcc-mean()-Z (numeric)
	Mean value of axis signal for each subject by activity.
tBodyAcc-std()-X (numeric)
	Standard deviation of axis signal for each subject by activity.
tBodyAcc-std()-Y (numeric)
	Standard deviation of axis signal for each subject by activity.
tBodyAcc-std()-Z (numeric)
	Standard deviation of axis signal for each subject by activity.
tGravityAcc-mean()-X (numeric)
	Mean value of axis signal for each subject by activity.
tGravityAcc-mean()-Y (numeric)
	Mean value of axis signal for each subject by activity.
tGravityAcc-mean()-Z (numeric)
	Mean value of axis signal for each subject by activity.
tGravityAcc-std()-X (numeric)
	Standard deviation of axis signal for each subject by activity.
tGravityAcc-std()-Y (numeric)
	Standard deviation of axis signal for each subject by activity.
tGravityAcc-std()-Z (numeric)
	Standard deviation of axis signal for each subject by activity.
tBodyAccJerk-mean()-X (numeric)
	Mean value of axis signal for each subject by activity.
tBodyAccJerk-mean()-Y (numeric)
	Mean value of axis signal for each subject by activity.
tBodyAccJerk-mean()-Z (numeric)
	Mean value of axis signal for each subject by activity.
tBodyAccJerk-std()-X (numeric)
	Standard deviation of axis signal for each subject by activity.
tBodyAccJerk-std()-Y (numeric)
Standard deviation of axis signal for each subject by activity.
tBodyAccJerk-std()-Z (numeric)
	Standard deviation of axis signal for each subject by activity.
tBodyGyro-mean()-X (numeric)
	Mean value of axis signal for each subject by activity.
tBodyGyro-mean()-Y (numeric)
	Mean value of axis signal for each subject by activity.
tBodyGyro-mean()-Z (numeric)
	Mean value of axis signal for each subject by activity.
tBodyGyro-std()-X (numeric)
	Standard deviation of axis signal for each subject by activity.
tBodyGyro-std()-Y (numeric)
	Standard deviation of axis signal for each subject by activity.
tBodyGyro-std()-Z (numeric)
	Standard deviation of axis signal for each subject by activity.
tBodyGyroJerk-mean()-X (numeric)
	Mean value of axis signal for each subject by activity.
tBodyGyroJerk-mean()-Y (numeric)
	Mean value of axis signal for each subject by activity.
tBodyGyroJerk-mean()-Z (numeric)
	Mean value of axis signal for each subject by activity.
tBodyGyroJerk-std()-X (numeric)
	Standard deviation of axis signal for each subject by activity.
tBodyGyroJerk-std()-Y (numeric)
	Standard deviation of axis signal for each subject by activity.
tBodyGyroJerk-std()-Z (numeric)
	Standard deviation of axis signal for each subject by activity.
tBodyAccMag-mean()(numeric)
	Mean value of signal for each subject by activity.
tBodyAccMag-std()(numeric)
	Standard deviation of signal for each subject by activity.
tGravityAccMag-mean()(numeric)
	Mean value of signal for each subject by activity.
tGravityAccMag-std()(numeric)
	Standard deviation of signal for each subject by activity.
tBodyAccJerkMag-mean()(numeric)
	Mean value of signal for each subject by activity.
tBodyAccJerkMag-std()(numeric)
	Standard deviation of signal for each subject by activity.
tBodyGyroMag-mean()(numeric)
	Mean value of signal for each subject by activity.
tBodyGyroMag-std()(numeric)
	Standard deviation of signal for each subject by activity.
tBodyGyroJerkMag-mean()(numeric)
	Mean value of signal for each subject by activity.
tBodyGyroJerkMag-std()(numeric)
	Standard deviation of signal for each subject by activity.
fBodyAcc-mean()-X (numeric)
	Mean value of axis signal for each subject by activity.
fBodyAcc-mean()-Y (numeric)
	Mean value of axis signal for each subject by activity.
fBodyAcc-mean()-Z (numeric)
	Mean value of axis signal for each subject by activity.
fBodyAcc-std()-X (numeric)
	Standard deviation of axis signal for each subject by activity.
fBodyAcc-std()-Y (numeric)
	Standard deviation of axis signal for each subject by activity.
fBodyAcc-std()-Z (numeric)
	Standard deviation of axis signal for each subject by activity.
fBodyAccJerk-mean()-X (numeric)
	Mean value of axis signal for each subject by activity.
fBodyAccJerk-mean()-Y (numeric)
	Mean value of axis signal for each subject by activity.
fBodyAccJerk-mean()-Z (numeric)
	Mean value of axis signal for each subject by activity.
fBodyAccJerk-std()-X (numeric)
	Standard deviation of axis signal for each subject by activity.
fBodyAccJerk-std()-Y (numeric)
	Standard deviation of axis signal for each subject by activity.
fBodyAccJerk-std()-Z (numeric)
	Standard deviation of axis signal for each subject by activity.
fBodyGyro-mean()-X (numeric)
	Mean value of axis signal for each subject by activity.
fBodyGyro-mean()-Y (numeric)
	Mean value of axis signal for each subject by activity.
fBodyGyro-mean()-Z (numeric)
	Mean value of axis signal for each subject by activity.
fBodyGyro-std()-X (numeric)
	Standard deviation of axis signal for each subject by activity.
fBodyGyro-std()-Y (numeric)
	Standard deviation of axis signal for each subject by activity.
fBodyGyro-std()-Z (numeric)
	Standard deviation of axis signal for each subject by activity.
fBodyAccMag-mean() (numeric)
	Mean value of signal for each subject by activity.
fBodyAccMag-std() (numeric)
	Standard deviation of signal for each subject by activity.
fBodyBodyAccJerkMag-mean ()(numeric)
	Mean value of signal for each subject by activity.
fBodyBodyAccJerkMag-std()(numeric)
	Standard deviation of signal for each subject by activity.
fBodyBodyGyroMag-mean() (numeric)
	Mean value of signal for each subject by activity.
fBodyBodyGyroMag-std() (numeric)
Standard deviation of signal for each subject by activity.
fBodyBodyGyroJerkMag-mean() (numeric)
	Mean value of signal for each subject by activity.
fBodyBodyGyroJerkMag-std() (numeric)
	Standard deviation of signal for each subject by activity.
