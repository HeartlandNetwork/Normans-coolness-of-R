######################################################################
#                                                                    #
# Norman Mattloff. 2011. Art of R Programming, No Starch Press       # 
#                                                                    #
# Extended Example: Predicting Discrete Valued Time Series           #
#                                                                    #
#####################################################################

# Dataset: LakeHuron - Annual Measurements of the level, in feet, 
# of Lake Huron, 1875 - 1972."
#

library(tidyverse) # To plot model error against the predictor k

setwd("C:/Users/growell/normans-coolness-of-R/src")

getwd()


# The basic idea here is to take a training set, then ask now well various
# values of k would have performed on that data. From that, we generate and
# error rate for k = 2, 3, 4 ... 

# Pt 1: Creating discrete-valued time series dataset from LakeHuron
# ------------------------------------------------------------------------------

generate_ones_and_zeros <- function(x) { 
  
  j <- length(x) 
  y <- NULL
  
  for (i in 1:(j - 1) ) {
      
    if ((x[i + 1] - x[i]) > 0) {
       y <- c(y, 1)
    }
       
    else {
      y <- c(y, 0)
    }
  }
  return(y)
}

LakeHuron_DTS <- generate_ones_and_zeros(LakeHuron)

LakeHuron

length(LakeHuron)

LakeHuron_DTS

length(LakeHuron_DTS)

# abbrev the dataset name

Lk_Huron <- LakeHuron_DTS

# Pt 2: Predicting discrete-valued time series - from Norman's book
# -----------------------------------------------------------------------------
# 
# Code for three models, developed successively

preda <- function(x, k) {
  n <- length(x)
  k2 <- k/2
  # the vector pred will contain our predicted values
  pred <- vector(length=n-k)
  
  for (i in 1:(n - k)) {
    if (sum(x[i:(i+(k-1))]) >= k2 ) { # <<<<<<<< using sum with vector
	  pred[i] <- 1
	}
	else {
	  pred[i] <- 0	
    }	  
  }
  return(mean((abs(pred-x[(k+1):n])))) # <<<<<< using mean with vector
}


preda(Lk_Huron, 3)

# k, preda
# 1, 0.4375
# 2, 0.4841
# 3  0.5319
# 4, 0.5268
# 5, 0.5652
# 6, 0.5604
# 7, 0.5777
# 8, 0.5280
# 9, 0.5113

# Create the tibble 
k <- 1:4 
results <- tibble( k = k, preda = preda(Lk_Huron, k) )

print(results)


# Next version deals with speed issues associated with for loop
  
  









predb <- function(x, k) {
  n <- length(x)
  k2 <- k/2
  pred <- vector(length = n - k)
  sm <- sum(x[1:k])
  if (sm >= 2) {
    for (i in 2:(n - k)) {
      sm <- sm + x[i + k - 1] - x[i - 1]
      if (sm >= k2) pred[i] <- 1 else pred[i] <- 0
    }
  }
  return(mean(abs(pred - x[(k + 1):n]))) # <<< determines error
}

kmax <- 95

for (k in 1:kmax) {
  pred_error <- predb(LakeHuron_DTS, k)
  print(pred_error)
}

k < 1: 

