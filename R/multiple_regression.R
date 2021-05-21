dataset=read.csv("/Users/kanishkabajaj11/Desktop/ANALYTICS!!!/Machine Learning/drive-download-20210217T191305Z-001/Part 2 - Regression/Section 5 - Multiple Linear Regression/R/50_Startups.csv")
dataset$State=factor(dataset$State,
                     levels=c("New York","California","Florida"),
                     labels=c(1,2,3))
library(caTools)
set.seed(123)
split=sample.split(dataset$Profit,SplitRatio=0.8)
training_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)

regressor=
lm(formula=Profit~.,data=training_set)

summary(regressor)

y_pred=predict(regressor,newdata = test_set)
y_pred
