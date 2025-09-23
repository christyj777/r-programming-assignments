#1- Create the matrices
 A <- matrix(1:100,  nrow = 10)
 B <- matrix(1:1000, nrow = 10)
 
#2- Inspect dimensions
dim_A <- dim(A)
dim_B <- dim(B)

#3- Compute inverse and determinant
#for A
error_invA <- try(solve(A), silent = TRUE) #output is an error
invA <- tryCatch(solve(A), error = function(e) e)   # A is singular so need to wrap
detA <- det(A)

#for B
error_invB <- try(solve(B), silent = TRUE) #output is an error
invB <- tryCatch(solve(B), error = function(e) e)   # non-square so need to wrap
detB <- tryCatch(det(B),   error = function(e) e)
