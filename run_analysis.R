## Getting and Cleaning Data - Course Project 
#
## Script name: run_analysis.R
# 
## Description: This file contains code that prepares tidy data which can be  
#     used for subsequent analysis. Specifically, the script does the following:
#
#     1) Merges the training and the test sets to create one data set.
#     
#     2) Extracts only the measurements on the mean and standard
#            deviation for each measurement. 
#
#     3) Uses descriptive activity names to name the activities 
#           in the data set
#
#     4) Appropriately labels the data set with descriptive 
#           variable names. 
#
#     5) From the data set in step 4, creates a second, independent 
#           tidy data set with the average of each variable for 
#           each activity and each subject.
#
## Data: The data for the project was obtained from:
#     https://d396qusza40orc.cloudfront.net/_
#           getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
## Assumptions:
#     - Data files are located in your working directory
#     - The plyr, dplyr, and tidyr packages are loaded in your library

############################################################################

## Step 1) Merge the training and test data sets

# Load and name features and activity data
features <- read.table("features.txt", header = FALSE)
names(features) <- c("index", "description")
activities <- read.table("activity_labels.txt", header = FALSE)

# Add column names that will be used to merge with yData data frame
names(activities) <- c("index", "description")

# Load and merge X data (test data then train data)
XTestData <- read.table("X_test.txt", header = FALSE)
XTrainData <- read.table("X_train.txt", header = FALSE)
XData <- rbind(XTestData, XTrainData)

# Place data into easier to view format
XData <- tbl_df(XData)

# Add column names based on variable descriptions
names(XData) <- features$description

# Load and merge y data (test data then train data)
yTestData <- read.table("y_test.txt", header = FALSE)
yTrainData <- read.table("y_train.txt", header = FALSE)
yData <- rbind(yTestData, yTrainData)

# Place data into easier to view format
yData <- tbl_df(yData)

# Add column names that will be used to merge with activities data frame
names(yData) <- "index"

# Load and merge subject data (test data then train data)
subjectTestData <- read.table("subject_test.txt", header = FALSE)
subjectTrainData <- read.table("subject_train.txt", header = FALSE)
subjectData <- rbind(subjectTestData, subjectTrainData)

# Place data into easier to view format
subjectData <- tbl_df(subjectData)

# Add column names that will be used to merge with activities data frame
names(subjectData) <- "subjectNumber"

############################################################################

## Step 2) Extracts only measurements on the mean and standard deviation
#          for each measurement

# Find columns containing mean "mean()" and standard deviation "std()"
stdVaribables <- grep("std()", names(XData), value=TRUE, fixed = TRUE)
meanVariables <- grep("mean()", names(XData), value=TRUE, fixed = TRUE)

# Merge relevant variables
relevantVariables <- c(meanVariables, stdVaribables)

# Subset data based on mean and standard deviation variables
XDataSubset <- XData[, relevantVariables]

# Place data into easier to view format
XDataSubset <- tbl_df(XDataSubset)

############################################################################

## Step 3) Use descriptive activity names to name the activities 
#          in the data set

# Join data by their activity index
yData <- join(yData, activities, by = "index")

# Place data into easier to view format
yData <- tbl_df(yData)

############################################################################

## Step 4) Appropriately labels the data set with descriptive 
#          variable names.

# Note that this step of the process was performed during Step (1)
#     with the following lines of code.
#           # Add column names based on variable descriptions
#           names(XData) <- features$description

############################################################################

## Step 5)  Create a second, independent tidy data set with the 
#           average of each variable for each activity and each subject.

# Bind XDataSubset, subjectData, and yData$Description into a new data frame
mergedData <- cbind(XDataSubset, subjectData, yData$description)

# Rename activity description column
colnames(mergedData)[end(colnames(mergedData))[1]] <- "activityDescription"

# Melt data frame using subjectNumber and activityDescription as ID variables
mergedMelt <- melt(mergedData, id = c("subjectNumber", "activityDescription"))

# Cast data frame by ID variables (e.g., subjectNumber and activityDescription)
castMergedMelt <- dcast(mergedMelt, 
                        subjectNumber + activityDescription ~ variable, mean)

# Place data into easier to view format
castMergedMelt <- tbl_df(castMergedMelt)

# Write data frame to a .txt file
write.table(castMergedMelt, file = "run_analysis_castMergedMelt_Knigge.txt", row.names = FALSE)

# Write data frame to a .csv file
# write.table(castMergedMelt, file = "run_analysis_castMergedMelt_Knigge.csv", 
#            sep = ",", row.names = FALSE)

# Print resulting data frame to console
print(castMergedMelt)

## End of script