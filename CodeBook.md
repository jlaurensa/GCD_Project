Data sets and Variables introduced in file [run_analysis.R]
-----------------------------------------------------------
The data sets are merged and organized, using the table introduced by
David Hood in> https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png

## data sets that only read all the training data (no modification)
x_train
sub_train
y_train

## data set that merges all the training data
train_data

## data sets that only read all the test data (no modification)
x_test
sub_test
y_test

## data set that merges all the test data
test_data

## data set that Merges the training and the test sets to create one data set
## Assigns the feature vector to the merged data as column names, as well as the subject and activity.
merge

## Reading and loading the activity_labels.txt
act_labels is introduced as character vector. Also is introduced in the merge data base.
and with function mapvalues is changed from factor to character

## Replaces specified values with new values, in a vector or factor; Uses descriptive activity names to name the activities in the data set
library(plyr)
merge$Activity <- mapvalues

## Writes the Tidy Data set, into a txt file, within the "right folder"
setwd("~/Coursera/Data_Science/Getting_Cleaning_Data/GCD_Project")
write.table(merge, file = "Human Act Recognition Tidy data set.txt", sep = " ")

------- IMPORTANT -------
ANSWERS point 3 and 4
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 



Data sets and Variables introduced in file [Measurements_extract.R]
-------------------------------------------------------------------

## Reads the tidy data set..
Human_Rec_TidyData 

## Extracts the needed measurements..
mean_measure 
std_measure 

## Merges the measurement sets...
extracted_measures 
------- IMPORTANT -------
ANSWERS point 2
- Extracts only the measurements on the mean and standard deviation for each measurement.


Data sets and Variables introduced in file [AVG_activity_subject.R]
-------------------------------------------------------------------

## Reads the tidy data set..
Human_Rec_TidyData 

## merges the [Point 2] measurements with subject and activity
mean_measure 
avg_act_subj 

## Changes the class of the Activity from factor to character
avg_act_subj$Activity <- as.character(avg_act_subj$Activity)

## creates a second, independent tidy data set with the average of each variable for each activity and each subjec
filter <- ddply(avg_act_subj, .(Subject, Activity), colwise(mean))

## Writing the Tidy Data set, into a txt file, within the "right folder"
file = "Avg_variables_subjects.txt"
