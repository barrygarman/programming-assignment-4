# programming-assignment-4
Repo for artifacts for programming assignment#4
The purpose of this R script is to read data sets from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, merge the data of subject, activity, and features for each training, test, and features data sets, create tidy data based on tidy data principles and finally creat a second indepently set of data sets with the avaerage of each variable for the activity and subject variables.
The following artifacts are posted on GitHub:

run_analysis.R : the R-code run on the data set

Tidy_with_averages.txt : the clean data extracted from the original data using run_analysis.R with averages of each variable for activity and subject variables.

CodeBook.md : the CodeBook reference to the variables in seconddata.txt

README.md : the analysis of the code in run_analysis.R

There are 3 number of data set libraries used in this code: 1) Metadata that comprises data from data set files features.txt and activity_labels.txt;
2) Training data that comprises: data from data set files:subject_train.txt, y_train.txt, and x_train.txt; 3) Test data that comprises data from data set files: subject_test.txt, y_test.txt, and x_test.txt.

The code first reads and merges these data sets, and extracts only the means and standard deviation for each occurance. To comply with the tidy data principles the code is to identify and replace column names that are not descriptive with their descriptive version by labeling such occurances with appropriate variable names.Finally the code is to create a second indepently tidy data set with the avearge of each variable for each activity and subject.
