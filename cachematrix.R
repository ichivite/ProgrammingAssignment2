## Put comments here that give an overall description of what your
## functions do

## My comment:
## This is the function I have craeted
## The aim of this function is to create a matrix that will cache its inverse

makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL
 set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(solveMatrix) inv <<- solveMatrix
        getInverse <- function() inv
        list(set = set ,
             get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
}
         
     


## My Comment:
         ##this function will calculate the inverse of the matrix that was created by the function above
         ##In case the inverse was already calculate it will bring it from cache
         ##

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        datos <- x$get()
        inv <- solve(datos, ...)
        x$setInverse(inv)
        inv
}
         
 
         
