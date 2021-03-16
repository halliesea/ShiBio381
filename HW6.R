# HW6_Matrices, List, and data frames
# Hallie Shi
# March 10
#-----------------------------------------------------------
## Q1;
# Assign to the variable n_dims a single random integer between 3 and 10.

n_dims <- 3:10

# Create a vector of consecutive integers from 1 to n_dims2.

my_vec <- c(1,n_dims*n_dims)
my_vec

# Use the sample function to randomly reshuffle these values.
sample(x=my_vec)
# create a square matrix with these elements;and then print out the matrix.
m <- matrix(data=sample(x=my_vec),ncol=3,byrow=TRUE)
print(m)

# find a function in r to transpose the matrix.
tm <- t(m)
print(tm)

# print it out again and note how it has changed.

# calculate the sum and the mean of the elements in the first row and the last row.
mean(m[1,])
mean(m[3,])
#read about the eigen() function and use it on your matrix
eigen(m)
eigen(m)$values
eigen(m)$vectors
typeof(eigen(m)$values)
typeof(eigen(m)$vectors)

# look carefully at the elements of $values and $vectors. What kind of numbers are these?
# dig in with the typeof() function to figure out their type.
# # They are "complex" number
# if have set your code up properly, you should be able to re-run it and create a matrix of different size because n_dims will change.

# Q2;
#Create a list with the following named elements:
# my_matrix, which is a 4 x 4 matrix filled with random uniform values
m <- runif(16)
my_matrix <- matrix (m,nrow=4)
my_matrix
# my_logical which is a 100-element vector of TRUE or FALSE values. Do this efficiently by setting up a vector of random values and then applying an inequality to it.
vector_1 <- runif(100)
vector_2 <- runif(100)
my_logical <- (vector_1 < vector_2)
my_logical
# my_letters, which is a 26-element vector of all the lower-case letters in random order.
my_letters <- sample(letters[1:26],26)
my_letters

# create a new list, which has the element[2,2] from the matrix, the second element of the logical vector, and the second element of the letters vector.

mylist <-  list(my_matrix[2,2],my_logical[2],my_letters[2])
print(mylist)
# use the typeof() function to confirm the underlying data types of each component in this list

typeof(my_matrix[2,2])
typeof(my_logical[2])
typeof(my_letters[2])

#combine the underlying elements from the new list into a single atomic vector with the c() function.

newvector <- c(my_matrix[2,2],my_logical[2],my_letters[2])
newvector

#what is the data type of this vector?

typeof(newvector)
  
# Q3;
# Create a data frame with two variables (= columns) and 26 cases (= rows).
var1 <- 1:26
var2 <- runif(26)
var3 <- sample(letters[1:26],26)
  dframe <- data.frame(var1,var2,var3)
  
# call the first variable my_unis and fill it with 26 random uniform values from 0 to 10
my_unis <- runif(26,min=0,max=10)
my_letters <- sample(letters[1:26],26)
dframe <- data.frame(my_unis,my_letters,stringsAsFactors = FALSE)
print(dframe)

# for the first variable, use a single line of code in R to select 4 random rows and replace the numerical values in those rows with NA.


dframe[sample(1:26,4), ] = NA
dframe

#for the first variable, write a single line of R code to identify which rows have the missing values
which (!complete.cases(dframe))
#for the second variable, sort it in alphabetical order
my_letters <- c(letters[1:26])
dframe <- data.frame(my_unis,my_letters,stringsAsFactors = FALSE)
dframe

#calculate the column mean for the first variable.
print(summary(dframe$my_unis))
