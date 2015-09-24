## Put comments here that give an overall description of what your
## functions do
	#the following 2 functions take a square matrix, compute it's inverse, and return that value. The job is broken in two pieces by first storing the input x via the function makeCacheMatrix, and the computation only occurs when the function cacheSolve is called. 

## Write a short comment describing this function
	#The function makeCacheMatrix takes an input (a square matrix) and creates 4 functions to store and retrieve x and it's inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){ #This function changs the vector stored in the main function
        x <<-y
    m <<- NULL
    }
    get <- function() x #This function returns the vector x stored in the main function
    setinverse <- function(solve) m <<- solve #Doesn't calc the inverse but stored value of input in variable m
    getinverse <- function() m #returns value of input variable m
    list (set = set, get = get, setinverse = setinverse, getinverse = getinverse) #list stores 4 functions
}


## Write a short comment describing this function
	#The function cacheSolve takes the object x, computes it's inverse, and returns that value
	
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <-x$getinverse()
    if(!is.null(m)) { #verifies that the value m stored with getinverse exists and isn't null
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data,...) #computes the inverse of the matrix
    x$setinverse(m) #stores the inverse of the matrix in m
    m #retuns the inverse of the matrix x
}
