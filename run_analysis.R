# Script to produce tidy data for the project

# STEP 1
# Read in the two features files 
# (assumes the data is in the current working directory)
# and merge them.
numrows <- 7400
train <- read.table('X_train.txt', nrows=numrows)
test <- read.table('X_test.txt', nrows=numrows)
alldat <- rbind(train, test)

# STEP 2
# We need features.txt to identify the columns containing means & sds
feat <- read.table('features.txt', stringsAsFactors=FALSE)

# Create two logical vectors, determining which columns of alldat will contain 
# "mean" or "std"
vars <- feat[,2]
meanvec <- grepl("mean()", vars, fixed=TRUE)
stdvec <- grepl("std()", vars, fixed=TRUE)
# ...and the combined version
wanted <- as.logical(meanvec+stdvec)
# Extract the required columns,
wanted_data <- alldat[, which(wanted)]
# ...and give them the variable names used in features.txt.
colnames(wanted_data) <- vars[wanted]

#STEP 3
# Read in and merge the subject id numbers and activity numbers for the training
# and test sets.
act_train <- read.table('y_train.txt', stringsAsFactors=FALSE, nrows=numrows)
act_test <- read.table('y_test.txt', stringsAsFactors=FALSE, nrows=numrows)
activities <- rbind(act_train, act_test)

sub_train <- read.table('subject_train.txt', stringsAsFactors=FALSE, nrows=numrows)
sub_test <- read.table('subject_test.txt', stringsAsFactors=FALSE, nrows=numrows)
subjects <- rbind(sub_train, sub_test)

# Replace the activity names with descriptive labels.
act_names <- read.table('activity_labels.txt', stringsAsFactors=FALSE)
act_names <- act_names[,2]
activities[,1] <-  act_names[activities[,1]]
sub_act <- cbind(subjects,activities)
colnames(sub_act) <-  c('Subject', 'Activity')

# Merge subjects and activities with variables and write to file.
tidy <- cbind(sub_act, wanted_data)
write.table(tidy, file='tidy.txt', row.names=FALSE)

#STEP 5
# Calculate mean values for each variable grouped by subject and activity
# (don't pass these columns to FUN=mean)
# Save new data frame to file
tidy2 <- aggregate(tidy[,-c(1:2)], by=list(sub=tidy$Subject,act=tidy$Activity),
                   FUN=mean)
write.table(tidy2, file='tidy2.txt', row.names=FALSE)
