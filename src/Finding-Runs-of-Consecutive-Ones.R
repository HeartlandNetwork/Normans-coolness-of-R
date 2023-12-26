######################################################################
#                                                                    #
# Norman Mattloff. 2011. Art of R Programming, No Starch Press       # 
#                                                                    #
# Extended Example: Finding Runs of Consecutive Ones                 #
#                                                                    #
#####################################################################

# Dataset: LakeHuron - Annual Measurements of the level, in feet, 
# of Lake Huron, 1875 - 1972."
#

LakeHuron

# Convert to increasing or decreasing water levels represented by 1's and 0's

LakeHuron_length = length(LakeHuron)

ones_zeros <- function(data_values, data_length){
  max_i = data_length - 1
  for (i in max_i)
    if (x[i+1] - x[i]) > 0
      y[i] = 1
    else
      y[i] = 0
  }


     







lakelevel <- c(0,0,1,1,1,1,1,0,1,1)

preda <- function(x,k) {
  n <- length(x)
  k2 <- k
  # the vector pred will contain our predicted values
  pred <- vector(length = n - k)
  for( i in 1:(n - k)) {
      if( sum(x[i:(k - 1))]) >= k2) pred[i] <- 1
      else pred[i] <- 0
  }
}











