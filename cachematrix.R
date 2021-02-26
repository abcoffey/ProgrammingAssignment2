## Put comments here that give an overall description of what your
## functions do

## This function will create a matrix, of which we plan to take the inverse of below.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
      x <<- y
      m <<- NULL
  }
  get <- function()x
  setinverse <- function(inverse)m <<- inverse
  getinverse <- function()m
  list(set = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}


## This function will take the above matrix, and find the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)){
      message("getting cached data")
      return(m)
  }
    mat <- x$get()
    m <- solve(mat,...)
    x$setinverse(m)
    m
}
