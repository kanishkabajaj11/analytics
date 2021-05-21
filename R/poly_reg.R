dataset=read.csv("/Users/kanishkabajaj11/Desktop/ANALYTICS!!!/Machine Learning/drive-download-20210217T191305Z-001/Part 2 - Regression/Section 6 - Polynomial Regression/R/Position_Salaries.csv")
dataset=dataset[2:3]
dataset$level2=dataset$Level^2
dataset$level3=dataset$Level^3
ply_reg=lm(formula=Salary~.,data=dataset)
library(ggplot2)
ggplot()+geom_point(aes(x=dataset$Level,y=dataset$Salary))+
  geom_line(aes(x=dataset$Leve,y=predict(ply_reg,newdata = dataset)))