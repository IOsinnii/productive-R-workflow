
# for very friendly and informative summary
install.packages("gtExtras")
install.packages("svglite")
library(gtExtras)
library(svglite)
iris %>%
  gt_plt_summary()

# improtant R string functions

str <- "Hello World!"

grepl("H", str)
grepl("Hello", str)
grepl("X", str) 

str1 <- "Hello"
str2 <- "World"

paste(str1, str2)

## The escape character allows you to use double quotes when you normally would not be allowed:
  str <- "We are the so-called \"Vikings\", from the north."

str
cat(str) 


# Arithmetic operators

# Modulus (Remainder from division) 	x %% y 	
# %/% 	Integer Division 	x%/%y

x <- 3
y <- 1.2

x %% y
x %/% y

# R logical operators 

# & 	Element-wise Logical AND operator. It returns TRUE if both elements are TRUE
# && 	Logical AND operator - Returns TRUE if both statements are TRUE
# | 	Elementwise- Logical OR operator. It returns TRUE if one of the statement is TRUE
# || 	Logical OR operator. It returns TRUE if one of the statement is TRUE.
# ! 	Logical NOT - returns FALSE if statement is TRUE


R Miscellaneous Operators

# Miscellaneous operators are used to manipulate data:
  # Operator 	Description 	Example
# : 	Creates a series of numbers in a sequence 	x <- 1:10
# %in% 	Find out if an element belongs to a vector 	x %in% y
# %*% 	Matrix Multiplication 	x <- Matrix1 %*% Matrix2

# The if statement and else if

a <- 33
b <- 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print ("a and b are equal")
} 

# AND operator

a <- 200
b <- 33
c <- 500

if (a > b & c > a) {
  print("Both conditions are true")
} 

# Operator OR

a <- 200
b <- 33
c <- 500

if (a > b | a > c) {
  print("At least one of the conditions is true")
} 

# WHILE loop

i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
} 

i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  if (i == 4) {
    break
  }
} 

i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
} 

# FOR loop

fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  print(x)
} 


# Function

my_function <- function(fname) {
  paste(fname, "Griffin")
}

my_function("Peter")
my_function("Lois")
my_function("Stewie") 

my_function <- function(country = "Norway") {
  paste("I am from", country)
}

my_function("Sweden")
my_function("India")
my_function() # will get the default value, which is Norway
my_function("USA") 

my_function()


my_function <- function(x) {
  return (5 * x)
}

print(my_function(3))
print(my_function(5))
print(my_function(9)) 


f_int <- function(x) {
  result = x %% 2 == 0
  return(result)
}

f_int(2)


tri_recursion <- function(k) {
  if (k > 0) {
    result <- k + tri_recursion(k - 1)
    print(result)
  } else {
    result = 0
    return(result)
  }
}
tri_recursion(6) 
