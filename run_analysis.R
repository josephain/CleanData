file <- "UCI_HAR_data.zip"
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
data_path <- "UCI HAR Dataset"


library(plyr)

 
# download the file
if(!file.exists(file)){
    
    ##Downloads the data file
    print("downloading Data")
    download.file(url,file, mode = "wb")
    
}
 

##reads files from the zip 
getFile <- function (name,cols = NULL){
    
    print(paste("Reading file:", name))
    
    f <- unz(file, paste(data_path,name,sep="/"))
    
    data <- data.frame()
    
    if(is.null(cols)){
        data <- read.table(f,sep="",stringsAsFactors=F)
    } else {
        data <- read.table(f,sep="",stringsAsFactors=F, col.names= cols)
    }
    
    
    data
    
}

##Reads and creates the data set
crData <- function(type, features){
    
    
    subjects <- getFile(paste(type,"/","subject_",type,".txt",sep=""),"id")
    y_data <- getFile(paste(type,"/","y_",type,".txt",sep=""),"activity")    
    x_data <- getFile(paste(type,"/","X_",type,".txt",sep=""),features$V2) 
    
    return (cbind(subjects,y_data,x_data)) 
}



##Start Cleanup

#read column names for train and test data sets
features <- getTable("features.txt")

## Load the data sets
train <- crData("train",features)
test <- crData("test",features)

# merge datasets
data <- rbind(train, test)

# rearrange the data using id
data <- arrange(data, id)



## Label the data set with descriptive activity names.  < DONE

activity_labels <- getTable("activity_labels.txt")

data$activity <- factor(data$activity, levels=activity_labels$V1, labels=activity_labels$V2)



## Extract only the measurements on the mean and standard deviation for each measurement. 
dataset1 <- data[,c(1,2,grep("std", colnames(data)), grep("mean", colnames(data)))]



## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
dataset2 <- ddply(dataset1, .(id, activity), .fun=function(x){ colMeans(x[,-c(1:2)]) })

# Add "_mean" to column names
colnames(dataset2)[-c(1:2)] <- paste(colnames(dataset2)[-c(1:2)], "_mean", sep="")

# Save tidy dataset2 into results folder
write.table(dataset2,"tidydata2.txt",sep = " ",row.names=FALSE)
