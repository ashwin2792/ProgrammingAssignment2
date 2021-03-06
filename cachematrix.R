## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function( m = matrix() ) {
  
  ## Initializing the inverse property for the matrix
  i <- NULL
  
  ## setting/initializing the matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ##getting the matrix
  get <- function() {
    ## Returning  the value of matrix
    m
  }
  
  ##calculating the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ## Retreiving inverse of the matrix
  getInverse <- function() {
   
    i
  }
  
  ## Returning a list of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.
cacheSolve <- function(z, ...) {
  
  ## Returning a matrix that is the inverse of 'z'
  m <- z$getInverse()
  
  ## Just return the inverse if its already set
  if( !is.null(m) ) {
    message("getting cache data from CPU")
    return(m)
  }
  
  ## Getting the matrix using our object
  data <- z$get()
  
  ## Calculate the inverse 
  m <- solve(data) %*% data
  
  ## Seting the inverse to the object
  z$setInverse(m)
  
  ## Returning the matrix
  m
}

## Write a short comment describing this function

cacheSolve <- function(z, ...) {
        ## Return a matrix that is the inverse of 'x'
}
