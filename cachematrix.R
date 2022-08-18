## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { # This function creates a special "matrix" object that can cache its inverse
  makeCacheMatrix <- function(x = matrix()) { #This function creates a special "matrix" object that can cache its inverse#
    inv <- NULL 
    set <- function(y) {                       # set the value of the matrix
      x <<- y                                   #<<- assigns a value to an object in an environment different from the current one.                          
      inv <<- NULL
    }
    get <- function() x                                  #get the value of the matrix
    setinverse <- function(inverse) inv <<- inverse      #set the value of inverse of the matrix
    getinverse <- function() inv                          #get the value of inverse of the matrix
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {      # This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
  cacheinverse <- function(x, ...) {      #If the inverse has already been calculated (and the matrix has not changed), 
        inv <- x$getinverse()                #then the cachesolve should retrieve the inverse from the cache.
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)               ## Return a matrix that is the inverse of 'x'
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(m)
        inv
}
                                 
                                  
        
}
