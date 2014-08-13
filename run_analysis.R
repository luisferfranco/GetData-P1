## First I'll read both files to merge them into one
##
data = read.csv("./test/X_test.txt", sep="", header=F, strip.white=T)
subj = read.csv("./test/subject_test.txt", sep="", header=F, strip.white=T)
labe = read.csv("./test/y_test.txt", sep="", header=F, strip.white=T)

traindata = read.csv("./train/X_train.txt", sep="", header=F, strip.white=T)
trainsubj = read.csv("./train/subject_train.txt", sep="", header=F, strip.white=T)
trainlabe = read.csv("./train/y_train.txt", sep="", header=F, strip.white=T)

## Once they're merged I'll discard the unused dataframes
##
data = rbind(data,traindata)
subj = rbind(subj,trainsubj)
labe = rbind(labe,trainlabe)
rm(traindata)
rm(trainsubj)
rm(trainlabe)

## In the features.txt files there  are the names of all variables 
## in the dataset
##
## It comes with 2 data: the variable id and the name
##
## I will obtain the id and full names for all the vars named -std( or -mean(
##
nomb = read.csv("./features.txt", sep=" ", header=F)
names(nomb) = c("id","varname")
vars = nomb[grep("-mean\\(|-std\\(",nomb$varname),]

## Now I'll discard the columns not needed, and name them with the
## varname that we pulled from the features.txt file
##
data = data[vars[,1]]
names(data) = vars[,2]

## Now we add the column with the subject id and activity id at the begining
##
data = cbind(labe, data)
data = cbind(subj, data)
names(data)[1:2]=c("subj_id","activity_id")

## Finally we do a dataMelt with subj_id and activity_id as the ids, and
## the rest as measure variables, then we apply the dcast with the mean
## function
##
dataMelt = melt(data,id=c("subj_id","activity_id"),measure.vars=vars[,2])
tidyData = dcast(dataMelt, subj_id + activity_id ~ variable,mean)
write.table(tidyData,"tidyData.txt", row.name=F, sep=",")
