## Put comments here that give an overall description of what your
## functions do

## "This function creates a special "matrix" object that can cache its inverse."

makeCacheMatrix <- function(x = matrix()) {
  
  ## The following is identical to 'makeVector' in the problem assignment because
  ## the operations needed are the same -- set, get, setmean, and getmean.
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}


## "This function computes the inverse of the special "matrix" returned by 
##  makeCacheMatrix above. If the inverse has already been calculated (and the 
##  matrix has not changed), then the cachesolve should retrieve the inverse 
##  from the cache."

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
