## import test data files, name the coloumns using the features list, then merge the files.
X_test <- read.table("~/R Testing/Smarthphones/test/X_test.txt", quote="\"", comment.char="")
y_test <- read.table("~/R Testing/Smarthphones/test/y_test.txt", quote="\"", comment.char="")
sub_test <- read.table("~/R Testing/Smarthphones/test/subject_test.txt", quote="\"", comment.char="")
varnames <- read.table("~/R Testing/Smarthphones/features.txt", quote="\"", comment.char="")
colnames(X_test) <- varnames[,2]
colnames(y_test) <- "Activity"
colnames(sub_test) <- "Subject"
test <- cbind(X_test, sub_test, y_test)

## import train data files, name the coloumns using the features list, then merge the files.
X_train <- read.table("~/R Testing/Smarthphones/train/X_train.txt", quote="\"", comment.char="")
y_train <- read.table("~/R Testing/Smarthphones/train/y_train.txt", quote="\"", comment.char="")
sub_train <- read.table("~/R Testing/Smarthphones/train/subject_train.txt", quote="\"", comment.char="")
colnames(X_train) <- varnames[,2]
colnames(y_train) <- "Activity"
colnames(sub_train) <- "Subject"
train <- cbind(X_train, sub_train, y_train)

## merge the files
test$source <- "test"
train$source <- "train"
total <- rbind(test, train)

## subset the mean and standard deviations

meanstdcols <- grep("mean\\()|std\\()", names(total))
tidy <- total[,c(1,2, meanstdcols, 564)]

## Change Activity Numbers to labels
tidy$Activity <- factor(tidy$Activity, levels = c(1,2,3,4,5,6), labels = c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))

## Change variable lables to descriptive
names(tidy) <- tolower(names(tidy))
names(tidy) <- gsub("^t", "time ", names(tidy))
names(tidy) <- gsub("^f", "fourier ", names(tidy))
names(tidy) <- gsub("body", "body ", names(tidy))
names(tidy) <- gsub("gravity", "gravity ", names(tidy))
names(tidy) <- gsub("acc", "accelerator", names(tidy))
names(tidy) <- gsub("gyro", "gyroscope", names(tidy))
names(tidy) <- gsub("mag", " magnitude", names(tidy))
names(tidy) <- gsub("jerk", " jerk", names(tidy))
names(tidy) <- gsub("\\()", "", names(tidy))

## Save a version with the mean for each subject and activity
temp <- 
tidymean <- aggregate(. ~ subject + activity, mean, data = tidy)
write.csv(tidymean, "~/R Testing/Smarthphones/tidymeans.csv")
