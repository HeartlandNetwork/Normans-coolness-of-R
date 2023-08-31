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

LakeHuron

# Convert to increasing or decreasing water levels represented by 1's and 0's

find_ones <- function(x){
  for (i in 1:(length[x] - 1)]{
    if (x[i+1] - x[i]) > 0
      y[i] = 1
    else
      y[i] = 0
  }

}
      
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











