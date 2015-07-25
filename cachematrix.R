## Put comments here that give an overall description of what your
## functions do
## Cache the inverse of a matrix by using a pair of functions. The purpose of these two functions is to help ease the burden of having to compute matrix inverse repeatedly.

## Write a short comment describing this function
## cache a matrix and get the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function
## Solve the inverse of the matrix and test whether the inverse has already been calculated. If the inverse already exists, then return "getting cached data" and return the previous result. If the inverse does not exists, calculate the inverse.

cacheSolve <- function(x, ...) {
		        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m}
