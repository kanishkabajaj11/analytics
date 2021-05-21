
dataset= read.csv('/Users/kanishkabajaj11/Desktop/Machine Learning/drive-download-20210217T191305Z-001/Part 1 - Data Preprocessing/Section 2 -------------------- Part 1 - Data Preprocessing --------------------/R/Data.csv')

dataset$Age=ifelse(is.na(dataset$Age),ave(dataset$Age,FUN=function(x) mean(x,na.rm=TRUE)),dataset$Age)
dataset$Salary=ifelse(is.na(dataset$Salary),ave(dataset$Salary,FUN=function(x) mean(x,na.rm=TRUE)),dataset$Salary)

country=unique(dataset[,1])
country
is.vector(country)
a=c(1:length(country))
dataset$Country=factor(dataset$Country,
                       levels = c('France','Spain','Germany'),
                       lables=c(1,2,3))

is.factor(dataset$Country)

set.seed(123)   
split_2=sample.split(dataset$Purchased,SplitRatio = 0.8)
split_2
training_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)
training_set[,2:3]=scale(training_set[,2:3])
test_set[,2:3]=scale(test_set[,2:3])
