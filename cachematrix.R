## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        if(is.null(x)) {
                x<-matrix(rnorm(4), 2) 
        }
        xval<<-solve(x)
        print(xval)
        
}


## Write a short comment describing this function
##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), 
##then cacheSolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- xval
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        inva<<-solve(x)
        print(inva)
}
