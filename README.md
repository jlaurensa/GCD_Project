GCD_Project
===========

Repository containing material submitted for course project. Getting and Cleaning Data subject.

The following SCRIPTS are introduced.

run_analysis.R
1. Reads all the training data
2. Merges all the training data
3. Reads all the test data
4. Merges all the test data
5. Merges the training and the test sets to create one data set
6. Assigns the feature vector to the merged data as column names,as well as the subject and activity.
7. Reads and loads the activity_labels.txt
8. Replaces specified values with new values, in a vector or factor;
9. Uses descriptive activity names to name the activities in the data set
10. Writes the Tidy Data set, into a txt file, within the "right folder"

------- IMPORTANT -------
Code used to ANSWER point 1, 3 and 4
- Merges the training and the test sets to create one data set.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 


Measurements_extract.R
This script extracts only the measurements on the mean and standard deviation for each measurement.
(answering Point 2) 
1. Sets the working directory..
2. Reads the tidy data set..
3. Extracts the needed measurements..
4. Merges the measurement sets...

------- IMPORTANT -------
Code used to ANSWER point 2
- Extracts only the measurements on the mean and standard deviation for each measurement.


AVG_activity_subject.R
1. Sets the working directory..
2. Reads the tidy data set..
3. merges the [Point 2] measurements with subject and activity
4. creates a second, independent tidy data set with the average of each variable for each activity and each subjec
5. Writes the Tidy Data set, into a txt file, within the "right folder"

------- IMPORTANT -------
Code used to ANSWER point 5
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
