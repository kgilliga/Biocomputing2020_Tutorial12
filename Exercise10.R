#Exercise 10
setwd ("/Users/kearagilligan/Desktop/Biocomputing/Biocomputing2020_Tutorial12/")
#Question 1:
#Find some data on two variables that you would expect to be related to each other, and then save a text file
#Write a script that loads this text file and produces a scatter plot of those two variables that includes a trend line.


#Question 2:
#Given the data in “data.txt”. Write a script that generates two figures that sumamrize the data. 
data = read.table("data.txt" , header=TRUE, sep=",", stringsAsFactors=FALSE)
head(data)
library(ggplot2)
#First, show a barplot of the means of the four populations.
ggplot(data, aes(x = region, y= observations)) +
  geom_bar() +
  theme_bw() +
  xlab("Region") +
  theme(axis.text.x = element_text(angle=65, vjust=0.6))
#Second, show a scatter plot of all of the observations. 
#You may want to “jitter” the points (geom_jitter()) to make it easier to see all of the observations within a population in your scatter plot.
#Alternatively, you could also try setting the alpha argument in geom_scatterplot() to 0.1. 
#Do the bar and scatter plots tell you different stories? Why?
  