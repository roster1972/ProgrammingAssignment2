## From the assignment statement:
## "Matrix inversion is usually a costly computation and there may be some 
##  benefit to caching the inverse of a matrix rather than compute it repeatedly 
##  (there are also alternatives to matrix inversion that we will not discuss 
##  here). Your assignment is to write a pair of functions that cache the inverse
##  of a matrix."

## To run the following, do something like this:
##     A = matrix(sample(1:16, 16), nrow=4, ncol=4)
##     B <- makeCacheMatrix(A)
##     B$getinverse()
##       . . . NULL
##     cacheSolve(B)
##     B$getinverse()
##       . . . the inverted matrix
##     cacheSolve(B)
##     getting cached data

## "This function creates a special "matrix" object that can cache its inverse."

makeCacheMatrix <- function(x = matrix()) {
  
  ## The following is nearly identical to 'makeVector' in the problem assignment 
  ## because the operations needed are the same -- set, get, setinverse, and 
  ## getinverse.
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## "This function computes the inverse of the special "matrix" returned by 
##  makeCacheMatrix above. If the inverse has already been calculated (and the 
##  matrix has not changed), then the cachesolve should retrieve the inverse 
##  from the cache."

cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  
  ## The following is nearly identical to 'cachemean' in the problem assignment 
  ## except that instead of determining the 'mean', we do 'solve' to find the
  ## square matrix inverse.
  
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
