## The function "makeCacheMatrix" recieves x matrix. It cashes the 
## original matrix (object "mat") and its inverse (object "inv").
## It is important to maintain the original matrix while having its inverse.

makeCacheMatrix <- function(x = matrix()) {
	mat<<-x
	inv<<-solve(x)
}


## The function "cacheSolve" chacks if the inverse has already been cached. If yes, 
## the function also checks if the matrix is the same. 
## If yes, the inverse is used from cache. Otherwise "makeCacheMatrix" function is used
## to cache and return the inverse of the matrix.

cacheSolve <- function(x, ...) {
	if (!exists("mat")) {  
    if (!identical(x,mat)) {
      makeCacheMatrix (x)
    }
	}  
	return(inv)  ## Return a matrix that is the inverse of 'x'
}


