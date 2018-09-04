## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a special matrix by 1,set the value of matrix 2,get the value of matrix 3,set the value of inverse 4,get the value of inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## This computes the inverse of the matrxi created above.

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i ## Return a matrix that is the inverse of 'x'
}
