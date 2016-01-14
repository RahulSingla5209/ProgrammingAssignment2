## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##the function contains argument of x which is a matrix. 
##It returns a list of functions
##through this list you can set "matrix" and give Cached matrix if available
makeCacheMatrix <- function(x = matrix()) {
     m<-NULL
     set<-function(y){
          x<<-y
          m<<-NULL
     }
     get<-function() x
     setInverse<-function(inverse) m<<-inverse
     getInverse<-function() m
     list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function
##this function gives the value inverse of matrix
##if a cache value of inverse of matrix is present then it doesnt calculate the inverse of matrix
cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     m<-x$getInverse()
     if(!is.null(m)) return(m)
     mat<-x$get()
     m<-solve(mat)
     x$setInverse(m)
     m
}
