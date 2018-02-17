## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL ##Initialize the inverse property to null
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function()x##Return the value of the matrix
  setinv<-function(invers)inv<<-invers##this is used to set the value of the matrix
  getinv<-function()inv ## return the value of the inverse
  list(set = set, get = get, setinv = setinv, getinv = getinv)
      
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv<-x$getinv() ##first check to see if the inverse is already present or not
  if(!is.null(inv)){##to return if inverse is already set
    message("getting cached data")
    return(inv)##returns the inverse value
  }
  data<-x$get()
  inv<-solve(data)
  x$setinv(inv)
        ## Return a matrix that is the inverse of 'x'
}
