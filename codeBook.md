# Getting and Cleaning Data
## Course Project - Code Book

Reference: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Summary

There are two broad classes of variables in the data set: time domain variables and frequency domain variables.  Time domain variables are denoted with a “t” prefix; frequency domain variables are denoted with a “f” prefix.  

Based on the “Feature Selection” description provided by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto, the acceleration and jerk signals were used to create additional variables. Specifically, “the acceleration signal was then separated into body and gravity acceleration signals… the body linear acceleration and angular velocity were derived in time to obtain Jerk signals… and the magnitude of these three-dimensional signals were calculated using the Euclidean norm.”

The frequency domain variables were created by taking the Fast Fourier Transform of the signals of certain time domain variables.

The inclusion of “X”, “Y”, “Z” in a variable denotes the coordinate direction of the accelerometer or gyroscope.

The inclusion of “mean()” or “std()” in a variable name denotes that the mean or standard deviation (respectively) of the variable was estimated from the observed data.  For example, tBodyAcc-mean()-X represents the mean of the tBodyAcc variable in the X direction.

Finally, the inclusion of “Mag” in a variable name denotes the observation as representing a magnitude (as calculated from the Euclidean norm).


### Time domain variables

tBodyAcc - Body accelerometer measure
"tBodyAcc-mean()-X"           
"tBodyAcc-mean()-Y"           
"tBodyAcc-mean()-Z"        
"tBodyAcc-std()-X"           
"tBodyAcc-std()-Y"           
"tBodyAcc-std()-Z"

tGravityAcc - Gravity accelerometer measure
"tGravityAcc-mean()-X"        
"tGravityAcc-mean()-Y"        
"tGravityAcc-mean()-Z"
"tGravityAcc-std()-X"         
"tGravityAcc-std()-Y"         
"tGravityAcc-std()-Z"       

tBodyAccJerk - Jerk of body accelerometer measure
"tBodyAccJerk-mean()-X"       
"tBodyAccJerk-mean()-Y"       
"tBodyAccJerk-mean()-Z"
"tBodyAccJerk-std()-X"        
"tBodyAccJerk-std()-Y"        
"tBodyAccJerk-std()-Z”      

tBodyGyro - Body gyroscope measure
"tBodyGyro-mean()-X"          
"tBodyGyro-mean()-Y"          
"tBodyGyro-mean()-Z"         
"tBodyGyro-std()-X"           
"tBodyGyro-std()-Y"           
"tBodyGyro-std()-Z"   

tBodyGyroJerk - Jerk of body gyroscope measure
"tBodyGyroJerk-mean()-X"      
"tBodyGyroJerk-mean()-Y"      
"tBodyGyroJerk-mean()-Z"
"tBodyGyroJerk-std()-X"       
"tBodyGyroJerk-std()-Y"       
"tBodyGyroJerk-std()-Z"       

tBodyAccMag - Magnitude of body accelerometer measure
"tBodyAccMag-mean()"
"tBodyAccMag-std()"

tGravityAccMag - Magnitude of body gyroscope measure
"tGravityAccMag-mean()"       
"tGravityAccMag-std()"  

tBodyAccJerkMag - Magnitude of jerk of body accelerometer measure
"tBodyAccJerkMag-mean()"     
"tBodyAccJerkMag-std()" 

tBodyGyroMag - Magnitude of body gyroscope measure
"tBodyGyroMag-mean()"         
"tBodyGyroMag-std()" 

tBodyGyroJerkMag - Magnitude of jerk of body gyroscope measure
"tBodyGyroJerkMag-mean()"    
"tBodyGyroJerkMag-std()"


### Frequency domain variables

fBodyAcc - Body accelerometer measure
"fBodyAcc-mean()-X"          
"fBodyAcc-mean()-Y"           
"fBodyAcc-mean()-Z"           
"fBodyAcc-std()-X"           
"fBodyAcc-std()-Y"            
"fBodyAcc-std()-Z"

fBodyAccJerk - Jerk of body accelerometer measure
"fBodyAccJerk-mean()-X"      
"fBodyAccJerk-mean()-Y"       
"fBodyAccJerk-mean()-Z"       
"fBodyAccJerk-std()-X"       
"fBodyAccJerk-std()-Y"        
"fBodyAccJerk-std()-Z"  

fBodyGyro - Body gyroscope measure
"fBodyGyro-mean()-X"         
"fBodyGyro-mean()-Y"          
"fBodyGyro-mean()-Z"          
"fBodyGyro-std()-X"          
"fBodyGyro-std()-Y"           
"fBodyGyro-std()-Z"   

fBodyAccMag - Magnitude of body accelerometer measure
"fBodyAccMag-mean()"         
"fBodyAccMag-std()"

fBodyBodyAccJerkMag - Magnitude of jerk of body accelerometer measure
"fBodyBodyAccJerkMag-mean()"  
"fBodyBodyAccJerkMag-std()" 

fBodyBodyGyroMag - Magnitude of gyroscope measure
"fBodyBodyGyroMag-mean()"     
"fBodyBodyGyroMag-std()"  

fBodyBodyGyroJerkMag - Jerk of magnitude of gyroscope measure
"fBodyBodyGyroJerkMag-mean()"
"fBodyBodyGyroJerkMag-std()" 