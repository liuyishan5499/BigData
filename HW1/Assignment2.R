setwd("/Users/Gracie/Downloads/BigData")
mydata<-read.csv("hw1_data.csv")
##what are the column names of the dataset?
names(mydata)
#Extract the first 2 rows of the data frame and print them 
#to the console. What does the output look like?
mydata[1:2,]
#Ozone Solar.R Wind Temp Month Day
#1    41     190  7.4   67     5   1
#2    36     118  8.0   72     5   
#How many observations (i.e. rows) are in this data frame?
nrow(mydata)
#[1] 153

#Extract the last 2 rows of the data frame and print them to 
#the console. What does the output look like?
mydata[152:154,]
#Ozone Solar.R Wind Temp Month Day
#152    18     131  8.0   76     9  29
#153    20     223 11.5   68     9  30

#What is the value of Ozone in the 47th row?
mydata[47,"Ozone"]
# 21

#How many missing values are in the Ozone column of this 
#data frame?
miss<-is.na(mydata[,"Ozone"])
sum(miss)
#37

#What is the mean of the Ozone column in this dataset? 
#Exclude missing values (coded as NA) from this calculation.
mean(mydata[,"Ozone"],na.rm =T)
#42.12931

#Extract the subset of rows of the data frame where Ozone values 
#are above 31 and Temp values are above 90. What is the mean of 
#Solar.R in this subset?
subData<-subset(mydata,Ozone>31 & Temp>90)
subData
#Ozone Solar.R Wind Temp Month Day
#69     97     267  6.3   92     7   8
#70     97     272  5.7   92     7   9
#120    76     203  9.7   97     8  28
#121   118     225  2.3   94     8  29
#122    84     237  6.3   96     8  30
#123    85     188  6.3   94     8  31
#124    96     167  6.9   91     9   1
#125    78     197  5.1   92     9   2
#126    73     183  2.8   93     9   3
#127    91     189  4.6   93     9   4
mean(subData[,"Solar.R"], na.rm=T)
#212.8

#What is the mean of "Temp" when "Month" is equal to 6? 
M6<-subset(mydata,Month==6)
mean(M6[,"Temp"],na.rm=T)
79.1

#What was the maximum ozone value in the month of May 
#(i.e. Month = 5)?
M5<-subset(mydata,Month==5)
max(M5[,"Ozone"],na.rm=T)
#115
