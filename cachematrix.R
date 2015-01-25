## This program is to calculate the inverse of a matrix.
## Before the calculation, the program checks 
## whether the inverse has been calculated and cached.
## If so, the cached value will be looked up to avoid repeating computation.

## The following function creates a list containing the functions to
## 1. set the value of matrix
## 2. get the value of matrix
## 3. set the value of the inverse
## 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    s<-NULL
    set<-function(y){
        x<<-y
        s<<-NULL
    }
    get<-function() x
    setInverse<-function(inverse) s<<-inverse
    getInverse<-gunction() s
    list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## The following function calculates the inverse of a matrix.
## It first checks to see if the inverse has already been calculated.
## If so, it gets the inverse from the cache and skips the computation.
## Otherwise, it calculates the inverse of the data 
## and sets the value of the inverse in the cache via the setmean function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    s<-x$getInverse()
    if(!is.null(s)){
        message("getting cached data")
        return(s)
    }
    data<-x$get()
    s<-solve(data, ...)
    x$setInverse(s)
    s
}
