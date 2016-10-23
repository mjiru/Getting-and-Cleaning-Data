install.packages("dplyr")
library("dplyr")

setwd("C:/Users/test/Documents/Data science/UCI HAR Dataset")

## read the common data
features <- read.table("features.txt")
activity_labels<- read.table("activity_labels.txt")


##read test data
subject_test <- read.table("test/subject_test.txt")
test <- read.table("test/X_test.txt")
test_labels <-   read.table("test/y_test.txt")

## tead  train data
subject_train <- read.table("train/subject_train.txt")
train <- read.table("train/X_train.txt")
train_labels <-   read.table("train/y_train.txt")



##rename features
names(test) <- features$V2
names(train) <- features$V2

#cbind the tables together
test_all <- cbind(subject_test, test_labels, test)
names(test_all)[1:2] <- c("subjectid", "activityid")
train_all <- cbind(subject_train, train_labels, train)
names(train_all)[1:2] <- c("subjectid", "activityid")


#join the activities
test_all <- merge(test_all, activity_labels, by.x="activityid", by.y="V1")
train_all <- merge(train_all, activity_labels,by.x="activityid", by.y="V1")

#reorder columns 
test_all <- test_all[, c(1,2, 564, 3:563)]
train_all <- train_all[, c(1,2, 564, 3:563)]

#rename activity
names(test_all)[3] <- "activity"
names(train_all)[3] <- "activity"


# add a column describing origin
test_all$origin <- "test"
train_all$origin <- "train"

## rbind test and train
data <- rbind(test_all, train_all)

#find position of means and stdevs
means <- grep(pattern = "mean", names(data))
stdev <- grep("std", names(data))

#get unique indexes of means or stdevs
indexes <- unique(c(means,stdev))

#filter the first three and means and stdevs
filtered <- data[,c(1:3,indexes)]


## count the mean for subject, activity and variable
grouped <- filtered %>%
  group_by(activity, subjectid,activityid) %>%
  summarise_each(funs(mean), -c(activity, subjectid, activityid, origin))


