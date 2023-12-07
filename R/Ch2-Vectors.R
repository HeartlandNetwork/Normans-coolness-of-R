
# Chapter 2 - Vectors - code from book

# typeof(x) gives datatype of vector

# vector indices always start with 1, not 0

# Adding and deleting vector elements ------------------------------------------
# Vectors are like arrays in C, you cannot insert or delete elements

x <- c(88, 5, 12, 13)

x

x <- c(x[1:3], 168, x[4]) # insert 168 before the 13

x # we created a new vector x

# Obtaining the length of a vector ---------------------------------------------

x <- c(1, 2, 4)

length(x)

# getting length is useful of index purposes, for example 

first1 <- function(x) {
  for (i in 1:length(x)) {
    if (x[i] == 1) break
  }
  return(i)
}

first1(x)

# for (n in x) does not work because we need an explicit loop that requires
#   the length of x

# also, length(x) will fail when 

x <- c()

x

length(x)

1:length(x)

# better alternative is seq()

#  Matrices and Arrays as Vectors ----------------------------------------------

# Matrices and Arrays are classes of vectors
#   Rules for Matrices and arrays are same as vectors

m <- matrix(c(1, 3, 2, 4), nrow=2, ncol=2)

m + 10:13


# Declarations -----------------------------------------------------------------

# Like Python and Perl, you don't declare variables

z <- 3  # is acceptable without declaration

# y[1] <- 5
# y[2] <- 12

# does not work however, you do need to define y as

y <- c(5, 12)























