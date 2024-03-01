# Step 1: Load the necessary libraries
library(dplyr)

# Step 2: Load the dataset
# Check if the data is already in the working directory
if (!file.exists("UCI HAR Dataset")) {
  # If not, download and unzip the dataset
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url, destfile = "dataset.zip")
  unzip("dataset.zip")
}

# Step 3: Load the required files
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("index", "feature"))
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("label", "activity"))
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "label")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "label")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

# Step 4: Merge the training and test datasets
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

# Step 5: Extract measurements on mean and standard deviation
selected_features <- grep("mean\\(\\)|std\\(\\)", features$feature)
X <- X[, selected_features]

# Step 6: Use descriptive activity names
y$activity <- factor(y$label, levels = activity_labels$label, labels = activity_labels$activity)

# Step 7: Label the dataset with descriptive variable names
colnames(X) <- features$feature[selected_features]

# Step 8: Combine subject, activity, and feature data into one dataset
data <- cbind(subject, y, X)

# Step 9: Create the tidy dataset with the average of each variable for each activity and each subject
tidy_data <- data %>%
  group_by(subject, activity) %>%
  summarise_all(mean)

# Step 10: Write the tidy dataset to a file as a txt file
write.table(tidy_data, file = "tidy_dataset.txt", row.names = FALSE)

