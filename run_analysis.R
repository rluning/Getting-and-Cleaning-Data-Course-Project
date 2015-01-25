#Project
library("dplyr")
#Loads test dataset, along with subjects, in order to merge with train dataset
setwd("C:/Users/Richard/Documents/UCI HAR Dataset/test")
x_test <- read.csv("X_test.txt", header=FALSE, sep="")
y_test <- read.csv("y_test.txt", header=FALSE)
subject_test <- read.csv("subject_test.txt", header=FALSE)

#Loads train dataset, along with subjects, in order to merge with test dataset
setwd("C:/Users/Richard/Documents/UCI HAR Dataset/train")
x_train <- read.csv("X_train.txt", header=FALSE, sep="")
y_train <- read.csv("y_train.txt", header=FALSE)
subject_train <- read.csv("subject_train.txt", header=FALSE)

#Loads the features to be used as column names for the merged test and train dataset
setwd("C:/Users/Richard/Documents/UCI HAR Dataset")
features <- read.csv("features.txt", header=FALSE, sep="", colClass= "character")
features <- features[,2]
activity <- read.csv("activity_labels.txt", header=FALSE, sep="")

#Binds the test and train datasets (x_test and x_train) and uses features as column names
x_merge <- rbind(x_test, x_train)
x_wvar <- rbind(features, x_merge)
colnames(x_wvar) = x_wvar[1,]
x_wvar = x_wvar[-1,]
rownames(x_wvar) <- NULL

#Binds the subject datasets (subject_test and subject_train) and renames the column
mergeSubject <- rbind(subject_test, subject_train)
colnames(mergeSubject) = ("Subject")

#Binds the merged test and train dataset to the merged subject dataset 
mergeSubject <- cbind(mergeSubject, x_wvar)

#Subsets columns with "mean()" or "std()" from merged datasets
test <- grep("Subject|mean()|std()", names(mergeSubject), value=TRUE)
mergeSubject <- mergeSubject[,test]
test <- grep("meanFreq()", names(mergeSubject), invert=TRUE)
mergeSubject <- mergeSubject[,test]

#Binds the activity datasets (y_test and y_train)
y_merge <- rbind(y_test, y_train)
mergeSubject <- cbind(y_merge, mergeSubject)

#Replaces the activity number with the worded actitivty for easier readability
Subject_Activity_WVars <- merge(mergeSubject, activity, by="V1") 
Subject_Activity_WVars <- Subject_Activity_WVars[c(1,69,2:68)]

#Renames column names for easier readability
colnames(Subject_Activity_WVars)[colnames(Subject_Activity_WVars) == "V1"] <- "Activity No"
colnames(Subject_Activity_WVars)[colnames(Subject_Activity_WVars) == "V2"] <- "Activity"

#Changing mean and std data to numeric for future data tidying (next step)
for (i in c(1,4:ncol(Subject_Activity_WVars))) {
        Subject_Activity_WVars[,i] <- as.numeric(as.character(Subject_Activity_WVars[,i]))
}

#Creates second tidy dataset with the average of each variable for each activity and each subject
meanAll <- Subject_Activity_WVars %>% group_by(Activity, Subject) %>% summarise_each(funs(mean))

#Writes tidy dataset to txt file for submission
write.table(meanAll, file = "meanAll.txt", row.names=FALSE)

