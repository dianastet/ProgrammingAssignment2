## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## week 3 assighnment, GitHub user: dstet

## input, initialize inv
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
	
	x <<- y
	
	inv <<- NULL
}

get <- function() x
## SET THE VALUE OF THE MATRIX

	setinverse <- function(inverse) inv <<- inverse
	getinverse <- function() inv

	
	list(set = set, get = get,
			setInverse = setInverse, getInverse = getInverse)
			
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
		inv <- x$getinverse()
		if(!is.null(inv)) {
		message("got cached invertible matrix")
		return(inv)
		
}
 data <- x$get()
 inv <- solve(data, ...)
 x$setinverse(inv)
 inv

}
