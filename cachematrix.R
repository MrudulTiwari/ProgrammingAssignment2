## This is a code to cache the inverse of a matrix 
## It helps in making calculations fast

## MakeCachematrix takes a matrix x as an argument and gives a list 

MakeCachematrix<- function(x=matrix()){
        i<- NULL
## We make use of Getters and Setters 
        set<- function(y){
        x<<- y
        i<<- NULL
        }
       
        get<- function()x
        setinv<- function(inverse)
              i<<- inverse
        getinv<- function()i
        list(set= set, get= get, setinv=setinv, getinv=getinv)
## elements in the list are named for ease      
}



## CacheSolve takes x and returns its inverse
cacheSolve<- function(x, ...){
       i<- x$getinv()
        ## Gives inverse so no need to calculate everytime if same matrix
        if(!is.null(i)){
                message("getting cached inverse")
                return(i)
        }
        mat<- x$get()
        i<- solve(mat)
        x$setinv(i)
        i
        
}


