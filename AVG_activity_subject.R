## Sets the working directory..
setwd("~/Coursera/Data_Science/Getting_Cleaning_Data/GCD_Project")

## Reads the tidy data set..
Human_Rec_TidyData <- read.csv("Human Act Recognition Tidy data set.txt", sep = "", 
                               header = TRUE)

## merges the [Point 2] measurements with subject and activity
Subject <- Human_Rec_TidyData$Subject
Activity <- Human_Rec_TidyData$Activity
mean_measure <- Human_Rec_TidyData[ , grepl( "mean()" , names(Human_Rec_TidyData))]
avg_act_subj <- cbind(Subject, Activity, mean_measure)
avg_act_subj$Activity <- as.character(avg_act_subj$Activity)

## creates a second, independent tidy data set with the average of each variable 
# for each activity and each subjec
filter <- ddply(avg_act_subj, .(Subject, Activity), colwise(mean))

## Writing the Tidy Data set, into a txt file, within the "right folder"
setwd("~/Coursera/Data_Science/Getting_Cleaning_Data/GCD_Project")
write.table(filter, file = "Avg_variables_subjects.txt", row.name = FALSE)

## proof
## tabla <- read.csv("Avg_variables_subjects.txt", sep = "")