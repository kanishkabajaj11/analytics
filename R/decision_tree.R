library(ggplot2)
library(rpart)
dataset=read.csv("/Users/kanishkabajaj11/Desktop/ANALYTICS!!!/Machine Learning/drive-download-20210217T191305Z-001/Part 2 - Regression/Section 6 - Polynomial Regression/R/Position_Salaries.csv")
dataset=dataset[2:3]
#dataset$level2=dataset$Level^2
#dataset$level3=dataset$Level^3
regressor=rpart(formula=dataset$Salary~.,dataset,control = rpart.control(minsplit = 1))
y_pred = predict(regressor, data.frame(Level = 6.5))

x_grid=seq(min(dataset$Level),max(dataset$Level),0.01)
  ggplot()+geom_point(aes(x=dataset$Level,y=dataset$Salary),color='Red')+
  geom_line(aes(x=dataset$Level,y=predict(regressor,newdata = dataset)),color='Blue')
  plot(regressor)
  text(regressor)
  
  
