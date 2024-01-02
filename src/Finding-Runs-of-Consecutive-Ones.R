######################################################################
#                                                                    #
# Norman Mattloff. 2011. Art of R Programming, No Starch Press       # 
#                                                                    #
# Extended Example: Finding Runs of Consecutive Ones                 #
#                                                                    #
#####################################################################


flag <- print("I am here!")

flag


# In the function "findruns", x is a vector or 1s and 0s and 
# k is the length of run to find


findruns <- function(x, k){
  
  n <- length(x)
  runs <- NULL
  
  for(i in 1:(n - k + 1)){
    
    # need to determine whether all k values 
    # (x[i], x[i + 1], ... x[i + k - 1]) are 1s
    # applying all() tells us if there is a run there...
    
    if(all(x[1:(i + k - 1)] == 1)) runs <- c(runs, i)
  }
  
  return(runs)
}


findruns <- function(j,k){
  return(k)
}

x <- c(1)
y <- c("this is some text")


findruns(x, y)


x <- 2


y <- c(1,0, 0, 1, 1, 1, 0, 1, 1)

findruns(y, 3)

findruns(y, 2)

findruns(y, 6)

flag <- print("I am here!")

flag





