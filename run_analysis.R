# Load datasets
test.subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
test.x <- read.table("UCI HAR Dataset/test/X_test.txt")
test.y <- read.table("UCI HAR Dataset//test/y_test.txt")

train.subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
train.x <- read.table("UCI HAR Dataset/train/X_train.txt")
train.y <- read.table("UCI HAR Dataset/train/y_train.txt")

features <- read.table("UCI HAR Dataset/features.txt")
activity.labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Merge the test and train datasets by subject, labels and apply descriptive headings
subject <- rbind(test.subject, train.subject)
colnames(subject) <- "subject"
label <- rbind(test.y, train.y)
label <- merge(label, activity.labels, by=1)[,2]
data <- rbind(test.x, train.x)
colnames(data) <- features[, 2]
data <- cbind(subject, label, data)

# Subset the data to have only the mean and std variables
search <- grep("-mean|-std", colnames(data))
data.mean.std <- data[,c(1,2,search)]

# Find the means, grouped by subject/label
seconddata <- aggregate(data.mean.std[, 3:ncol(data.mean.std)],by=list(subject = data.mean.std$subject, label = data.mean.std$label),mean)
## create table for second data set and save file
write.table(format(seconddata, scientific=T), "UCI HAR Dataset/tidy.txt",row.names=F, col.names=F, quote=2)

