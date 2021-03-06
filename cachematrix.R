## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##Outputs an object containing functions allowing to compute inverse of a matrix
makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  set<-function(x) {
    x<<-y
    i<<-NULL
  }
  get<-function() x
  setinv<-function(inverse) i <<-inverse
  getinv<-function() i
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}

## Write a short comment describing this function
##This function computes the inverse of the matrix from the above function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   i<-x$getinv()
   if(!is.null(i)) {
      message("getting cached data...")
	return(i)
   }
   data<-x$get()
   i<-solve(data, ...)
   x$setinv(i)
   i

}
