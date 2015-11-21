## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	so<-NULL
	set<-function(y){
		x<<- y
		so<<- NULL
	}
	get<-function() x
	setso<-function(solve)  so<<- solve
	getso<- function() so
	list(set=set, get=get, setso=setso, getso=getso)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    so<-x$getso()
	if(!is.null(so)){
		message("getting cached data")
		return(so)
	}
	mat<-x$get()
	x$set(mat)
	so<-solve(mat,...)
	x$setso(so)
	so

}
