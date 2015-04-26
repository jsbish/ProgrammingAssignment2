## Put comments here that give an overall description of what your
## functions do

## Function to enable setting and retrieving a cached inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  	m <- NULL
  	set <- function(y) {
  		x <<- y
  		m <<- NULL
	}
	get <- function() x
	setmatrix <- function(solve) m <<- solve
	getmatrix <- function() m
	list(set=set, get=get,
   		setmatrix=setmatrix,
   		getmatrix=getmatrix)
}



## Function to check for a cached inverse matrix and if not found solve the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getmatrix()
    	if(!is.null(m)){
      	message("getting cached data")
      	return(m)
   	}
    	matrix <- x$get()
    	m <- solve(matrix, ...)
    	x$setmatrix(m)
    	m
}
