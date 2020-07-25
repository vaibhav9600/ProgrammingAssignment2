## following couple of functions help caching the inverse of the square matrix

## makeCacheMatrix returns a list having function to
## set the value of the matrix
## get the value of the matrix
## get the inverse of the matrix
## set the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y){
    x <<- y
    iv <<- NULL
  }
  get <- function() x
  setInv <- function(inverse) inv<<-inverse
  getInv <- function() inv
  list(set=set,get=get,setInv=setInv,getInv=getInv)
}


## cacheSolve function finds the inverse of the matrix created with above
## function and calculates the inverse if not available via cache and at
## last returns the inverse of the square matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInv()
        if(!is.null(inv)) {
          message("getting cached data")
          return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setInv(inv)
        inv
}
