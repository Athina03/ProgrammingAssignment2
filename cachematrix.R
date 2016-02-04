## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <-function(data=vector(),nrow=numeric(),ncol=numeric()){
    s<-NULL
    set<-function(y1,y2,y3){ 
      data<-y1
      nrow<-y2
      ncol<-y3
      s<<-NULL
    }
    get<-function() matrix(data,nrow,ncol)
    setinverse<-function(solve) s<<-solve
    getinverse<-function() s
    list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}
  

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
   s<-x$getinverse()
    if (!is.null(s)){
      message("getting cache data")
      return(s)
    }
    data1<-x$get()
    s<-solve(data1,...)
    x$setinverse(s)
}

