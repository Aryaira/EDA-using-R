#Load required libraries
library(stats)
library(dplyr)

#Iris is a default dataset on R-Studio

Data1=iris
# Data Summarization
SL= Data1$Sepal.Length

#Calculate Mean
mean(SL)
#Calculate Median
median(SL)
#Calculate Mode
#Mode function
Mode=function(x){
  ta=table(x)
  tam=max(ta)
  if (all(ta == tam))
    mod=NA
  else
    if(is.numeric(x))
      mod= as.numeric(names(ta)[ta == tam])
  else
    mod=names(ta)[ta==tam]
  return(mod)
}
Mode(SL)

#Measure of Variability
#Calculate Standard Deviation
sd(SL)
#Calculate Variance
var(SL)
#cALCULATE IQR
quantile(SL)


#Data Visualization
str(Data1)
Species=Data1$Species

#Numeric data-Histogram
hist(SL)

#catagorical Data-Barplot
table(Species)
barplot(table(Species))
#Data Normalization
str(Data1)
#select all numeric variables in the dataset
Data1_numeric=select(Data1,c(1,2,3,4))
#Normalize Dataset(X- Scores)- All variables are on the scale
Zscore_Data1=scale(Data1_numeric)
#Check all the Variables converted to Z- Scores
View(Zscore_Data1)


