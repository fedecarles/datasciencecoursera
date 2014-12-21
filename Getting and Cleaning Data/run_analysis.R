# File-Name:       run_analysis.R
# Date:            17.12.2014
# Author:          Federico Carlés
# Email:           fedecarles@gmail.com                                      
# Data:            "Human Activity Recognition Using Smartphones Data Set" (Jorge Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto)
# Packages Used:   dplyr (Hadley Wickham, Romain Francois)
# R version        3.1.2 (2014-10-31)
# System           Linux Mint 17 (Qiana)

# install.packages("dplyr") # Uncomment to install dplyr package.
# rm(list=ls(all=TRUE)) # Uncomment and run to clean your workspace.
# setwd() # Set your working directory and make sure the folder UCI HAR Dataset is extracted there.

library(dplyr)

# These lines read all the data files required for the analysis.
test = read.table("UCI HAR Dataset/test/X_test.txt")
train = read.table("UCI HAR Dataset/train/X_train.txt")
activity_test = read.table("UCI HAR Dataset/test/y_test.txt")
activity_train= read.table("UCI HAR Dataset/train/y_train.txt")
subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")
subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
features = read.table("UCI HAR Dataset/features.txt")
activity_labels = read.table("UCI HAR Dataset/activity_labels.txt")

# The first two lines create the test and train data sets by binding the subject, activities and features columns. 
# The third line combines the test and train data sets by row to merge all the data into one data frame.
test_ds = cbind(subject_test,activity_test,test)
train_ds= cbind(subject_train,activity_train,train)
raw_data = rbind(train_ds,test_ds)

# This line sets the variable names, using the futures.txt file to name the measurement variables.
colnames(raw_data) = c("Subject","Activity", as.character(features$V2))

# This line subsets the raw_data by all column names that contains the strings "Subject", "Activity", "mean()" and "std()".
# Variables that contain the word "Mean" somewhere along the string (i.e. the angle variable) are excluded from the subset as they 
# use a different measurement criteria than the rest of the variables.
subset_raw_data<- raw_data[,grep("Subject|Activity|mean()|std()", colnames(raw_data))] 

# This line labels the activities using the descriptive names on the "activity_labels.txt". I convert the variable Activity to a Factor
# variable, setting the 6 levels and the label names for each one.
subset_raw_data$Activity = factor(subset_raw_data$Activity, levels=c(1,2,3,4,5,6), labels=c("WALKING","WALKING UPSTAIRS","WALKING DOWNSTAIRS","SITTING","STANDING","LAYING"))

# This line crates the final tidy data set using dplyr's group_by and summarise_each functions. The output is a 180x81 dataset that averages each
# measurement variable for each Subject and each Activity.
tidy_data_set = subset_raw_data %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

# Another option is to use the aggregate function from the base package. The output is similar, but I prefer dplyr because aggregate renames 
# the grouping varaibles and creates additional ones that are not pertinent for the analysis. Uncomment to test the aggregate function.
# tidy_data_set = aggregate(subset_raw_data, by =list(subset_raw_data$Subject,subset_raw_data$Activity), FUN = mean)

# This line saves the tidy_data_set as a *.txt file.
write.table(tidy_data_set, file = "tidy_data.txt", row.name=FALSE)
