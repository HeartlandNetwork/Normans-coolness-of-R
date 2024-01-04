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
  # print("I am here!")
  for(i in 1:(n - k + 1)){
    print(n)
    print(k)
    print(n - k + 1)
    print("I am here!")
    # need to determine whether all k values 
    # (x[i], x[i + 1], ... x[i + k - 1]) are 1s
    # applying all() tells us if there is a run there...
    
    
    # if(all(x[1:(i + k - 1)] == 1)) runs <- c(runs, i)
  }
  
  return(runs)
}

x <- c(1,0, 0, 1, 1, 1, 0, 1, 1)

findruns(x, 3)

findruns(x, 2)

findruns(x, 6)










# function examples

# counts the number of odd integers in x
oddcount <- function(x){ 
  k <- 0
  for(n in x ){
    print("I am here!")
    if(n %% 2 == 1) k <- k + 1
  }
  return(k)
}

x <- c(1, 3, 5)

y <- c(1,2,3,7,9)

oddcount(x)

oddcount(y)
