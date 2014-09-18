
## Sets the working directory..
setwd("~/Coursera/Data_Science/Getting_Cleaning_Data/GCD_Project")

## Reads the tidy data set..
Human_Rec_TidyData <- read.csv("Human Act Recognition Tidy data set.txt", sep = "", 
                               header = TRUE)

## Extracts the needed measurements..
mean_measure <- Human_Rec_TidyData[ , grepl( "mean()" , names(Human_Rec_TidyData))]
std_measure <- Human_Rec_TidyData[ , grepl( "std()" , names(Human_Rec_TidyData))]

## Merges the measurement sets...
extracted_measures <- cbind(mean_measure, std_measure)
