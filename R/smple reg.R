dataset= read.csv('/Users/kanishkabajaj11/Desktop/Machine Learning/drive-download-20210217T191305Z-001/Part 2 - Regression/Section 4 - Simple Linear Regression/R/Salary_Data.csv')

set.seed(123)   
split=sample.split(dataset$Salary,SplitRatio = 2/3)
training_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)
regressor=lm(formula=Salary ~ YearsExperience,data=training_set)
y_pred= predict(regressor,newdata = test_set)
y_pred
ggplot()+geom_point(aes(x=training_set$YearsExperience,y=training_set$Salary),
                    colour='red') +geom_line(aes(x=training_set$YearsExperience,y=predict(regressor,newdata = training_set)),color='blue')+
ggtitle('s vs e')+
  xlab('Work ex')+ylab('Salary')

#2
ggplot()+geom_point(aes(x=test_set$YearsExperience,y=test_set$Salary),
                    colour='red') +geom_line(aes(x=training_set$YearsExperience,y=predict(regressor,newdata = training_set)),color='blue')+
  ggtitle('s vs e')+
  xlab('Work ex')+ylab('Salary')
