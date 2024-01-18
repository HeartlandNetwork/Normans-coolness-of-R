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

# Pt 1: Creating discrete time series dataset from Lake Huron

LakeHuron

length(LakeHuron)

find_ones <- function(x) { 
  
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

     
LakeHuron_DTS <- find_ones(LakeHuron)

LakeHuron

length(LakeHuron)

LakeHuron_DTS

length(LakeHuron_DTS)

# Pt 2: Creating discrete time series dataset from Lake Huron

