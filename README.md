# Getting-and-Cleaning-Data
Assigment for Coursera Course Getting and Cleaning Data

The script run_analysis.R produces a tidy dataset from the test and train datasets from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

With a tidy dataset I mean:
- observations are in rows
- variables are in columns
- contained in a single dataset.

The script has explanatory comments, but it goes as follows:

1) Read the data, that is the same for train and test data (features.txt, activity_labes.txt)
2) Read test and train data (X, y, subjet)
3) Renames variables from X_train and X_test based on values from features.txt
4) Binds subjects, activities and data together
5) Joins activities labels from acitity_labels to the above bind data
6) Adds a new column "origi" to both test and train data to determine if the data was originaly from the test or train file
7) Binds test and train data togehter to a data frame called "data"
8) Finds the indexes of columns that contains "mean" or "std"
9) Subsets the data so that only identification columns and mean and std columns remain
10) Tidy dataset is now stored in a variable called filtered

11) Calculates the mean for each subject activity and variable and stores it in a data frame called grouped

