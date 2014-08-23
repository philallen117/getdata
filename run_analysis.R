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

train.dir <- "./data/UCI HAR Dataset/train" # location of training data

