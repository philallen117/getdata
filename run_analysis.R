## run_analysis.R

## Get and unpack data.
raw.file.name <- "getdata-projectfiles-UCI HAR Dataset.zip"
raw.file <- paste("./data", raw.file.name, sep = "/")
if(!file.exists("./data")) dir.create("data")
if(!file.exists(raw.file) {
	fileUrl <- paste("https://d396qusza40orc.cloudfront.net", raw.file.name, sep = "/")
	download.file(fileUrl, destfile = rawfile)
	date.downloaded <- date()
	unzip(raw.file, exdir = "./data")
}

top.dir <- "./data/UCI HAR Dataset" # location of activity labels, feature labels, etc
train.dir <- "./data/UCI HAR Dataset/train" # location of training data
test.dir <- "./data/UCI HAR Dataset/test" # location of test data

## Activity labels: function as a lookup for data files.
act.labels <- read.table(paste(top.dir, "activity_labels.txt", sep = "/"))
names(act.labels) <- c("actid", "activity")
## Remove non-alpha chars
act.labels$code <- gsub("_", "", act.labels$code)

## Names of derived sensor measures ("features")
sensor.varnames <- read.table(paste(top.dir, "features.txt", sep = "/"))
sensor.varnames <- tolower(gsub("()", "", sensor.varnames[,2], fixed = TRUE))
mean.std.names <- sensor.varnames[grepl("mean", sensor.varnames) | grepl("std", sensor.varnames)]


library(plyr)

## Read and decode the activity labels for the train observations
## Note that join {plyr} is order-preserving in its first parameter
train.activities <- read.table(paste(train.dir, "y_train.txt", sep = "/"))
names(train.activities) <- c("actid")
train.activities <- join(train.activities, act.labels, by = "actid", type="inner")
train.activities <- train.activities[c("activity")]

## Read the participants for the train observations
train.parts <- read.table(paste(train.dir, "subject_train.txt", sep = "/"))
names(train.parts) <- c("participant")

## Read the derived sensor measures for the train observations
train.sensors <- read.table(paste(train.dir, "X_train.txt", sep = "/"))
names(train.sensors) <- sensor.varnames
## Reduce to measures that mention mean and standard deviation
train.sensors <- train.sensors[mean.std.names]

## Compose train data by observation.
train.data <- cbind(train.activities, train.parts, train.sensors)

## Read and decode the activity labels for the test observations
## Note that join {plyr} is order-preserving in its first parameter
test.activities <- read.table(paste(test.dir, "y_test.txt", sep = "/"))
names(test.activities) <- c("actid")
test.activities <- join(test.activities, act.labels, by = "actid", type="inner")
test.activities <- test.activities[c("activity")]

## Read the participants for the test observations
test.parts <- read.table(paste(test.dir, "subject_test.txt", sep = "/"))
names(test.parts) <- c("participant")

## Read the derived sensor measures for the test observations
test.sensors <- read.table(paste(test.dir, "X_test.txt", sep = "/"))
names(test.sensors) <- sensor.varnames
## Reduce to measures that mention mean and standard deviation
test.sensors <- test.sensors[mean.std.names]

## Compose test data by observation.
test.data <- cbind(test.activities, test.parts, test.sensors)

all.data <- rbind(test.data, train.data)

simple <- all.data[c("")]

means <- 5

write.table(all.data, file = "./data/out.txt", sep = ",", col.names = TRUE)

