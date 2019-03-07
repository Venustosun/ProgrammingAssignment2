

## creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  invers<-NULL
  set<-function(y){
    x<<-y
    invers<<-NULL
    
  }
  get <- function()x
  setinverse <- function(inverse) invers <<- inverse
  getinverse <- function()invers
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


##computes the inverse of the special "matrix"

cacheSolve <- function(x, ...) {
        invers<<- x$getinverse()
        if(!is.null(invers)){
          message("getting cached data")
        }
        data <- x$get()
        invers <- solve(data, ...)
        x$setinverse
        invers
}


