# Q.1.Try to write a code for printing sequence of numbers from 1 to 50 with the differences of 3, 5, 10

# Sequence of numbers from 1 to 50 with the difference 3
s <- seq(1,50,3)
s

# Sequence of numbers from 1 to 50 with the difference 5
s <- seq(1,50,5)
s

# Sequence of numbers from 1 to 50 with the difference 10
s <- seq(1,50,10)
s

# Q.2 What are the different data objects in R? and write syntax and example for each and every object

#Data types :  
#1.Numeric
#2.Integer
#3.Charector
#4.Logical
#5.complex

# Numeric data type 
# All the numbers will come under this data type
a<-1
class(a)

a<-134.456
a
class(a)



# An integer (takes only Integer value)
a<-1L
a
class(a)
x<-1.2L
x
class(x) # overwrites the type of class
s<-1:10
s
?seq()
s<-seq(1,10)
s

s<-seq(1,1000,50)

s
#defining a complex number
1+2i
x<-1+2i
class(x)
Re(x) # print real value in x
Im(x) # print Imaginary Numbers

# A charector
a<-'a'
class(a)
LETTERS
x<-LETTERS[1:6] #sequesnce of letters in caps
x
y<-letters[1:6] # sequesnce of letters in smalls
y

#defining a complex number
1+2i
x<-1+2i
class(x)
Re(x) # print real value in x
Im(x) # print Imaginary Numbers

# defining a charector
a<-'a'
class(a)
LETTERS
x<-LETTERS[1:6] #sequesnce of letters in caps
x
y<-letters[1:6] # sequesnce of letters in smalls
y

# Logical value
a<-TRUE #T
a
b<- FALSE #F
class(a)
class(b)
as.integer(TRUE)
# Logical --> Integer --> Numeric --> complex --> Char
0
x<-as.logical(0)
class(x)

# Q.3. Create Data frame with 3 columns and 5 rows and write a code to fetch and delete row and a column using 
#index and add new column and row to the existed data frame


# Data frame with 3 columns and 5 rows
DF<-data.frame(Sr.No.=c(1,2,3,4,5),Letters=c('S','P','R','J','M'),Marks=c(10,9,8,9.9,8.5))
DF

#How to fetch rows and columns in a dataframe
DF1[c(1,2,3,4,5),]
DF1

#How to delete rows and columns in a dataframe
DF2<-DF [-4,]  #rows
DF2

DF2<-DF[,-3]   #columns
DF2

# Q. 4 Write nested if else statements to print whether the given number is negative, positive or Zero 

#Nested If Else Statement
x <- -3
if (x == 0) {
  print("Zero")
} else if (x > 0) {
  print("Positive number")
} else print("Negative Number")


# Q.5.write a program to input any value and check whether it is character, numeric or special character
# write difference between break and next also write examples for both 

x <- '$'
if(x == '10') {
  print('numeric')
}else if(x == 'P' ) {
  print('Character')
}else{
  print('Special Character')
}


# Q. 7.write a program to print a given vector in reverse format  

x= c(1,5.6,3,10,3.5,5)


x= c(1,5.6,3,10,3.5,5)
print("Original vector-1:")
print(x)
v = rev(x)
print("The said vector in reverse order:")
print(v)

# Q. 8.write a program to get the mode value of the given vector
# (?a?,?b?,?c?,?t?,?a?,?c?,?r?,?a?,?c?,?t?,?z?,?r?,?v?,?t?,?u?,?e?,?t?)


#define character vector
data <- c('a','b','c','t','a','c','r','a','c','t','z','r','v','t','u','e','t')
#find mode
find_mode(data)


# Q.9.Write a function to filter only data belongs to ?setosa? in species of Iris dataset.( using dplyr package) 

data("iris")
View(iris)

# to install the dplyr package
install.packages("dplyr")
library(dplyr)

setosa <- filter(iris, Species == "setosa" )
head(setosa)


# Q.10.Create a new column for iris dataset with the name of Means_of_obs, which contains mean value of 
# each row.( using dplyr package)

install.packages("tidyverse")

iris$Means_of_obs <- rowMeans(iris[,1:4])
iris$Means_of_obs


# Q. 11.Filter data for the ?versicolor? and get only ?sepel_length? and Sepel _width? columns.( using dplyr package)

subset(iris,  Species == 'versicolor', select = c(Sepal.Width, Sepal.Length, Species))

# Q. 12.create below plots for the mtcars also write your inferences for each and every plot (use ggplot package) Use Different ( Size , Colour )
# scatter plot
# boxplot
# histogram
# line graph
# bar graph

data("mtcars")
View(mtcars)

install.packages("ggplot2")

# Scatter Plot
ggplot(mtcars, aes(x = mpg, y = drat)) +
  geom_point(aes(color = factor(gear)))


# Boxplot

mtcars$cyl = factor(mtcars$cyl)
ggplot(mtcars, aes(x=cyl, y=disp)) + geom_boxplot()

# Histogram

datacamp_light_blue <- "#51A8C9"
ggplot(mtcars, aes(mpg, ..density..)) +
  # Set the fill color to datacamp_light_blue
  geom_histogram(binwidth = 1, fill = datacamp_light_blue)

# Bar Chart

p <- ggplot(data=mpg, aes(x=class, y=displ, fill=drv))
p + geom_bar(stat = "identity")


# Line graph

p <- ggplot(data=mpg, aes(x=class, y=displ, fill=drv))
p + geom_line(stat = "identity")

