# GettingAndCleaningData repository
**Repo description:** This a repository for analyses and code associated with the "Getting and Cleaning Data" course offered by Coursera.

### run_analysis.R script
**Script description:** The run_analysis.R script prepares a tidy data that can be used for later analysis. The data used in the analysis is the *Human Activity Recognition Using Smartphones Data Set*, which is a "database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors." More information on the data set can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

Specifically, the script accomplishes the following five goals:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Code book
**Code book description:** Per the guidelines suggested by the Leek Group (see https://github.com/jtleek/datasharing), the code book contains the following information:

1. Information about the variables (including units!) in the data set not contained in the tidy data
2. Information about the summary choices you made
3. Information about the experimental study design you used
