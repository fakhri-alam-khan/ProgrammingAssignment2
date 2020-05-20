## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  #print(x)
  second <- NULL
  set <- function(y) {
    x <<- y
    #print(x)
    second <<- NULL
  }
  get <- function() x
  set.inv <- function(inverse) second <<- inverse
  get.inv <- function() second
  list(set = set,
       get = get,
       set.inv = set.inv,
       get.inv = get.inv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  second <- x$get.inv()
  #print(second)
  if (!is.null(second)) {
    message("getting cached data")
    return(second)
  }
  data <- x$get()
  #print(data)
  second <- solve(data, ...)
  x$set.inv(second)
  second
  
}
