
setwd("~/Coursera/Data_Science/Getting_Cleaning_Data/UCI HAR Dataset") 
features <- read.csv("features.txt", header = FALSE, sep = "")

## Read all the training data
setwd("~/Coursera/Data_Science/Getting_Cleaning_Data/UCI HAR Dataset/train")
x_train <- read.csv("X_train.txt", header = FALSE, sep = "")
sub_train <- read.csv("subject_train.txt", header = FALSE)
y_train <- read.csv("Y_train.txt", header = FALSE)
## Merges all the training data
train_data <- cbind(x_train, sub_train, y_train)

## Read all the test data
setwd("~/Coursera/Data_Science/Getting_Cleaning_Data/UCI HAR Dataset/test")
x_test <- read.csv("X_test.txt", header = FALSE, sep = "")
sub_test <- read.csv("subject_test.txt", header = FALSE)
y_test <- read.csv("Y_test.txt", header = FALSE)
## Merges all the test data
test_data <- cbind(x_test, sub_test, y_test)

## Merges the training and the test sets to create one data set
merge <- rbind(train_data, test_data)

## Assigns the feature vector to the merged data as column names,
## as well as the subject and activity.
colnames(merge) <- features[,2]
colnames(merge)[562:563] <- c("Subject","Activity")

## Reading and loading the activity_labels.txt
setwd("~/Coursera/Data_Science/Getting_Cleaning_Data/UCI HAR Dataset")
act_labels <- read.csv("activity_labels.txt", header = FALSE, sep = "")
colnames(act_labels) <- c("Code","Activity")
act_labels$Activity <- as.character(act_labels$Activity)
Activity <- c(act_labels$Activity)

## Replace specified values with new values, in a vector or factor;
## Uses descriptive activity names to name the activities in the data set
library(plyr)
merge$Activity <- mapvalues(merge$Activity, from = c(1:6), to = Activity)
## or I could use.
# mapvalues(merge$Activity, from = c(1:6), 
#          to = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", 
#                 "STANDING", "LAYING"))

## Writing the Tidy Data set, into a txt file, within the "right folder"
setwd("~/Coursera/Data_Science/Getting_Cleaning_Data/GCD_Project")
write.table(merge, file = "Human Act Recognition Tidy data set.txt", sep = " ")
