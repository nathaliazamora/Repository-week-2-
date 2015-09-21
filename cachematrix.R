

#####################
#### Assignment 1 ###
#####################

# Thevector a special matrix object that can cache its inverse.

Thevector<- function(z = numeric()) {
  m <- NULL
  set <- function(y) {
  z <<- y
  zinverse <<- NULL }
  
  get <- function() z
  setzinverse <- function(mean) zinverse <<- mean
  getzinverse <- function() zinverse
  list(set = set, get = get,
       setzinverse = setzinverse,
       getzinverse = getzinverse)

##########
  
  # In cahcesolve I am asking to R give me the inverse matrix of x 
  
  cachesolve<- function(z, ...) {
    zinverse<- z$getmean()
    if(!is.null(zinverse)) 
      {
      message("getting cached data")
      return(inverse)
    }
    data<- z$get()
    zinverse<- mean(data, ...)
    z$setmean(zinverse)
    zinverse }

  