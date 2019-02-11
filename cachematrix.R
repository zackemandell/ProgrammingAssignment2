## Store matrix into cache and compute inverse

## Initialize matrix and functions to pull files


makeCacheMatrix <- function(x = matrix()) {
  mat <- NULL
  set <- function(y) {
    x <<- y
    mat <<- NULL
  }
get <- function()x
print(get)
setinverse <- function(inverse) mat <<- inverse
print(setinverse)
getinverse <- function () mat
print(getinverse)
list(set = set, 
     get = get,
     setinverse = setinverse,
     getinverse = getinverse)
  }


## Solve for inverse -- if inverse is already stored, prints inverse

cacheSolve<- function(x,...) {
  mat <- x$getinverse()
  if(!is.null(mat)) {
    message("getting cached data")
    return(mat)
  }
  data <- x$get()
  mat <- solve(data, ...)
  x$setinverse(mat)
  mat
}
