## The file contains 2 functions to cache the inverse of a matrix

## This function caches the matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() {
        x
    }    
    setinverse <- function(invers) {
        m <<- invers
    }
    getinverse <- function() {
        m
    }    
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Retreives the cached inverse. If none, calculates the inverse & sets the cache

cacheSolve <- function(x, ...) {
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
